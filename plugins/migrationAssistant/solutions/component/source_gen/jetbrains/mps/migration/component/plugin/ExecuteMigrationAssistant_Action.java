package jetbrains.mps.migration.component.plugin;

/*Generated by MPS */

import jetbrains.mps.workbench.action.BaseAction;
import javax.swing.Icon;
import com.intellij.openapi.actionSystem.AnActionEvent;
import java.util.Map;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.actionSystem.CommonDataKeys;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.ide.actions.MPSCommonDataKeys;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.ide.migration.MigrationTrigger;
import jetbrains.mps.ide.migration.IStartupMigrationExecutor;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import jetbrains.mps.lang.migration.runtime.util.MigrationsUtil;
import jetbrains.mps.ide.migration.MigrationManager;
import jetbrains.mps.ide.migration.MigrationDialogUtil;

public class ExecuteMigrationAssistant_Action extends BaseAction {
  private static final Icon ICON = null;
  public ExecuteMigrationAssistant_Action() {
    super("Run Migration Assistant", "", ICON);
    this.setIsAlwaysVisible(false);
    this.setExecuteOutsideCommand(true);
  }
  @Override
  public boolean isDumbAware() {
    return true;
  }
  @Override
  protected boolean collectActionData(AnActionEvent event, final Map<String, Object> _params) {
    if (!(super.collectActionData(event, _params))) {
      return false;
    }
    {
      Project p = event.getData(CommonDataKeys.PROJECT);
      MapSequence.fromMap(_params).put("project", p);
      if (p == null) {
        return false;
      }
    }
    {
      MPSProject p = event.getData(MPSCommonDataKeys.MPS_PROJECT);
      MapSequence.fromMap(_params).put("mpsProject", p);
      if (p == null) {
        return false;
      }
    }
    return true;
  }
  @Override
  public void doExecute(@NotNull final AnActionEvent event, final Map<String, Object> _params) throws Exception {
    MigrationTrigger mt = ((MigrationTrigger) ((Project) MapSequence.fromMap(_params).get("project")).getComponent(IStartupMigrationExecutor.class));

    final Wrappers._boolean migrationRequired = new Wrappers._boolean();

    ((MPSProject) MapSequence.fromMap(_params).get("mpsProject")).getRepository().getModelAccess().runWriteAction(new Runnable() {
      public void run() {
        MigrationTrigger.updateUsedLanguagesVersions(MigrationsUtil.getMigrateableModulesFromProject(((MPSProject) MapSequence.fromMap(_params).get("mpsProject"))));
        migrationRequired.value = ((Project) MapSequence.fromMap(_params).get("project")).getComponent(MigrationManager.class).isMigrationRequired();
      }
    });
    if (!(migrationRequired.value)) {
      MigrationDialogUtil.showNoMigrationMessage(((Project) MapSequence.fromMap(_params).get("project")));
      mt.resetMigrationQueuedFlag();
    } else {
      mt.postponeMigration();
    }
  }
}
