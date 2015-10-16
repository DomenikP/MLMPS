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
import jetbrains.mps.generator.GenerationTrace;
import jetbrains.mps.generator.GenerationTracerUtil;
import jetbrains.mps.generator.IGenerationTracer;
import jetbrains.mps.generator.IGeneratorLogger;
import jetbrains.mps.generator.NullGenerationTracer;
import jetbrains.mps.generator.TransientSModel;
import jetbrains.mps.generator.impl.RoleValidation.RoleValidator;
import jetbrains.mps.generator.impl.RoleValidation.Status;
import jetbrains.mps.generator.impl.query.GeneratorQueryProvider;
import jetbrains.mps.generator.impl.reference.PostponedReference;
import jetbrains.mps.generator.impl.reference.ReferenceInfo_Macro;
import jetbrains.mps.generator.impl.reference.ReferenceInfo_Template;
import jetbrains.mps.generator.runtime.GenerationException;
import jetbrains.mps.generator.runtime.NodeMapper;
import jetbrains.mps.generator.runtime.PostProcessor;
import jetbrains.mps.generator.runtime.ReferenceResolver;
import jetbrains.mps.generator.runtime.TemplateContext;
import jetbrains.mps.generator.runtime.TemplateDeclaration;
import jetbrains.mps.generator.runtime.TemplateDeclarationWeavingAware;
import jetbrains.mps.generator.runtime.TemplateExecutionEnvironment;
import jetbrains.mps.generator.runtime.TemplateModel;
import jetbrains.mps.generator.runtime.TemplateReductionRule;
import jetbrains.mps.generator.runtime.TemplateRuleWithCondition;
import jetbrains.mps.generator.runtime.TemplateSwitchMapping;
import jetbrains.mps.generator.template.ITemplateProcessor;
import jetbrains.mps.generator.template.QueryExecutionContext;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.tracing.TracedNode;
import jetbrains.mps.smodel.tracing.TransformationTrace;
import jetbrains.mps.smodel.tracing.nodes.SNodeProxy;
import jetbrains.mps.textgen.trace.TracingSettings;
import jetbrains.mps.textgen.trace.TracingUtil;
import jetbrains.mps.util.containers.ConcurrentHashSet;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SConceptRepository;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeId;
import org.jetbrains.mps.openapi.model.SNodeReference;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;

/**
 * Evgeny Gryaznov, 11/10/10
 */
public class TemplateExecutionEnvironmentImpl implements TemplateExecutionEnvironment {
  private final TemplateGenerator generator;
  private final QueryExecutionContext myExecutionContext;
  private final ITemplateProcessor myTemplateProcessor;
  private final ReductionTrack myReductionTrack;

  // although it's possible to instantiate ReductionTrack here (we've got generator in TP),
  // I plan to separate TEE and RT so that they are independent
  public TemplateExecutionEnvironmentImpl(@NotNull TemplateProcessor templateProcessor, @NotNull QueryExecutionContext executionContext, @NotNull ReductionTrack reductionTrack) {
    this.generator = templateProcessor.getGenerator();
    myExecutionContext = executionContext;
    myTemplateProcessor = templateProcessor;
    myReductionTrack = reductionTrack;
  }

  @Override
  public IOperationContext getOperationContext() {
    return generator.getGeneratorSessionContext();
  }

  @Override
  public SModel getOutputModel() {
    return generator.getOutputModel();
  }

  @NotNull
  @Override
  public SNode createOutputNode(@NotNull String conceptName) {
    // I use getInstanceConcept because it doesn't return null for unknown concepts
    // Another alternative is to check getContainingConcept for null and instantiate BaseConcept then
    SConcept c = SConceptRepository.getInstance().getInstanceConcept(conceptName);
    return generator.getOutputModel().createNode(c);
  }

  @NotNull
  @Override
  public TemplateGenerator getGenerator() {
    return generator;
  }


  @NotNull
  @Override
  public GenerationTrace getTrace() {
    return generator.getTrace();
  }

  @Override
  public IGenerationTracer getTracer() {
    return new NullGenerationTracer();
  }

  @Override
  public IGeneratorLogger getLogger() {
    return generator.getLogger();
  }

  @NotNull
  @Override
  public GeneratorQueryProvider getQueryProvider(@NotNull SNodeReference ruleNode) {
    return generator.getQuerySource().getQueryProvider(ruleNode);
  }

  @NotNull
  @Override
  public QueryExecutionContext getQueryExecutor() {
    return myExecutionContext;
  }

  @NotNull
  @Override
  public ITemplateProcessor getTemplateProcessor() {
    return myTemplateProcessor;
  }


  @Override
  @NotNull
  public List<SNode> copyNodes(@NotNull Iterable<SNode> inputNodes, @NotNull SNodeReference templateNode, @NotNull String templateId,
      @NotNull TemplateContext ctx) throws GenerationCanceledException, GenerationFailureException {
    List<SNode> outputNodes = generator.copyNodes(inputNodes, ctx, templateId, this);
    if (!outputNodes.isEmpty()) {
      new ChildAdopter(generator).checkIsExpectedLanguage(outputNodes, templateNode, ctx);
    }
    return outputNodes;
  }

  @Override
  public SNode insertNode(SNode child, SNodeReference templateNode, TemplateContext templateContext) throws GenerationCanceledException, GenerationFailureException {
    ChildAdopter a = new ChildAdopter(generator);
    a.checkIsExpectedLanguage(Collections.singletonList(child), templateNode, templateContext);
    return a.adopt(child, templateContext);
  }

  @Nullable
  @Override
  public Collection<SNode> trySwitch(SNodeReference _switch, TemplateContext context) throws GenerationException {
    FastRuleFinder rf = generator.getRuleManager().getRuleFinder(_switch);
    Collection<SNode> outputNodes = tryToReduce(rf, context);
    if (outputNodes != null) {
      if (outputNodes.size() == 1 && context.getInputName() != null) {
        SNode reducedNode = outputNodes.iterator().next();
        // register copied node
        generator.registerMappingLabel(context.getInput(), context.getInputName(), reducedNode);
      }
      return outputNodes;
    }

    // try the default case
    TemplateSwitchMapping current = generator.getSwitch(_switch);
    if (current != null) {
      return current.applyDefault(this, _switch, context.getInputName(), context); // FIXME TSM.applyDefault without explicit mappingLabel
    }
    // no switch-case found for the inputNode - continue with templateNode under the $switch$
    return null;
  }

  @Override
  public Collection<SNode> applyTemplate(@NotNull SNodeReference templateDeclaration, @NotNull SNodeReference templateNode, @NotNull TemplateContext context, Object... arguments) throws GenerationException {
    TemplateDeclaration templateDeclarationInstance = loadTemplateDeclaration(templateDeclaration, templateNode, context, arguments);
    if (templateDeclarationInstance == null) {
      return Collections.emptyList();
    }
    return templateDeclarationInstance.apply(this, context);
  }

  @Override
  public Collection<SNode> weaveTemplate(@NotNull SNodeReference templateDeclaration, @NotNull SNodeReference templateNode, @NotNull TemplateContext context, @NotNull SNode outputContextNode, Object... arguments) throws GenerationException {
    TemplateDeclaration templateDeclarationInstance = loadTemplateDeclaration(templateDeclaration, templateNode, context, arguments);
    return ((TemplateDeclarationWeavingAware) templateDeclarationInstance).weave(this, context, outputContextNode);
  }


  private TemplateDeclaration loadTemplateDeclaration(@NotNull SNodeReference templateDeclaration, @NotNull SNodeReference templateNode, @NotNull TemplateContext context, Object... arguments) {
    TemplateModel templateModel = generator.getRuleManager().getTemplateModel(templateDeclaration.getModelReference());
    TemplateDeclaration templateDeclarationInstance = templateModel == null ? null : templateModel.loadTemplate(templateDeclaration, arguments);
    if (templateModel == null || templateDeclarationInstance == null) {
      String msg = "%s not found: cannot apply template declaration, try to check & regenerate affected generators";
      getLogger().error(templateNode, String.format(msg, templateModel == null ? "template model" : "declaration"),
          GeneratorUtil.describeIfExists(context.getInput(), "input"),
          GeneratorUtil.describe(templateNode, "template"),
          GeneratorUtil.describe(templateDeclaration, "template declaration"));
      return null;
    }
    return templateDeclarationInstance;
  }


  @Override
  public void nodeCopied(TemplateContext context, SNode outputNode, String templateNodeId) {
    generator.nodeCopied(context, outputNode, templateNodeId);
  }

  @Override
  public void registerLabel(SNode inputNode, SNode outputNode, String mappingLabel) {
    generator.registerMappingLabel(inputNode, mappingLabel, outputNode);
  }

  @Override
  public void registerLabel(SNode inputNode, Iterable<SNode> outputNodes, String mappingLabel) {
    for (SNode outputNode : outputNodes) {
      generator.registerMappingLabel(inputNode, mappingLabel, outputNode);
    }
  }

  @Override
  public void resolveInTemplateLater(@NotNull SNode outputNode, @NotNull String role, SNodeReference sourceNode, String templateNodeId, String resolveInfo, TemplateContext context) {
    ReferenceInfo_Template refInfo = new ReferenceInfo_Template(
      outputNode,
      role,
      sourceNode,
      templateNodeId,
      resolveInfo,
      context);
    generator.register(new PostponedReference(refInfo)).setReferenceInOutputSourceNode();
  }

  @Override
  public void resolve(@NotNull ReferenceResolver resolver, @NotNull SNode outputNode, @NotNull String role, @NotNull TemplateContext context) {
    ReferenceInfo_Macro refInfo = new ReferenceInfo_Macro(resolver, outputNode, role, context);
    PostponedReference postponedReference = generator.register(new PostponedReference(refInfo));
    postponedReference.setReferenceInOutputSourceNode();
  }

  /*
  *  returns temporary node
  */
  @Override
  public SNode insertLater(@NotNull NodeMapper mapper, PostProcessor postProcessor, TemplateContext context) {
    SNode childToReplaceLater = createOutputNode(mapper.getConceptFqName());
    generator.getDelayedChanges().addExecuteNodeMapper(mapper, postProcessor, childToReplaceLater, context, getQueryExecutor());
    return childToReplaceLater;
  }

  @Override
  public void postProcess(@NotNull PostProcessor processor, SNode outputNode, TemplateContext context) {
    generator.getDelayedChanges().addExecutePostProcessor(processor, outputNode, context, getQueryExecutor());
  }

  @Override
  public void weaveNode(SNode contextParentNode, String childRole, SNode outputNodeToWeave, SNodeReference templateNode, SNode inputNode) {
    if (outputNodeToWeave == null) {
      return;
    }

    TracingUtil.fillOriginalNode(inputNode, outputNodeToWeave, false);

    // check child
    RoleValidator v = generator.getChildRoleValidator(contextParentNode, childRole);
    Status status = v.validate(outputNodeToWeave);
    if (status != null) {
      getLogger().warning(templateNode, status.getMessage("weave node"), status.describe(
          GeneratorUtil.describe(inputNode, "input"), GeneratorUtil.describe(contextParentNode, "context parent node")));
      // spit out the warning, but try to add anyway
      contextParentNode.addChild(childRole, outputNodeToWeave);
    } else {
      // add
      if (v.isMultipleSource()) {
        contextParentNode.addChild(childRole, outputNodeToWeave);
      } else {
        SNode oldChild = jetbrains.mps.util.SNodeOperations.getChild(contextParentNode, childRole);
        if (oldChild != null) {
          // if singular child then don't add more that 1 child
          contextParentNode.removeChild(oldChild);
        }
        contextParentNode.addChild(childRole, outputNodeToWeave);
      }

    }

    SNode resolvedRuleNode = templateNode.resolve(MPSModuleRepository.getInstance());
    if(TracingSettings.getInstance().isWriteTracingFile()) {
      outputNodeToWeave.putUserObject("inputNode", inputNode);
    }

    if(TracingSettings.getInstance().isWriteGeneratorFile()) {
      TransformationTrace.getInstance().trackReducedByTrafo(inputNode.getReference(), resolvedRuleNode.getReference());
      TransformationTrace.getInstance().trackOutputNode(inputNode.getReference(), outputNodeToWeave.getNodeId(), contextParentNode.getModel());
      TransformationTrace.getInstance().trackCreatedByTrafo(outputNodeToWeave.getReference(), resolvedRuleNode.getReference());

      TracedNode tracedInput = TransformationTrace.getInstance().addTrackedNode(new SNodeProxy(inputNode.getNodeId(), generator.getInputModel().getReference()));
      tracedInput.addReducedBy(new SNodeProxy(resolvedRuleNode.getNodeId(), resolvedRuleNode.getModel().getReference()));
      tracedInput.addOutputNode(new SNodeProxy(outputNodeToWeave.getNodeId(), contextParentNode.getModel().getReference()));

      TracedNode tracedOutput =
          TransformationTrace.getInstance().addTrackedNode(new SNodeProxy(outputNodeToWeave.getNodeId(), contextParentNode.getModel().getReference()));
      tracedOutput.setCreatedBy(new SNodeProxy(resolvedRuleNode.getNodeId(), resolvedRuleNode.getModel().getReference()));
      tracedOutput.setInputNode(new SNodeProxy(inputNode.getNodeId(), generator.getInputModel().getReference()));
    }
  }

  // Internal API, perhaps, shall be part of ExecutionEnvironmentInternal iface

  void blockReductionsForCopiedNode(SNode inputNode, SNode outputNode) {
    myReductionTrack.blockReductionsForCopiedNode(inputNode, outputNode);
  }

  @Nullable
  Collection<SNode> tryToReduce(@NotNull SNode inputNode) throws GenerationFailureException, GenerationCanceledException {
    FastRuleFinder rf = generator.getRuleManager().getRuleFinder();
    Collection<SNode> outputNodes = tryToReduce(rf, new DefaultTemplateContext(this, inputNode, null));
    if (outputNodes != null) {
      if (outputNodes.size() == 1) {
        // [artem] I have no idea why same mappings are not done for switch, but it's the way it goes from rev d552b27
        SNode reducedNode = outputNodes.iterator().next();
        // output node should be accessible via 'findCopiedNode'
        generator.addCopiedOutputNodeForInputNode(inputNode, reducedNode);
        // preserve user objects
        if (TracingUtil.getInput(reducedNode) == null) {
          jetbrains.mps.util.SNodeOperations.copyUserObjects(inputNode, reducedNode);
          // keep track of 'original input node'
          TracingUtil.fillOriginalNode(inputNode, reducedNode, false);
        }
      }
      return outputNodes;
    }
    return null;
  }


  protected final Set<SNodeReference> myFailedRules = new ConcurrentHashSet<SNodeReference>();
  /*
   * returns null if no reductions found
   */
  @Nullable
  Collection<SNode> tryToReduce(FastRuleFinder ruleFinder, @NotNull TemplateContext context) throws GenerationFailureException, GenerationCanceledException {
    final SNode inputNode = context.getInput();
    TemplateReductionRule reductionRule = null;
    // find rule
    TemplateReductionRule[] conceptRules = ruleFinder.findReductionRules(inputNode);
    if (conceptRules == null) {
      return null;
    }
    try {
      for (TemplateReductionRule rule : conceptRules) {
        reductionRule = rule;
        if (!myReductionTrack.isReductionBlocked(inputNode, rule)) {
          if (rule instanceof TemplateRuleWithCondition) {
            if (!getQueryExecutor().isApplicable((TemplateRuleWithCondition) rule, context)) {
              continue;
            }
            // fall-through
          }
          try {
            myReductionTrack.enter(inputNode, rule);

            // -> here we must remember the rule + inputNode + outputNodes
            //inputNode.putUserObject("reducedBy",rule);
            Collection<SNode> outputNodes = null;
            try {
              outputNodes = getQueryExecutor().tryToApply(rule, context);
            } catch (AbandonRuleInputException exc) {
              // Exception is thrown, if reduction rule abandons input
                SNodeReference ruleNode = rule.getRuleNode();

              if(TracingSettings.getInstance().isWriteGeneratorFile()) {
                TransformationTrace.getInstance().trackReducedByTrafo(inputNode.getReference(), ruleNode);
                TransformationTrace.getInstance().trackOutputNodes(inputNode.getReference(), new ArrayList<SNodeId>(), this.generator.myOutputModel);

                TracedNode tracedInput = TransformationTrace.getInstance().addTrackedNode(new SNodeProxy(inputNode.getNodeId(), generator.getInputModel().getReference()));
                tracedInput.addReducedBy(new SNodeProxy(ruleNode.getNodeId(), ruleNode.getModelReference() ));
              }
                throw exc;
            }
            if (outputNodes != null) {
              SNodeId in = context.getInput() == null ? null : context.getInput().getNodeId();
              getTrace().trace(in, GenerationTracerUtil.translateOutput(outputNodes), rule.getRuleNode());
              if(TracingSettings.getInstance().isWriteTracingFile()) {
                for (SNode outputNode : outputNodes) {
                  outputNode.putUserObject("inputNode", inputNode);
                }
              }
              return outputNodes;
            }
          } catch (DismissTopMappingRuleException ex) {
            // it's ok, just continue with a next applicable rule, if any
            if (ex.isLoggingNeeded() && reductionRule != null) {
              SNodeReference ruleNode = reductionRule.getRuleNode();
              String messageText = String.format("-- dismissed reduction rule: %s", ruleNode);
              if (ex.isInfo()) {
                getLogger().info(ruleNode, messageText);
              } else if (ex.isWarning()) {
                getLogger().warning(ruleNode, messageText);
              } else {
                getLogger().error(ruleNode, messageText);
              }
            }
          } finally {
            myReductionTrack.leave();
          }
        }
      }
    } catch (AbandonRuleInputException ex) {
      return Collections.emptyList();
    } catch (TemplateProcessingFailureException ex) {
      SNodeReference ruleNode = reductionRule.getRuleNode();
      if (myFailedRules.add(ruleNode)) {
        getLogger().error(ruleNode, String.format("Reduction rule failed: %s", ex.getMessage()), ex.asProblemDescription());
      }
    } catch (GenerationFailureException ex) {
      throw ex;
    } catch (GenerationCanceledException ex) {
      if (getTracer().isTracing() && getLogger().needsInfo()) {
        getLogger().info("generation canceled when processing branch:");
        GeneratorUtil.logCurrentGenerationBranch(getLogger(), getTracer(), false);
      }
      throw ex;
    } catch (GenerationException ex) {
      // ignore
    }
    return null;
  }
}
