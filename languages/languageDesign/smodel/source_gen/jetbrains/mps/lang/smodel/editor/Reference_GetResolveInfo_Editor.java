package jetbrains.mps.lang.smodel.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.DefaultNodeEditor;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.editor.runtime.cells.BigCellUtil;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.impl.cellActions.CellAction_Comment;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import jetbrains.mps.openapi.editor.style.Style;
import jetbrains.mps.editor.runtime.style.StyleImpl;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.openapi.editor.style.StyleRegistry;
import jetbrains.mps.nodeEditor.MPSColors;
import jetbrains.mps.nodeEditor.MPSFonts;

public class Reference_GetResolveInfo_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createComponent_77164a_a(editorContext, node);
  }
  public EditorCell createInspectedCell(EditorContext editorContext, SNode node) {
    return this.createCollection_77164a_a(editorContext, node);
  }
  private EditorCell createComponent_77164a_a(EditorContext editorContext, SNode node) {
    EditorCell editorCell = editorContext.getCellFactory().createEditorComponentCell(node, "jetbrains.mps.lang.smodel.editor.AliasComponent");
    EditorCell bigCell = BigCellUtil.findBigCell(editorCell, node);
    if (bigCell != null) {
      bigCell.setBig(true);
    }
    editorCell.setAction(CellActionType.COMMENT, new CellAction_Comment(node));
    return editorCell;
  }
  private EditorCell createCollection_77164a_a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_77164a_a");
    editorCell.setBig(true);
    editorCell.setAction(CellActionType.COMMENT, new CellAction_Comment(node));
    editorCell.addEditorCell(this.createConstant_77164a_a0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_77164a_b0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_77164a_c0(editorContext, node));
    return editorCell;
  }
  private EditorCell createConstant_77164a_a0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "Get reference 'resolveInfo' operation");
    editorCell.setCellId("Constant_77164a_a0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, 0, true);
    style.set(StyleAttributes.TEXT_BACKGROUND_COLOR, 0, StyleRegistry.getInstance().getSimpleColor(MPSColors.lightGray));
    style.set(StyleAttributes.TEXT_COLOR, 0, StyleRegistry.getInstance().getSimpleColor(MPSColors.blue, StyleRegistry.getInstance().getSimpleColor(MPSColors.lightGray)));
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createConstant_77164a_b0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "");
    editorCell.setCellId("Constant_77164a_b0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, 0, true);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createConstant_77164a_c0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "Returns resolve info for this reference");
    editorCell.setCellId("Constant_77164a_c0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, 0, true);
    style.set(StyleAttributes.FONT_STYLE, 0, MPSFonts.PLAIN);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
}
