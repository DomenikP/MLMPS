package jetbrains.mps.lang.typesystem.behavior;

/*Generated by MPS */

import jetbrains.mps.baseLanguage.behavior.ConceptFunctionParameter_BehaviorDescriptor;
import jetbrains.mps.lang.core.behavior.IDontSubstituteByDefault_BehaviorDescriptor;
import org.jetbrains.mps.openapi.model.SNode;

public class RightOperandType_parameter_BehaviorDescriptor extends ConceptFunctionParameter_BehaviorDescriptor implements IDontSubstituteByDefault_BehaviorDescriptor {
  public RightOperandType_parameter_BehaviorDescriptor() {
  }
  public SNode virtual_getType_2443692612523876968(SNode thisNode) {
    return RightOperandType_parameter_Behavior.virtual_getType_2443692612523876968(thisNode);
  }
  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.lang.typesystem.structure.RightOperandType_parameter";
  }
}
