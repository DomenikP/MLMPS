package jetbrains.mps.console.base.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import java.util.List;
import java.util.ArrayList;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.smodel.SModelUtil_new;
import jetbrains.mps.smodel.SReference;

public class BLCommand_Behavior {
  public static void init(SNode thisNode) {
  }
  public static SNode virtual_getExpectedRetType_1239354342632(SNode thisNode) {
    return _quotation_createNode_1tnz54_a0a0();
  }
  public static SNode virtual_getBody_1239354440022(SNode thisNode) {
    return SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getContainmentLink(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x4bd43869e610f3e9L, 0x188f8efcef6cea65L, "body"));
  }
  public static List<SNode> virtual_getThrowableTypes_6204026822016975623(SNode thisNode) {
    List<SNode> result = new ArrayList<SNode>();
    ListSequence.fromList(result).addElement(_quotation_createNode_1tnz54_a0a1a2());
    return result;
  }
  public static String virtual_getShortHelp_473081947982699339(SAbstractConcept thisConcept) {
    return "execute a statement list";
  }
  public static String virtual_getShortDisplayString_7006261637493126103(SAbstractConcept thisConcept) {
    return "{ <statements> }";
  }
  private static SNode _quotation_createNode_1tnz54_a0a0() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_1 = null;
    quotedNode_1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc6bf96dL, "jetbrains.mps.baseLanguage.structure.VoidType"), null, null, false);
    return quotedNode_1;
  }
  private static SNode _quotation_createNode_1tnz54_a0a1a2() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_1 = null;
    quotedNode_1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType"), null, null, false);
    quotedNode_1.setReference(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), SReference.create(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), quotedNode_1, facade.createModelReference("6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)"), facade.createNodeId("~Exception")));
    return quotedNode_1;
  }
}
