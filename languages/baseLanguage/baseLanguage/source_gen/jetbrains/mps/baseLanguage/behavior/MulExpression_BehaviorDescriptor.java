package jetbrains.mps.baseLanguage.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.language.SConcept;

public class MulExpression_BehaviorDescriptor extends BinaryOperation_BehaviorDescriptor {
  public MulExpression_BehaviorDescriptor() {
  }
  public Object virtual_calculateCompileTimeConstantValue_1587718783752756055(SNode thisNode, Object leftValue, Object rightValue) {
    return MulExpression_Behavior.virtual_calculateCompileTimeConstantValue_1587718783752756055(thisNode, leftValue, rightValue);
  }
  public int virtual_getPriority_1262430001741497858(SConcept thisConcept) {
    return MulExpression_Behavior.virtual_getPriority_1262430001741497858(thisConcept);
  }
  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.baseLanguage.structure.MulExpression";
  }
}
