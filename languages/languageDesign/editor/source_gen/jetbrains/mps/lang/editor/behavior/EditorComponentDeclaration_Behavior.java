package jetbrains.mps.lang.editor.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.internal.collections.runtime.SetSequence;
import java.util.HashSet;
import java.util.Set;

public class EditorComponentDeclaration_Behavior {
  public static void init(SNode thisNode) {
  }
  public static SNode virtual_getBaseConcept_2621449412040133768(SNode thisNode) {
    return SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x10f7df344a9L, 0x10f7df451aeL, "conceptDeclaration"));
  }
  public static void virtual_setBaseConcept_6261424444345963020(SNode thisNode, SNode baseConcept) {
    SLinkOperations.setTarget(thisNode, MetaAdapterFactory.getReferenceLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x10f7df344a9L, 0x10f7df451aeL, "conceptDeclaration"), baseConcept);
  }
  public static SNode virtual_getConceptDeclaration_7055725856388417603(SNode thisNode) {
    return EditorComponentDeclaration_Behavior.call_getConceptDeclaration_8288068497639818367(thisNode, SetSequence.fromSet(new HashSet<SNode>()));
  }
  public static SNode call_getConceptDeclaration_8288068497639818367(SNode thisNode, Set<SNode> visitedEditorComponents) {
    if (SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x10f7df344a9L, 0x10f7df451aeL, "conceptDeclaration")) != null) {
      return SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x10f7df344a9L, 0x10f7df451aeL, "conceptDeclaration"));
    }

    if (SetSequence.fromSet(visitedEditorComponents).contains(thisNode)) {
      return null;
    }
    SetSequence.fromSet(visitedEditorComponents).addElement(thisNode);
    if (SLinkOperations.getTarget(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getContainmentLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0xfb35c2bb47L, 0x619d955714550434L, "overridenEditorComponent")), MetaAdapterFactory.getReferenceLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x619d95571435dfe8L, 0x619d95571435e249L, "editorComponent")) != null) {
      return EditorComponentDeclaration_Behavior.call_getConceptDeclaration_8288068497639818367(SLinkOperations.getTarget(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getContainmentLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0xfb35c2bb47L, 0x619d955714550434L, "overridenEditorComponent")), MetaAdapterFactory.getReferenceLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x619d95571435dfe8L, 0x619d95571435e249L, "editorComponent")), visitedEditorComponents);
    }
    return null;
  }
}
