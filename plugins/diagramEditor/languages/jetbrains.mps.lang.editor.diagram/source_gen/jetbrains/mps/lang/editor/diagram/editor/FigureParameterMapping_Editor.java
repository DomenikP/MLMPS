package jetbrains.mps.lang.editor.diagram.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.DefaultNodeEditor;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.impl.cellActions.CellAction_Comment;
import jetbrains.mps.nodeEditor.cellProviders.CellProviderWithRole;
import jetbrains.mps.lang.editor.cellProviders.PropertyCellProvider;
import jetbrains.mps.openapi.editor.style.Style;
import jetbrains.mps.editor.runtime.style.StyleImpl;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.cellMenu.CompositeSubstituteInfo;
import jetbrains.mps.nodeEditor.cellMenu.SubstituteInfoPartExt;
import jetbrains.mps.nodeEditor.EditorManager;
import jetbrains.mps.lang.editor.diagram.behavior.FigureParameterMapping_Behavior;
import jetbrains.mps.lang.editor.generator.internal.AbstractCellMenuPart_Generic_Group;
import java.util.List;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.model.SModel;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import jetbrains.mps.lang.editor.cellProviders.SingleRoleCellProvider;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.nodeEditor.cellMenu.DefaultChildSubstituteInfo;

public class FigureParameterMapping_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createCollection_3uf681_a(editorContext, node);
  }
  private EditorCell createCollection_3uf681_a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_3uf681_a");
    editorCell.setBig(true);
    editorCell.setAction(CellActionType.COMMENT, new CellAction_Comment(node));
    editorCell.addEditorCell(this.createProperty_3uf681_a0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_3uf681_b0(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_3uf681_c0(editorContext, node));
    return editorCell;
  }
  private EditorCell createProperty_3uf681_a0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new PropertyCellProvider(node, editorContext);
    provider.setRole("name");
    provider.setNoTargetText("<no name>");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    editorCell.setCellId("property_name");
    Style style = new StyleImpl();
    style.set(StyleAttributes.NAVIGATABLE_NODE, 0, FigureParameterMapping_Editor._StyleParameter_QueryFunction_3uf681_a0a0((editorCell == null ? null : editorCell.getContext()), (editorCell == null ? null : editorCell.getSNode())));
    style.set(StyleAttributes.AUTO_DELETABLE, 0, true);
    editorCell.getStyle().putAll(style);
    FigureParameterMappingName_Actions.setCellActions(editorCell, node, editorContext);
    editorCell.setSubstituteInfo(new CompositeSubstituteInfo(editorContext, provider.getCellContext(), new SubstituteInfoPartExt[]{new FigureParameterMapping_Editor.FigureParameterMapping_generic_cellMenu_3uf681_a0a0()}));
    SNode attributeConcept = provider.getRoleAttribute();
    Class attributeKind = provider.getRoleAttributeClass();
    if (attributeConcept != null) {
      EditorManager manager = EditorManager.getInstanceFromContext(editorContext);
      return manager.createNodeRoleAttributeCell(attributeConcept, attributeKind, editorCell);
    } else
    return editorCell;
  }
  private static SNode _StyleParameter_QueryFunction_3uf681_a0a0(EditorContext editorContext, SNode node) {
    return FigureParameterMapping_Behavior.call_getParameterDeclaration_4115105161238952352(node);
  }
  public static class FigureParameterMapping_generic_cellMenu_3uf681_a0a0 extends AbstractCellMenuPart_Generic_Group {
    public FigureParameterMapping_generic_cellMenu_3uf681_a0a0() {
    }
    public List<?> createParameterObjects(SNode node, IOperationContext operationContext, EditorContext editorContext) {
      return BehaviorReflection.invokeVirtual((Class<List<String>>) ((Class) Object.class), SLinkOperations.getTarget(FigureParameterMapping_Behavior.call_getDiagramNodeCell_1491555030355957123(node), MetaAdapterFactory.getContainmentLink(0x6106f6117a7442d1L, 0x80deedc5c602bfd1L, 0xf301bf106a326e1L, 0xf301bf106a329d9L, "figure")), "virtual_getFigureParameterNames_1491555030356445722", new Object[]{});
    }
    protected void handleAction(Object parameterObject, SNode node, SModel model, IOperationContext operationContext, EditorContext editorContext) {
      this.handleAction_impl((String) parameterObject, node, model, operationContext, editorContext);
    }
    public void handleAction_impl(String parameterObject, SNode node, SModel model, IOperationContext operationContext, EditorContext editorContext) {
      SPropertyOperations.set(node, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"), parameterObject);
    }
    public boolean isReferentPresentation() {
      return false;
    }
  }
  private EditorCell createConstant_3uf681_b0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, ":");
    editorCell.setCellId("Constant_3uf681_b0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.PUNCTUATION_LEFT, 0, true);
    style.set(StyleAttributes.MATCHING_LABEL, 0, "body-paren");
    style.set(StyleAttributes.PUNCTUATION_RIGHT, 0, true);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefNode_3uf681_c0(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new FigureParameterMapping_Editor.argumentSingleRoleHandler_3uf681_c0(node, MetaAdapterFactory.getContainmentLink(0x6106f6117a7442d1L, 0x80deedc5c602bfd1L, 0xf301bf106a7d7c7L, 0x3f6e840fdd824ddL, "argument"), editorContext);
    return provider.createCell();
  }
  private class argumentSingleRoleHandler_3uf681_c0 extends SingleRoleCellProvider {
    public argumentSingleRoleHandler_3uf681_c0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
        editorCell.setRole("argument");
      }
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_argument");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no argument>";
    }

  }
}
