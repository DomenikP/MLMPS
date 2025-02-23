package jetbrains.mps.lang.editor.editor;

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
import jetbrains.mps.nodeEditor.cellMenu.CompositeSubstituteInfo;
import jetbrains.mps.nodeEditor.cellMenu.BasicCellContext;
import jetbrains.mps.nodeEditor.cellMenu.SubstituteInfoPartExt;
import jetbrains.mps.lang.editor.generator.internal.AbstractCellMenuPart_ReplaceNode_CustomNodeConcept;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import jetbrains.mps.nodeEditor.cellProviders.CellProviderWithRole;
import jetbrains.mps.lang.editor.cellProviders.PropertyCellProvider;
import jetbrains.mps.nodeEditor.EditorManager;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.editor.generator.internal.AbstractCellMenuPart_PropertyValues;
import java.util.List;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import jetbrains.mps.lang.editor.generator.internal.AbstractCellMenuPart_Generic_Item;
import org.jetbrains.mps.openapi.model.SModel;
import jetbrains.mps.smodel.action.SNodeFactoryOperations;
import jetbrains.mps.lang.editor.cellProviders.SingleRoleCellProvider;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.nodeEditor.cellMenu.DefaultChildSubstituteInfo;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.editor.runtime.style.FocusPolicy;

public class UnderlinedStyleClassItem_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createCollection_4fi5xp_a(editorContext, node);
  }
  private EditorCell createCollection_4fi5xp_a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createHorizontal(editorContext, node);
    editorCell.setCellId("Collection_4fi5xp_a");
    editorCell.setBig(true);
    editorCell.setAction(CellActionType.COMMENT, new CellAction_Comment(node));
    editorCell.addEditorCell(this.createComponent_4fi5xp_a0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_4fi5xp_b0(editorContext, node));
    if (renderingCondition_4fi5xp_a2a(node, editorContext)) {
      editorCell.addEditorCell(this.createProperty_4fi5xp_c0(editorContext, node));
    }
    if (renderingCondition_4fi5xp_a3a(node, editorContext)) {
      editorCell.addEditorCell(this.createRefNode_4fi5xp_d0(editorContext, node));
    }
    return editorCell;
  }
  private EditorCell createComponent_4fi5xp_a0(EditorContext editorContext, SNode node) {
    EditorCell editorCell = editorContext.getCellFactory().createEditorComponentCell(node, "jetbrains.mps.lang.core.editor.alias");
    Style style = new StyleImpl();
    Styles_StyleSheet.apply_item(style, editorCell);
    editorCell.getStyle().putAll(style);
    editorCell.setSubstituteInfo(new CompositeSubstituteInfo(editorContext, new BasicCellContext(node), new SubstituteInfoPartExt[]{new UnderlinedStyleClassItem_Editor.ReplaceWith_StyleClassItem_cellMenu_4fi5xp_a0a0()}));
    return editorCell;
  }
  public static class ReplaceWith_StyleClassItem_cellMenu_4fi5xp_a0a0 extends AbstractCellMenuPart_ReplaceNode_CustomNodeConcept {
    public ReplaceWith_StyleClassItem_cellMenu_4fi5xp_a0a0() {
    }
    public String getReplacementConceptName() {
      return "jetbrains.mps.lang.editor.structure.StyleClassItem";
    }
  }
  private EditorCell createConstant_4fi5xp_b0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, ":");
    editorCell.setCellId("Constant_4fi5xp_b0");
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createProperty_4fi5xp_c0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new PropertyCellProvider(node, editorContext);
    provider.setRole("underlined");
    provider.setNoTargetText("<no underlined>");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    editorCell.setCellId("property_underlined");
    editorCell.setSubstituteInfo(new CompositeSubstituteInfo(editorContext, provider.getCellContext(), new SubstituteInfoPartExt[]{new UnderlinedStyleClassItem_Editor.UnderlinedStyleClassItem_underlined_cellMenu_4fi5xp_a0c0(), new UnderlinedStyleClassItem_Editor.UnderlinedStyleClassItem_generic_cellMenu_4fi5xp_b0c0()}));
    SNode attributeConcept = provider.getRoleAttribute();
    Class attributeKind = provider.getRoleAttributeClass();
    if (attributeConcept != null) {
      EditorManager manager = EditorManager.getInstanceFromContext(editorContext);
      return manager.createNodeRoleAttributeCell(attributeConcept, attributeKind, editorCell);
    } else
    return editorCell;
  }
  private static boolean renderingCondition_4fi5xp_a2a(SNode node, EditorContext editorContext) {
    return SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x1143bd837d7L, 0x11c5653e86eL, "query")) == null;
  }
  public static class UnderlinedStyleClassItem_underlined_cellMenu_4fi5xp_a0c0 extends AbstractCellMenuPart_PropertyValues {
    public UnderlinedStyleClassItem_underlined_cellMenu_4fi5xp_a0c0() {
    }
    public List<String> getPropertyValues(SNode node, IOperationContext operationContext, EditorContext editorContext) {
      return ListSequence.fromListAndArray(new ArrayList<String>(), "0", "1", "2");
    }
  }
  public static class UnderlinedStyleClassItem_generic_cellMenu_4fi5xp_b0c0 extends AbstractCellMenuPart_Generic_Item {
    public UnderlinedStyleClassItem_generic_cellMenu_4fi5xp_b0c0() {
    }
    public void handleAction(SNode node, SModel model, IOperationContext operationContext, EditorContext editorContext) {
      SNodeFactoryOperations.setNewChild(node, MetaAdapterFactory.getContainmentLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x1143bd837d7L, 0x11c5653e86eL, "query"), SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x11c4d022befL, "jetbrains.mps.lang.editor.structure.QueryFunction_Underlined")));
    }
    public String getMatchingText() {
      return "query";
    }
  }
  private EditorCell createRefNode_4fi5xp_d0(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new UnderlinedStyleClassItem_Editor.querySingleRoleHandler_4fi5xp_d0(node, MetaAdapterFactory.getContainmentLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x1143bd837d7L, 0x11c5653e86eL, "query"), editorContext);
    return provider.createCell();
  }
  private class querySingleRoleHandler_4fi5xp_d0 extends SingleRoleCellProvider {
    public querySingleRoleHandler_4fi5xp_d0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
        editorCell.setRole("query");
      }
      if (true) {
        editorCell.getStyle().set(StyleAttributes.FOCUS_POLICY, FocusPolicy.ATTRACTS_RECURSIVELY);
      }
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_query");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no query>";
    }

  }
  private static boolean renderingCondition_4fi5xp_a3a(SNode node, EditorContext editorContext) {
    return (SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x1143bd837d7L, 0x11c5653e86eL, "query")) != null);
  }
}
