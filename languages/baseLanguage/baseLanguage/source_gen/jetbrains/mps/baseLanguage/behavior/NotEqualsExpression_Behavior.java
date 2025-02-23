package jetbrains.mps.baseLanguage.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.module.SModule;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;

public class NotEqualsExpression_Behavior {
  public static void init(SNode thisNode) {
  }
  public static int virtual_getPriority_1262430001741497858(SAbstractConcept thisConcept) {
    return 7;
  }
  public static Object virtual_calculateCompileTimeConstantValue_1587718783752756055(SNode thisNode, Object leftValue, Object rightValue) {
    if (leftValue instanceof Number && rightValue instanceof Number) {
      Number a = (Number) leftValue;
      Number b = (Number) rightValue;
      if (BinaryOperation_Behavior.call_bothShouldBeWidenedTo_6205351058571053912(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfbdeb6fecfL, "jetbrains.mps.baseLanguage.structure.BinaryOperation"), Double.class, a, b)) {
        return a.doubleValue() != b.doubleValue();
      }
      if (BinaryOperation_Behavior.call_bothShouldBeWidenedTo_6205351058571053912(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfbdeb6fecfL, "jetbrains.mps.baseLanguage.structure.BinaryOperation"), Float.class, a, b)) {
        return a.floatValue() != b.floatValue();
      }
      if (BinaryOperation_Behavior.call_bothShouldBeWidenedTo_6205351058571053912(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfbdeb6fecfL, "jetbrains.mps.baseLanguage.structure.BinaryOperation"), Long.class, a, b)) {
        return a.longValue() != b.longValue();
      }
      if (BinaryOperation_Behavior.call_bothShouldBeWidenedTo_6205351058571053912(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfbdeb6fecfL, "jetbrains.mps.baseLanguage.structure.BinaryOperation"), Integer.class, a, b)) {
        return a.intValue() != b.intValue();
      }
    } else if (leftValue instanceof Character && rightValue instanceof Character) {
      return ((Character) leftValue).charValue() != ((Character) rightValue).charValue();
    } else if (leftValue instanceof Boolean && rightValue instanceof Boolean) {
      return ((Boolean) leftValue).booleanValue() != ((Boolean) rightValue).booleanValue();
    }
    return (leftValue != null && rightValue != null ? leftValue != rightValue : null);
  }
  public static Object virtual_getCompileTimeConstantValue_1238860310638(SNode thisNode, SModule module) {
    if (VariableReferenceUtil.referencesPointToSameVariableDeclaration(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfbdeb6fecfL, 0xfbdeb7a11cL, "leftExpression")), SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfbdeb6fecfL, 0xfbdeb7a11bL, "rightExpression")))) {
      return false;
    }
    return BehaviorReflection.invokeSuper(Object.class, thisNode, "jetbrains.mps.baseLanguage.structure.BinaryOperation", "virtual_getCompileTimeConstantValue_1238860310638", new Object[]{module});
  }
}
