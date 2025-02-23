package jetbrains.mps.lang.test.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.nodeEditor.NodeEditorComponent;
import java.util.Map;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import jetbrains.mps.nodeEditor.EditorComponent;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import jetbrains.mps.openapi.editor.selection.SelectionManager;
import jetbrains.mps.nodeEditor.cells.EditorCell_Label;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;

public class AnonymousCellAnnotation_Behavior {
  public static void init(SNode thisNode) {
  }
  public static void call_setupSelection_6268941039745707957(final SNode thisNode, final NodeEditorComponent nodeEditorComponent, final SNode node, final Map<SNode, SNode> map) {
    final Wrappers._T<EditorComponent> editorComponent = new Wrappers._T<EditorComponent>(nodeEditorComponent);
    final Wrappers._T<EditorCell> cellWithId = new Wrappers._T<EditorCell>();
    ModelAccess.instance().runReadAction(new Runnable() {
      public void run() {
        if (SPropertyOperations.getBoolean(thisNode, MetaAdapterFactory.getProperty(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11e31babe12L, 0x1b73330fb1241e01L, "isInInspector"))) {
          editorComponent.value = AnonymousCellAnnotation_Behavior.call_setupInspector_5681471431307922086(thisNode, node, nodeEditorComponent);
        }
        cellWithId.value = editorComponent.value.findCellWithId(node, SPropertyOperations.getString(thisNode, MetaAdapterFactory.getProperty(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11e31babe12L, 0x11e31babe13L, "cellId")));
        if (cellWithId.value == null) {
          throw new RuntimeException("No cell " + thisNode);
        }
        AnonymousCellAnnotation_Behavior.call_setupCaretAndSelection_9114978211826243747(thisNode, cellWithId.value);
      }
    });
    editorComponent.value.changeSelection(cellWithId.value);
    ModelAccess.instance().runReadAction(new Runnable() {
      public void run() {
        if (SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11e31babe12L, 0x1ad0cd452e1f9accL, "nodeRangeSelectionStart")) != null) {
          SNode selectionStart = MapSequence.fromMap(map).get(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11e31babe12L, 0x1ad0cd452e1f9accL, "nodeRangeSelectionStart")));
          SNode selectionEnd = MapSequence.fromMap(map).get(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11e31babe12L, 0x1ad0cd452e1f9acdL, "nodeRangeSelectionEnd")));
          SelectionManager selectionManager = editorComponent.value.getSelectionManager();
          selectionManager.pushSelection(selectionManager.createRangeSelection(selectionStart, selectionEnd));
        }
      }
    });
  }
  public static int call_getCaretPosition_6268941039745717986(SNode thisNode, EditorCell_Label label) {
    if (SPropertyOperations.getBoolean(thisNode, MetaAdapterFactory.getProperty(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11e31babe12L, 0x11e3fde6f41L, "isLastPosition"))) {
      return label.getText().length();
    } else {
      return SPropertyOperations.getInteger(thisNode, MetaAdapterFactory.getProperty(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11e31babe12L, 0x11e31babe14L, "caretPosition"));
    }
  }
  public static void call_setupCaretAndSelection_9114978211826243747(SNode thisNode, EditorCell cellWithId) {
    if (cellWithId instanceof EditorCell_Label) {
      EditorCell_Label label = (EditorCell_Label) cellWithId;
      label.setCaretPosition(AnonymousCellAnnotation_Behavior.call_getCaretPosition_6268941039745717986(thisNode, label));
      label.setSelectionStart(SPropertyOperations.getInteger(thisNode, MetaAdapterFactory.getProperty(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11e31babe12L, 0x56ffc0a94fe5fc33L, "selectionStart")));
      label.setSelectionEnd(SPropertyOperations.getInteger(thisNode, MetaAdapterFactory.getProperty(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11e31babe12L, 0x56ffc0a94fe5fc35L, "selectionEnd")));
    }
  }
  public static EditorComponent call_setupInspector_5681471431307922086(SNode thisNode, SNode node, NodeEditorComponent nodeEditorComponent) {
    SNode nodeToSelect = node;
    while (nodeToSelect != null && nodeEditorComponent.findNodeCell(nodeToSelect) == null) {
      nodeToSelect = SNodeOperations.getParent(nodeToSelect);
    }
    nodeEditorComponent.selectNode(nodeToSelect);
    return nodeEditorComponent.getInspector();
  }
}
