package jetbrains.mps.samples.heating.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.DefaultNodeEditor;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.impl.cellActions.CellAction_Comment;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import jetbrains.mps.nodeEditor.cellMenu.CompositeSubstituteInfo;
import jetbrains.mps.nodeEditor.cellMenu.BasicCellContext;
import jetbrains.mps.nodeEditor.cellMenu.SubstituteInfoPartExt;
import jetbrains.mps.lang.editor.generator.internal.AbstractCellMenuPart_ReplaceNode_CustomNodeConcept;
import jetbrains.mps.nodeEditor.cellProviders.CellProviderWithRole;
import jetbrains.mps.lang.editor.cellProviders.PropertyCellProvider;
import jetbrains.mps.openapi.editor.style.Style;
import jetbrains.mps.editor.runtime.style.StyleImpl;
import jetbrains.mps.baseLanguage.editor.BaseLanguageStyle_StyleSheet;
import jetbrains.mps.nodeEditor.EditorManager;

public class DayRange_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createCollection_rtxy5x_a(editorContext, node);
  }
  private EditorCell createCollection_rtxy5x_a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_rtxy5x_a");
    editorCell.setBig(true);
    editorCell.setAction(CellActionType.COMMENT, new CellAction_Comment(node));
    editorCell.addEditorCell(this.createConstant_rtxy5x_a0(editorContext, node));
    editorCell.addEditorCell(this.createProperty_rtxy5x_b0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_rtxy5x_c0(editorContext, node));
    editorCell.addEditorCell(this.createProperty_rtxy5x_d0(editorContext, node));
    return editorCell;
  }
  private EditorCell createConstant_rtxy5x_a0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "from");
    editorCell.setCellId("Constant_rtxy5x_a0");
    editorCell.setDefaultText("");
    editorCell.setSubstituteInfo(new CompositeSubstituteInfo(editorContext, new BasicCellContext(node), new SubstituteInfoPartExt[]{new DayRange_Editor.ReplaceWith_Applicability_cellMenu_rtxy5x_a0a0()}));
    return editorCell;
  }
  public static class ReplaceWith_Applicability_cellMenu_rtxy5x_a0a0 extends AbstractCellMenuPart_ReplaceNode_CustomNodeConcept {
    public ReplaceWith_Applicability_cellMenu_rtxy5x_a0a0() {
    }
    public String getReplacementConceptName() {
      return "jetbrains.mps.samples.heating.structure.Applicability";
    }
  }
  private EditorCell createProperty_rtxy5x_b0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new PropertyCellProvider(node, editorContext);
    provider.setRole("start");
    provider.setNoTargetText("<no start>");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    editorCell.setCellId("property_start");
    Style style = new StyleImpl();
    BaseLanguageStyle_StyleSheet.apply_Field(style, editorCell);
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
  private EditorCell createConstant_rtxy5x_c0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "to");
    editorCell.setCellId("Constant_rtxy5x_c0");
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createProperty_rtxy5x_d0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new PropertyCellProvider(node, editorContext);
    provider.setRole("end");
    provider.setNoTargetText("<no end>");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    editorCell.setCellId("property_end");
    Style style = new StyleImpl();
    BaseLanguageStyle_StyleSheet.apply_Field(style, editorCell);
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
