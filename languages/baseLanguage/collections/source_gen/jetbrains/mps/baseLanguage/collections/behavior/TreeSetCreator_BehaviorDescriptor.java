package jetbrains.mps.baseLanguage.collections.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import java.util.List;
import org.jetbrains.mps.openapi.language.SConcept;

public class TreeSetCreator_BehaviorDescriptor extends HashSetCreator_BehaviorDescriptor {
  public TreeSetCreator_BehaviorDescriptor() {
  }
  public boolean virtual_canHaveParameter_2261417478150191157(SNode thisNode) {
    return TreeSetCreator_Behavior.virtual_canHaveParameter_2261417478150191157(thisNode);
  }
  public SNode virtual_createType_1237722437229(SNode thisNode) {
    return TreeSetCreator_Behavior.virtual_createType_1237722437229(thisNode);
  }
  public List<SNode> virtual_getAvailableFor_3044950653914717035(SConcept thisConcept) {
    return TreeSetCreator_Behavior.virtual_getAvailableFor_3044950653914717035(thisConcept);
  }
  public boolean virtual_hasInitSize_1262430001741498238(SConcept thisConcept) {
    return TreeSetCreator_Behavior.virtual_hasInitSize_1262430001741498238(thisConcept);
  }
  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.baseLanguage.collections.structure.TreeSetCreator";
  }
}
