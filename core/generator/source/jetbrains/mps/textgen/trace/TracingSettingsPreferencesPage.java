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
package jetbrains.mps.textgen.trace;

import com.intellij.ide.ui.UISettings;
import com.intellij.openapi.options.ConfigurationException;
import com.intellij.openapi.options.SearchableConfigurable;
import com.intellij.ui.IdeBorderFactory;
import jetbrains.mps.InternalFlag;
import jetbrains.mps.generator.GenerationOptions;
import jetbrains.mps.generator.IModifiableGenerationSettings;
import org.jetbrains.annotations.Nls;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import javax.swing.AbstractButton;
import javax.swing.BoxLayout;
import javax.swing.ButtonGroup;
import javax.swing.Icon;
import javax.swing.JCheckBox;
import javax.swing.JComponent;
import javax.swing.JFormattedTextField;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JRadioButton;
import javax.swing.event.ChangeEvent;
import javax.swing.event.ChangeListener;
import javax.swing.text.DefaultFormatter;
import java.awt.Color;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import java.text.ParseException;
import java.util.HashMap;
import java.util.Map;

class TracingSettingsPreferencesPage implements SearchableConfigurable {
  private final JPanel myPage;
  private final JCheckBox myWriteTracingFileCheckBox = new JCheckBox("Write trace file per level");
  private final JCheckBox myWriteGeneratorFileCheckBox = new JCheckBox("Write generation traces");
  private final JCheckBox myShowGeneratorTracesInEditorCheckBox = new JCheckBox("Show Generator Traces in Editor");
  private JLabel myStatusLabel;
  private final ItemListener myStatusUpdater = new ItemListener() {
    @Override
    public void itemStateChanged(ItemEvent e) {
      updateStatus();
    }
  };
  private final ButtonSelectStateTracker myButtonState = new ButtonSelectStateTracker();
  private final IModifiableTraceSettings myTracingSettings;

  public TracingSettingsPreferencesPage() {
    myTracingSettings = TracingSettings.getInstance();
    reset();
    myButtonState.reset();
    myPage = createPage();
  }

  public String getName() {
    return "Tracing";
  }

  public Icon getIcon() {
    return null;
  }

  @Override
  public JComponent createComponent() {
    return myPage;
  }

  @Override
  public boolean isModified() {
    return myButtonState.isStateModified();
  }

  public JPanel createPage() {
    JPanel myMainPanel = new JPanel(new GridBagLayout());
    GridBagConstraints c = new GridBagConstraints();
    c.gridx = 0;
    c.weightx = 1;
    c.fill = GridBagConstraints.BOTH;

    c.gridy = 0;
    myMainPanel.add(createOptionsPanel(), c);

    c.gridy++;
    c.weighty = 1;
    myMainPanel.add(new JPanel(), c);
    c.gridy++;
    c.weighty = 0;
    myStatusLabel = new JLabel();
    myMainPanel.add(myStatusLabel, c);
    updateStatus();
    return myMainPanel;
  }

  private JPanel createOptionsPanel() {
    JPanel optionsPanel = new JPanel(new GridBagLayout());
    GridBagConstraints c = new GridBagConstraints();
    c.weightx = 1;
    c.gridx = 0;
    c.ipady = 2;
    c.fill = GridBagConstraints.BOTH;
    optionsPanel.add(myWriteGeneratorFileCheckBox, c);
    optionsPanel.add(myWriteTracingFileCheckBox, c);
    optionsPanel.add(myShowGeneratorTracesInEditorCheckBox, c);
    myButtonState.track(myWriteGeneratorFileCheckBox, myWriteTracingFileCheckBox, myShowGeneratorTracesInEditorCheckBox);
    return optionsPanel;
  }

  public boolean validate() {
    return true;
  }

  @Override
  public void apply() throws ConfigurationException {
    myTracingSettings.setWriteGeneratorFile(myWriteGeneratorFileCheckBox.isSelected());
    myTracingSettings.setWriteTracingFile(myWriteTracingFileCheckBox.isSelected());
    myTracingSettings.setShowGeneratorTracesInEditor(myShowGeneratorTracesInEditorCheckBox.isSelected());
    myButtonState.reset();
    UISettings.getInstance().fireUISettingsChanged();
  }

  @Override
  public void disposeUIResources() {

  }

  @Override
  public void reset() {
    myWriteGeneratorFileCheckBox.setSelected(myTracingSettings.isWriteGeneratorFile());
    myWriteTracingFileCheckBox.setSelected(myTracingSettings.isWriteTracingFile());
    myShowGeneratorTracesInEditorCheckBox.setSelected(myTracingSettings.isShowGeneratorTracesInEditor());
    myButtonState.reset();
  }

  void updateStatus() {
    myStatusLabel.setVisible(false);
  }

  @NotNull
  @Override
  public String getId() {
    return "tracing.manager";
  }

  @Nullable
  @Override
  public Runnable enableSearch(String option) {
    return null;
  }

  @Nls
  @Override
  public String getDisplayName() {
    return  "Tracing";
  }

  @Nullable
  @Override
  public String getHelpTopic() {
    return "preferences.tracing";
  }

  private static class ButtonSelectStateTracker {
    private final Map<AbstractButton,Boolean> myButtonStates = new HashMap<AbstractButton, Boolean>();

    public ButtonSelectStateTracker track(AbstractButton... buttons) {
      for (AbstractButton btn : buttons) {
        myButtonStates.put(btn, btn.isSelected());
      }
      return this;
    }

    public void reset() {
      for (Map.Entry<AbstractButton, Boolean> e : myButtonStates.entrySet()) {
        e.setValue(e.getKey().isSelected());
      }
    }

    public boolean isStateModified() {
      for (Map.Entry<AbstractButton, Boolean> e : myButtonStates.entrySet()) {
        if (e.getKey().isSelected() != e.getValue()) {
          return true;
        }
      }
      return false;
    }
  }
}
