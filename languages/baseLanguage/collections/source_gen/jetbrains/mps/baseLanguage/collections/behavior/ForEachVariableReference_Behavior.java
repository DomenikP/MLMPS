package jetbrains.mps.baseLanguage.collections.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class ForEachVariableReference_Behavior {
  public static void init(SNode thisNode) {
  }
  public static SNode virtual_getVariable_1023687332192481693(SNode thisNode) {
    return SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x10cac6fa5c3L, 0x10cac7007baL, "variable"));
  }
}
