package jetbrains.mps.ide.devkit.actions;

/*Generated by MPS */

import jetbrains.mps.plugins.actions.GeneratedActionGroup;
import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;

public class GenerateEditorPopup_ActionGroup extends GeneratedActionGroup {
  private static Logger LOG = LogManager.getLogger(GenerateEditorPopup_ActionGroup.class);
  public static final String ID = "jetbrains.mps.ide.devkit.actions.GenerateEditorPopup_ActionGroup";
  public GenerateEditorPopup_ActionGroup() {
    super("Generate (obsolete)", ID);
    this.setIsInternal(false);
    this.setPopup(false);
    try {
      GenerateEditorPopup_ActionGroup.this.addAction("jetbrains.mps.ide.devkit.actions.GoToUsageInMappingConfig_Action");
    } catch (Throwable t) {
      LOG.error("User group error", t);
    }
  }
}
