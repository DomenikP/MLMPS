package jetbrains.mps.baseLanguage.collections.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import java.util.List;
import org.jetbrains.mps.openapi.language.SConcept;

public class LinkedListCreator_BehaviorDescriptor extends AbstractContainerCreator_BehaviorDescriptor {
  public LinkedListCreator_BehaviorDescriptor() {
  }
  public SNode virtual_createType_1237722437229(SNode thisNode) {
    return LinkedListCreator_Behavior.virtual_createType_1237722437229(thisNode);
  }
  public List<SNode> virtual_getAvailableFor_3044950653914717035(SConcept thisConcept) {
    return LinkedListCreator_Behavior.virtual_getAvailableFor_3044950653914717035(thisConcept);
  }
  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.baseLanguage.collections.structure.LinkedListCreator";
  }
}
