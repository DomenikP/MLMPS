package jetbrains.mps.lang.core.behavior;

/*Generated by MPS */

import java.util.List;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.language.SConcept;

public abstract class Attribute_BehaviorDescriptor extends BaseConcept_BehaviorDescriptor {
  public Attribute_BehaviorDescriptor() {
  }
  @Deprecated
  public List<SNode> virtual_getAttributed_3044950653914717013(SConcept thisConcept) {
    return Attribute_Behavior.virtual_getAttributed_3044950653914717013(thisConcept);
  }
  @Deprecated
  public String virtual_getRole_1262430001741497900(SConcept thisConcept) {
    return Attribute_Behavior.virtual_getRole_1262430001741497900(thisConcept);
  }
  @Deprecated
  public boolean virtual_multiple_1262430001741497972(SConcept thisConcept) {
    return Attribute_Behavior.virtual_multiple_1262430001741497972(thisConcept);
  }
  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.lang.core.structure.Attribute";
  }
}
