/*
 * Copyright 2003-2011 JetBrains s.r.o.
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
package jetbrains.mps.library.contributor;

import jetbrains.mps.util.PathManager;

import java.util.HashSet;
import java.util.Set;

/**
 * Contributes bootstrap modules -- MPS core
 */
public final class BootstrapLibraryContributor implements LibraryContributor {
  @Override
  public Set<LibDescriptor> getPaths() {
    Set<LibDescriptor> res = new HashSet<LibDescriptor>();
    for (String path : PathManager.getBootstrapPaths()) {
      res.add(new LibDescriptor(path));
    }
    res.add(new LibDescriptor(PathManager.getLanguagesPath()));
    return res;
  }

  @Override
  public boolean hiddenLanguages() {
    return true;
  }
}
