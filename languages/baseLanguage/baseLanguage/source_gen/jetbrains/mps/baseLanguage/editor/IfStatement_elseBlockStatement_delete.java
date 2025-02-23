package jetbrains.mps.baseLanguage.editor;

/*Generated by MPS */

import jetbrains.mps.openapi.editor.cells.EditorCell;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.cells.AbstractCellAction;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import java.util.List;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.smodel.action.SNodeFactoryOperations;

public class IfStatement_elseBlockStatement_delete {
  public static void setCellActions(EditorCell editorCell, SNode node, EditorContext context) {
    editorCell.setAction(CellActionType.DELETE, new IfStatement_elseBlockStatement_delete.IfStatement_elseBlockStatement_delete_DELETE(node));
    editorCell.setAction(CellActionType.BACKSPACE, new IfStatement_elseBlockStatement_delete.IfStatement_elseBlockStatement_delete_BACKSPACE(node));
  }
  public static class IfStatement_elseBlockStatement_delete_DELETE extends AbstractCellAction {
    /*package*/ SNode myNode;
    public IfStatement_elseBlockStatement_delete_DELETE(SNode node) {
      this.myNode = node;
    }
    public void execute(EditorContext editorContext) {
      this.execute_internal(editorContext, this.myNode);
    }
    public void execute_internal(EditorContext editorContext, SNode node) {
      SNode statement;
      SNode ifFalseStatement = SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b217L, 0xfc092b6b76L, "ifFalseStatement"));
      List<SNode> statements = SLinkOperations.getChildren(SLinkOperations.getTarget(SNodeOperations.cast(ifFalseStatement, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfc092b6b77L, "jetbrains.mps.baseLanguage.structure.BlockStatement")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfc092b6b77L, 0xfc092b6b78L, "statements")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b200L, 0xf8cc6bf961L, "statement"));
      if (ListSequence.fromList(statements).isEmpty()) {
        statement = SNodeFactoryOperations.createNewNode(SNodeOperations.getModel(node), SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b215L, "jetbrains.mps.baseLanguage.structure.Statement")), null);
      } else {
        statement = ListSequence.fromList(statements).first();
      }
      SNodeOperations.replaceWithAnother(ifFalseStatement, statement);
    }
  }
  public static class IfStatement_elseBlockStatement_delete_BACKSPACE extends AbstractCellAction {
    /*package*/ SNode myNode;
    public IfStatement_elseBlockStatement_delete_BACKSPACE(SNode node) {
      this.myNode = node;
    }
    public void execute(EditorContext editorContext) {
      this.execute_internal(editorContext, this.myNode);
    }
    public void execute_internal(EditorContext editorContext, SNode node) {
      SNode statement;
      SNode ifFalseStatement = SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b217L, 0xfc092b6b76L, "ifFalseStatement"));
      List<SNode> statements = SLinkOperations.getChildren(SLinkOperations.getTarget(SNodeOperations.cast(ifFalseStatement, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfc092b6b77L, "jetbrains.mps.baseLanguage.structure.BlockStatement")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfc092b6b77L, 0xfc092b6b78L, "statements")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b200L, 0xf8cc6bf961L, "statement"));
      if (ListSequence.fromList(statements).isEmpty()) {
        statement = SNodeFactoryOperations.createNewNode(SNodeOperations.getModel(node), SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b215L, "jetbrains.mps.baseLanguage.structure.Statement")), null);
      } else {
        statement = ListSequence.fromList(statements).first();
      }
      SNodeOperations.replaceWithAnother(ifFalseStatement, statement);
    }
  }
}
