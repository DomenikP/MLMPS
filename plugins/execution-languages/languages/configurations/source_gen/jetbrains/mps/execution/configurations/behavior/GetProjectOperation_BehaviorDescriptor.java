package jetbrains.mps.execution.configurations.behavior;

/*Generated by MPS */

import jetbrains.mps.lang.core.behavior.BaseConcept_BehaviorDescriptor;
import jetbrains.mps.baseLanguage.behavior.IOperation_BehaviorDescriptor;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.baseLanguage.behavior.IOperation_Behavior;
import org.jetbrains.mps.openapi.language.SConcept;

public class GetProjectOperation_BehaviorDescriptor extends BaseConcept_BehaviorDescriptor implements IOperation_BehaviorDescriptor {
  public GetProjectOperation_BehaviorDescriptor() {
  }
  public String virtual_getVariableExpectedName_1213877410087(SNode thisNode) {
    return IOperation_Behavior.virtual_getVariableExpectedName_1213877410087(thisNode);
  }
  public boolean virtual_isDotExpressionLegalAsStatement_1239212437413(SNode thisNode) {
    return IOperation_Behavior.virtual_isDotExpressionLegalAsStatement_1239212437413(thisNode);
  }
  public boolean virtual_isLValue_1213877410080(SNode thisNode) {
    return IOperation_Behavior.virtual_isLValue_1213877410080(thisNode);
  }
  public boolean virtual_lvalue_1262430001741498364(SConcept thisConcept) {
    return IOperation_Behavior.virtual_lvalue_1262430001741498364(thisConcept);
  }
  public boolean virtual_operandCanBeNull_323410281720656291(SNode thisNode) {
    return IOperation_Behavior.virtual_operandCanBeNull_323410281720656291(thisNode);
  }
  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.execution.configurations.structure.GetProjectOperation";
  }
}
