package jetbrains.mps.baseLanguage.classifiers.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class SuperClassifierExpresson_Behavior {
  public static void init(SNode thisNode) {
  }
  public static SNode call_getClassifier_1217434044387(SNode thisNode) {
    return IClassifier_Behavior.call_getContextClassifier_1213877527940(SNodeOperations.asSConcept(MetaAdapterFactory.getInterfaceConcept(0x443f4c36fcf54eb6L, 0x95008d06ed259e3eL, 0x118bc6b2af5L, "jetbrains.mps.baseLanguage.classifiers.structure.IClassifier").getDeclarationNode()), thisNode);
  }
}
