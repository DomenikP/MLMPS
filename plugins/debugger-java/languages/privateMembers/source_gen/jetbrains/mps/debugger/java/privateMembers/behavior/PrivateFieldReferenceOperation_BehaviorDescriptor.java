package jetbrains.mps.debugger.java.privateMembers.behavior;

/*Generated by MPS */

import jetbrains.mps.baseLanguage.behavior.FieldReferenceOperation_BehaviorDescriptor;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.language.SConcept;

public class PrivateFieldReferenceOperation_BehaviorDescriptor extends FieldReferenceOperation_BehaviorDescriptor {
  public PrivateFieldReferenceOperation_BehaviorDescriptor() {
  }
  public String virtual_getPresentation_1213877396640(SNode thisNode) {
    return PrivateFieldReferenceOperation_Behavior.virtual_getPresentation_1213877396640(thisNode);
  }
  public boolean virtual_lvalue_1262430001741498364(SConcept thisConcept) {
    return PrivateFieldReferenceOperation_Behavior.virtual_lvalue_1262430001741498364(thisConcept);
  }
  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.debugger.java.privateMembers.structure.PrivateFieldReferenceOperation";
  }
}
