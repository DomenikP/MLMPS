package testExtendingAnalyzer.behavior;

/*Generated by MPS */

import jetbrains.mps.baseLanguage.behavior.DotExpression_BehaviorDescriptor;
import org.jetbrains.mps.openapi.model.SNode;

public class NullSafeDotExpression_BehaviorDescriptor extends DotExpression_BehaviorDescriptor {
  public NullSafeDotExpression_BehaviorDescriptor() {
  }
  public boolean virtual_allowsNullOperand_4585239809762176541(SNode thisNode) {
    return NullSafeDotExpression_Behavior.virtual_allowsNullOperand_4585239809762176541(thisNode);
  }
  public boolean virtual_isLegalAsStatement_1239211900844(SNode thisNode) {
    return NullSafeDotExpression_Behavior.virtual_isLegalAsStatement_1239211900844(thisNode);
  }
  @Override
  public String getConceptFqName() {
    return "testExtendingAnalyzer.structure.NullSafeDotExpression";
  }
}
