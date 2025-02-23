package jetbrains.mps.vcs.annotate;

/*Generated by MPS */

import jetbrains.mps.workbench.action.BaseGroup;
import com.intellij.openapi.vcs.annotate.FileAnnotation;
import java.util.Map;
import com.intellij.openapi.vcs.history.VcsRevisionNumber;
import com.intellij.openapi.vcs.history.VcsFileRevision;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import java.util.HashMap;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.workbench.action.BaseAction;
import com.intellij.openapi.actionSystem.AnActionEvent;
import com.intellij.openapi.vcs.history.ShortVcsRevisionNumber;
import com.intellij.openapi.vcs.actions.CompareWithSelectedRevisionAction;
import com.intellij.util.Consumer;

public class VcsRevisionRange extends BaseGroup {
  private AnnotationColumn myColumn;
  private FileAnnotation myFileAnnotation;
  private VcsRevisionRange.HiglightAction myBeforeAction;
  private VcsRevisionRange.HiglightAction myAfterAction;
  private Map<VcsRevisionNumber, VcsFileRevision> myRevisionNumberToRevision = MapSequence.fromMap(new HashMap<VcsRevisionNumber, VcsFileRevision>());
  public VcsRevisionRange(AnnotationColumn column, FileAnnotation fileAnnotation) {
    super("Revision Range");
    myColumn = column;
    myFileAnnotation = fileAnnotation;
    myBeforeAction = new VcsRevisionRange.HiglightAction(true);
    myAfterAction = new VcsRevisionRange.HiglightAction(false);
    myRevisionNumberToRevision = MapSequence.fromMap(new HashMap<VcsRevisionNumber, VcsFileRevision>());
    for (VcsFileRevision rev : ListSequence.fromList(myFileAnnotation.getRevisions())) {
      MapSequence.fromMap(myRevisionNumberToRevision).put(rev.getRevisionNumber(), rev);
    }
    setPopup(false);
    add(myBeforeAction);
    add(myAfterAction);
    add(new BaseAction("Remove Highlighting") {
      @Override
      protected void doExecute(AnActionEvent event, Map<String, Object> map) {
        myBeforeAction.myRevision = null;
        myAfterAction.myRevision = null;
        myColumn.invalidateLayout();
      }
    });
  }
  public boolean isFileLineHighlighted(int fileLine) {
    VcsFileRevision revision = MapSequence.fromMap(myRevisionNumberToRevision).get(myFileAnnotation.getLineRevisionNumber(fileLine));
    if (myBeforeAction.myRevision != null || myAfterAction.myRevision != null) {
      return myBeforeAction.isHiglighted(revision) && myAfterAction.isHiglighted(revision);
    } else {
      return false;
    }
  }
  private static String revisionToString(VcsFileRevision revision) {
    VcsRevisionNumber number = revision.getRevisionNumber();
    if (number instanceof ShortVcsRevisionNumber) {
      return ((ShortVcsRevisionNumber) number).toShortString();
    } else {
      return number.asString();
    }
  }
  private class HiglightAction extends BaseAction {
    private VcsFileRevision myRevision = null;
    private boolean myBefore;
    public HiglightAction(boolean before) {
      myBefore = before;
      if (!(before)) {
        myRevision = ListSequence.fromList(myColumn.getRevisions()).first();
      }
    }
    @Override
    protected void doUpdate(AnActionEvent event, Map<String, Object> map) {
      String text = (myBefore ? "Show Before..." : "Show After...");
      String description = (myBefore ? "Highlights revisions before or equal to selected" : "Highlights revisions after or equal to selected");
      event.getPresentation().setText((myRevision == null ? text : String.format("%s (%s)", text, revisionToString(myRevision))));
      event.getPresentation().setDescription(description);
      event.getPresentation().setEnabled(ListSequence.fromList(myColumn.getRevisions()).isNotEmpty());
    }
    @Override
    protected void doExecute(AnActionEvent event, Map<String, Object> _params) {
      CompareWithSelectedRevisionAction.showListPopup(myColumn.getRevisions(), myColumn.getProject(), new Consumer<VcsFileRevision>() {
        @Override
        public void consume(VcsFileRevision revision) {
          myRevision = revision;
          myColumn.invalidateLayout();
        }
      }, true);
    }
    public boolean isHiglighted(VcsFileRevision revision) {
      if (myRevision == null) {
        return true;
      } else if (revision == null) {
        return false;
      } else {
        int compareResult = revision.getRevisionDate().compareTo(myRevision.getRevisionDate());
        return (myBefore ? compareResult <= 0 : compareResult >= 0);
      }
    }
  }
}
