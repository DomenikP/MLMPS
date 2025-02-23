package jetbrains.mps.lang.generator.editor;

/*Generated by MPS */

import jetbrains.mps.lang.editor.generator.internal.AbstractCellMenuComponent;
import jetbrains.mps.nodeEditor.cellMenu.SubstituteInfoPartExt;
import jetbrains.mps.lang.editor.generator.internal.AbstractCellMenuPart_Generic_Group;
import java.util.List;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.internal.collections.runtime.Sequence;
import org.jetbrains.mps.openapi.model.SModel;
import jetbrains.mps.smodel.action.SNodeFactoryOperations;
import jetbrains.mps.editor.runtime.selection.SelectionUtil;
import jetbrains.mps.openapi.editor.selection.SelectionManager;

public class replace_node_macro extends AbstractCellMenuComponent {
  public replace_node_macro() {
    super(new SubstituteInfoPartExt[]{new replace_node_macro.NodeMacro_generic_cellMenu_f12orh_a0()});
  }
  public static class NodeMacro_generic_cellMenu_f12orh_a0 extends AbstractCellMenuPart_Generic_Group {
    public NodeMacro_generic_cellMenu_f12orh_a0() {
    }
    public List<?> createParameterObjects(SNode node, IOperationContext operationContext, EditorContext editorContext) {
      return ListSequence.fromList(SConceptOperations.getAllSubConcepts(MetaAdapterFactory.getConcept(0xb401a68083254110L, 0x8fd384331ff25befL, 0xfd47ed6742L, "jetbrains.mps.lang.generator.structure.NodeMacro").getDeclarationNode(), SNodeOperations.getModel(node))).where(new IWhereFilter<SNode>() {
        public boolean accept(SNode it) {
          return !(SPropertyOperations.getBoolean(it, MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x1103553c5ffL, 0x403a32c5772c7ec2L, "abstract")));
        }
      }).subtract(Sequence.fromIterable(Sequence.<SNode>singleton(MetaAdapterFactory.getConcept(0xb401a68083254110L, 0x8fd384331ff25befL, 0x10313f84dd6L, "jetbrains.mps.lang.generator.structure.SwitchMacro").getDeclarationNode()))).toListSequence();
    }
    protected void handleAction(Object parameterObject, SNode node, SModel model, IOperationContext operationContext, EditorContext editorContext) {
      this.handleAction_impl((SNode) parameterObject, node, model, operationContext, editorContext);
    }
    public void handleAction_impl(SNode parameterObject, SNode node, SModel model, IOperationContext operationContext, EditorContext editorContext) {
      SNode macro = SNodeFactoryOperations.createNewNode(SNodeFactoryOperations.asInstanceConcept(parameterObject), node);
      SNodeOperations.replaceWithAnother(node, macro);
      SelectionUtil.selectLabelCellAnSetCaret(editorContext, macro, SelectionManager.FIRST_CELL, 1);
      editorContext.openInspector();
    }
    public boolean isReferentPresentation() {
      return false;
    }
    public String getMatchingText(Object parameterObject) {
      return this.getMatchingText_internal((SNode) parameterObject);
    }
    public String getMatchingText_internal(SNode parameterObject) {
      return SPropertyOperations.getString(parameterObject, MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x1103553c5ffL, 0x46ab0ad5826c74caL, "conceptAlias"));
    }
    public String getDescriptionText(Object parameterObject) {
      return this.getDescriptionText_internal((SNode) parameterObject);
    }
    public String getDescriptionText_internal(SNode parameterObject) {
      if (isNotEmptyString(SPropertyOperations.getString(parameterObject, MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x1103553c5ffL, 0x403a32c5772bbe20L, "conceptShortDescription")))) {
        return SPropertyOperations.getString(parameterObject, MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x1103553c5ffL, 0x403a32c5772bbe20L, "conceptShortDescription"));
      } else {
        return SPropertyOperations.getString(parameterObject, MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x1103553c5ffL, 0x46ab0ad5826c74caL, "conceptAlias"));
      }
    }
    private static boolean isNotEmptyString(String str) {
      return str != null && str.length() > 0;
    }
  }
}
