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
package jetbrains.mps.generator.impl.interpreted;

import jetbrains.mps.generator.impl.GenerationFailureException;
import jetbrains.mps.generator.impl.RuleUtil;
import jetbrains.mps.generator.impl.query.CreateRootCondition;
import jetbrains.mps.generator.impl.query.DropRuleCondition;
import jetbrains.mps.generator.impl.query.IfMacroCondition;
import jetbrains.mps.generator.impl.query.InlineSwitchCaseCondition;
import jetbrains.mps.generator.impl.query.MapConfigurationCondition;
import jetbrains.mps.generator.impl.query.MapRootRuleCondition;
import jetbrains.mps.generator.impl.query.PatternRuleQuery;
import jetbrains.mps.generator.impl.query.PropertyValueQuery;
import jetbrains.mps.generator.impl.query.QueryProviderBase;
import jetbrains.mps.generator.impl.query.ReductionRuleCondition;
import jetbrains.mps.generator.impl.query.ScriptCodeBlock;
import jetbrains.mps.generator.impl.query.SourceNodeQuery;
import jetbrains.mps.generator.impl.query.SourceNodesQuery;
import jetbrains.mps.generator.impl.query.WeaveRuleCondition;
import jetbrains.mps.generator.impl.query.WeaveRuleQuery;
import jetbrains.mps.generator.runtime.GenerationException;
import jetbrains.mps.generator.template.CreateRootRuleContext;
import jetbrains.mps.generator.template.DropRootRuleContext;
import jetbrains.mps.generator.template.IfMacroContext;
import jetbrains.mps.generator.template.InlineSwitchCaseContext;
import jetbrains.mps.generator.template.MapRootRuleContext;
import jetbrains.mps.generator.template.MappingScriptContext;
import jetbrains.mps.generator.template.PatternRuleContext;
import jetbrains.mps.generator.template.PropertyMacroContext;
import jetbrains.mps.generator.template.ReductionRuleQueryContext;
import jetbrains.mps.generator.template.SourceSubstituteMacroNodeContext;
import jetbrains.mps.generator.template.SourceSubstituteMacroNodesContext;
import jetbrains.mps.generator.template.TemplateFunctionMethodName;
import jetbrains.mps.generator.template.TemplateQueryContext;
import jetbrains.mps.generator.template.WeavingMappingRuleContext;
import jetbrains.mps.lang.pattern.GeneratedMatchingPattern;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.AttributeOperations;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.util.IterableUtil;
import jetbrains.mps.util.QueryMethodGenerated;
import jetbrains.mps.util.QueryMethodGenerated.QueryMethod;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeAccessUtil;
import org.jetbrains.mps.openapi.model.SNodeReference;

import java.util.Collection;
import java.util.Collections;

/**
 * Access to QueriesGenerated methods via reflection
 *
 * @author Artem Tikhomirov
 */
public class ReflectiveQueryProvider extends QueryProviderBase {
  public ReflectiveQueryProvider() {
  }

  @NotNull
  @Override
  public CreateRootCondition getCreateRootRuleCondition(@NotNull SNode rule) {
    SNode conditionFunction = RuleUtil.getCreateRootRuleCondition(rule);
    String conditionMethod = conditionFunction == null ? null : TemplateFunctionMethodName.createRootRule_Condition(conditionFunction);
    if (conditionMethod != null) {
      return new Impl(rule.getReference(), conditionMethod);
    }
    return super.getCreateRootRuleCondition(rule);
  }

  @NotNull
  @Override
  public MapRootRuleCondition getMapRootRuleCondition(@NotNull SNode rule) {
    String conditionMethod = getBaseRuleConditionMethod(rule);
    if (conditionMethod != null) {
      return new Impl(rule.getReference(), conditionMethod);
    }
    return super.getMapRootRuleCondition(rule);
  }

  @NotNull
  @Override
  public ReductionRuleCondition getReductionRuleCondition(@NotNull SNode rule) {
    String conditionMethod = getBaseRuleConditionMethod(rule);
    if (conditionMethod != null) {
      return new Impl(rule.getReference(), conditionMethod);
    }
    return super.getReductionRuleCondition(rule);
  }

  @NotNull
  @Override
  public PatternRuleQuery getPatternRuleCondition(@NotNull SNode rule) {
    String methodName = TemplateFunctionMethodName.patternRule_Condition(rule);
    if (methodName != null) {
      return new Impl(rule.getReference(), methodName);
    }
    return super.getPatternRuleCondition(rule);
  }

  @NotNull
  @Override
  public DropRuleCondition getDropRuleCondition(@NotNull SNode rule) {
    SNode condition = RuleUtil.getDropRuleCondition(rule);
    String conditionMethod = condition == null ? null : TemplateFunctionMethodName.dropRootRule_Condition(condition);
    if (conditionMethod != null) {
      return new Impl(rule.getReference(), conditionMethod, true);
    }
    return super.getDropRuleCondition(rule);
  }

  @NotNull
  @Override
  public WeaveRuleCondition getWeaveRuleCondition(@NotNull SNode rule) {
    String conditionMethod = getBaseRuleConditionMethod(rule);
    if (conditionMethod != null) {
      return new Impl(rule.getReference(), conditionMethod);
    }
    return super.getWeaveRuleCondition(rule);
  }

  @NotNull
  @Override
  public WeaveRuleQuery getWeaveRuleQuery(@NotNull SNode rule) {
    SNode contextQuery = RuleUtil.getWeaving_ContextNodeQuery(rule);
    String contentNodeMethod = contextQuery == null ? null : TemplateFunctionMethodName.weaving_MappingRule_ContextNodeQuery(contextQuery);
    if (contentNodeMethod != null) {
      return new Impl(rule.getReference(), contentNodeMethod);
    }
    return super.getWeaveRuleQuery(rule);
  }

  @NotNull
  @Override
  public ScriptCodeBlock getScriptCodeBlock(@NotNull SNode script) {
    SNode codeBlock = RuleUtil.getMappingScript_CodeBlock(script);
    String codeBlockMethod = codeBlock == null ? null : TemplateFunctionMethodName.mappingScript_CodeBlock(codeBlock);
    if (codeBlockMethod != null) {
      return new Impl(script.getReference(), codeBlockMethod);
    }
    return super.getScriptCodeBlock(script);
  }

  @NotNull
  @Override
  public MapConfigurationCondition getMapConfigurationCondition(@NotNull SNode mapCfg) {
    SNode condition = RuleUtil.getMappingConfiguration_IsApplicable(mapCfg);
    String conditionMethod = condition == null ? null : TemplateFunctionMethodName.mappingConfiguration_Condition(condition);
    if (conditionMethod != null) {
      return new Impl(mapCfg.getReference(), conditionMethod, true);
    }
    return super.getMapConfigurationCondition(mapCfg);
  }

  @NotNull
  @Override
  public SourceNodeQuery getSourceNodeQuery(@NotNull SNode query) {
    String methodName = TemplateFunctionMethodName.sourceSubstituteMacro_SourceNodeQuery(query);
    return new SourceNodes(query.getReference(), methodName);
  }

  @NotNull
  @Override
  public SourceNodesQuery getSourceNodesQuery(@NotNull SNode query) {
    String methodName = TemplateFunctionMethodName.sourceSubstituteMacro_SourceNodesQuery(query);
    return new SourceNodes(query.getReference(), methodName);
  }

  @NotNull
  @Override
  public PropertyValueQuery getPropertyValueQuery(@NotNull SNode propertyMacro) {
    SNode function = RuleUtil.getPropertyMacro_ValueFunction(propertyMacro);
    final SProperty property = AttributeOperations.getProperty(propertyMacro);
    if (function == null || property == null) {
      return super.getPropertyValueQuery(propertyMacro);
    }
    String methodName = TemplateFunctionMethodName.propertyMacro_GetPropertyValue(function);
    SNode templateNode = propertyMacro.getParent();
    final Object templateValue = SNodeAccessUtil.getProperty(templateNode, property);
    return new PropMacro(propertyMacro.getReference(), methodName, property, templateValue);
  }

  @NotNull
  @Override
  public IfMacroCondition getIfMacroCondition(@NotNull SNode ifMacro) {
    SNode function = RuleUtil.getIfMacro_ConditionFunction(ifMacro);
    if (function == null) {
      return super.getIfMacroCondition(ifMacro);
    }
    String methodName = TemplateFunctionMethodName.ifMacro_Condition(function);
    return new Impl(ifMacro.getReference(), methodName, false);
  }

  @NotNull
  @Override
  public InlineSwitchCaseCondition getInlineSwitchCaseCondition(@NotNull SNode caseNode) {
    SNode condition = RuleUtil.getInlineSwitch_caseCondition(caseNode);
    if (condition == null) {
      return super.getInlineSwitchCaseCondition(caseNode);
    }
    final String methodName = TemplateFunctionMethodName.baseMappingRule_Condition(condition);
    return new Impl(caseNode.getReference(), methodName, false);
  }

  private String getBaseRuleConditionMethod(SNode rule) {
    SNode condition = RuleUtil.getBaseRuleCondition(rule);
    return condition == null ? null : TemplateFunctionMethodName.baseMappingRule_Condition(condition);
  }

  private static final class Impl implements CreateRootCondition, MapRootRuleCondition, ReductionRuleCondition, PatternRuleQuery,
      DropRuleCondition, WeaveRuleCondition, WeaveRuleQuery, ScriptCodeBlock, MapConfigurationCondition, IfMacroCondition,
      InlineSwitchCaseCondition {

    private final String myMethodName;
    private final boolean myDefValue;
    private final SNodeReference myTemplateNode;
    private volatile QueryMethod<Boolean> myMethod;

    Impl(@NotNull SNodeReference templateNode, @NotNull String methodName) {
      this(templateNode, methodName, false);
    }

    Impl(@NotNull SNodeReference templateNode, @NotNull String methodName, boolean defValue) {
      myTemplateNode = templateNode;
      myMethodName = methodName;
      myDefValue = defValue;
    }

    private QueryMethod<Boolean> getMethod(TemplateQueryContext ctx) {
      // I don't care to synchronize method evaluation as there's no difference for me which QM instance I use,
      // provided initialization of any is complete (that's why field is volatile)
      QueryMethod<Boolean> m = myMethod;
      if (m == null) {
        try {
          m = QueryMethodGenerated.getQueryMethod(myTemplateNode.getModelReference(), myMethodName);
        } catch (ClassNotFoundException e) {
          ctx.showWarningMessage(null,
              String.format("cannot find condition method '%s' : evaluate to %s", myMethodName, String.valueOf(myDefValue).toUpperCase()));
        } catch (NoSuchMethodException e) {
          ctx.showWarningMessage(null,
              String.format("cannot find condition method '%s' : evaluate to %s", myMethodName, String.valueOf(myDefValue).toUpperCase()));
        }
        if (m == null) {
          m = new QueryMethod<Boolean>() {
            @Override
            public Boolean invoke(IOperationContext context, Object contextObject) {
              return myDefValue;
            }
          };
        }
        myMethod = m;
      }
      return m;
    }

    @Override
    public boolean check(@NotNull CreateRootRuleContext ctx) {
      return getMethod(ctx).invoke(ctx.getInvocationContext(), ctx);
    }

    @Override
    public boolean check(@NotNull DropRootRuleContext ctx) {
      return getMethod(ctx).invoke(ctx.getInvocationContext(), ctx);
    }

    @Override
    public boolean check(@NotNull MapRootRuleContext ctx) {
      return getMethod(ctx).invoke(ctx.getInvocationContext(), ctx);
    }

    @Override
    public GeneratedMatchingPattern pattern(@NotNull PatternRuleContext ctx) {
      try {
        return QueryMethodGenerated.invoke(myMethodName, ctx.getInvocationContext(), ctx, myTemplateNode.getModelReference(), true);
      } catch (ClassNotFoundException e) {
        ctx.getGenerator().getLogger().warning(myTemplateNode, String.format("cannot find pattern condition method '%s' : not applied", myMethodName));
      } catch (NoSuchMethodException e) {
        ctx.getGenerator().getLogger().warning(myTemplateNode, String.format("cannot find pattern condition method '%s' : not applied", myMethodName));
      }
      return null;
    }

    @Override
    public boolean check(@NotNull ReductionRuleQueryContext ctx) {
      return getMethod(ctx).invoke(ctx.getInvocationContext(), ctx);
    }

    @Override
    public boolean check(@NotNull WeavingMappingRuleContext ctx) {
      return getMethod(ctx).invoke(ctx.getInvocationContext(), ctx);
    }

    @Override
    public SNode contextNode(WeavingMappingRuleContext ctx) {
      try {
        return QueryMethodGenerated.invoke(myMethodName, ctx.getInvocationContext(), ctx, myTemplateNode.getModelReference(), true);
      } catch (NoSuchMethodException e) {
        ctx.showWarningMessage(null, String.format("cannot find context node query '%s' : evaluate to null", myMethodName));
      } catch (ClassNotFoundException ex) {
        ctx.showWarningMessage(null, String.format("cannot find context node query '%s' : evaluate to null", myMethodName));
      }
      return null;
    }

    @Override
    public void invoke(MappingScriptContext ctx) {
      try {
        QueryMethodGenerated.invoke(myMethodName, ctx.getInvocationContext(), ctx, myTemplateNode.getModelReference(), true);
      } catch (ClassNotFoundException e) {
        ctx.showWarningMessage(null, String.format("cannot run script '%s' : no generated code found", myMethodName));
      } catch (NoSuchMethodException e) {
        ctx.showWarningMessage(null, String.format("cannot run script '%s' : no generated code found", myMethodName));
      }
    }

    @Override
    public boolean check(@NotNull TemplateQueryContext ctx) {
      return getMethod(ctx).invoke(ctx.getInvocationContext(), ctx);
    }

    @Override
    public boolean check(@NotNull IfMacroContext ctx) throws GenerationFailureException {
      return getMethod(ctx).invoke(ctx.getInvocationContext(), ctx);
    }

    @Override
    public boolean check(@NotNull InlineSwitchCaseContext ctx) throws GenerationFailureException {
      return getMethod(ctx).invoke(ctx.getInvocationContext(), ctx);
    }
  }


  private static final class SourceNodes implements SourceNodeQuery, SourceNodesQuery {
    private final SNodeReference myQuery;
    private final String myMethodName;

    public SourceNodes(@NotNull SNodeReference query, @NotNull String methodName) {
      myQuery = query;
      myMethodName = methodName;
    }

    @Nullable
    @Override
    public SNode evaluate(@NotNull SourceSubstituteMacroNodeContext context) throws GenerationFailureException {
      try {
        return QueryMethodGenerated.invoke(myMethodName, context.getInvocationContext(), context, myQuery.getModelReference(), true);
      } catch (NoSuchMethodException e) {
        context.showWarningMessage(null, String.format("cannot find nodes query '%s' : evaluate to null", myMethodName));
      } catch (ClassNotFoundException ex) {
        context.showWarningMessage(null, String.format("cannot find nodes query '%s' : evaluate to null", myMethodName));
      }
      return null;
    }

    @NotNull
    @Override
    public Collection<SNode> evaluate(@NotNull SourceSubstituteMacroNodesContext context) throws GenerationFailureException {
      try {
        Iterable<SNode> result = QueryMethodGenerated.invoke(myMethodName, context.getInvocationContext(), context, myQuery.getModelReference(), true);
        return IterableUtil.asCollection(result);

      } catch (NoSuchMethodException e) {
        context.showWarningMessage(null, String.format("cannot find nodes query '%s' : evaluate to empty list", myMethodName));
      } catch (ClassNotFoundException e) {
        context.showWarningMessage(null, String.format("cannot find nodes query '%s' : evaluate to empty list", myMethodName));
      }
      return Collections.emptyList();
    }
  }

  private static final class PropMacro extends PropertyValueQuery.Base {
    private final String myMethodName;
    private QueryMethod<Object> myMethod;

    public PropMacro(@NotNull SNodeReference macro, @NotNull String methodName, @NotNull SProperty property, Object templateValue) {
      super(macro, property, templateValue);
      myMethodName = methodName;
    }

    @Nullable
    @Override
    public Object evaluate(@NotNull PropertyMacroContext context) throws GenerationFailureException {
      if (myMethod == null) {
        myMethod = getMethod(context);
      }
      return myMethod.invoke(context.getInvocationContext(), context);
    }

    private QueryMethod<Object> getMethod(PropertyMacroContext context) throws GenerationFailureException{
      try {
        return QueryMethodGenerated.getQueryMethod(getMacro().getModelReference(), myMethodName);
      } catch (NoSuchMethodException e) {
        final String m = String.format("cannot find method '%s' for property macro", myMethodName);
        context.showErrorMessage(null, m);
        throw new GenerationFailureException(m);
      } catch (ClassNotFoundException e) {
        final String m = String.format("cannot find method '%s' for property macro", myMethodName);
        context.showErrorMessage(null, m);
        throw new GenerationFailureException(m);
      }
    }
  }
}