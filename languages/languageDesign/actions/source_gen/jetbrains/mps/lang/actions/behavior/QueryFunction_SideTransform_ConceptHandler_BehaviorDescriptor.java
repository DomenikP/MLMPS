package jetbrains.mps.lang.actions.behavior;

/*Generated by MPS */

import jetbrains.mps.baseLanguage.behavior.ConceptFunction_BehaviorDescriptor;
import java.util.List;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.language.SConcept;

public class QueryFunction_SideTransform_ConceptHandler_BehaviorDescriptor extends ConceptFunction_BehaviorDescriptor {
  public QueryFunction_SideTransform_ConceptHandler_BehaviorDescriptor() {
  }
  public List<SNode> virtual_getApplicableConceptFunctionParameter_3044950653914717136(SConcept thisConcept) {
    return QueryFunction_SideTransform_ConceptHandler_Behavior.virtual_getApplicableConceptFunctionParameter_3044950653914717136(thisConcept);
  }
  public SNode virtual_getExpectedReturnType_1213877374441(SNode thisNode) {
    return QueryFunction_SideTransform_ConceptHandler_Behavior.virtual_getExpectedReturnType_1213877374441(thisNode);
  }
  public boolean virtual_usesParameterObjectFor_1213877374432(SNode thisNode, SNode parameter) {
    return QueryFunction_SideTransform_ConceptHandler_Behavior.virtual_usesParameterObjectFor_1213877374432(thisNode, parameter);
  }
  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.lang.actions.structure.QueryFunction_SideTransform_ConceptHandler";
  }
}
