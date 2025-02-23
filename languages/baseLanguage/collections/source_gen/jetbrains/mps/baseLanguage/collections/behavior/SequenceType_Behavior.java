package jetbrains.mps.baseLanguage.collections.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import java.util.List;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.util.NameUtil;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.smodel.SModelUtil_new;
import jetbrains.mps.smodel.SReference;

public class SequenceType_Behavior {
  public static void init(SNode thisNode) {
  }
  public static String virtual_getPresentation_1213877396640(SNode thisNode) {
    return "sequence<" + BehaviorReflection.invokeVirtual(String.class, SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getContainmentLink(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x10c260e9444L, 0x10c260ee40eL, "elementType")), "virtual_getPresentation_1213877396640", new Object[]{}) + ">";
  }
  public static List<String> virtual_getVariableSuffixes_1213877337304(SNode thisNode) {
    List<String> variableSuffixes = ListSequence.fromListAndArray(new ArrayList<String>(), "seq");
    if ((SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getContainmentLink(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x10c260e9444L, 0x10c260ee40eL, "elementType")) != null) && SNodeOperations.isInstanceOf(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getContainmentLink(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x10c260e9444L, 0x10c260ee40eL, "elementType")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37f506dL, "jetbrains.mps.baseLanguage.structure.Type"))) {
      if (BehaviorReflection.invokeVirtual(Boolean.TYPE, SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getContainmentLink(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x10c260e9444L, 0x10c260ee40eL, "elementType")), "virtual_hasPluralVariableSuffixes_1447667470349154499", new Object[]{})) {
        for (String suffix : BehaviorReflection.invokeVirtual((Class<List<String>>) ((Class) Object.class), SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getContainmentLink(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x10c260e9444L, 0x10c260ee40eL, "elementType")), "virtual_getVariableSuffixes_1213877337304", new Object[]{})) {
          if (!(ListSequence.fromList(variableSuffixes).contains(suffix))) {
            ListSequence.fromList(variableSuffixes).addElement(suffix);
          }
        }
      } else {
        for (String suffix : BehaviorReflection.invokeVirtual((Class<List<String>>) ((Class) Object.class), SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getContainmentLink(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x10c260e9444L, 0x10c260ee40eL, "elementType")), "virtual_getVariableSuffixes_1213877337304", new Object[]{})) {
          ListSequence.fromList(variableSuffixes).addElement(NameUtil.pluralize(suffix));
        }
      }
    }
    return variableSuffixes;
  }
  public static boolean virtual_hasPluralVariableSuffixes_1447667470349154499(SNode thisNode) {
    return true;
  }
  public static List<SNode> virtual_getAbstractCreators_1226945293888(SNode thisNode) {
    List<SNode> result = new ArrayList<SNode>();
    SNode seqCreator = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x11d14c97b16L, "jetbrains.mps.baseLanguage.collections.structure.SequenceCreator")));
    SLinkOperations.setTarget(seqCreator, MetaAdapterFactory.getContainmentLink(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x11d14c97b16L, 0x11d14c9ea5eL, "elementType"), SNodeOperations.copyNode(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getContainmentLink(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x10c260e9444L, 0x10c260ee40eL, "elementType"))));
    ListSequence.fromList(result).addElement(seqCreator);
    SNode singCreator = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x11fade5d82aL, "jetbrains.mps.baseLanguage.collections.structure.SingletonSequenceCreator")));
    SLinkOperations.setTarget(singCreator, MetaAdapterFactory.getContainmentLink(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x11fade5d82aL, 0x11fade6759fL, "elementType"), SNodeOperations.copyNode(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getContainmentLink(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x10c260e9444L, 0x10c260ee40eL, "elementType"))));
    ListSequence.fromList(result).addElement(singCreator);
    return result;
  }
  public static SNode virtual_getClassExpression_1213877337357(SNode thisNode) {
    return _quotation_createNode_hzlnln_a0a4();
  }
  private static SNode _quotation_createNode_hzlnln_a0a4() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_1 = null;
    quotedNode_1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x103fb730c14L, "jetbrains.mps.baseLanguage.structure.ClassifierClassExpression"), null, null, false);
    quotedNode_1.setReference(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x103fb730c14L, 0x103fb73a43eL, "classifier"), SReference.create(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x103fb730c14L, 0x103fb73a43eL, "classifier"), quotedNode_1, facade.createModelReference("r:fc76aa36-3cff-41c7-b94b-eee0e8341932(jetbrains.mps.internal.collections.runtime)"), facade.createNodeId("6543581031674024311")));
    return quotedNode_1;
  }
}
