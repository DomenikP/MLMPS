package jetbrains.mps.lang.test.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;

public class NodeWarningCheckOperation_Behavior {
  public static void init(SNode thisNode) {
  }
  public static boolean virtual_canAttachReference_2893471348147804024(SNode thisNode, SNode reference) {
    return SNodeOperations.isInstanceOf(reference, MetaAdapterFactory.getConcept(0x7a5dda6291404668L, 0xab76d5ed1746f2b2L, 0x1190a1db131L, "jetbrains.mps.lang.typesystem.structure.WarningStatement"));
  }
  public static void virtual_attachReference_2893471348147987863(SNode thisNode, SNode reference) {
    assert BehaviorReflection.invokeVirtual(Boolean.TYPE, thisNode, "virtual_canAttachReference_2893471348147804024", new Object[]{reference});
    SLinkOperations.setTarget(thisNode, MetaAdapterFactory.getContainmentLink(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11b0224b421L, 0x75cf259aa047ff8bL, "warningRef"), SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x3ee2cbee8b386d76L, "jetbrains.mps.lang.test.structure.WarningStatementReference"))));
    SLinkOperations.setTarget(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getContainmentLink(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11b0224b421L, 0x75cf259aa047ff8bL, "warningRef")), MetaAdapterFactory.getReferenceLink(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x6abc06f5f4afab9dL, 0x73a7cdcfba51f755L, "declaration"), SNodeOperations.cast(reference, MetaAdapterFactory.getConcept(0x7a5dda6291404668L, 0xab76d5ed1746f2b2L, 0x1190a1db131L, "jetbrains.mps.lang.typesystem.structure.WarningStatement")));
  }
  public static SNode virtual_getReference_8333855927540237654(SNode thisNode) {
    return SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getContainmentLink(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11b0224b421L, 0x75cf259aa047ff8bL, "warningRef"));
  }
}
