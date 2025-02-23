package jetbrains.mps.baseLanguage.behavior;

/*Generated by MPS */

import jetbrains.mps.lang.core.behavior.BaseConcept_BehaviorDescriptor;
import jetbrains.mps.lang.core.behavior.ImplementationPart_BehaviorDescriptor;
import org.jetbrains.mps.openapi.language.SConcept;
import java.util.List;
import javax.swing.Icon;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.baseLanguage.scopes.MembersPopulatingContext;

public class StaticInitializer_BehaviorDescriptor extends BaseConcept_BehaviorDescriptor implements ClassifierMember_BehaviorDescriptor, IStatementListContainer_BehaviorDescriptor, ImplementationPart_BehaviorDescriptor {
  public StaticInitializer_BehaviorDescriptor() {
  }
  public boolean virtual_canBeInterfaceMember_2949815620938109095(SConcept thisConcept) {
    return ClassifierMember_Behavior.virtual_canBeInterfaceMember_2949815620938109095(thisConcept);
  }
  public List<Icon> virtual_getMarkIcons_3923831204883340393(SNode thisNode) {
    return StaticInitializer_Behavior.virtual_getMarkIcons_3923831204883340393(thisNode);
  }
  public boolean virtual_isClosure_3262277503800835439(SNode thisNode) {
    return IStatementListContainer_Behavior.virtual_isClosure_3262277503800835439(thisNode);
  }
  public boolean virtual_isExecuteSynchronous_1230212745736(SNode thisNode) {
    return IStatementListContainer_Behavior.virtual_isExecuteSynchronous_1230212745736(thisNode);
  }
  public boolean virtual_isStatic_7405920559687241224(SNode thisNode) {
    return StaticInitializer_Behavior.virtual_isStatic_7405920559687241224(thisNode);
  }
  public boolean virtual_isStatic_8986964027630462944(SNode thisNode) {
    return StaticInitializer_Behavior.virtual_isStatic_8986964027630462944(thisNode);
  }
  public boolean virtual_isVisible_6145907390641297352(SNode thisNode, SNode contextClassifierType, SNode contextNode) {
    return StaticInitializer_Behavior.virtual_isVisible_6145907390641297352(thisNode, contextClassifierType, contextNode);
  }
  public boolean virtual_isVisible_8083692786967482069(SNode thisNode, SNode contextClassifier, SNode contextNode) {
    return ClassifierMember_Behavior.virtual_isVisible_8083692786967482069(thisNode, contextClassifier, contextNode);
  }
  public boolean virtual_needsEmptyLineAfter_641490355014298838(SNode thisNode) {
    return ClassifierMember_Behavior.virtual_needsEmptyLineAfter_641490355014298838(thisNode);
  }
  public boolean virtual_needsEmptyLineBefore_641490355014296733(SNode thisNode) {
    return ClassifierMember_Behavior.virtual_needsEmptyLineBefore_641490355014296733(thisNode);
  }
  public void virtual_populateMember_7405920559687254644(SNode thisNode, MembersPopulatingContext context, SNode classifier) {
    ClassifierMember_Behavior.virtual_populateMember_7405920559687254644(thisNode, context, classifier);
  }
  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.baseLanguage.structure.StaticInitializer";
  }
}
