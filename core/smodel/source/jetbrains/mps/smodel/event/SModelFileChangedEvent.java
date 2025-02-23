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
package jetbrains.mps.smodel.event;

import jetbrains.mps.vfs.IFile;
import org.jetbrains.mps.annotations.Immutable;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;

@Immutable
public class SModelFileChangedEvent extends SModelEvent {
  private final IFile myOldFile;
  private final IFile myNewFile;

  public SModelFileChangedEvent(SModel model, IFile oldFile, IFile newFile) {
    super(model);
    myOldFile = oldFile;
    myNewFile = newFile;
  }

  public IFile getOldFile() {
    return myOldFile;
  }

  public IFile getNewFile() {
    return myNewFile;
  }

  @Override
  public void accept(SModelEventVisitor visitor) {
    visitor.visitModelFileEvent(this);
  }

  @Override
  public SNode getAffectedRoot() {
    return null;
  }
}
