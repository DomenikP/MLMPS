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
package jetbrains.mps.generator.template;

import jetbrains.mps.generator.IGeneratorLogger;
import jetbrains.mps.generator.impl.GenerationFailureException;
import jetbrains.mps.generator.impl.GeneratorUtil;
import jetbrains.mps.generator.impl.RuleUtil;
import jetbrains.mps.generator.impl.query.GeneratorQueryProvider;
import jetbrains.mps.generator.impl.query.IfMacroCondition;
import jetbrains.mps.generator.impl.query.InlineSwitchCaseCondition;
import jetbrains.mps.generator.impl.query.PropertyValueQuery;
import jetbrains.mps.generator.impl.query.SourceNodeQuery;
import jetbrains.mps.generator.impl.query.SourceNodesQuery;
import jetbrains.mps.generator.runtime.GenerationException;
import jetbrains.mps.generator.runtime.NodeMapper;
import jetbrains.mps.generator.runtime.PostProcessor;
import jetbrains.mps.generator.runtime.TemplateContext;
import jetbrains.mps.generator.runtime.TemplateCreateRootRule;
import jetbrains.mps.generator.runtime.TemplateExecutionEnvironment;
import jetbrains.mps.generator.runtime.TemplateMappingScript;
import jetbrains.mps.generator.runtime.TemplateReductionRule;
import jetbrains.mps.generator.runtime.TemplateRootMappingRule;
import jetbrains.mps.generator.runtime.TemplateRuleWithCondition;
import jetbrains.mps.generator.runtime.TemplateWeavingRule;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.AttributeOperations;
import jetbrains.mps.smodel.tracing.TracedNode;
import jetbrains.mps.smodel.tracing.TransformationTrace;
import jetbrains.mps.smodel.tracing.nodes.SNodeProxy;
import jetbrains.mps.textgen.trace.TracingSettings;
import jetbrains.mps.util.QueryMethodGenerated;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;

import java.util.Collection;

/**
 * Default implementation that executes queries without any further activity.
 * Evgeny Gryaznov, Feb 10, 2010
 */
public class DefaultQueryExecutionContext implements QueryExecutionContext {

  private final ITemplateGenerator myGenerator;
  private final boolean myIsMultithread;

  public DefaultQueryExecutionContext(@NotNull ITemplateGenerator generator) {
    this(generator, true);
  }

  public DefaultQueryExecutionContext(@NotNull ITemplateGenerator generator, boolean isMultithread) {
    myGenerator = generator;
    myIsMultithread = isMultithread;
  }

  @Override
  public boolean evaluate(@NotNull InlineSwitchCaseCondition condition, @NotNull InlineSwitchCaseContext context) throws GenerationFailureException {
    return condition.check(context);
  }

  @Override
  public boolean evaluate(@NotNull IfMacroCondition condition, @NotNull IfMacroContext context) throws GenerationFailureException {
    return condition.check(context);
  }

  @Override
  public SNode executeMapSrcNodeMacro(SNode inputNode, SNode mapSrcNodeOrListMacro, SNode parentOutputNode, @NotNull TemplateContext context) throws GenerationFailureException {
    SNode mapperFunction = RuleUtil.getMapSrc_MapperFunction(mapSrcNodeOrListMacro);

    String methodName = TemplateFunctionMethodName.mapSrcMacro_MapperFunction(mapperFunction);
    try {
      return (SNode) QueryMethodGenerated.invoke(
          methodName,
          myGenerator.getGeneratorSessionContext(),
          new MapSrcMacroContext(context, parentOutputNode, mapSrcNodeOrListMacro.getReference()),
          mapSrcNodeOrListMacro.getModel());
    } catch (Throwable t) {
      getLog().error(mapSrcNodeOrListMacro.getReference(), "cannot evaluate macro: mapping func failed, exception was thrown", GeneratorUtil.describeInput(
          context));
      throw new GenerationFailureException(t);
    }
  }

  @Override
  public void executeMapSrcNodeMacro_PostProc(SNode inputNode, SNode mapSrcNodeOrListMacro, SNode outputNode, @NotNull TemplateContext context) throws GenerationFailureException {
    SNode postMapperFunction = RuleUtil.getMapSrc_PostMapperFunction(mapSrcNodeOrListMacro);
    // post-proc function is optional
    if (postMapperFunction == null) return;

    String methodName = TemplateFunctionMethodName.mapSrcMacro_PostMapperFunction(postMapperFunction);
    try {
      QueryMethodGenerated.invoke(
          methodName,
          myGenerator.getGeneratorSessionContext(),
          new MapSrcMacroPostProcContext(context, outputNode, mapSrcNodeOrListMacro.getReference()),
          mapSrcNodeOrListMacro.getModel());
    } catch (Throwable t) {
      getLog().error(mapSrcNodeOrListMacro.getReference(), "cannot evaluate macro: post-processing failed, exception was thrown",
          GeneratorUtil.describeIfExists(inputNode, "input node"));
      throw new GenerationFailureException(t);
    }
  }

  @Nullable
  @Override
  public Object evaluate(@NotNull PropertyValueQuery query, @NotNull PropertyMacroContext context) throws GenerationFailureException {
    return query.evaluate(context);
  }

  @Nullable
  @Override
  public SNode evaluate(@NotNull SourceNodeQuery query, @NotNull SourceSubstituteMacroNodeContext context) throws GenerationFailureException {
    return query.evaluate(context);
  }

  @Override
  public Object evaluateArgumentQuery(SNode inputNode, SNode query, @NotNull TemplateContext context) {
    String methodName = TemplateFunctionMethodName.templateArgumentQuery(query);
    try {
      return QueryMethodGenerated.invoke(
          methodName,
          myGenerator.getGeneratorSessionContext(),
          new TemplateArgumentContext(context, query.getReference()),
          query.getModel());
    } catch (NoSuchMethodException e) {
      getLog().warning(query.getReference(), String.format("cannot find argument query '%s' : evaluate to null", methodName));
      return null;
    } catch (Exception e) {
      getLog().handleException(e);
      getLog().error(query.getReference(), "cannot evaluate query, exception was thrown", GeneratorUtil.describeInput(context));
      return null;
    }
  }

  @Override
  public Object evaluateVariableQuery(SNode inputNode, SNode query, @NotNull TemplateContext context) {
    String methodName = TemplateFunctionMethodName.varValue_Query(query);
    try {
      return QueryMethodGenerated.invoke(
          methodName,
          myGenerator.getGeneratorSessionContext(),
          new TemplateVarContext(context, query.getReference()),
          query.getModel());
    } catch (NoSuchMethodException e) {
      getLog().warning(query.getReference(), String.format("cannot find variable value query '%s' : evaluate to null", methodName));
      return null;
    } catch (Exception e) {
      getLog().handleException(e);
      getLog().error(query.getReference(), "cannot evaluate query, exception was thrown", GeneratorUtil.describeInput(context));
      return null;
    }
  }

  @NotNull
  @Override
  public Collection<SNode> evaluate(@NotNull SourceNodesQuery query, @NotNull SourceSubstituteMacroNodesContext context) throws GenerationFailureException {
    return query.evaluate(context);
  }

  @Override
  public SNode evaluateInsertQuery(SNode inputNode, SNode macroNode, SNode query, @NotNull TemplateContext context) {
    String methodName = TemplateFunctionMethodName.insertMacro_Query(query);
    try {
      return QueryMethodGenerated.invoke(
          methodName,
          myGenerator.getGeneratorSessionContext(),
          new TemplateQueryContextWithMacro(context, macroNode.getReference()),
          query.getModel(),
          true);

    } catch (NoSuchMethodException e) {
      getLog().warning(macroNode.getReference(), String.format("cannot find query '%s' : evaluate to null", methodName));
      return null;
    } catch (Throwable th) {
      getLog().handleException(th);
      getLog().error(query.getReference(), "cannot evaluate query, exception was thrown", GeneratorUtil.describeInput(context));
      return null;
    }
  }

  @Override
  public SNode getContextNodeForTemplateFragment(SNode templateFragmentNode, SNode mainContextNode, @NotNull TemplateContext context) {
    SNode fragment = RuleUtil.getTemplateFragmentByAnnotatedNode(templateFragmentNode);
    // has custom context builder provider?
    SNode query = RuleUtil.getTemplateFragment_ContextNodeQuery(fragment);
    if (query != null) {
      String methodName = TemplateFunctionMethodName.templateFragment_ContextNodeQuery(query);
      try {
        return (SNode) QueryMethodGenerated.invoke(
            methodName,
            myGenerator.getGeneratorSessionContext(),
            new TemplateFragmentContext(context, mainContextNode, templateFragmentNode.getReference()),
            query.getModel());
      } catch (NoSuchMethodException e) {
        getLog().warning(templateFragmentNode.getReference(), "cannot find context node method for template fragment '" + methodName + "' : evaluate to null");
        return null;
      } catch (Exception e) {
        getLog().handleException(e);
        getLog().error(templateFragmentNode.getReference(), "cannot evaluate template fragment context query, exception was thrown",
            GeneratorUtil.describeInput(context));
        return null;
      }
    }

    // ok, main context node by default
    return mainContextNode;
  }

  @Override
  public Object getReferentTarget(SNode node, SNode outputNode, SNode refMacro, TemplateContext context) {
    SNode function = RuleUtil.getReferenceMacro_GetReferent(refMacro);
    if (function == null) {
      getLog().error(refMacro.getReference(), "cannot evaluate reference macro: no function", GeneratorUtil.describeInput(context));
      return null;
    }

    String methodName = TemplateFunctionMethodName.referenceMacro_GetReferent(function);
    try {
      return QueryMethodGenerated.invoke(
          methodName,
          myGenerator.getGeneratorSessionContext(),
          new ReferenceMacroContext(context, outputNode, refMacro.getReference(), AttributeOperations.getLinkRole(refMacro)),
          refMacro.getModel());

    } catch (Throwable t) {
      getLog().handleException(t);
      getLog().error(refMacro.getReference(), "cannot evaluate reference macro, exception was thrown", GeneratorUtil.describeInput(context));
    }
    return null;
  }

  @Override
  public void executeInContext(SNode outputNode, TemplateContext context, PostProcessor processor) {
    processor.process(outputNode, context);
  }

  @Override
  public SNode executeInContext(SNode outputNode, TemplateContext context, NodeMapper mapper) {
    return mapper.map(outputNode, context);
  }

  @Override
  public Collection<SNode> tryToApply(TemplateReductionRule rule, TemplateContext context) throws GenerationException {
    TemplateExecutionEnvironment env = context.getEnvironment();
    try {
      SNodeReference ruleNode = rule.getRuleNode();
      SNode inputNode = context.getInput();
      SModel outputModel = env.getOutputModel();
      Collection<SNode> outputNodes = (Collection<SNode>) rule.tryToApply(env, context);

      if(TracingSettings.getInstance().isWriteGeneratorFile() && inputNode.getModel() != null) {
        try {
          TransformationTrace instance = TransformationTrace.getInstance();
          SNodeProxy inputNodeProxy = new SNodeProxy(inputNode.getNodeId(), inputNode.getModel().getReference());
          TracedNode inputNodeTrace = null;
          if(instance.getTrackedNode(inputNodeProxy) == null) {
            inputNodeTrace = instance.addTrackedNode(inputNodeProxy);
          } else {
            inputNodeTrace = instance.getTrackedNode(inputNodeProxy);
          }

          inputNodeTrace.addReducedBy(new SNodeProxy(ruleNode.getNodeId(), ruleNode.getModelReference()));
          for (SNode outputNode : outputNodes) {
            SNodeProxy outputNodeProxy = new SNodeProxy(outputNode.getNodeId(), outputModel.getReference());
            instance.addNodeWithLazyResoledModel(outputNodeProxy);
            inputNodeTrace.addOutputNode(outputNodeProxy);
            TracedNode outputNodeTrace = instance.addTrackedNode(outputNodeProxy);
            if(outputNodeTrace.getInputNode() == null) {
              outputNodeTrace.setInputNode(inputNodeProxy);
            }
            if(outputNodeTrace.getCreatedBy() == null) {
              outputNodeTrace.setCreatedBy(new SNodeProxy(ruleNode.getNodeId(), ruleNode.getModelReference()));
            }
          }
        } catch(NullPointerException npe) {
          npe.printStackTrace();
        }
      }
      return outputNodes;
    } catch (GenerationException ex) {
      throw ex;
    } catch (Throwable t) {
      env.getLogger().error(rule.getRuleNode(), "error executing pattern/condition (see exception)");
      throw new GenerationFailureException(t);
    }
  }

  @Override
  public boolean isApplicable(@NotNull TemplateRuleWithCondition rule, @NotNull TemplateContext context) throws GenerationFailureException {
    final TemplateExecutionEnvironment environment = context.getEnvironment();
    try {
      return rule.isApplicable(environment, context);
    } catch (GenerationFailureException ex) {
      throw ex;
    } catch (Throwable t) {
      environment.getLogger().error(rule.getRuleNode(), "error executing condition (see exception)");
      throw new GenerationFailureException(t);
    }
  }

  @Override
  public Collection<SNode> applyRule(TemplateRootMappingRule rule, TemplateExecutionEnvironment environment, TemplateContext context) throws GenerationException {
    return rule.apply(environment, context);
  }

  @Override
  public Collection<SNode> applyRule(TemplateCreateRootRule rule, TemplateExecutionEnvironment environment) throws GenerationException {
    return rule.apply(environment);
  }

  @Override
  public SNode getContextNode(TemplateWeavingRule rule, TemplateExecutionEnvironment environment, TemplateContext context) throws GenerationFailureException {
    try {
      return rule.getContextNode(environment, context);
    } catch (GenerationFailureException ex) {
      throw ex;
    } catch (Throwable e) {
      environment.getLogger().error(rule.getRuleNode(), "cannot evaluate rule context query ", GeneratorUtil.describeInput(context));
      throw new GenerationFailureException(e);
    }
  }

  @Override
  public void executeScript(TemplateMappingScript mappingScript, SModel model) throws GenerationFailureException {
    mappingScript.apply(model, myGenerator);
  }

  @Override
  public boolean isMultithreaded() {
    return myIsMultithread;
  }


  private IGeneratorLogger getLog() {
    return myGenerator.getLogger();
  }
}
