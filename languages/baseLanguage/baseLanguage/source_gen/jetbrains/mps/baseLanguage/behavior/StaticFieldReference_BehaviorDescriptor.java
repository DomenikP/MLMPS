package jetbrains.mps.baseLanguage.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.language.SConcept;

public class StaticFieldReference_BehaviorDescriptor extends VariableReference_BehaviorDescriptor {
  public StaticFieldReference_BehaviorDescriptor() {
  }
  public Object virtual_eval_1213877519769(SNode thisNode, SModule module) {
    return StaticFieldReference_Behavior.virtual_eval_1213877519769(thisNode, module);
  }
  public Object virtual_getCompileTimeConstantValue_1238860310638(SNode thisNode, SModule module) {
    return StaticFieldReference_Behavior.virtual_getCompileTimeConstantValue_1238860310638(thisNode, module);
  }
  public boolean virtual_isCompileTimeConstant_1238860258777(SNode thisNode) {
    return StaticFieldReference_Behavior.virtual_isCompileTimeConstant_1238860258777(thisNode);
  }
  public boolean virtual_lvalue_1262430001741497939(SConcept thisConcept) {
    return StaticFieldReference_Behavior.virtual_lvalue_1262430001741497939(thisConcept);
  }
  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.baseLanguage.structure.StaticFieldReference";
  }
}
