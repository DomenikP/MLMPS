package jetbrains.mps.lang.structure.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import java.util.List;
import java.util.ArrayList;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.Set;
import jetbrains.mps.internal.collections.runtime.SetSequence;
import java.util.HashSet;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.LanguageAspect;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.internal.collections.runtime.ISelector;

public class InterfaceConceptDeclaration_Behavior {
  public static void init(SNode thisNode) {
  }
  public static List<SNode> virtual_getImmediateSuperconcepts_1222430305282(SNode thisNode) {
    List<SNode> result = new ArrayList<SNode>();
    for (SNode interfaceConceptReference : SLinkOperations.getChildren(thisNode, MetaAdapterFactory.getContainmentLink(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x1103556dcafL, 0x110356e9df4L, "extends"))) {
      ListSequence.fromList(result).addElement(SLinkOperations.getTarget(interfaceConceptReference, MetaAdapterFactory.getReferenceLink(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x110356fc618L, 0x110356fe029L, "intfc")));
    }
    return result;
  }
  public static List<SNode> call_getAllMethodsInPriorityOrder_9106339407519386413(SNode thisNode) {
    List<SNode> methods = ListSequence.fromList(new ArrayList<SNode>());
    Set<SNode> concepts = SetSequence.fromSet(new HashSet<SNode>());
    InterfaceConceptDeclaration_Behavior.call_collectAllMethodsInPriorityOrder_4038300048412704204(thisNode, methods, concepts);
    return methods;
  }
  public static void call_collectAllMethodsInPriorityOrder_4038300048412704204(SNode thisNode, List<SNode> methods, Set<SNode> concepts) {
    if (SetSequence.fromSet(concepts).contains(thisNode)) {
      return;
    }
    SetSequence.fromSet(concepts).addElement(thisNode);
    ListSequence.fromList(methods).addSequence(ListSequence.fromList(SLinkOperations.getChildren(SNodeOperations.cast(AbstractConceptDeclaration_Behavior.call_findConceptAspect_8360039740498068384(thisNode, LanguageAspect.BEHAVIOR), MetaAdapterFactory.getConcept(0xaf65afd8f0dd4942L, 0x87d963a55f2a9db1L, 0x11d43447b1aL, "jetbrains.mps.lang.behavior.structure.ConceptBehavior")), MetaAdapterFactory.getContainmentLink(0xaf65afd8f0dd4942L, 0x87d963a55f2a9db1L, 0x11d43447b1aL, 0x11d43447b25L, "method"))));
    for (SNode extendsInterface : ListSequence.fromList(SLinkOperations.getChildren(thisNode, MetaAdapterFactory.getContainmentLink(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x1103556dcafL, 0x110356e9df4L, "extends"))).where(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return (SLinkOperations.getTarget(it, MetaAdapterFactory.getReferenceLink(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x110356fc618L, 0x110356fe029L, "intfc")) != null);
      }
    }).select(new ISelector<SNode, SNode>() {
      public SNode select(SNode it) {
        return SLinkOperations.getTarget(it, MetaAdapterFactory.getReferenceLink(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x110356fc618L, 0x110356fe029L, "intfc"));
      }
    })) {
      // todo: equal methods in different interfaces check! 
      InterfaceConceptDeclaration_Behavior.call_collectAllMethodsInPriorityOrder_4038300048412704204(extendsInterface, methods, concepts);
    }
  }
}
