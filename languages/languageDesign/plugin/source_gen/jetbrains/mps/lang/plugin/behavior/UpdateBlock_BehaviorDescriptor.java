package jetbrains.mps.lang.plugin.behavior;

/*Generated by MPS */

import jetbrains.mps.baseLanguage.behavior.ConceptFunction_BehaviorDescriptor;
import java.util.List;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.language.SConcept;

public abstract class UpdateBlock_BehaviorDescriptor extends ConceptFunction_BehaviorDescriptor {
  public UpdateBlock_BehaviorDescriptor() {
  }
  public List<SNode> virtual_getApplicableConceptFunctionParameter_3044950653914717136(SConcept thisConcept) {
    return UpdateBlock_Behavior.virtual_getApplicableConceptFunctionParameter_3044950653914717136(thisConcept);
  }
  public SNode virtual_getExpectedReturnType_1213877374441(SNode thisNode) {
    return UpdateBlock_Behavior.virtual_getExpectedReturnType_1213877374441(thisNode);
  }
  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.lang.plugin.structure.UpdateBlock";
  }
}
