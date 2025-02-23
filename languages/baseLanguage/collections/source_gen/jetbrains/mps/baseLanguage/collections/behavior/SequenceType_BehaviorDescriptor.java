package jetbrains.mps.baseLanguage.collections.behavior;

/*Generated by MPS */

import jetbrains.mps.baseLanguage.behavior.Type_BehaviorDescriptor;
import jetbrains.mps.baseLanguage.behavior.IGenericType_BehaviorDescriptor;
import org.jetbrains.mps.openapi.model.SNode;
import java.util.Map;
import jetbrains.mps.baseLanguage.behavior.IGenericType_Behavior;
import java.util.List;

public class SequenceType_BehaviorDescriptor extends Type_BehaviorDescriptor implements IGenericType_BehaviorDescriptor {
  public SequenceType_BehaviorDescriptor() {
  }
  public void virtual_collectGenericSubstitutions_4107091686347010321(SNode thisNode, Map<SNode, SNode> substitutions) {
    IGenericType_Behavior.virtual_collectGenericSubstitutions_4107091686347010321(thisNode, substitutions);
  }
  public SNode virtual_eraseGenerics_5089784887112634594(SNode thisNode) {
    return IGenericType_Behavior.virtual_eraseGenerics_5089784887112634594(thisNode);
  }
  public SNode virtual_expandGenericDescendants_4107091686347838550(SNode thisNode, SNode expanded, Map<SNode, SNode> substitutions, List<SNode> expTrace) {
    return IGenericType_Behavior.virtual_expandGenericDescendants_4107091686347838550(thisNode, expanded, substitutions, expTrace);
  }
  public SNode virtual_expandGenerics_4107091686347199582(SNode thisNode, Map<SNode, SNode> substitutions) {
    return IGenericType_Behavior.virtual_expandGenerics_4107091686347199582(thisNode, substitutions);
  }
  public SNode virtual_expandGenerics_4122274986016348613(SNode thisNode, Map<SNode, SNode> substitutions, List<SNode> expTrace) {
    return IGenericType_Behavior.virtual_expandGenerics_4122274986016348613(thisNode, substitutions, expTrace);
  }
  public List<SNode> virtual_getAbstractCreators_1226945293888(SNode thisNode) {
    return SequenceType_Behavior.virtual_getAbstractCreators_1226945293888(thisNode);
  }
  public SNode virtual_getClassExpression_1213877337357(SNode thisNode) {
    return SequenceType_Behavior.virtual_getClassExpression_1213877337357(thisNode);
  }
  public String virtual_getPresentation_1213877396640(SNode thisNode) {
    return SequenceType_Behavior.virtual_getPresentation_1213877396640(thisNode);
  }
  public List<String> virtual_getVariableSuffixes_1213877337304(SNode thisNode) {
    return SequenceType_Behavior.virtual_getVariableSuffixes_1213877337304(thisNode);
  }
  public boolean virtual_hasPluralVariableSuffixes_1447667470349154499(SNode thisNode) {
    return SequenceType_Behavior.virtual_hasPluralVariableSuffixes_1447667470349154499(thisNode);
  }
  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.baseLanguage.collections.structure.SequenceType";
  }
}
