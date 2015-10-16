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
package jetbrains.mps.smodel.language;

import jetbrains.mps.components.CoreComponent;
import jetbrains.mps.smodel.LanguageAspect;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;
import jetbrains.mps.smodel.adapter.ids.SConceptId;
import jetbrains.mps.smodel.runtime.BehaviorAspectDescriptor;
import jetbrains.mps.smodel.runtime.BehaviorDescriptor;
import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import jetbrains.mps.smodel.runtime.ConstraintsAspectDescriptor;
import jetbrains.mps.smodel.runtime.ConstraintsDescriptor;
import jetbrains.mps.smodel.runtime.StructureAspectDescriptor;
import jetbrains.mps.smodel.runtime.TextGenAspectDescriptor;
import jetbrains.mps.smodel.runtime.TextGenDescriptor;
import jetbrains.mps.smodel.runtime.illegal.IllegalConceptDescriptor;
import jetbrains.mps.smodel.runtime.illegal.IllegalConstraintsDescriptor;
import jetbrains.mps.smodel.runtime.illegal.NullSafeIllegalBehaviorDescriptor;
import jetbrains.mps.smodel.runtime.impl.DefaultTextGenDescriptor;
import jetbrains.mps.smodel.runtime.interpreted.ConstraintsAspectInterpreted;
import jetbrains.mps.smodel.runtime.interpreted.InterpretedBehaviorDescriptor;
import jetbrains.mps.smodel.runtime.interpreted.TextGenAspectInterpreted;
import jetbrains.mps.util.NameUtil;
import jetbrains.mps.util.Pair;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class ConceptRegistry implements CoreComponent, LanguageRegistryListener {
  private static final Logger LOG = LogManager.getLogger(ConceptRegistry.class);

  private final Map<String, ConceptDescriptor> conceptDescriptors = new ConcurrentHashMap<String, ConceptDescriptor>();
  private final Map<SConceptId, ConceptDescriptor> conceptDescriptorsById = new ConcurrentHashMap<SConceptId, ConceptDescriptor>();
  private final Map<String, BehaviorDescriptor> behaviorDescriptors = new ConcurrentHashMap<String, BehaviorDescriptor>();
  private final Map<SConceptId, ConstraintsDescriptor> constraintsDescriptors = new ConcurrentHashMap<SConceptId, ConstraintsDescriptor>();
  private final Map<String, TextGenDescriptor> textGenDescriptors = new ConcurrentHashMap<String, TextGenDescriptor>();

  private final LanguageRegistry myLanguageRegistry;

  //ConceptRegistry is a singleton, so we can omit remove() here though the field is not static
  private final ThreadLocal<Set<Pair<Object, LanguageAspect>>> conceptsInLoading = new ThreadLocal<Set<Pair<Object, LanguageAspect>>>() {
    @Override
    protected Set<Pair<Object, LanguageAspect>> initialValue() {
      return new HashSet<Pair<Object, LanguageAspect>>();
    }
  };

  public ConceptRegistry(@NotNull LanguageRegistry languageRegistry) {
    myLanguageRegistry = languageRegistry;
  }

  private static ConceptRegistry INSTANCE;

  public static ConceptRegistry getInstance() {
    return INSTANCE;
  }

  @Override
  public void init() {
    if (INSTANCE != null) {
      throw new IllegalStateException("double initialization");
    }
    INSTANCE = this;
    myLanguageRegistry.addRegistryListener(this);
  }

  @Override
  public void dispose() {
    myLanguageRegistry.removeRegistryListener(this);
    INSTANCE = null;
  }

  private boolean startLoad(Object id, LanguageAspect aspect) {
    Pair<Object, LanguageAspect> currentConceptAndLanguageAspect = new Pair<Object, LanguageAspect>(id, aspect);
    if (conceptsInLoading.get().contains(currentConceptAndLanguageAspect)) {
      return false;
    }
    conceptsInLoading.get().add(currentConceptAndLanguageAspect);
    return true;
  }

  private void finishLoad(Object fqName, LanguageAspect aspect) {
    conceptsInLoading.get().remove(new Pair<Object, LanguageAspect>(fqName, aspect));
  }

  @NotNull
  public ConceptDescriptor getConceptDescriptor(@NotNull String fqName) {
    ConceptDescriptor descriptor = conceptDescriptors.get(fqName);

    if (descriptor != null) {
      return descriptor;
    }

    if (!startLoad(fqName, LanguageAspect.STRUCTURE)) {
      return new IllegalConceptDescriptor(fqName);
    }

    try {
      try {
        LanguageRuntime languageRuntime = myLanguageRegistry.getLanguage(NameUtil.namespaceFromConceptFQName(fqName));
        if (languageRuntime != null) {
          StructureAspectDescriptor structureAspectDescriptor = languageRuntime.getAspect(StructureAspectDescriptor.class);
          if (structureAspectDescriptor == null) return new IllegalConceptDescriptor(fqName);

          descriptor = structureAspectDescriptor.getDescriptor(fqName);
        }
      } catch (Throwable e) {
        LOG.error("Exception while structure descriptor creating for the concept " + fqName, e);
      }

      if (descriptor == null) return new IllegalConceptDescriptor(fqName);
      assert !descriptor.getId().equals(MetaIdFactory.INVALID_CONCEPT_ID);

      conceptDescriptors.put(fqName, descriptor);
      return descriptor;
    } finally {
      finishLoad(fqName, LanguageAspect.STRUCTURE);
    }
  }

  @NotNull
  public ConceptDescriptor getConceptDescriptor(@NotNull SConceptId id) {
    ConceptDescriptor descriptor = conceptDescriptorsById.get(id);

    if (descriptor != null) {
      return descriptor;
    }

    if (!startLoad(id, LanguageAspect.STRUCTURE)) {
      return new IllegalConceptDescriptor(id);
    }

    try {
      try {
        LanguageRuntime languageRuntime = myLanguageRegistry.getLanguage(id.getLanguageId());
        if (languageRuntime != null) {
          StructureAspectDescriptor structureAspectDescriptor = languageRuntime.getAspect(StructureAspectDescriptor.class);
          if (structureAspectDescriptor == null) return new IllegalConceptDescriptor(id);
          descriptor = structureAspectDescriptor.getDescriptor(id);
        }
      } catch (Throwable e) {
        LOG.error("Exception while structure descriptor creating for the concept " + id, e);
      }

      if (descriptor == null) return new IllegalConceptDescriptor(id);
      assert !descriptor.getId().equals(MetaIdFactory.INVALID_CONCEPT_ID);

      conceptDescriptorsById.put(id, descriptor);
      return descriptor;
    } finally {
      finishLoad(id, LanguageAspect.STRUCTURE);
    }
  }

  @NotNull
  public BehaviorDescriptor getBehaviorDescriptor(@Nullable String fqName) {
    BehaviorDescriptor descriptor = behaviorDescriptors.get(fqName);

    if (descriptor != null) {
      return descriptor;
    }

    if (!startLoad(fqName, LanguageAspect.BEHAVIOR)) {
      return NullSafeIllegalBehaviorDescriptor.INSTANCE;
    }

    try {
      try {
        LanguageRuntime languageRuntime = myLanguageRegistry.getLanguage(NameUtil.namespaceFromConceptFQName(fqName));
        if (languageRuntime == null) {
          LOG.warn("No language for: " + fqName + ", while looking for behavior descriptor.");
        } else {
          final BehaviorAspectDescriptor behaviorAspect = languageRuntime.getAspect(BehaviorAspectDescriptor.class);
          descriptor = behaviorAspect != null ? behaviorAspect.getDescriptor(fqName) : null;
        }
      } catch (Throwable e) {
        LOG.warn("Exception while behavior descriptor creating", e);
      }

      if (descriptor == null) {
//        descriptor = new IllegalBehaviorDescriptor(fqName);
        descriptor = new InterpretedBehaviorDescriptor(fqName);
      }

      behaviorDescriptors.put(fqName, descriptor);

      return descriptor;
    } finally {
      finishLoad(fqName, LanguageAspect.BEHAVIOR);
    }
  }

  public BehaviorDescriptor getBehaviorDescriptorForInstanceNode(@Nullable SNode node) {
    if (node == null) {
      return NullSafeIllegalBehaviorDescriptor.INSTANCE;
    } else {
      return getBehaviorDescriptor(node.getConcept().getQualifiedName());
    }
  }

  @Deprecated
  @NotNull
  public ConstraintsDescriptor getConstraintsDescriptor(@NotNull String fqName) {
    ConceptDescriptor conceptDescriptor = getConceptDescriptor(fqName);
    return getConstraintsDescriptor(conceptDescriptor.getId());
  }

  @NotNull
  public ConstraintsDescriptor getConstraintsDescriptor(@NotNull SConceptId conceptId) {
    ConstraintsDescriptor descriptor = constraintsDescriptors.get(conceptId);

    if (descriptor != null) {
      return descriptor;
    }

    if (!startLoad(conceptId, LanguageAspect.CONSTRAINTS)) {
      // method ConstraintsDescriptor.getConceptFqName() is not in use, therefor we don't care to supply meaningful value
      return new IllegalConstraintsDescriptor(conceptId, MetaIdFactory.INVALID_CONCEPT_NAME);
    }

    try {
      try {
        LanguageRuntime languageRuntime = myLanguageRegistry.getLanguage(conceptId.getLanguageId());
        ConstraintsAspectDescriptor constraintsAspectDescriptor;
        if (languageRuntime == null) {
          // Then language was just renamed and was not re-generated then it can happen that it has no
          LOG.warn("No language for: " + conceptId + ", while looking for constraints descriptor.");
          constraintsAspectDescriptor = ConstraintsAspectInterpreted.getInstance();
        } else {
          constraintsAspectDescriptor = languageRuntime.getAspect(ConstraintsAspectDescriptor.class);
        }
        descriptor = constraintsAspectDescriptor != null ? constraintsAspectDescriptor.getDescriptor(conceptId) : null;
      } catch (Throwable e) {
        LOG.warn("Exception while constraints descriptor creating", e);
      }

      if (descriptor == null) {
        descriptor = new IllegalConstraintsDescriptor(conceptId, MetaIdFactory.INVALID_CONCEPT_NAME);
      }

      constraintsDescriptors.put(conceptId, descriptor);

      return descriptor;
    } finally {
      finishLoad(conceptId, LanguageAspect.CONSTRAINTS);
    }
  }


  @NotNull
  public TextGenAspectDescriptor getTextGenAspectDescriptor(@Nullable SNode node) {
      LanguageRuntime languageRuntime = myLanguageRegistry.getLanguage(node.getConcept().getLanguage().getQualifiedName());
      TextGenAspectDescriptor textGenAspectDescriptor;
      if (languageRuntime == null) {
        textGenAspectDescriptor = new TextGenAspectInterpreted();
      } else {
        textGenAspectDescriptor = languageRuntime.getAspect(TextGenAspectDescriptor.class);
      }
      return textGenAspectDescriptor;
  }


  @NotNull
  public TextGenDescriptor getTextGenDescriptor(@Nullable SNode node) {
    if (node == null) {
      return new DefaultTextGenDescriptor();
    }
    return getTextGenDescriptor(node.getConcept());
  }

  private TextGenDescriptor getTextGenDescriptor(SConcept concept) {
    final String fqName = concept.getQualifiedName();

    TextGenDescriptor descriptor = textGenDescriptors.get(fqName);

    if (descriptor != null) {
      return descriptor;
    }

    if (!startLoad(fqName, LanguageAspect.TEXT_GEN)) {
      return new DefaultTextGenDescriptor();
    }

    try {
      LanguageRuntime languageRuntime = myLanguageRegistry.getLanguage(concept.getLanguage().getQualifiedName());
      TextGenAspectDescriptor textGenAspectDescriptor;
      if (languageRuntime == null) {
        // Then language was just renamed and was not re-generated then it can happen that it has no
        LOG.warn(String.format("No language for concept %s, while looking for textgen descriptor.", fqName));
        textGenAspectDescriptor = new TextGenAspectInterpreted();
      } else {
        textGenAspectDescriptor = languageRuntime.getAspect(TextGenAspectDescriptor.class);
      }
      descriptor = textGenAspectDescriptor != null ? textGenAspectDescriptor.getDescriptor(concept) : null;

      if (descriptor == null) {
        descriptor = new DefaultTextGenDescriptor();
      }

      textGenDescriptors.put(fqName, descriptor);

      return descriptor;
    } finally {
      finishLoad(fqName, LanguageAspect.TEXT_GEN);
    }
  }

  @Override
  public void beforeLanguagesUnloaded(Iterable<LanguageRuntime> languages) {
    // no-op, it's not the right time to drop caches (unless can do it selectively)
    // as other unload listeners might (although should not) access this registry
  }

  @Override
  public void afterLanguagesLoaded(Iterable<LanguageRuntime> languages) {
    // todo: incremental?
    conceptDescriptorsById.clear();
    conceptDescriptors.clear();
    behaviorDescriptors.clear();
    constraintsDescriptors.clear();
    textGenDescriptors.clear();
  }
}
