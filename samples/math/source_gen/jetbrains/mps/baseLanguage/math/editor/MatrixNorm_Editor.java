package jetbrains.mps.baseLanguage.math.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.DefaultNodeEditor;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.impl.cellActions.CellAction_Comment;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import jetbrains.mps.lang.editor.cellProviders.SingleRoleCellProvider;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.nodeEditor.cellMenu.DefaultChildSubstituteInfo;
import jetbrains.mps.nodeEditor.cellProviders.CellProviderWithRole;
import jetbrains.mps.lang.editor.cellProviders.PropertyCellProvider;
import jetbrains.mps.openapi.editor.style.Style;
import jetbrains.mps.editor.runtime.style.StyleImpl;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.editor.runtime.style.ScriptKind;
import jetbrains.mps.nodeEditor.EditorManager;

public class MatrixNorm_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createCollection_47eu07_a(editorContext, node);
  }
  private EditorCell createCollection_47eu07_a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createSuperscript(editorContext, node);
    editorCell.setCellId("Collection_47eu07_a");
    editorCell.setBig(true);
    editorCell.setAction(CellActionType.COMMENT, new CellAction_Comment(node));
    editorCell.addEditorCell(this.createConstant_47eu07_a0(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_47eu07_b0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_47eu07_c0(editorContext, node));
    editorCell.addEditorCell(this.createProperty_47eu07_d0(editorContext, node));
    return editorCell;
  }
  private EditorCell createConstant_47eu07_a0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "\u2551");
    editorCell.setCellId("Constant_47eu07_a0");
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefNode_47eu07_b0(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new MatrixNorm_Editor.matSingleRoleHandler_47eu07_b0(node, MetaAdapterFactory.getContainmentLink(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0xcc7e1ce69847db2L, 0xa87de0e72bc0fd1L, "mat"), editorContext);
    return provider.createCell();
  }
  private class matSingleRoleHandler_47eu07_b0 extends SingleRoleCellProvider {
    public matSingleRoleHandler_47eu07_b0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
        editorCell.setRole("mat");
      }
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_mat");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no mat>";
    }

  }
  private EditorCell createConstant_47eu07_c0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "\u2551");
    editorCell.setCellId("Constant_47eu07_c0");
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createProperty_47eu07_d0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new PropertyCellProvider(node, editorContext);
    provider.setRole("deg");
    provider.setNoTargetText("<no deg>");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    editorCell.setCellId("property_deg");
    Style style = new StyleImpl();
    style.set(StyleAttributes.FONT_SIZE, 0, 10);
    style.set(StyleAttributes.SCRIPT_KIND, 0, ScriptKind.SUBSCRIPT);
    editorCell.getStyle().putAll(style);
    editorCell.setSubstituteInfo(provider.createDefaultSubstituteInfo());
    SNode attributeConcept = provider.getRoleAttribute();
    Class attributeKind = provider.getRoleAttributeClass();
    if (attributeConcept != null) {
      EditorManager manager = EditorManager.getInstanceFromContext(editorContext);
      return manager.createNodeRoleAttributeCell(attributeConcept, attributeKind, editorCell);
    } else
    return editorCell;
  }
}
