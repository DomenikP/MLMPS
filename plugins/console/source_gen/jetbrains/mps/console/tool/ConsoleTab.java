package jetbrains.mps.console.tool;

/*Generated by MPS */

import com.intellij.openapi.actionSystem.DataProvider;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.annotations.Nullable;
import com.intellij.openapi.actionSystem.DefaultActionGroup;
import java.awt.event.KeyEvent;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.nodeEditor.cells.EditorCell;
import jetbrains.mps.openapi.editor.cells.EditorCell_Label;
import jetbrains.mps.workbench.action.BaseAction;
import com.intellij.icons.AllIcons;
import com.intellij.openapi.actionSystem.AnActionEvent;
import java.util.Map;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.smodel.tempmodel.TemporaryModels;
import javax.swing.SwingUtilities;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import org.jetbrains.mps.openapi.model.SModel;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SModelOperations;
import org.jetbrains.annotations.NonNls;
import com.intellij.openapi.actionSystem.PlatformDataKeys;

public class ConsoleTab extends BaseConsoleTab implements DataProvider {

  private SNode myNewCommand = null;
  private SNode myCursor = null;

  public ConsoleTab(ConsoleTool tool, String title, @Nullable String history) {
    super(tool, title, history);
  }

  protected void registerActions(DefaultActionGroup group) {
    super.registerActions(group);
    group.add(registerKeyShortcut(new ConsoleTab.ExecuteAction(), KeyEvent.VK_ENTER));
    group.add(registerKeyShortcut(new ConsoleTab.PrevCmdAction(), KeyEvent.VK_UP));
    group.add(registerKeyShortcut(new ConsoleTab.NextCmdAction(), KeyEvent.VK_DOWN));
    group.add(registerKeyShortcut(new ConsoleTab.ClearAction(), KeyEvent.VK_BACK_SPACE));
  }

  private SNode lastCmd() {
    SNode cur = ListSequence.fromList(SLinkOperations.getChildren(SLinkOperations.getTarget(myRoot, MetaAdapterFactory.getContainmentLink(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x15fb34051f725a2cL, 0x15fb34051f725bafL, "history")), MetaAdapterFactory.getContainmentLink(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0xa835f28c1aa02beL, 0x63da33792b5df49aL, "item"))).last();
    while ((cur != null) && !(SNodeOperations.isInstanceOf(cur, MetaAdapterFactory.getConcept(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x4e27160acb4484bL, "jetbrains.mps.console.base.structure.CommandHolder")))) {
      cur = SNodeOperations.cast(SNodeOperations.getPrevSibling(cur), MetaAdapterFactory.getInterfaceConcept(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x5f195a051bd47defL, "jetbrains.mps.console.base.structure.HistoryItem"));
    }
    return SNodeOperations.cast(cur, MetaAdapterFactory.getConcept(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x4e27160acb4484bL, "jetbrains.mps.console.base.structure.CommandHolder"));
  }

  private SNode getPrevCmd(SNode cmd) {
    SNode item = cmd;
    do {
      item = SNodeOperations.cast(SNodeOperations.getPrevSibling(item), MetaAdapterFactory.getInterfaceConcept(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x5f195a051bd47defL, "jetbrains.mps.console.base.structure.HistoryItem"));
    } while ((item != null) && !(SNodeOperations.isInstanceOf(item, MetaAdapterFactory.getConcept(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x4e27160acb4484bL, "jetbrains.mps.console.base.structure.CommandHolder"))));

    return SNodeOperations.cast(item, MetaAdapterFactory.getConcept(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x4e27160acb4484bL, "jetbrains.mps.console.base.structure.CommandHolder"));
  }
  private SNode getNextCmd(SNode cmd) {
    SNode item = cmd;
    do {
      item = SNodeOperations.cast(SNodeOperations.getNextSibling(item), MetaAdapterFactory.getInterfaceConcept(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x5f195a051bd47defL, "jetbrains.mps.console.base.structure.HistoryItem"));
    } while ((item != null) && !(SNodeOperations.isInstanceOf(item, MetaAdapterFactory.getConcept(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x4e27160acb4484bL, "jetbrains.mps.console.base.structure.CommandHolder"))));

    return SNodeOperations.cast(item, MetaAdapterFactory.getConcept(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x4e27160acb4484bL, "jetbrains.mps.console.base.structure.CommandHolder"));
  }

  private void setSelection() {
    getProject().getRepository().getModelAccess().runReadInEDT(new Runnable() {
      public void run() {
        myEditor.selectNode(SLinkOperations.getTarget(myRoot, MetaAdapterFactory.getContainmentLink(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x15fb34051f725a2cL, 0x15fb34051f725bb1L, "commandHolder")));
        EditorCell lastLeaf = ((EditorCell) myEditor.getSelectedCell()).getLastLeaf();
        myEditor.changeSelection(lastLeaf);
        if (lastLeaf instanceof EditorCell_Label) {
          ((EditorCell_Label) lastLeaf).end();
        }
      }
    });
    myEditor.ensureSelectionVisible();
  }

  private class ExecuteAction extends BaseAction {
    public ExecuteAction() {
      super("Execute", "Execute last command", AllIcons.Actions.Execute);
    }
    @Override
    protected void doExecute(AnActionEvent event, Map<String, Object> arg) {
      ModelAccess.instance().runWriteActionInCommand(new Runnable() {
        public void run() {
          myCursor = null;
          TemporaryModels.getInstance().addMissingImports(myModel);
          if ((SLinkOperations.getTarget(SLinkOperations.getTarget(myRoot, MetaAdapterFactory.getContainmentLink(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x15fb34051f725a2cL, 0x15fb34051f725bb1L, "commandHolder")), MetaAdapterFactory.getContainmentLink(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x4e27160acb4484bL, 0x4e27160acb44924L, "command")) == null)) {
            return;
          }
        }
      });
      execute(null, new Runnable() {
        public void run() {
          myNewCommand = null;
        }
      }, new Runnable() {
        public void run() {
          SwingUtilities.invokeLater(new Runnable() {
            public void run() {
              setSelection();
            }
          });
        }
      });
    }
  }

  private class ClearAction extends BaseAction {
    public ClearAction() {
      super("Clear", "Clear console window", AllIcons.Actions.Clean);
    }
    protected void doExecute(AnActionEvent event, Map<String, Object> arg) {
      SLinkOperations.setTarget(myRoot, MetaAdapterFactory.getContainmentLink(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x15fb34051f725a2cL, 0x15fb34051f725bafL, "history"), SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0xa835f28c1aa02beL, "jetbrains.mps.console.base.structure.History"))));
      validateImports();
      setSelection();
    }
  }

  private class PrevCmdAction extends BaseAction {
    public PrevCmdAction() {
      super("Prev", "Previous command", AllIcons.Actions.PreviousOccurence);
    }
    protected void doExecute(AnActionEvent event, Map<String, Object> arg) {
      SNode lastCmd = lastCmd();
      if ((lastCmd == null)) {
        return;
      }

      SNode newCursor;
      if (myCursor == null) {
        newCursor = lastCmd;
        myNewCommand = SNodeOperations.copyNode(SLinkOperations.getTarget(myRoot, MetaAdapterFactory.getContainmentLink(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x15fb34051f725a2cL, 0x15fb34051f725bb1L, "commandHolder")));
      } else {
        newCursor = getPrevCmd(myCursor);
        if ((newCursor == null)) {
          return;
        }
        SNode myCursorCommand = SLinkOperations.getTarget(myCursor, MetaAdapterFactory.getContainmentLink(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x4e27160acb4484bL, 0x4e27160acb44924L, "command"));
        SNode myCursorNew = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x9992dadc6de20a7L, "jetbrains.mps.console.base.structure.ModifiedCommandHistoryItem")));
        SLinkOperations.setTarget(myCursorNew, MetaAdapterFactory.getContainmentLink(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x4e27160acb4484bL, 0x4e27160acb44924L, "command"), myCursorCommand);
        SLinkOperations.setTarget(myCursorNew, MetaAdapterFactory.getContainmentLink(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x9992dadc6de20a7L, 0x9992dadc6de20d6L, "modifiedCommand"), SLinkOperations.getTarget(SLinkOperations.getTarget(myRoot, MetaAdapterFactory.getContainmentLink(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x15fb34051f725a2cL, 0x15fb34051f725bb1L, "commandHolder")), MetaAdapterFactory.getContainmentLink(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x4e27160acb4484bL, 0x4e27160acb44924L, "command")));
        SNodeOperations.replaceWithAnother(myCursor, myCursorNew);
      }
      if ((newCursor == null)) {
        return;
      }
      myCursor = newCursor;
      SLinkOperations.setTarget(SLinkOperations.getTarget(myRoot, MetaAdapterFactory.getContainmentLink(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x15fb34051f725a2cL, 0x15fb34051f725bb1L, "commandHolder")), MetaAdapterFactory.getContainmentLink(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x4e27160acb4484bL, 0x4e27160acb44924L, "command"), SNodeOperations.copyNode(BehaviorReflection.invokeVirtual((Class<SNode>) ((Class) Object.class), myCursor, "virtual_getCommandToEdit_691634242167796942", new Object[]{})));
      setSelection();
    }
  }

  private class NextCmdAction extends BaseAction {
    public NextCmdAction() {
      super("Next", "Next command", AllIcons.Actions.NextOccurence);
    }
    protected void doExecute(AnActionEvent event, Map<String, Object> arg) {
      if ((myCursor == null)) {
        return;
      }
      SNode newCursor = getNextCmd(myCursor);

      SNode myCursorCommand = SLinkOperations.getTarget(myCursor, MetaAdapterFactory.getContainmentLink(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x4e27160acb4484bL, 0x4e27160acb44924L, "command"));
      SNode myCursorNew = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x9992dadc6de20a7L, "jetbrains.mps.console.base.structure.ModifiedCommandHistoryItem")));
      SLinkOperations.setTarget(myCursorNew, MetaAdapterFactory.getContainmentLink(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x4e27160acb4484bL, 0x4e27160acb44924L, "command"), myCursorCommand);
      SLinkOperations.setTarget(myCursorNew, MetaAdapterFactory.getContainmentLink(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x9992dadc6de20a7L, 0x9992dadc6de20d6L, "modifiedCommand"), SLinkOperations.getTarget(SLinkOperations.getTarget(myRoot, MetaAdapterFactory.getContainmentLink(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x15fb34051f725a2cL, 0x15fb34051f725bb1L, "commandHolder")), MetaAdapterFactory.getContainmentLink(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x4e27160acb4484bL, 0x4e27160acb44924L, "command")));
      SNodeOperations.replaceWithAnother(myCursor, myCursorNew);

      if (!((newCursor == null))) {
        myCursor = newCursor;
        SLinkOperations.setTarget(SLinkOperations.getTarget(myRoot, MetaAdapterFactory.getContainmentLink(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x15fb34051f725a2cL, 0x15fb34051f725bb1L, "commandHolder")), MetaAdapterFactory.getContainmentLink(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x4e27160acb4484bL, 0x4e27160acb44924L, "command"), SNodeOperations.copyNode(BehaviorReflection.invokeVirtual((Class<SNode>) ((Class) Object.class), myCursor, "virtual_getCommandToEdit_691634242167796942", new Object[]{})));
      } else {
        myCursor = null;
        SLinkOperations.setTarget(SLinkOperations.getTarget(myRoot, MetaAdapterFactory.getContainmentLink(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x15fb34051f725a2cL, 0x15fb34051f725bb1L, "commandHolder")), MetaAdapterFactory.getContainmentLink(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x4e27160acb4484bL, 0x4e27160acb44924L, "command"), SNodeOperations.copyNode(BehaviorReflection.invokeVirtual((Class<SNode>) ((Class) Object.class), myNewCommand, "virtual_getCommandToEdit_691634242167796942", new Object[]{})));
      }
      setSelection();
    }
  }

  protected void loadHistory(final String state) {
    ModelAccess.instance().runWriteActionInCommand(new Runnable() {
      public void run() {
        SModel loadedModel = loadHistoryModel(state);
        myRoot = SModelOperations.createNewRootNode(myModel, SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x15fb34051f725a2cL, "jetbrains.mps.console.base.structure.ConsoleRoot")));
        if (loadedModel == null || ListSequence.fromList(SModelOperations.roots(loadedModel, MetaAdapterFactory.getConcept(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x15fb34051f725a2cL, "jetbrains.mps.console.base.structure.ConsoleRoot"))).isEmpty()) {
          SLinkOperations.setTarget(myRoot, MetaAdapterFactory.getContainmentLink(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x15fb34051f725a2cL, 0x15fb34051f725bafL, "history"), SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0xa835f28c1aa02beL, "jetbrains.mps.console.base.structure.History"))));
        } else {
          SLinkOperations.setTarget(myRoot, MetaAdapterFactory.getContainmentLink(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x15fb34051f725a2cL, 0x15fb34051f725bafL, "history"), SNodeOperations.copyNode(SLinkOperations.getTarget(ListSequence.fromList(SModelOperations.roots(loadedModel, MetaAdapterFactory.getConcept(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x15fb34051f725a2cL, "jetbrains.mps.console.base.structure.ConsoleRoot"))).first(), MetaAdapterFactory.getContainmentLink(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x15fb34051f725a2cL, 0x15fb34051f725bafL, "history"))));
        }
        SLinkOperations.setTarget(myRoot, MetaAdapterFactory.getContainmentLink(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x15fb34051f725a2cL, 0x15fb34051f725bb1L, "commandHolder"), SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x4e27160acb4484bL, "jetbrains.mps.console.base.structure.CommandHolder"))));
        TemporaryModels.getInstance().addMissingImports(myModel);
      }
    });
  }

  public void insertCommand(SNode command) {
    addNodeImports(command);
    SLinkOperations.setTarget(SLinkOperations.getTarget(myRoot, MetaAdapterFactory.getContainmentLink(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x15fb34051f725a2cL, 0x15fb34051f725bb1L, "commandHolder")), MetaAdapterFactory.getContainmentLink(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x4e27160acb4484bL, 0x4e27160acb44924L, "command"), command);
  }

  @Nullable
  public Object getData(@NonNls String id) {
    if (PlatformDataKeys.HELP_ID.is(id)) {
      return "ideaInterface.console";
    }
    return null;
  }
}
