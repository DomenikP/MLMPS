package jetbrains.mps.execution.configurations.behavior;

/*Generated by MPS */

import jetbrains.mps.baseLanguage.behavior.ConceptFunction_BehaviorDescriptor;
import java.util.List;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.language.SConcept;

public class ExecuteBeforeTask_ConceptFunction_BehaviorDescriptor extends ConceptFunction_BehaviorDescriptor {
  public ExecuteBeforeTask_ConceptFunction_BehaviorDescriptor() {
  }
  public List<SNode> virtual_getApplicableConceptFunctionParameter_3044950653914717136(SConcept thisConcept) {
    return ExecuteBeforeTask_ConceptFunction_Behavior.virtual_getApplicableConceptFunctionParameter_3044950653914717136(thisConcept);
  }
  public SNode virtual_getExpectedReturnType_1213877374441(SNode thisNode) {
    return ExecuteBeforeTask_ConceptFunction_Behavior.virtual_getExpectedReturnType_1213877374441(thisNode);
  }
  public boolean virtual_showName_1262430001741498082(SConcept thisConcept) {
    return ExecuteBeforeTask_ConceptFunction_Behavior.virtual_showName_1262430001741498082(thisConcept);
  }
  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.execution.configurations.structure.ExecuteBeforeTask_ConceptFunction";
  }
}
