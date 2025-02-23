package jetbrains.mps.lang.actions.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import java.util.List;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.smodel.SModelUtil_new;
import jetbrains.mps.smodel.SReference;

public class QueryFunction_GenericSubstituteMenuPart_Behavior {
  public static void init(SNode thisNode) {
  }
  public static boolean virtual_usesParameterObject_1262430001741497984(SAbstractConcept thisConcept) {
    return true;
  }
  public static List<SNode> virtual_getParameters_1213877374450(SNode thisNode) {
    List<SNode> result = ListSequence.fromList(new ArrayList<SNode>());
    ListSequence.fromList(result).addElement(MetaAdapterFactory.getConcept(0xaee9cad2acd44608L, 0xaef20004f6a1cdbdL, 0x10ccb7e17b2L, "jetbrains.mps.lang.actions.structure.ConceptFunctionParameter_parentNode").getDeclarationNode());
    ListSequence.fromList(result).addElement(MetaAdapterFactory.getConcept(0xaee9cad2acd44608L, 0xaef20004f6a1cdbdL, 0x1122c8bef38L, "jetbrains.mps.lang.actions.structure.ConceptFunctionParameter_currentTargetNode").getDeclarationNode());
    ListSequence.fromList(result).addElement(MetaAdapterFactory.getConcept(0xaee9cad2acd44608L, 0xaef20004f6a1cdbdL, 0x1175fd19500L, "jetbrains.mps.lang.actions.structure.ConceptFunctionParameter_childSetter").getDeclarationNode());
    ListSequence.fromList(result).addElement(MetaAdapterFactory.getConcept(0xaee9cad2acd44608L, 0xaef20004f6a1cdbdL, 0x112387cf896L, "jetbrains.mps.lang.actions.structure.ConceptFunctionParameter_childConcept").getDeclarationNode());
    ListSequence.fromList(result).addElement(MetaAdapterFactory.getConcept(0x13744753c81f424aL, 0x9c1bcf8943bf4e86L, 0x10e761c927aL, "jetbrains.mps.lang.sharedConcepts.structure.ConceptFunctionParameter_operationContext").getDeclarationNode());
    return result;
  }
  public static SNode virtual_getExpectedReturnType_1213877374441(SNode thisNode) {
    return _quotation_createNode_ynjj1y_a0a2();
  }
  private static SNode _quotation_createNode_ynjj1y_a0a2() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_1 = null;
    SNode quotedNode_2 = null;
    quotedNode_1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x10c25fb076aL, "jetbrains.mps.baseLanguage.collections.structure.ListType"), null, null, false);
    quotedNode_2 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType"), null, null, false);
    quotedNode_2.setReference(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), SReference.create(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), quotedNode_2, facade.createModelReference("1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)"), facade.createNodeId("~SubstituteAction")));
    quotedNode_1.addChild(MetaAdapterFactory.getContainmentLink(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x10c25fb076aL, 0x10c25fe95c5L, "elementType"), quotedNode_2);
    return quotedNode_1;
  }
}
