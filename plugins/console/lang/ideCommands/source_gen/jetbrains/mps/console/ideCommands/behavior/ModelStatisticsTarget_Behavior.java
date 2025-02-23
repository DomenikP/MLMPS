package jetbrains.mps.console.ideCommands.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.baseLanguage.tuples.runtime.Tuples;
import jetbrains.mps.console.tool.ConsoleContext;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import jetbrains.mps.util.IterableUtil;
import jetbrains.mps.util.SNodeOperations;
import java.util.List;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import org.jetbrains.mps.openapi.model.SModel;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.baseLanguage.tuples.runtime.MultiTuple;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SModelOperations;

public class ModelStatisticsTarget_Behavior {
  public static void init(SNode thisNode) {
  }
  public static Iterable<Tuples._2<String, Integer>> virtual_getStat_7490254719527247609(SNode thisNode, ConsoleContext context) {
    int references = 0;
    int properties = 0;
    for (SNode node : BehaviorReflection.invokeVirtual((Class<Iterable<SNode>>) ((Class) Object.class), thisNode, "virtual_getNodes_5207260697411458163", new Object[]{context})) {
      references += IterableUtil.asCollection(node.getReferences()).size();
      properties += SNodeOperations.getProperties(node).keySet().size();
    }
    List<Tuples._2<String, Integer>> result = ListSequence.fromList(new ArrayList<Tuples._2<String, Integer>>());
    SModel model = ModelReference_Behavior.call_getModel_7057947030098579394(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getContainmentLink(0xa5e4de5346a344daL, 0xaab368fdf1c34ed0L, 0x67f2bafb7a5cad96L, 0x67f2bafb7a5cad99L, "target")), context.getProject().getRepository());
    ListSequence.fromList(result).addElement(MultiTuple.<String,Integer>from("Roots", ListSequence.fromList(SModelOperations.roots(model, null)).count()));
    ListSequence.fromList(result).addElement(MultiTuple.<String,Integer>from("Nodes", (model == null ? 0 : SNodeOperations.nodesCount(model))));
    ListSequence.fromList(result).addElement(MultiTuple.<String,Integer>from("References", references));
    ListSequence.fromList(result).addElement(MultiTuple.<String,Integer>from("Properties", properties));

    return result;
  }
  public static Iterable<SNode> virtual_getNodes_5207260697411458163(SNode thisNode, ConsoleContext context) {
    return SModelOperations.nodes(ModelReference_Behavior.call_getModel_7057947030098579394(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getContainmentLink(0xa5e4de5346a344daL, 0xaab368fdf1c34ed0L, 0x67f2bafb7a5cad96L, 0x67f2bafb7a5cad99L, "target")), context.getProject().getRepository()), null);
  }
}
