/*
 * Copyright 2003-2012 JetBrains s.r.o.
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
package jetbrains.mps.extapi.persistence;

import jetbrains.mps.vfs.IFile;
import org.jetbrains.mps.openapi.persistence.DataSource;

import java.util.Collection;

/**
 * evgeny, 11/4/12
 */
public interface FileSystemBasedDataSource extends DataSource {

  /**
   * @return collection of files (or folders) which comprise a set of source paths (!) for this DataSource
   */
  Collection<IFile> getAffectedFiles();
}
