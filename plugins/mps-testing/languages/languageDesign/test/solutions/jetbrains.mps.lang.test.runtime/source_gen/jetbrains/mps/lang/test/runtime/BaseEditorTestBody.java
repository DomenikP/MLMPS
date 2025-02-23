package jetbrains.mps.lang.test.runtime;

/*Generated by MPS */

import com.intellij.ide.DataManager;
import com.intellij.ide.impl.DataManagerImpl;
import jetbrains.mps.openapi.editor.Editor;
import jetbrains.mps.ide.editor.MPSFileNodeEditor;
import org.jetbrains.mps.openapi.model.SNode;
import javax.swing.SwingUtilities;
import java.lang.reflect.InvocationTargetException;
import jetbrains.mps.nodeEditor.EditorComponent;
import java.util.List;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import jetbrains.mps.lang.test.matcher.NodesMatcher;
import jetbrains.mps.lang.test.matcher.NodeDifference;
import java.util.Collections;
import junit.framework.Assert;
import java.util.Map;
import jetbrains.mps.smodel.ModelAccess;
import com.intellij.openapi.command.impl.UndoManagerImpl;
import com.intellij.openapi.command.undo.UndoManager;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.workbench.nodesFs.MPSNodeVirtualFile;
import jetbrains.mps.workbench.nodesFs.MPSNodesVirtualFileSystem;
import jetbrains.mps.project.Project;
import java.awt.Component;
import jetbrains.mps.intentions.IntentionsManager;
import java.util.Collection;
import jetbrains.mps.util.Pair;
import jetbrains.mps.intentions.IntentionExecutable;
import com.intellij.openapi.actionSystem.AnAction;
import com.intellij.openapi.actionSystem.ActionManager;
import com.intellij.openapi.actionSystem.AnActionEvent;
import jetbrains.mps.workbench.action.ActionUtils;
import com.intellij.openapi.actionSystem.ActionPlaces;
import com.intellij.openapi.command.impl.CurrentEditorProvider;
import com.intellij.openapi.fileEditor.FileEditor;
import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;

public abstract class BaseEditorTestBody extends BaseTestBody {
  private static DataManager DATA_MANAGER = new DataManagerImpl();
  protected Editor myEditor;
  protected MPSFileNodeEditor myFileNodeEditor;
  private SNode myBefore;
  private SNode myResult;
  protected CellReference myStart;
  protected CellReference myFinish;

  public BaseEditorTestBody() {
  }

  protected Editor initEditor(final String before, final String after) {
    if (LOG.isInfoEnabled()) {
      LOG.info("Initializing editor");
    }
    final Throwable[] throwable = new Throwable[1];
    try {
      SwingUtilities.invokeAndWait(new Runnable() {
        @Override
        public void run() {
          try {
            BaseEditorTestBody.this.doInitEditor(before, after);
          } catch (Throwable e) {
            throwable[0] = e;
          }
        }
      });
    } catch (InterruptedException e) {
      throw new RuntimeException(e);
    } catch (InvocationTargetException e) {
      throw new RuntimeException(e);
    }
    if (throwable[0] != null) {
      throw new RuntimeException("Throwable while initializing the editor ", throwable[0]);
    }
    return this.myEditor;
  }

  private void doInitEditor(final String before, final String after) throws Exception {
    this.addNodeById(before);
    if (!(after.equals(""))) {
      this.addNodeById(after);
    }
    myProject.getModelAccess().runWriteAction(new Runnable() {
      public void run() {
        BaseEditorTestBody.this.myBefore = BaseEditorTestBody.this.getNodeById(before);
        BaseEditorTestBody.this.myStart = BaseEditorTestBody.this.findCellReference(BaseEditorTestBody.this.getRealNodeById(before));
        if (BaseEditorTestBody.this.myStart == null) {
          throw new IllegalStateException("Cannot find cell reference in the test case 'before'");
        }
        if (!(after.equals(""))) {
          BaseEditorTestBody.this.myResult = BaseEditorTestBody.this.getNodeById(after);
          BaseEditorTestBody.this.myFinish = BaseEditorTestBody.this.findCellReference(BaseEditorTestBody.this.getRealNodeById(after));
        }
        myFileNodeEditor = openEditor();
        myEditor = myFileNodeEditor.getNodeEditor();
        if (BaseEditorTestBody.this.myEditor.getCurrentEditorComponent() instanceof EditorComponent) {
          EditorComponent component = ((EditorComponent) BaseEditorTestBody.this.myEditor.getCurrentEditorComponent());
          component.addNotify();
          component.validate();
        }
        BaseEditorTestBody.this.myStart.setupSelection(BaseEditorTestBody.this.myEditor);
      }
    });
  }

  private CellReference findCellReference(SNode node) {
    List<SNode> annotations = SNodeOperations.getNodeDescendants(node, MetaAdapterFactory.getConcept(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11e31babe12L, "jetbrains.mps.lang.test.structure.AnonymousCellAnnotation"), false, new SAbstractConcept[]{});
    if (ListSequence.fromList(annotations).isEmpty()) {
      return null;
    }
    return new CellReference(this.getNodeById(SNodeOperations.getParent(ListSequence.fromList(annotations).first()).getNodeId().toString()), ListSequence.fromList(annotations).first(), this.myMap);
  }

  protected void checkAssertion() throws Throwable {
    final Wrappers._T<Throwable> throwable = new Wrappers._T<Throwable>(null);
    flushEvents();
    // FIXME why do we need model write here? 
    myProject.getModelAccess().runWriteInEDT(new Runnable() {
      public void run() {
        if (BaseEditorTestBody.this.myResult != null) {
          try {
            SNode editedNode = myEditor.getCurrentlyEditedNode().resolve(myProject.getRepository());
            NodesMatcher nm = new NodesMatcher();
            List<NodeDifference> diff = nm.match(Collections.singletonList(editedNode), Collections.singletonList(myResult));
            Assert.assertEquals(null, diff);
            if (myFinish != null) {
              myFinish.assertEditor(myEditor, (Map<SNode, SNode>) nm.getMap());
            }
          } catch (Throwable t) {
            throwable.value = t;
          }
        }
      }
    });
    flushEvents();
    if (throwable.value != null) {
      throw throwable.value;
    }
  }

  private void flushEvents() {
    ModelAccess.instance().flushEventQueue();
  }

  public void testMethod() throws Throwable {
    try {
      this.testMethodImpl();
      this.checkAssertion();
      dispose();
    } finally {
      myProject.getModelAccess().runWriteInEDT(new Runnable() {
        public void run() {
          UndoManagerImpl undoManager = (UndoManagerImpl) UndoManager.getInstance(ProjectHelper.toIdeaProject(myProject));
          MPSNodeVirtualFile file = MPSNodesVirtualFileSystem.getInstance().getFileFor(BaseEditorTestBody.this.myBefore);
          undoManager.clearUndoRedoQueueInTests(file);
        }
      });
    }
  }

  public abstract void testMethodImpl() throws Exception;

  private void dispose() throws InterruptedException, InvocationTargetException {
    SwingUtilities.invokeAndWait(new Runnable() {
      public void run() {
        myProject.getModelAccess().runWriteAction(new Runnable() {
          public void run() {
            myFileNodeEditor.dispose();
            myFileNodeEditor = null;
          }
        });
      }
    });
  }

  private MPSFileNodeEditor openEditor() {
    assert ModelAccess.instance().isInEDT();
    MPSNodeVirtualFile file = MPSNodesVirtualFileSystem.getInstance().getFileFor(this.myBefore);
    return new MPSFileNodeEditor(ProjectHelper.toIdeaProject(myProject), file);
  }

  protected EditorComponent getEditorComponent() {
    return (EditorComponent) myEditor.getCurrentEditorComponent();
  }

  protected Project getProject() {
    return myProject;
  }

  protected void typeString(final String text) throws InterruptedException, InvocationTargetException {
    new KeyEventsDispatcher(this).typeString(text);
  }

  protected void pressKeys(final List<String> keyStrokes) throws InterruptedException, InvocationTargetException {
    new KeyEventsDispatcher(this).pressKeys(keyStrokes);
  }

  protected Component processMouseEvent(int x, int y, int eventType) throws InvocationTargetException, InterruptedException {
    return new MouseEventsDispatcher(this).processMouseEvent(x, y, eventType);
  }

  protected void processSecondaryMouseEvent(final Component targetComponent, int x, int y, int eventType) throws InvocationTargetException, InterruptedException {
    new MouseEventsDispatcher(this).processSecondaryMouseEvent(targetComponent, x, y, eventType);
  }

  protected void invokeIntention(final String name, final SNode node) throws InterruptedException, InvocationTargetException {
    runUndoableInEDTAndWait(new Runnable() {
      public void run() {
        myProject.getModelAccess().executeCommand(new Runnable() {
          public void run() {
            myEditor.getEditorContext().select(node);
            IntentionsManager.QueryDescriptor query = new IntentionsManager.QueryDescriptor();
            query.setCurrentNodeOnly(true);
            Collection<Pair<IntentionExecutable, SNode>> intentions = IntentionsManager.getInstance().getAvailableIntentions(query, node, myEditor.getEditorContext());
            for (Pair<IntentionExecutable, SNode> intention : intentions) {
              if (intention.o1.getDescriptor().getPersistentStateKey().equals(name)) {
                intention.o1.execute(intention.o2, myEditor.getEditorContext());
              }
            }
          }
        });
      }
    });
  }

  protected void invokeAction(final String actionId) throws InvocationTargetException, InterruptedException {
    final AnAction action = ActionManager.getInstance().getAction(actionId);
    final AnActionEvent event = ActionUtils.createEvent(ActionPlaces.MAIN_MENU, DATA_MANAGER.getDataContext(getEditorComponent()));
    runUndoableInEDTAndWait(new Runnable() {
      public void run() {
        action.actionPerformed(event);
      }
    });
  }

  private void flushEDTEvents() throws InvocationTargetException, InterruptedException {
    // wait for all events currently in EDT queue 
    SwingUtilities.invokeAndWait(new Runnable() {
      @Override
      public void run() {
        // empty task 
      }
    });
    // flushing model events 
    flushEvents();
  }

  public void runUndoableInEDTAndWait(final Runnable runnable) throws InvocationTargetException, InterruptedException {
    UndoManagerImpl undoManager = (UndoManagerImpl) UndoManager.getInstance(ProjectHelper.toIdeaProject(myProject));
    CurrentEditorProvider oldEditorProvider = undoManager.getEditorProvider();
    undoManager.setEditorProvider(new CurrentEditorProvider() {
      public FileEditor getCurrentEditor() {
        return myFileNodeEditor;
      }
    });
    SwingUtilities.invokeAndWait(new Runnable() {
      public void run() {
        runnable.run();
      }
    });
    flushEDTEvents();
    // some actions (Copy/Paste) are running one more command later 
    flushEDTEvents();
    undoManager.setEditorProvider(oldEditorProvider);
  }
  protected static Logger LOG = LogManager.getLogger(BaseEditorTestBody.class);
}
