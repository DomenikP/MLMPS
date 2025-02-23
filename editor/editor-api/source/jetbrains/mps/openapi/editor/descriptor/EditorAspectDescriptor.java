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
package jetbrains.mps.openapi.editor.descriptor;

import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import jetbrains.mps.smodel.runtime.LanguageAspectDescriptor;

import java.util.Collection;

/**
 * User: shatalin
 * Date: 4/8/13
 */
public interface EditorAspectDescriptor extends LanguageAspectDescriptor {
  Collection<ConceptEditor> getEditors(ConceptDescriptor concept);
  Collection<ConceptEditorComponent> getEditorComponents(ConceptDescriptor concept, String editorComponentId);
}