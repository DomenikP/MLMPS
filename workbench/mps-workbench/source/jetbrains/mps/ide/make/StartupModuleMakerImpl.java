/*
 * Copyright 2003-2015 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package jetbrains.mps.ide.make;

import com.intellij.openapi.application.ex.ApplicationManagerEx;
import com.intellij.openapi.progress.ProgressIndicator;
import com.intellij.openapi.progress.ProgressManager;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.startup.StartupManager;
import jetbrains.mps.InternalFlag;
import jetbrains.mps.RuntimeFlags;
import jetbrains.mps.classloading.ClassLoaderManager;
import jetbrains.mps.compiler.JavaCompilerOptionsComponent;
import jetbrains.mps.ide.MPSCoreComponents;
import jetbrains.mps.ide.ThreadUtils;
import jetbrains.mps.ide.messages.DefaultMessageHandler;
import jetbrains.mps.ide.platform.watching.ReloadManagerComponent;
import jetbrains.mps.make.MPSCompilationResult;
import jetbrains.mps.make.ModuleMaker;
import jetbrains.mps.messages.MessageKind;
import jetbrains.mps.progress.EmptyProgressMonitor;
import jetbrains.mps.progress.ProgressMonitorAdapter;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.project.ProjectLibraryManager;
import jetbrains.mps.util.Computable;
import jetbrains.mps.util.IterableUtil;
import jetbrains.mps.util.ModelComputeRunnable;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.util.ProgressMonitor;

/**
 * Compiles all project modules at startup
 */
public final class StartupModuleMakerImpl extends StartupModuleMaker {
  private static final Logger LOG = LogManager.getLogger(StartupModuleMakerImpl.class);

  private final MPSProject myMPSProject;
  private final ReloadManagerComponent myReloadManager;
  private final ClassLoaderManager myClassLoaderManager;

  @SuppressWarnings({"UnusedDeclaration"})
  public StartupModuleMakerImpl(Project project, MPSProject mpsProject, ProjectLibraryManager plm, ReloadManagerComponent reloadManager,
      MPSCoreComponents components) {
    super(project);
    myClassLoaderManager = components.getMPSCore().getClassLoaderManager();
    myMPSProject = mpsProject;
    myReloadManager = reloadManager;
  }

  @Override
  public void projectOpened() {
    ApplicationManagerEx.getApplicationEx().runProcessWithProgressSynchronously(new Runnable() {
      @Override
      public void run() {
        compileProjectModules(true);
      }
    }, "Compiling", false, myProject);
  }

  private void compileProjectModules(boolean early) {
    final ProgressIndicator indicator = ProgressManager.getInstance().getProgressIndicator();
    final ProgressMonitor monitor = indicator != null ? new ProgressMonitorAdapter(indicator) : new EmptyProgressMonitor();

    LOG.info("Making modules on startup");
    monitor.start("Making modules", 10);
    try {
      //todo eliminate read access as it can potentially lead to a deadlock
      MPSCompilationResult mpsCompilationResult = new ModelComputeRunnable<MPSCompilationResult>(new Computable<MPSCompilationResult>() {
        @Override
        public MPSCompilationResult compute() {
          monitor.advance(1);

          final ModuleMaker maker = new ModuleMaker(new DefaultMessageHandler(myProject), MessageKind.ERROR);
          return myReloadManager.computeNoReload(new Computable<MPSCompilationResult>() {
            @Override
            public MPSCompilationResult compute() {
              return maker.make(IterableUtil.asCollection(getModules()), monitor.subTask(9),
                  JavaCompilerOptionsComponent.getInstance().getJavaCompilerOptions(myMPSProject));
            }
          });
        }
      }).runRead(myMPSProject.getModelAccess());
      if (mpsCompilationResult.isReloadingNeeded()) {
        reloadClasses(mpsCompilationResult, indicator, early);
      }
    } finally {
      monitor.done();
    }
    LOG.info("Compilation on startup is finished");
  }

  private Iterable<? extends SModule> getModules() {
    if (InternalFlag.isInternalMode()) {
      return myMPSProject.getRepository().getModules();
    }
    return myMPSProject.getModules();
  }

  private void reloadClasses(final MPSCompilationResult mpsCompilationResult, final ProgressIndicator indicator, boolean asPreStartup) {
    final Runnable reloadTask = new Runnable() {
      @Override
      public void run() {
        ProgressMonitor monitor = indicator != null ? new ProgressMonitorAdapter(indicator) : new EmptyProgressMonitor();
        myClassLoaderManager.reloadModules(mpsCompilationResult.getChangedModules(), monitor);
      }
    };
    final Runnable reload = new Runnable() {
      @Override
      public void run() {
        myMPSProject.getModelAccess().runWriteAction(reloadTask);
      }
    };
    if (asPreStartup) {
      //the pre-startup activity is needed because all project components must be already instantiated when first class reload happens
      StartupManager.getInstance(myProject).registerPreStartupActivity(reload);
    } else {
      ThreadUtils.runInUIThreadNoWait(reload);
    }
  }
}
