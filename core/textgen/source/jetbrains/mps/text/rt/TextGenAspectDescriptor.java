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
package jetbrains.mps.text.rt;

import jetbrains.mps.smodel.adapter.ids.SConceptId;
import jetbrains.mps.smodel.runtime.LanguageAspectDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/**
 * Aspect of a language which describes the ways to produce text from a node
 * @author Artem Tikhomirov
 * @since 3.3
 */
public interface TextGenAspectDescriptor extends LanguageAspectDescriptor {
  /**
   * @param concept input kind for textgen
   * @return descriptor for the concept, or <code>null</code> if this aspect knows nothing about the concept
   */
  @Nullable
  TextGenDescriptor getDescriptor(@NotNull SConceptId concept);
}
