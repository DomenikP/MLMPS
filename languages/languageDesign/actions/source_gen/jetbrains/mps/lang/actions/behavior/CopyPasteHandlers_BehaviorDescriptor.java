package jetbrains.mps.lang.actions.behavior;

/*Generated by MPS */

import jetbrains.mps.lang.core.behavior.BaseConcept_BehaviorDescriptor;
import jetbrains.mps.lang.core.behavior.INamedConcept_BehaviorDescriptor;
import jetbrains.mps.lang.structure.behavior.IConceptAspect_BehaviorDescriptor;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.structure.behavior.IConceptAspect_Behavior;
import java.util.List;
import jetbrains.mps.lang.core.behavior.INamedConcept_Behavior;
import jetbrains.mps.util.annotation.ToRemove;

public class CopyPasteHandlers_BehaviorDescriptor extends BaseConcept_BehaviorDescriptor implements INamedConcept_BehaviorDescriptor, IConceptAspect_BehaviorDescriptor {
  public CopyPasteHandlers_BehaviorDescriptor() {
  }
  public boolean virtual_canBeAppliedToNode_8911797107065640816(SConcept thisConcept, SNode candidate) {
    return IConceptAspect_Behavior.virtual_canBeAppliedToNode_8911797107065640816(thisConcept, candidate);
  }
  public List<SNode> virtual_getBaseConceptCollection_5270353093116013036(SNode thisNode) {
    return CopyPasteHandlers_Behavior.virtual_getBaseConceptCollection_5270353093116013036(thisNode);
  }
  public SNode virtual_getBaseConcept_2621449412040133768(SNode thisNode) {
    return IConceptAspect_Behavior.virtual_getBaseConcept_2621449412040133768(thisNode);
  }
  public String virtual_getFqName_1213877404258(SNode thisNode) {
    return INamedConcept_Behavior.virtual_getFqName_1213877404258(thisNode);
  }
  @Deprecated
  @ToRemove(version = 3.3)
  public boolean virtual_isApplicable_7839831476331657915(SNode thisNode, SNode candidate) {
    return IConceptAspect_Behavior.virtual_isApplicable_7839831476331657915(thisNode, candidate);
  }
  public void virtual_setBaseConcept_6261424444345963020(SNode thisNode, SNode baseConcept) {
    CopyPasteHandlers_Behavior.virtual_setBaseConcept_6261424444345963020(thisNode, baseConcept);
  }
  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.lang.actions.structure.CopyPasteHandlers";
  }
}
