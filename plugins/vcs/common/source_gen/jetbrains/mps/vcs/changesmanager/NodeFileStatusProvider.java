package jetbrains.mps.vcs.changesmanager;

/*Generated by MPS */

import com.intellij.openapi.vcs.impl.FileStatusProvider;
import com.intellij.openapi.project.Project;
import org.jetbrains.annotations.NotNull;
import com.intellij.openapi.vcs.FileStatus;
import com.intellij.openapi.vfs.VirtualFile;
import jetbrains.mps.workbench.nodesFs.MPSNodeVirtualFile;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.ide.editor.MPSEditorUtil;
import org.jetbrains.mps.openapi.model.SNodeUtil;
import jetbrains.mps.smodel.MPSModuleRepository;
import com.intellij.openapi.editor.Document;
import com.intellij.util.ThreeState;

public class NodeFileStatusProvider implements FileStatusProvider {
  private Project myProject;
  private NodeFileStatusMapping myMapping;
  public NodeFileStatusProvider(@NotNull Project project, @NotNull NodeFileStatusMapping mapping) {
    myProject = project;
    myMapping = mapping;
  }
  @Override
  public FileStatus getFileStatus(VirtualFile file) {
    if (!(file instanceof MPSNodeVirtualFile)) {
      return null;
    }
    if (!(ModelAccess.instance().isInEDT())) {
      return FileStatus.NOT_CHANGED;
    }

    final MPSNodeVirtualFile nodeFile = (MPSNodeVirtualFile) file;

    final Wrappers._T<FileStatus> status = new Wrappers._T<FileStatus>(null);

    ModelAccess.instance().runReadAction(new Runnable() {
      public void run() {
        SNode root = MPSEditorUtil.getCurrentEditedNode(myProject, nodeFile);
        if (root == null) {
          root = nodeFile.getNode().getContainingRoot();
        }
        if (root == null) {
          return;
        }
        if (SNodeUtil.isAccessible(root, MPSModuleRepository.getInstance())) {
          return;
        }
        status.value = myMapping.getStatus(root);
      }
    });

    return status.value;
  }
  @Override
  public void refreshFileStatusFromDocument(VirtualFile file, Document document) {
  }
  @Override
  public ThreeState getNotChangedDirectoryParentingStatus(VirtualFile file) {
    return ThreeState.NO;
  }
}
