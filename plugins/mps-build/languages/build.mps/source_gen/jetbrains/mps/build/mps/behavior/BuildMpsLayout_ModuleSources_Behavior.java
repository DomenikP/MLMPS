package jetbrains.mps.build.mps.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class BuildMpsLayout_ModuleSources_Behavior {
  public static void init(SNode thisNode) {
  }
  public static boolean virtual_reexportsFromJar_5970181360961342219(SNode thisNode, Object o) {
    return o == SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x177c2feaf3463710L, 0x177c2feaf3463711L, "module"));
  }
}
