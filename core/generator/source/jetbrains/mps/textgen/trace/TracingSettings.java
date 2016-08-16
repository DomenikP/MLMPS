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

import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.components.ApplicationComponent;
import com.intellij.openapi.components.PersistentStateComponent;
import com.intellij.openapi.components.State;
import com.intellij.openapi.components.Storage;
import jetbrains.mps.textgen.trace.TracingSettings.MyState;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/**
 * Created by domenik on 14.10.15 KW:42.
 */

@State(
    name = "TracingSettings",
    storages = {
        @Storage(
            id = "other",
            file = "$APP_CONFIG$/tracingSettings.xml"
        )
    }
)

public class TracingSettings implements PersistentStateComponent<MyState>, ApplicationComponent {

  private final DefaultModifiableTracingSettings myState = new DefaultModifiableTracingSettings();

  public static IModifiableTraceSettings getInstance() {
    final TracingSettings gs = ApplicationManager.getApplication().getComponent(TracingSettings.class);
    return gs.getModifiableSettings();
  }

  @Override
  public void initComponent() {

  }

  @Override
  public void disposeComponent() {

  }

  @NotNull
  @Override
  public String getComponentName() {
    return "Tracing Settings";
  }

  @Nullable
  @Override
  public MyState getState() {
    MyState persistentState = new MyState();
    persistentState.fromSettings(myState);
    return persistentState;
  }

  @Override
  public void loadState(MyState state) {
    myState.setWriteGeneratorFile(state.myWriteGeneratorTrace);
    myState.setWriteTracingFile(state.myWritingTracingFile);
  }

  public IModifiableTraceSettings getModifiableSettings() {
    return myState;
  }

  public static class MyState {
    public boolean myWritingTracingFile;
    public boolean myWriteGeneratorTrace;
    public boolean myShowGeneratorTracesInEditor;

    public MyState() {
      // use defaults from a single place. PersistentStateComponent demands no-arg cons with default values set (case: no xml file yet)
      fromSettings(new DefaultModifiableTracingSettings());
    }

    // IModifiableGenerationSettings, not IGenerationSettins as #isCheckModelsBeforeGeneration and #isGenerateDebugInfo are located improperly
    /*package*/ void fromSettings(IModifiableTraceSettings s) {
      myWritingTracingFile = s.isWriteTracingFile();
      myWriteGeneratorTrace = s.isWriteGeneratorFile();
      myShowGeneratorTracesInEditor = s.isShowGeneratorTracesInEditor();
    }
  }
}
