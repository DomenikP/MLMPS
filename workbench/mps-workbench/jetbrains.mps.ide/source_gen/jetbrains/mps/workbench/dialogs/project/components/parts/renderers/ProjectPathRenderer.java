package jetbrains.mps.workbench.dialogs.project.components.parts.renderers;

/*Generated by MPS */

import jetbrains.mps.project.MPSProject;
import java.awt.Component;
import javax.swing.JList;
import jetbrains.mps.project.structure.project.Path;
import jetbrains.mps.project.StandaloneMPSProject;
import com.intellij.openapi.vfs.VirtualFile;
import jetbrains.mps.ide.vfs.VirtualFileUtils;
import java.awt.Color;

public class ProjectPathRenderer extends PathRenderer {
  private MPSProject myProject;
  public ProjectPathRenderer(MPSProject project) {
    myProject = project;
  }
  @Override
  public Component getListCellRendererComponent(JList list, final Object value, int index, boolean isSelected, boolean cellHasFocus) {
    Path path = (Path) value;
    Component result = super.getListCellRendererComponent(list, path, index, isSelected, cellHasFocus);
    if (isSelected) {
      return result;
    }
    boolean isContained = false;
    for (Path p : ((StandaloneMPSProject) myProject).getAllModulePaths()) {
      if (p.isSamePath(path)) {
        isContained = true;
        break;
      }
    }
    VirtualFile file = VirtualFileUtils.getVirtualFile(path.getPath());
    if (file != null && file.exists() && !(isContained)) {
      setForeground(new Color(128, 0, 128));
    }
    return result;
  }
}
