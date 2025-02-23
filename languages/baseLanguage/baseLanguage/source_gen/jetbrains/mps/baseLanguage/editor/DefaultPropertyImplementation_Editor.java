package jetbrains.mps.baseLanguage.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.DefaultNodeEditor;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.impl.cellActions.CellAction_Comment;
import jetbrains.mps.lang.editor.cellProviders.SingleRoleCellProvider;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.nodeEditor.cellMenu.DefaultChildSubstituteInfo;

public class DefaultPropertyImplementation_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createCollection_fanyxu_a(editorContext, node);
  }
  private EditorCell createCollection_fanyxu_a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_fanyxu_a");
    editorCell.setBig(true);
    editorCell.setAction(CellActionType.COMMENT, new CellAction_Comment(node));
    editorCell.addEditorCell(this.createRefNode_fanyxu_a0(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_fanyxu_b0(editorContext, node));
    return editorCell;
  }
  private EditorCell createRefNode_fanyxu_a0(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new DefaultPropertyImplementation_Editor.defaultGetAccessorSingleRoleHandler_fanyxu_a0(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x117b7633177L, 0x117e0adb525L, "defaultGetAccessor"), editorContext);
    return provider.createCell();
  }
  private class defaultGetAccessorSingleRoleHandler_fanyxu_a0 extends SingleRoleCellProvider {
    public defaultGetAccessorSingleRoleHandler_fanyxu_a0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
        editorCell.setRole("defaultGetAccessor");
      }
      DefaultPropertyImplementation2Custom.setCellActions(editorCell, myOwnerNode, myEditorContext);
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_defaultGetAccessor");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no defaultGetAccessor>";
    }

  }
  private EditorCell createRefNode_fanyxu_b0(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new DefaultPropertyImplementation_Editor.defaultSetAccessorSingleRoleHandler_fanyxu_b0(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x117b7633177L, 0x117e16fe6eaL, "defaultSetAccessor"), editorContext);
    return provider.createCell();
  }
  private class defaultSetAccessorSingleRoleHandler_fanyxu_b0 extends SingleRoleCellProvider {
    public defaultSetAccessorSingleRoleHandler_fanyxu_b0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
        editorCell.setRole("defaultSetAccessor");
      }
      DefaultPropertyImplementation2CustomSetter.setCellActions(editorCell, myOwnerNode, myEditorContext);
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_defaultSetAccessor");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no defaultSetAccessor>";
    }

  }
}
