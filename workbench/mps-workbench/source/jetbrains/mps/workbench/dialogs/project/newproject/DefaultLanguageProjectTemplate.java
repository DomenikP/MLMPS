/*
 * Copyright 2003-2014 JetBrains s.r.o.
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
package jetbrains.mps.workbench.dialogs.project.newproject;

import com.intellij.openapi.startup.StartupManager;
import jetbrains.mps.icons.MPSIcons.Nodes;
import jetbrains.mps.ide.newSolutionDialog.NewModuleUtil;
import jetbrains.mps.ide.ui.dialogs.modules.NewLanguageSettings;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.project.Solution;
import jetbrains.mps.project.structure.modules.LanguageDescriptor;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.workbench.DocumentationHelper;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import javax.swing.Icon;
import javax.swing.JComponent;
import java.io.IOException;

public class DefaultLanguageProjectTemplate implements LanguageProjectTemplate {

  private static final Logger LOG = LogManager.getLogger(DefaultLanguageProjectTemplate.class);

  private NewLanguageSettings myLanguageSettings = new NewLanguageSettings();

  @Nullable
  @Override
  public Icon getIcon() {
    return Nodes.Language;
  }

  @NotNull
  @Override
  public String getName() {
    return "Language project";
  }

  @Nullable
  @Override
  public String getDescription() {
    return "In MPS, you create new languages and then use them to write code " +
        "in solutions. An <a href=\""+ DocumentationHelper.getConfluenceBase() +"MPS+project+structure#MPSprojectstructure-languages\">MPS language</a> describes the syntax, editor, generator and other aspects of the " +
        "new language.";
  }

  @Nullable
  @Override
  public JComponent getSettings() {
    myLanguageSettings.reset();
    return myLanguageSettings;
  }

  @NotNull
  @Override
  public TemplateFiller getTemplateFiller() {
    return new TemplateFiller() {
      @Override
      public void fillProjectWithModules(final MPSProject project) {
        StartupManager.getInstance(project.getProject()).registerPostStartupActivity(new Runnable() {
          @Override
          public void run() {
            project.getModelAccess().executeCommand(new Runnable() {
                                                      @Override
                                                      public void run() {
                                                        Language language = NewModuleUtil.createLanguage(myLanguageSettings.getLanguageName(), myLanguageSettings.getLanguageLocation(),
                                                            project);
                                                        project.addModule(language.getModuleReference());

                                                        try {
                                                          if (myLanguageSettings.isRuntimeSolutionNeeded()) {
                                                            Solution runtimeSolution = NewModuleUtil.createRuntimeSolution(language, myLanguageSettings.getLanguageLocation(), project);
                                                            LanguageDescriptor languageDescriptor = language.getModuleDescriptor();
                                                            languageDescriptor.getRuntimeModules().add(runtimeSolution.getModuleReference());
                                                          }
                                                          if (myLanguageSettings.isSandboxSolutionNeeded()) {
                                                            NewModuleUtil.createSandboxSolution(language, myLanguageSettings.getLanguageLocation(), project);
                                                          }
                                                        } catch (IOException e) {
                                                          LOG.error("", e);
                                                        }
                                                      }
                                                    }
            );
          }
        });
      }
    };
  }

  @Override
  public void setProjectPath(String projectPath) {
    myLanguageSettings.setProjectPath(projectPath);
  }
}
