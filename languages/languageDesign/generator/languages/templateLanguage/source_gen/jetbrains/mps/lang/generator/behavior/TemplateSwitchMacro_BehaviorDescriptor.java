package jetbrains.mps.lang.generator.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.baseLanguage.behavior.TypeDerivable_Behavior;

public class TemplateSwitchMacro_BehaviorDescriptor extends SourceSubstituteMacro_BehaviorDescriptor implements ITemplateCall_BehaviorDescriptor {
  public TemplateSwitchMacro_BehaviorDescriptor() {
  }
  public SNode virtual_deriveType_1213877435747(SNode thisNode, SNode expression) {
    return ITemplateCall_Behavior.virtual_deriveType_1213877435747(thisNode, expression);
  }
  public SNode virtual_deriveType_4555537781928374706(SNode thisNode, SNode expression, SNode link) {
    return TypeDerivable_Behavior.virtual_deriveType_4555537781928374706(thisNode, expression, link);
  }
  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.lang.generator.structure.TemplateSwitchMacro";
  }
}
