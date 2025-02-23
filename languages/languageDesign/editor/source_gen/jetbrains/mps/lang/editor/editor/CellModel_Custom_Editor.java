package jetbrains.mps.lang.editor.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.DefaultNodeEditor;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.openapi.editor.style.Style;
import jetbrains.mps.editor.runtime.style.StyleImpl;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.impl.cellActions.CellAction_Comment;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.lang.editor.cellProviders.SingleRoleCellProvider;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.nodeEditor.cellMenu.DefaultChildSubstituteInfo;

public class CellModel_Custom_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createCollection_zca0xt_a(editorContext, node);
  }
  public EditorCell createInspectedCell(EditorContext editorContext, SNode node) {
    return this.createCollection_zca0xt_a_0(editorContext, node);
  }
  private EditorCell createCollection_zca0xt_a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createHorizontal(editorContext, node);
    editorCell.setCellId("Collection_zca0xt_a");
    editorCell.setBig(true);
    Style style = new StyleImpl();
    Styles_StyleSheet.apply_borderedCollection(style, editorCell);
    editorCell.getStyle().putAll(style);
    editorCell.setAction(CellActionType.COMMENT, new CellAction_Comment(node));
    editorCell.addEditorCell(this.createComponent_zca0xt_a0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_zca0xt_b0(editorContext, node));
    editorCell.addEditorCell(this.createComponent_zca0xt_c0(editorContext, node));
    return editorCell;
  }
  private EditorCell createComponent_zca0xt_a0(EditorContext editorContext, SNode node) {
    EditorCell editorCell = editorContext.getCellFactory().createEditorComponentCell(node, "jetbrains.mps.lang.editor.editor._OpenTag");
    return editorCell;
  }
  private EditorCell createConstant_zca0xt_b0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "custom cell");
    editorCell.setCellId("Constant_zca0xt_b0");
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createComponent_zca0xt_c0(EditorContext editorContext, SNode node) {
    EditorCell editorCell = editorContext.getCellFactory().createEditorComponentCell(node, "jetbrains.mps.lang.editor.editor._CloseTag");
    return editorCell;
  }
  private EditorCell createCollection_zca0xt_a_0(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createVertical(editorContext, node);
    editorCell.setCellId("Collection_zca0xt_a_0");
    editorCell.setBig(true);
    Style style = new StyleImpl();
    style.set(StyleAttributes.SELECTABLE, 0, false);
    editorCell.getStyle().putAll(style);
    editorCell.setAction(CellActionType.COMMENT, new CellAction_Comment(node));
    editorCell.addEditorCell(this.createComponent_zca0xt_a0_0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_zca0xt_b0_0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_zca0xt_c0(editorContext, node));
    editorCell.addEditorCell(this.createCollection_zca0xt_d0(editorContext, node));
    return editorCell;
  }
  private EditorCell createComponent_zca0xt_a0_0(EditorContext editorContext, SNode node) {
    EditorCell editorCell = editorContext.getCellFactory().createEditorComponentCell(node, "jetbrains.mps.lang.editor.editor.Style_Component");
    return editorCell;
  }
  private EditorCell createConstant_zca0xt_b0_0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "");
    editorCell.setCellId("Constant_zca0xt_b0_0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.SELECTABLE, 0, false);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createConstant_zca0xt_c0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "Custom cell:");
    editorCell.setCellId("Constant_zca0xt_c0");
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createCollection_zca0xt_d0(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createVertical(editorContext, node);
    editorCell.setCellId("Collection_zca0xt_d0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.DRAW_BORDER, 0, true);
    editorCell.getStyle().putAll(style);
    editorCell.setGridLayout(true);
    editorCell.addEditorCell(this.createCollection_zca0xt_a3a(editorContext, node));
    return editorCell;
  }
  private EditorCell createCollection_zca0xt_a3a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createHorizontal(editorContext, node);
    editorCell.setCellId("Collection_zca0xt_a3a");
    Style style = new StyleImpl();
    style.set(StyleAttributes.SELECTABLE, 0, false);
    style.set(StyleAttributes.DRAW_BORDER, 0, true);
    editorCell.getStyle().putAll(style);
    editorCell.addEditorCell(this.createConstant_zca0xt_a0d0(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_zca0xt_b0d0(editorContext, node));
    return editorCell;
  }
  private EditorCell createConstant_zca0xt_a0d0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "cell provider");
    editorCell.setCellId("Constant_zca0xt_a0d0");
    Style style = new StyleImpl();
    Styles_StyleSheet.apply_property(style, editorCell);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefNode_zca0xt_b0d0(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new CellModel_Custom_Editor.cellProviderSingleRoleHandler_zca0xt_b0d0(node, MetaAdapterFactory.getContainmentLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0xfb103073dcL, 0x111fe730db1L, "cellProvider"), editorContext);
    return provider.createCell();
  }
  private class cellProviderSingleRoleHandler_zca0xt_b0d0 extends SingleRoleCellProvider {
    public cellProviderSingleRoleHandler_zca0xt_b0d0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
      super(ownerNode, containmentLink, context);
    }
    public EditorCell createChildCell(EditorContext editorContext, SNode child) {
      EditorCell editorCell = super.createChildCell(editorContext, child);
      installCellInfo(child, editorCell);
      return editorCell;
    }
    public void installCellInfo(SNode child, EditorCell editorCell) {
      editorCell.setSubstituteInfo(new DefaultChildSubstituteInfo(myOwnerNode, myContainmentLink.getDeclarationNode(), myEditorContext));
      if (editorCell.getRole() == null) {
        editorCell.setRole("cellProvider");
      }
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_cellProvider");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no cellProvider>";
    }

  }
}
