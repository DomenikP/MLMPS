/*
 * Copyright 2003-2014 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package jetbrains.mps.generator.impl;

import jetbrains.mps.generator.GenerationCanceledException;
import jetbrains.mps.generator.GenerationSessionContext;
import jetbrains.mps.generator.GenerationTracerUtil;
import jetbrains.mps.generator.IGeneratorLogger;
import jetbrains.mps.generator.impl.RoleValidation.RoleValidator;
import jetbrains.mps.generator.impl.RoleValidation.Status;
import jetbrains.mps.generator.impl.interpreted.TemplateCall;
import jetbrains.mps.generator.impl.query.GeneratorQueryProvider;
import jetbrains.mps.generator.impl.query.IfMacroCondition;
import jetbrains.mps.generator.impl.query.SourceNodeQuery;
import jetbrains.mps.generator.impl.query.SourceNodesQuery;
import jetbrains.mps.generator.impl.template.QueryExecutor;
import jetbrains.mps.generator.runtime.GenerationException;
import jetbrains.mps.generator.runtime.TemplateContext;
import jetbrains.mps.generator.runtime.TemplateExecutionEnvironment;
import jetbrains.mps.generator.runtime.TemplateSwitchMapping;
import jetbrains.mps.generator.template.ITemplateProcessor;
import jetbrains.mps.generator.template.IfMacroContext;
import jetbrains.mps.generator.template.SourceSubstituteMacroNodeContext;
import jetbrains.mps.generator.template.SourceSubstituteMacroNodesContext;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.NodeReadEventsCaster;
import jetbrains.mps.smodel.SNodeId;
import jetbrains.mps.smodel.SNodePointer;
import jetbrains.mps.smodel.tracing.TracedNode;
import jetbrains.mps.smodel.tracing.TransformationTrace;
import jetbrains.mps.smodel.tracing.nodes.SNodeProxy;
import jetbrains.mps.textgen.trace.TracingSettings;
import jetbrains.mps.textgen.trace.TracingUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 * Applies template to input node.
 * TODO make MacroNode aware of container TemplateNode and don't pass both arguments when only one is sufficient
 */
public final class TemplateProcessor implements ITemplateProcessor {
  private final TemplateGenerator myGenerator;
  private final SModel myOutputModel;
  private final MacroImplFactory myImplFactory;
  private final Map<SNode, TemplateNode> myTemplateRuntimeMap = new ConcurrentHashMap<SNode, TemplateNode>();

  public TemplateProcessor(@NotNull TemplateGenerator generator) {
    myGenerator = generator;
    myOutputModel = myGenerator.getOutputModel();
    myImplFactory = new MacroImplFactory(this);
  }

  /*package*/ TemplateGenerator getGenerator() {
    return myGenerator;
  }
  /*package*/ GeneratorQueryProvider getQueryProvider(SNodeReference templateNode) {
    return myGenerator.getQuerySource().getQueryProvider(templateNode);
  }

  @Override
  @NotNull
  public List<SNode> apply(@NotNull SNode templateNode, @NotNull TemplateContext context) throws DismissTopMappingRuleException, GenerationFailureException,
      GenerationCanceledException {
    if (myGenerator.isIncremental()) {
      // turn off tracing
      NodeReadEventsCaster.setNodesReadListener(null);
    }
    try {
      final TemplateNode rtTemplateNode = getTemplateNodeRuntime(templateNode);
      if (rtTemplateNode.getFirstMacro() != null) {
        return applyMacro(rtTemplateNode.getFirstMacro(), context);
      } else {
        return applyTemplate(rtTemplateNode, context);
      }
    } finally {
      if (myGenerator.isIncremental()) {
        // restore tracing
        NodeReadEventsCaster.removeNodesReadListener();
      }
    }
  }

  @NotNull
  /*package*/List<SNode> applyMacro(@NotNull MacroNode rtMacro, @NotNull TemplateContext context)
      throws DismissTopMappingRuleException, GenerationFailureException, GenerationCanceledException {

    return rtMacro.apply(context.subContext(rtMacro.getMappingLabel()));
  }

  @NotNull
  /*package*/List<SNode> applyTemplate(@NotNull TemplateNode rtTemplateNode, @NotNull TemplateContext context)
      throws DismissTopMappingRuleException, GenerationFailureException, GenerationCanceledException {

    // XXX same code is in TEE.createNode. If, however, primary use for TEE is
    // generated code (as opposed to 'apply templates to root' context), it's unreasonable(?)
    // to expect SConcept to get passed to TEE.createNode() (generated templates are likely to know
    // strings only)
    SNode outputNode = myOutputModel.createNode(rtTemplateNode.getConcept());

    // use same env method as reduce_TemplateNode does
    context.getEnvironment().nodeCopied(context, outputNode, rtTemplateNode.getTemplateNodeId());
    myGenerator.registerMappingLabel(context.getInput(), context.getInputName(), outputNode); // XXX reduce_TemplateNode doesn't do that

    rtTemplateNode.apply(context, outputNode);
    if(TracingSettings.getInstance().isWriteGeneratorFile() && outputNode != null) {
      TransformationTrace traceInstance = TransformationTrace.getInstance();
      TracedNode inputTrace = traceInstance.addTrackedNode(new SNodeProxy(context.getInput().getNodeId(), context.getInput().getModel().getReference()));
      SNodeProxy outputProxy = new SNodeProxy(outputNode.getNodeId(), context.getInput().getModel().getReference());
      traceInstance.addNodeWithLazyResoledModel(outputProxy);
      //traceInstance.trackLazyCreatedByTrafo(outputProxy, rtTemplateNode.getTemplateNodeReference());
      TracedNode outputTrace = traceInstance.addTrackedNode(outputProxy);
      outputTrace.setInputNode(inputTrace.getNode());
      outputTrace.setCreatedBy(new SNodeProxy(rtTemplateNode.getTemplateNodeReference().getNodeId(), rtTemplateNode.getTemplateNodeReference().getModelReference()));
    }
    // process children
    context = context.subContext(); // drop label
    for (SNode templateChildNode : rtTemplateNode.getChildTemplates()) {
      TemplateNode rtTemplateChildNode = getTemplateNodeRuntime(templateChildNode);
      final List<SNode> outputChildNodes;
      if(rtTemplateChildNode.getFirstMacro() != null) {
        outputChildNodes = applyMacro(rtTemplateChildNode.getFirstMacro(), context);
      } else {
        outputChildNodes = applyTemplate(rtTemplateChildNode, context);
      }

      if(TracingSettings.getInstance().isWriteGeneratorFile() && !outputChildNodes.isEmpty() && context.getInput() != null) {
        SNode templateNode = rtTemplateNode.getTemplateNodeReference().resolve(MPSModuleRepository.getInstance());
        TransformationTrace traceInstance = TransformationTrace.getInstance();
        TracedNode inputTrace = traceInstance.addTrackedNode(new SNodeProxy(context.getInput().getNodeId(), context.getInput().getModel().getReference()));
        for(SNode output : outputChildNodes) {
          SNodeProxy outputProxy = new SNodeProxy(output.getNodeId(), context.getInput().getModel().getReference());
          traceInstance.addNodeWithLazyResoledModel(outputProxy);
          traceInstance.trackLazyCreatedByTrafo(outputProxy, templateNode.getReference());
          TracedNode outputTrace = traceInstance.addTrackedNode(outputProxy);
          /*if(outputTrace.getInputNode() == null) {
            outputTrace.setInputNode(inputTrace.getNode());
          } else {
            int bla =0;
          }*/
          if(outputTrace.getCreatedBy() == null) {
            outputTrace.setCreatedBy(new SNodeProxy(templateNode.getNodeId(), templateNode.getModel().getReference()));
          } else {
            int bla =0;
          }
        }
      }


      SConcept originalConcept = rtTemplateChildNode.getConcept();
      String role = rtTemplateChildNode.getRoleInParent();
      RoleValidator validator = myGenerator.getChildRoleValidator(outputNode, role);
      for (SNode outputChildNode : outputChildNodes) {
        // returned node is subconcept of template node => fine
        final boolean notSubConcept = !(outputChildNode.getConcept().isSubConceptOf(originalConcept));
        if (notSubConcept) {
          // check child
          Status status = validator.validate(outputChildNode);
          if (status != null) {
            myGenerator.getLogger().warning(rtTemplateChildNode.getTemplateNodeReference(), status.getMessage("apply template"), status.describe(
                GeneratorUtil.describe(context.getInput(), "input"),
                GeneratorUtil.describe(outputNode, "output"),
                GeneratorUtil.describe(rtTemplateNode.getTemplateNodeReference(), "template node")
            ));
          }
        }
        outputNode.addChild(role, outputChildNode);
      }
    }
    return Collections.singletonList(outputNode);
  }

  private TemplateNode getTemplateNodeRuntime(SNode templateNode) {
    // template nodes may belong to different models, hence can't use anything simpler than and identity that includes model
    // and since template models don't change during generation, Object identity is enough as a key.
    @SuppressWarnings("redundant")
    final SNode key = templateNode;
    TemplateNode rv = myTemplateRuntimeMap.get(key);
    if (rv == null) {
      rv = new TemplateNode(templateNode, myImplFactory);
      myTemplateRuntimeMap.put(key, rv);
    }
    return rv;
   }

  private static class MacroImplFactory implements MacroNode.Factory {
    private final TemplateProcessor myTemplateProcessor;
    private final Map<SConcept, Integer> macroImplMap = new HashMap<SConcept, Integer>(32);

    MacroImplFactory(@NotNull TemplateProcessor templateProcessor) {
      myTemplateProcessor = templateProcessor;
      macroImplMap.put(RuleUtil.concept_NodeMacro, 0);
      macroImplMap.put(RuleUtil.concept_LoopMacro, 1);
      macroImplMap.put(RuleUtil.concept_CopySrcNodeMacro, 2);
      macroImplMap.put(RuleUtil.concept_CopySrcListMacro, 3);
      macroImplMap.put(RuleUtil.concept_InsertMacro, 4);
      macroImplMap.put(RuleUtil.concept_WeaveMacro, 5);
      macroImplMap.put(RuleUtil.concept_LabelMacro, 6);
      macroImplMap.put(RuleUtil.concept_VarMacro, 7);
      macroImplMap.put(RuleUtil.concept_IfMacro, 8);
      macroImplMap.put(RuleUtil.concept_MapSrcNodeMacro, 9);
      macroImplMap.put(RuleUtil.concept_MapSrcListMacro, 10);
      macroImplMap.put(RuleUtil.concept_SwitchMacro, 11);
      macroImplMap.put(RuleUtil.concept_TemplateSwitchMacro, 12);
      macroImplMap.put(RuleUtil.concept_IncludeMacro, 13);
      macroImplMap.put(RuleUtil.concept_TemplateCallMacro, 14);
      macroImplMap.put(RuleUtil.concept_TraceMacro, 15);
      macroImplMap.put(RuleUtil.concept_ExportMacro, 16);
    }

    @Override
    public MacroNode create(@NotNull SNode macro, @NotNull TemplateNode templateNode, @Nullable MacroNode next) {
      Integer k = macroImplMap.get(macro.getConcept());
      if (k == null) {
        return new NoMacro(macro, templateNode, next, myTemplateProcessor);
      }
      switch(k) {
        case 0 : return new NoMacro(macro, templateNode, next, myTemplateProcessor);
        case 1 : return new LoopMacro(macro, templateNode, next, myTemplateProcessor);
        case 2 : return new CopySrcMacros(macro, templateNode, next, myTemplateProcessor, true);
        case 3 : return new CopySrcMacros(macro, templateNode, next, myTemplateProcessor, false);
        case 4 : return new InsertMacro(macro, templateNode, next, myTemplateProcessor);
        case 5 : return new WeaveMacro(macro, templateNode, next, myTemplateProcessor);
        case 6 : return new LabelMacro(macro, templateNode, next, myTemplateProcessor);
        case 7 : return new VarMacro(macro, templateNode, next, myTemplateProcessor);
        case 8 : return new IfMacro(macro, templateNode, next, myTemplateProcessor);
        case 9 : return new MapSrcMacros(macro, templateNode, next, myTemplateProcessor, true);
        case 10 : return new MapSrcMacros(macro, templateNode, next, myTemplateProcessor, false);
        case 11 : return new SwitchMacro(macro, templateNode, next, myTemplateProcessor);
        case 12 : return new SwitchWithArgMacro(macro, templateNode, next, myTemplateProcessor);
        case 13 : return new IncludeMacro(macro, templateNode, next, myTemplateProcessor);
        case 14 : return new CallMacro(macro, templateNode, next, myTemplateProcessor);
        case 15 : return new TraceMacro(macro, templateNode, next, myTemplateProcessor);
        case 16 : return new ExportMacro(macro, templateNode, next, myTemplateProcessor);
        default: return new NoMacro(macro, templateNode, next, myTemplateProcessor);
      }
    }
  }

  /**
   * Record value with name
   */
  private static class ExportMacro extends MacroImpl {
    public ExportMacro(@NotNull SNode macro, @NotNull TemplateNode templateNode, @Nullable MacroNode next, @NotNull TemplateProcessor templateProcessor) {
      super(macro, templateNode, next, templateProcessor);
    }

    @NotNull
    @Override
    public List<SNode> apply(@NotNull TemplateContext templateContext) throws DismissTopMappingRuleException, GenerationFailureException,
        GenerationCanceledException {
      final List<SNode> value = nextMacro(templateContext);
      final GenerationSessionContext ctx = myTemplateProcessor.getGenerator().getGeneratorSessionContext();
      ctx.getExports().record(templateContext, macro.getReferenceTarget("label"), value);
      return value;
    }
  }

  private static abstract class MacroImpl implements MacroNode {
    protected final TemplateProcessor myTemplateProcessor; // XXX now, with macro and tn as fields, perhaps shall pass TP as an argument to apply?
    protected final SNode macro;
    protected final TemplateNode templateNode;
    private final SNodeReference myMacroNodeRef;
    private final String myMappingLabel;
    private final MacroNode myNextMacro;

    protected MacroImpl(@NotNull SNode macro, @NotNull TemplateNode templateNode, @Nullable MacroNode next, @NotNull TemplateProcessor templateProcessor) {
      this.macro = macro;
      this.templateNode = templateNode;
      myNextMacro = next;
      myTemplateProcessor = templateProcessor;
      myMacroNodeRef = new SNodePointer(macro);
      myMappingLabel = GeneratorUtilEx.getMappingName_NodeMacro(macro, null);
    }

    @Override
    public final MacroNode getNextMacro() {
      return myNextMacro;
    }

    @NotNull
    @Override
    public final SNodeReference getMacroNodeRef() {
      return myMacroNodeRef;
    }

    @Nullable
    @Override
    public final String getMappingLabel() {
      // instead of this accessor may implement #apply here, and delegate to another method in subclass with updated context
      return myMappingLabel;
    }

    protected final List<SNode> nextMacro(TemplateContext context)
        throws GenerationFailureException, DismissTopMappingRuleException, GenerationCanceledException {
      if (getNextMacro() != null) {
        return myTemplateProcessor.applyMacro(getNextMacro(), context);
      } else {
        return myTemplateProcessor.applyTemplate(templateNode, context);
      }
    }

    protected final IGeneratorLogger getLogger() {
      return myTemplateProcessor.getGenerator().getLogger();
    }
  }

  // could be standalone facility, not an element in class hierarchy
  private static abstract class MacroWithInput extends MacroImpl {
    private volatile SourceNodeQuery mySourceNodeQuery;
    private volatile SourceNodesQuery mySourceNodesQuery;

    protected MacroWithInput(SNode macro, TemplateNode templateNode, MacroNode next, TemplateProcessor templateProcessor) {
      super(macro, templateNode, next, templateProcessor);
    }

    protected final SNode getNewInputNode(@NotNull TemplateContext context) throws GenerationFailureException {
      SourceNodeQuery q = mySourceNodeQuery;
      if (q == null) {
        synchronized (this) {
          if ((q = mySourceNodeQuery) == null) {
            q = mySourceNodeQuery = createNodeQuery();
          }
        }
      }
      final QueryExecutor qe = context.getEnvironment().getQueryExecutor();
      return qe.evaluate(q, new SourceSubstituteMacroNodeContext(context, getMacroNodeRef()));
    }

    protected final Collection<SNode> getNewInputNodes(@NotNull TemplateContext context) throws GenerationFailureException {
      SourceNodesQuery q = mySourceNodesQuery;
      if (q == null) {
        synchronized (this) {
          if ((q = mySourceNodesQuery) == null) {
            q = mySourceNodesQuery = createNodesQuery();
          }
        }
      }
      if (q == null) {
        getLogger().error(getMacroNodeRef(), "couldn't get input nodes", GeneratorUtil.describeInput(context));
        throw new GenerationFailureException("couldn't get input nodes");
      }
      final QueryExecutor qe = context.getEnvironment().getQueryExecutor();
      final Collection<SNode> result = qe.evaluate(q, new SourceSubstituteMacroNodesContext(context, getMacroNodeRef()));
      checkInputNodesForNulls(context, result);
      return result;
    }

    static <T> List<T> wrapAsList(T node) {
      return node == null ? Collections.<T>emptyList() : Collections.singletonList(node);
    }

    private void checkInputNodesForNulls(TemplateContext context, Iterable<SNode> result) throws GenerationFailureException {
      for (SNode n : result) {
        if (n == null) {
          final String msg = String.format("Unexpected null value among new input nodes in %s macro", macro.getPresentation());
          context.getEnvironment().getLogger().error(getMacroNodeRef(), msg, GeneratorUtil.describeInput(context));
          throw new GenerationFailureException(msg);
        }
      }
    }

    private SourceNodeQuery createNodeQuery() {
      SNode query = RuleUtil.getSourceNodeQuery(macro);
      if (query != null) {
        return myTemplateProcessor.getQueryProvider(getMacroNodeRef()).getSourceNodeQuery(query);
      } else {
        // <default> : propagate  current input node
        return new SourceNodeQuery() {
          @Nullable
          @Override
          public SNode evaluate(@NotNull SourceSubstituteMacroNodeContext context) throws GenerationFailureException {
            return context.getInputNode();
          }
        };
      }
    }

    // return null iff there's no sourceNodesQuery but macro does require input
    private SourceNodesQuery createNodesQuery() {
      SNode nodesQuery = RuleUtil.getSourceNodesQuery(macro);
      if (nodesQuery != null) {
        return myTemplateProcessor.getQueryProvider(getMacroNodeRef()).getSourceNodesQuery(nodesQuery);
      }
      if (RuleUtil.doesMacroRequireInput(macro)) {
        return null;
      }
      // <default> : propagate  current input node
      return new SourceNodesQuery() {
        @NotNull
        @Override
        public Collection<SNode> evaluate(@NotNull SourceSubstituteMacroNodesContext context) throws GenerationFailureException {
          return wrapAsList(context.getInputNode());
        }
      };
    }
  }

  // $LOOP$
  private static class LoopMacro extends MacroWithInput {
    LoopMacro(@NotNull SNode macro, @NotNull TemplateNode templateNode, @Nullable MacroNode next, @NotNull TemplateProcessor templateProcessor) {
      super(macro, templateNode, next, templateProcessor);
    }

    @NotNull
    @Override
    public List<SNode> apply(@NotNull TemplateContext templateContext) throws DismissTopMappingRuleException, GenerationFailureException,
        GenerationCanceledException {
      Collection<SNode> newInputNodes = getNewInputNodes(templateContext);
      if (newInputNodes.isEmpty()) {
        return Collections.emptyList();
      }
      String counterVarName = RuleUtil.getLoopMacroCounterVarName(macro);
      ArrayList<SNode> outputNodes = new ArrayList<SNode>();
      int i = 0;
      for (SNode newInputNode : newInputNodes) {
        TemplateContext ctx = templateContext;
        if (counterVarName != null) {
          ctx = ctx.subContext(Collections.<String,Object>singletonMap("cv:" + counterVarName, i));
        }
        ctx = ctx.subContext(newInputNode);
        List<SNode> _outputNodes = nextMacro(ctx);
        outputNodes.addAll(_outputNodes);
        i++;
      }
      return outputNodes;
    }
  }

  // $COPY-SRC$ / $COPY-SRCL$
  private static class CopySrcMacros extends MacroWithInput {
    private final boolean myIsSoleInput;

    protected CopySrcMacros(@NotNull SNode macro, @NotNull TemplateNode templateNode, @Nullable MacroNode next, @NotNull TemplateProcessor templateProcessor, boolean soleInput) {
      super(macro, templateNode, next, templateProcessor);
      myIsSoleInput = soleInput;
    }

    @NotNull
    @Override
    public List<SNode> apply(@NotNull TemplateContext templateContext) throws DismissTopMappingRuleException, GenerationFailureException,
        GenerationCanceledException {
      final Collection<SNode> newInputNodes;
      if (myIsSoleInput) {
        newInputNodes = wrapAsList(getNewInputNode(templateContext));
      } else {
        newInputNodes = getNewInputNodes(templateContext);
      }
      SNodeReference templateNodeRef = templateNode.getTemplateNodeReference();
      String tempNodeId = templateNode.getTemplateNodeId();
      return templateContext.getEnvironment().copyNodes(newInputNodes, templateNodeRef, tempNodeId, templateContext);
    }
  }

  // $INSERT$
  private static class InsertMacro extends MacroImpl {
    protected InsertMacro(@NotNull SNode macro, @NotNull TemplateNode templateNode, @Nullable MacroNode next, @NotNull TemplateProcessor templateProcessor) {
      super(macro, templateNode, next, templateProcessor);
    }

    private SNode getNodeToInsert(TemplateContext context) throws GenerationFailureException {
      SNode query = RuleUtil.getInsertMacro_Query(macro);
      if(query != null) {
        return context.getEnvironment().getQueryExecutor().evaluateInsertQuery(context.getInput(), macro, query, context);
      }

      getLogger().error(getMacroNodeRef(), "couldn't get nodes to insert", GeneratorUtil.describeInput(context));
      throw new GenerationFailureException("couldn't get nodes to insert");
    }

    @NotNull
    @Override
    public List<SNode> apply(@NotNull TemplateContext templateContext) throws DismissTopMappingRuleException, GenerationFailureException,
        GenerationCanceledException {
      SNode child = getNodeToInsert(templateContext);
      if (child != null) {
        child = templateContext.getEnvironment().insertNode(child, getMacroNodeRef(), templateContext);
        // XXX TEEI.insertNode doesn't register ML, perhaps shall behave the same as this code? Or it's done in generated code?
        // label
        myTemplateProcessor.getGenerator().registerMappingLabel(templateContext.getInput(), templateContext.getInputName(), child);
        return Collections.singletonList(child);
      }
      return Collections.emptyList();
    }
  }

  // $WEAVE$
  private static class WeaveMacro extends MacroWithInput {

    protected WeaveMacro(@NotNull SNode macro, @NotNull TemplateNode templateNode, @Nullable MacroNode next, @NotNull TemplateProcessor templateProcessor) {
      super(macro, templateNode, next, templateProcessor);
    }

    @NotNull
    @Override
    public List<SNode> apply(@NotNull TemplateContext templateContext) throws DismissTopMappingRuleException, GenerationFailureException,
        GenerationCanceledException {
      List<SNode> _outputNodes = nextMacro(templateContext);
      if (_outputNodes.isEmpty()) {
        return Collections.emptyList();
      }
      if (_outputNodes.size() > 1) {
        getLogger().error(macro.getReference(), "cannot apply $WEAVE$ to a list of nodes",
            GeneratorUtil.describe(templateContext.getInput(), "input"));
        return _outputNodes;
      }
      SNode consequence = RuleUtil.getWeaveMacro_Consequence(macro);
      if (consequence == null) {
        getLogger().error(macro.getReference(), "couldn't evaluate weave macro: no consequence",
            GeneratorUtil.describeIfExists(templateContext.getInput(), "input"));
        return _outputNodes;
      }

      SNode template = RuleUtil.getTemplateDeclarationReference_Template(consequence);
      ////
      if (template == null) {
        getLogger().error(macro.getReference(), "couldn't evaluate weave macro: no template",
            GeneratorUtil.describeIfExists(templateContext.getInput(), "input"));
        return _outputNodes;
      }
      WeaveTemplateContainer wtc = new WeaveTemplateContainer(template);
      wtc.initialize(getLogger());

      SNode contextNode = _outputNodes.get(0);
      for (SNode node : getNewInputNodes(templateContext)) {
        wtc.apply(contextNode, templateContext.subContext(node));
      }
      return _outputNodes;
    }
  }

  // $LABEL$
  private static class LabelMacro extends MacroImpl {
    protected LabelMacro(@NotNull SNode macro, @NotNull TemplateNode templateNode, @Nullable MacroNode next, @NotNull TemplateProcessor templateProcessor) {
      super(macro, templateNode, next, templateProcessor);
    }

    @NotNull
    @Override
    public List<SNode> apply(@NotNull TemplateContext templateContext) throws DismissTopMappingRuleException, GenerationFailureException,
        GenerationCanceledException {
      return nextMacro(templateContext);
    }
  }

  // $VAR$
  private static class VarMacro extends MacroImpl {

    protected VarMacro(@NotNull SNode macro, @NotNull TemplateNode templateNode, @Nullable MacroNode next, @NotNull TemplateProcessor templateProcessor) {
      super(macro, templateNode, next, templateProcessor);
    }

    @NotNull
    @Override
    public List<SNode> apply(@NotNull TemplateContext templateContext) throws DismissTopMappingRuleException, GenerationFailureException,
        GenerationCanceledException {
      String varName = RuleUtil.getVarMacro_Name(macro);
      Object varValue = templateContext.getEnvironment().getQueryExecutor().evaluateVariableQuery(templateContext.getInput(), RuleUtil.getVarMacro_Query(macro),
          templateContext);
      TemplateContext newContext = templateContext.subContext(Collections.singletonMap(varName, varValue));

      // tc.subContext(Map props) doesn't save mapping label, so "LABEL aaa VAR bb <templateNode>" fails to
      // establish mapping aaa:templateNode. However, instead of passing ML here once again, shall consider updating subContext(Map)
      // contract to preserve mapping label. Can't do it without thorough check of the method usage in generated templates
      return nextMacro(newContext.subContext(templateContext.getInputName()));
    }
  }

  // $IF$
  private static class IfMacro extends MacroImpl {
    private final IfMacroCondition myCondition;
    private final RuleConsequenceProcessor myAlternativeConsequence;

    protected IfMacro(@NotNull SNode macro, @NotNull TemplateNode templateNode, @Nullable MacroNode next, @NotNull TemplateProcessor templateProcessor) {
      super(macro, templateNode, next, templateProcessor);
      SNode alternativeConsequence = RuleUtil.getIfMacro_AlternativeConsequence(macro);
      myAlternativeConsequence = alternativeConsequence == null ? null : RuleConsequenceProcessor.prepare(alternativeConsequence);
      myCondition = templateProcessor.getQueryProvider(macro.getReference()).getIfMacroCondition(macro);
    }

    @NotNull
    @Override
    public List<SNode> apply(@NotNull TemplateContext context)
        throws DismissTopMappingRuleException, GenerationFailureException, GenerationCanceledException {
      final QueryExecutor queryExecutor = context.getEnvironment().getQueryExecutor();
      if (queryExecutor.evaluate(myCondition, new IfMacroContext(context, getMacroNodeRef()))) {
        return nextMacro(context);
      } else {
        // alternative consequence
        if (myAlternativeConsequence == null) {
          return Collections.emptyList();
        }
        try {
          return myAlternativeConsequence.processRuleConsequence(context);
        } catch (AbandonRuleInputException ex) {
          // it's ok. just ignore
          return Collections.emptyList();
        }
      }
    }
  }

  // $MAP-SRC$ or $MAP-SRCL$
  private static class MapSrcMacros extends MacroWithInput {

    private final boolean myIsSoleInput;

    protected MapSrcMacros(@NotNull SNode macro, @NotNull TemplateNode templateNode, @Nullable MacroNode next, @NotNull TemplateProcessor templateProcessor, boolean soleInput) {
      super(macro, templateNode, next, templateProcessor);
      myIsSoleInput = soleInput;
    }

    @NotNull
    @Override
    public List<SNode> apply(@NotNull TemplateContext templateContext) throws DismissTopMappingRuleException, GenerationFailureException,
        GenerationCanceledException {
      SNode macro_mapperFunction = RuleUtil.getMapSrc_MapperFunction(macro);
      final Collection<SNode> newInputNodes;
      if (myIsSoleInput) {
        newInputNodes = wrapAsList(getNewInputNode(templateContext));
      } else {
        newInputNodes = getNewInputNodes(templateContext);
      }
      if (newInputNodes.isEmpty()) {
        return Collections.emptyList();
      }
      ArrayList<SNode> outputNodes = new ArrayList<SNode>(newInputNodes.size());
      for (SNode newInputNode : newInputNodes) {

        TemplateContext newcontext = templateContext.subContext(newInputNode);
        final TemplateExecutionEnvironment env = templateContext.getEnvironment();
        if (macro_mapperFunction != null) {
          SNode childToReplaceLater = myTemplateProcessor.myOutputModel.createNode(templateNode.getConcept());
          outputNodes.add(childToReplaceLater);
          // execute the 'mapper' function later
          myTemplateProcessor.getGenerator().getDelayedChanges().addExecuteMapSrcNodeMacroChange(macro, childToReplaceLater, newcontext, env.getQueryExecutor());
        } else {
          List<SNode> _outputNodes = nextMacro(newcontext);
          outputNodes.addAll(_outputNodes);
          // do post-processing here (it's not really a post-processing because model is not completed yet - output nodes are not added to parent node).
          for (SNode outputNode : _outputNodes) {
            myTemplateProcessor.getGenerator().getDelayedChanges().addExecuteMapSrcNodeMacroPostProcChange(macro, outputNode, newcontext, env.getQueryExecutor());
          }
        }
      }
      return outputNodes;
    }
  }

  // Old $SWITCH$ without arguments and new $SWITCH$ that allows arguments
  private static class SwitchMacro extends MacroWithInput {

    protected SwitchMacro(@NotNull SNode macro, @NotNull TemplateNode templateNode, @Nullable MacroNode next, @NotNull TemplateProcessor templateProcessor) {
      super(macro, templateNode, next, templateProcessor);
    }

    protected SNode getTemplateSwitch() {
      return RuleUtil.getSwitchMacro_TemplateSwitch(macro);
    }
    protected TemplateContext prepareContext(TemplateContext templateContext) throws GenerationFailureException {
      return templateContext;
    }
    @NotNull
    @Override
    public List<SNode> apply(@NotNull TemplateContext templateContext) throws DismissTopMappingRuleException, GenerationFailureException,
        GenerationCanceledException {
      SNode templateSwitch = getTemplateSwitch();
      if (templateSwitch == null) {
        throw new TemplateProcessingFailureException(macro, "error processing $SWITCH$ - bad TemplateSwitch reference",
            GeneratorUtil.describeInput(templateContext));
      }
      final SNodeReference switchPtr = new jetbrains.mps.smodel.SNodePointer(templateSwitch);
      SNode newInputNode = getNewInputNode(templateContext);
      if (newInputNode == null) {
        TemplateSwitchMapping tswitch = myTemplateProcessor.getGenerator().getSwitch(switchPtr);
        if (tswitch != null) {
          tswitch.processNull(templateContext.getEnvironment(), switchPtr, templateContext);
        }
        return Collections.emptyList(); // skip template
      }

      boolean inputChanged = (newInputNode != templateContext.getInput());

      final TemplateContext switchContext = prepareContext(templateContext).subContext(newInputNode);

      Collection<SNode> collection = null;
      try {
        collection = templateContext.getEnvironment().trySwitch(switchPtr, switchContext);
      } catch (GenerationCanceledException e) {
        throw e;
      } catch (GenerationFailureException e) {
        throw e;
      } catch (DismissTopMappingRuleException e) {
        throw e;
      } catch (GenerationException e) {
        getLogger().error(switchPtr, "internal error in switch.applyDefault: " + e.toString(), GeneratorUtil.describe(macro, "macro"));
      }
      if (collection == null) {
        // no switch-case found for the inputNode - continue with templateNode under the $switch$
        // use initial context, not the one prepared (could be filled with switch arguments)
        collection = nextMacro(templateContext.subContext(newInputNode));
      }
      return new ArrayList<SNode>(collection);
    }
  }

  // new $SWITCH$, with args
  private static class SwitchWithArgMacro extends SwitchMacro {
    private volatile TemplateCall myCallProcessor;
    protected SwitchWithArgMacro(@NotNull SNode macro, @NotNull TemplateNode templateNode, @Nullable MacroNode next, @NotNull TemplateProcessor templateProcessor) {
      super(macro, templateNode, next, templateProcessor);
    }

    @Override
    protected SNode getTemplateSwitch() {
      return RuleUtil.getTemplateSwitchMacro_TemplateSwitch(macro);
    }

    @Override
    protected TemplateContext prepareContext(TemplateContext templateContext) throws GenerationFailureException {
      TemplateCall tc = myCallProcessor;
      if (tc == null) {
        tc = new TemplateCall(macro);
        if (tc.argumentsMismatch()) {
          getLogger().error(getMacroNodeRef(), "number of arguments doesn't match template", GeneratorUtil.describeInput(templateContext));
          // fall-through
        }
        myCallProcessor = tc;
      }
      return tc.prepareCallContext(templateContext);
    }
  }

  // subclass is responsible to initialize myInvokedTemplate field
  private static abstract class InvokeTemplateMacro extends MacroWithInput {
    private final String myName;
    protected SNode myInvokedTemplate;
    private volatile TemplateContainer myTemplates;

    protected InvokeTemplateMacro(@NotNull SNode macro, @NotNull TemplateNode templateNode, @Nullable MacroNode next, @NotNull TemplateProcessor templateProcessor, String macroName) {
      super(macro, templateNode, next, templateProcessor);
      myName = macroName;
    }
    protected abstract TemplateContext prepareContext(TemplateContext templateContext) throws GenerationFailureException;

    private TemplateContainer getTemplates() {
      TemplateContainer rv = myTemplates;
      if (rv == null) {
        synchronized (this) {
          if ((rv = myTemplates) == null) {
            rv = new TemplateContainer(myInvokedTemplate);
            myTemplates = rv;
          }
        }
      }
      return rv;
    }

    @NotNull
    @Override
    public final List<SNode> apply(@NotNull TemplateContext templateContext)
        throws DismissTopMappingRuleException, GenerationFailureException, GenerationCanceledException {

      SNode newInputNode = getNewInputNode(templateContext);
      if (newInputNode == null) {
        return Collections.emptyList(); // skip template
      }

      SNode invokedTemplate = myInvokedTemplate;
      if (invokedTemplate == null) {
        throw new TemplateProcessingFailureException(macro, String.format("error processing %s : no template to invoke", myName));
      }

      TemplateContext newcontext = prepareContext(templateContext).subContext(newInputNode);
      if (newcontext == null) {
        throw new TemplateProcessingFailureException(macro, String.format("error processing %s : failed to prepare new context", myName),
            GeneratorUtil.describe(invokedTemplate, "invoked template"));
      }

      final TemplateContainer tc = getTemplates();
      final List<SNode> rv = tc.processRuleConsequence(newcontext);
      templateContext.getEnvironment().getTrace().trace(newInputNode.getNodeId(), GenerationTracerUtil.translateOutput(rv), getMacroNodeRef());
      return rv;
    }
  }

  // $INCLUDE$
  private static class IncludeMacro extends InvokeTemplateMacro {

    protected IncludeMacro(@NotNull SNode macro, @NotNull TemplateNode templateNode, @Nullable MacroNode next, @NotNull TemplateProcessor templateProcessor) {
      super(macro, templateNode, next, templateProcessor, "$INCLUDE$");
      myInvokedTemplate = RuleUtil.getIncludeMacro_Template(macro);
    }

    @Override
    protected TemplateContext prepareContext(TemplateContext templateContext) throws GenerationFailureException {
      final String[] parameterNames = RuleUtil.getTemplateDeclarationParameterNames(myInvokedTemplate);
      if (parameterNames == null) {
        getLogger().error(getMacroNodeRef(), "error processing $INCLUDE$: target template is broken", GeneratorUtil.describeInput(templateContext));
        return null;
      }

      for (String name : parameterNames) {
        if (!templateContext.hasVariable(name)) {
          getLogger().error(getMacroNodeRef(), String.format("error processing $INCLUDE$: parameter '%s' is missing", name),
              GeneratorUtil.describeInput(templateContext));
        }
      }
      return templateContext;
    }
  }

  // $CALL$
  private static class CallMacro extends InvokeTemplateMacro {
    private volatile TemplateCall myCallProcessor;

    protected CallMacro(@NotNull SNode macro, @NotNull TemplateNode templateNode, @Nullable MacroNode next, @NotNull TemplateProcessor templateProcessor) {
      super(macro, templateNode, next, templateProcessor, "$CALL$");
      myInvokedTemplate = RuleUtil.getCallMacro_Template(macro);
    }

    @Override
    protected TemplateContext prepareContext(TemplateContext templateContext) throws GenerationFailureException {
      TemplateCall tc = myCallProcessor;
      if (tc == null) {
        tc = new TemplateCall(macro);
        if (tc.argumentsMismatch()) {
          getLogger().error(getMacroNodeRef(), "number of arguments doesn't match template", GeneratorUtil.describeInput(templateContext));
          // fall-through
        }
        myCallProcessor = tc;
      }
      return tc.prepareCallContext(templateContext);
    }
  }

  // $TRACE$
  private static class TraceMacro extends MacroWithInput {

    protected TraceMacro(@NotNull SNode macro, @NotNull TemplateNode templateNode, @Nullable MacroNode next, @NotNull TemplateProcessor templateProcessor) {
      super(macro, templateNode, next, templateProcessor);
    }

    @NotNull
    @Override
    public List<SNode> apply(@NotNull TemplateContext templateContext) throws DismissTopMappingRuleException, GenerationFailureException,
        GenerationCanceledException {
      List<SNode> _outputNodes = nextMacro(templateContext);
      if (!_outputNodes.isEmpty()) {
        SNode inputNode = getNewInputNode(templateContext);
        if (inputNode != null) {
          for (SNode outputNode : _outputNodes) {
            TracingUtil.fillOriginalNode(inputNode, outputNode, false);
          }
        }
      }
      return _outputNodes;
    }
  }

  // $$
  private static class NoMacro extends MacroWithInput {

    protected NoMacro(@NotNull SNode macro, @NotNull TemplateNode templateNode, @Nullable MacroNode next, @NotNull TemplateProcessor templateProcessor) {
      super(macro, templateNode, next, templateProcessor);
    }

    @NotNull
    @Override
    public List<SNode> apply(@NotNull TemplateContext templateContext) throws DismissTopMappingRuleException, GenerationFailureException,
        GenerationCanceledException {

      Collection<SNode> newInputNodes = getNewInputNodes(templateContext);
      if (newInputNodes.isEmpty()) {
        return Collections.emptyList();
      }
      ArrayList<SNode> outputNodes = new ArrayList<SNode>();
      for (SNode newInputNode : newInputNodes) {
        List<SNode> _outputNodes = nextMacro(templateContext.subContext(newInputNode));
        outputNodes.addAll(_outputNodes);
      }
      return outputNodes;
    }
  }
}
