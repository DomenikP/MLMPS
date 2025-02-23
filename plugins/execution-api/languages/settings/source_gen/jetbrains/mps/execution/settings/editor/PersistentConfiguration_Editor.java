package jetbrains.mps.execution.settings.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.DefaultNodeEditor;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.impl.cellActions.CellAction_Comment;
import jetbrains.mps.openapi.editor.style.Style;
import jetbrains.mps.editor.runtime.style.StyleImpl;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.baseLanguage.editor.BaseLanguageStyle_StyleSheet;
import jetbrains.mps.nodeEditor.cellProviders.CellProviderWithRole;
import jetbrains.mps.lang.editor.cellProviders.PropertyCellProvider;
import jetbrains.mps.nodeEditor.EditorManager;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;

public class PersistentConfiguration_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createCollection_q65xye_a(editorContext, node);
  }
  private EditorCell createCollection_q65xye_a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createVertical(editorContext, node);
    editorCell.setCellId("Collection_q65xye_a");
    editorCell.setBig(true);
    editorCell.setAction(CellActionType.COMMENT, new CellAction_Comment(node));
    editorCell.addEditorCell(this.createCollection_q65xye_a0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_q65xye_b0(editorContext, node));
    editorCell.addEditorCell(this.createComponent_q65xye_c0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_q65xye_d0(editorContext, node));
    editorCell.addEditorCell(this.createComponent_q65xye_e0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_q65xye_f0(editorContext, node));
    editorCell.addEditorCell(this.createComponent_q65xye_g0(editorContext, node));
    return editorCell;
  }
  private EditorCell createCollection_q65xye_a0(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createHorizontal(editorContext, node);
    editorCell.setCellId("Collection_q65xye_a0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.SELECTABLE, 0, false);
    editorCell.getStyle().putAll(style);
    editorCell.addEditorCell(this.createComponent_q65xye_a0a(editorContext, node));
    editorCell.addEditorCell(this.createProperty_q65xye_b0a(editorContext, node));
    return editorCell;
  }
  private EditorCell createComponent_q65xye_a0a(EditorContext editorContext, SNode node) {
    EditorCell editorCell = editorContext.getCellFactory().createEditorComponentCell(node, "jetbrains.mps.lang.core.editor.alias");
    Style style = new StyleImpl();
    BaseLanguageStyle_StyleSheet.apply_KeyWord(style, editorCell);
    editorCell.getStyle().putAll(style);
    return editorCell;
  }
  private EditorCell createProperty_q65xye_b0a(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new PropertyCellProvider(node, editorContext);
    provider.setRole("name");
    provider.setNoTargetText("<no name>");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    editorCell.setCellId("property_name");
    Style style = new StyleImpl();
    BaseLanguageStyle_StyleSheet.apply_ClassName(style, editorCell);
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
  private EditorCell createConstant_q65xye_b0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "");
    editorCell.setCellId("Constant_q65xye_b0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.SELECTABLE, 0, false);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createComponent_q65xye_c0(EditorContext editorContext, SNode node) {
    EditorCell editorCell = editorContext.getCellFactory().createEditorComponentCell(node, "jetbrains.mps.execution.settings.editor.PersistentPropertiesComponent");
    return editorCell;
  }
  private EditorCell createConstant_q65xye_d0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "");
    editorCell.setCellId("Constant_q65xye_d0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.SELECTABLE, 0, false);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createComponent_q65xye_e0(EditorContext editorContext, SNode node) {
    EditorCell editorCell = editorContext.getCellFactory().createEditorComponentCell(node, "jetbrains.mps.execution.settings.editor.EditorComponent");
    return editorCell;
  }
  private EditorCell createConstant_q65xye_f0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "");
    editorCell.setCellId("Constant_q65xye_f0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.SELECTABLE, 0, false);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createComponent_q65xye_g0(EditorContext editorContext, SNode node) {
    EditorCell editorCell = editorContext.getCellFactory().createEditorComponentCell(node, "jetbrains.mps.execution.settings.editor.PersistentMethodsComponent");
    return editorCell;
  }
}
