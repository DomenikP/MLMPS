package jetbrains.mps.baseLanguage.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import java.util.List;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class ForeachStatement_Behavior {
  public static void init(SNode thisNode) {
  }
  public static List<SNode> virtual_getScopeVariables_5067982036267369894(SNode thisNode) {
    return ListSequence.fromListAndArray(new ArrayList<SNode>(), SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10a697996feL, 0x10a6979f36bL, "variable")));
  }
}
