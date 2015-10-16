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

/**
 * Created by domenik on 14.10.15 KW:42.
 */
public class DefaultModifiableTracingSettings implements  IModifiableTraceSettings{
  private boolean writeTracingFile = false;
  private boolean writeGeneratorFile = false;
  private boolean myShowGeneratorTracesInEditor = false;

  @Override
  public boolean isShowGeneratorTracesInEditor() {
    return this.myShowGeneratorTracesInEditor;
  }

  @Override
  public void setShowGeneratorTracesInEditor(boolean showGeneratorTracesInEditor) {
    this.myShowGeneratorTracesInEditor = showGeneratorTracesInEditor;
  }

  @Override
  public boolean isWriteTracingFile() {
    return writeTracingFile;
  }

  @Override
  public void setWriteTracingFile(boolean writeTracingFile) {
    this.writeTracingFile = writeTracingFile;
  }

  @Override
  public boolean isWriteGeneratorFile() {
    return writeGeneratorFile;
  }

  @Override
  public void setWriteGeneratorFile(boolean writeGeneratorFile) {
    this.writeGeneratorFile = writeGeneratorFile;
  }
}
