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
package jetbrains.mps.smodel;

import jetbrains.mps.components.CoreComponent;
import jetbrains.mps.library.ModulesMiner.ModuleHandle;
import jetbrains.mps.project.AbstractModule;
import jetbrains.mps.project.DevKit;
import jetbrains.mps.project.Solution;
import jetbrains.mps.project.structure.modules.DevkitDescriptor;
import jetbrains.mps.project.structure.modules.LanguageDescriptor;
import jetbrains.mps.project.structure.modules.ModuleDescriptor;
import jetbrains.mps.project.structure.modules.ModuleReference;
import jetbrains.mps.project.structure.modules.SolutionDescriptor;
import jetbrains.mps.util.Computable;
import jetbrains.mps.util.ComputeRunnable;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleReference;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public class ModuleRepositoryFacade implements CoreComponent {
  private static final Logger LOG = LogManager.getLogger(ModuleRepositoryFacade.class);
  private static ModuleRepositoryFacade INSTANCE;

  private final MPSModuleRepository REPO;

  public ModuleRepositoryFacade(MPSModuleRepository repo) {
    REPO = repo;
  }

  @Override
  public void init() {
    if (INSTANCE != null) {
      throw new IllegalStateException("double initialization");
    }

    INSTANCE = this;
  }

  @Override
  public void dispose() {
    INSTANCE = null;
  }

  public static ModuleRepositoryFacade getInstance() {
    return INSTANCE;
  }

  public SModule getModule(@NotNull final SModuleReference ref) {
    Computable<SModule> c = new Computable<SModule>() {
      @Override
      public SModule compute() {
        return ref.getModuleId() != null ? REPO.getModule(ref.getModuleId()) : REPO.getModuleByFqName(ref.getModuleName());
      }
    };
    if (REPO.getModelAccess().canRead()) {
      return c.compute();
    }
    ComputeRunnable<SModule> r = new ComputeRunnable<SModule>(c);
    REPO.getModelAccess().runReadAction(r);
    return r.getResult();
  }

  public <T extends SModule> T getModule(SModuleReference ref, Class<T> cls) {
    SModule m = getModule(ref);
    if (!cls.isInstance(m)) return null;
    return (T) m;
  }

  public <T extends SModule> T getModule(String fqName, Class<T> cls) {
    SModule m = REPO.getModuleByFqName(fqName);
    if (!cls.isInstance(m)) return null;
    return (T) m;
  }

  public <T extends SModule> Collection<T> getAllModules(Class<T> cls) {
    List<T> result = new ArrayList<T>();
    for (SModule module : REPO.getModules()) {
      if (cls.isInstance(module)) result.add((T) module);
    }
    return result;
  }

  public <T extends SModule> Collection<T> getModules(MPSModuleOwner moduleOwner, @Nullable Class<T> cls) {
    Set<SModule> modules = REPO.getModules(moduleOwner);
    if (modules == null) return Collections.emptyList();

    List<T> list = new LinkedList<T>();
    for (SModule m : modules) {
      if (cls == null || cls.isInstance(m)) {
        list.add((T) m);
      }
    }
    return list;
  }

  /**
   * Find language modules directly <em>extending</em> the one supplied.
   * @see jetbrains.mps.project.dependency.modules.LanguageDependenciesManager for <em>extended</em> languages
   * Shall merge the code (perhaps even into third class, i.e. Language), it's stupid to keep two locations.
   */
  public Collection<Language> getAllExtendingLanguages(Language l) {
    final SModuleReference lRef = l.getModuleReference();
    List<Language> result = new LinkedList<Language>();
    for (Language lang : getAllModules(Language.class)) {
      if (lang.getExtendedLanguageRefs().contains(lRef)) {
        result.add(lang);
      }
    }
    return result;
  }

  public void unregisterModules(MPSModuleOwner owner) {
    REPO.unregisterModules(new HashSet<SModule>(REPO.getModules(owner)), owner);
  }

  //intended to use only when module is removed physically
  public void removeModuleForced(SModule module) {
    Set<MPSModuleOwner> owners = new HashSet<MPSModuleOwner>(REPO.getOwners(module));
    for (MPSModuleOwner owner : owners) {
      REPO.unregisterModule(module, owner);
    }
  }

  public Set<MPSModuleOwner> getModuleOwners(SModule module) {
    return new HashSet<MPSModuleOwner>(REPO.getOwners(module));
  }

  public static SModuleReference createReference(String moduleName) {
    // TODO use SRepository?
    SModuleReference ref = new ModuleReference(moduleName);
    SModule module = getInstance().getModule(ref);
    return module != null ? module.getModuleReference() : ref;
  }

  public static SModule createModule(ModuleHandle handle, MPSModuleOwner owner) {
    LOG.debug("Creating a module " + handle);
    if (handle.getDescriptor() instanceof LanguageDescriptor) {
      return newLanguageInstance(handle, owner);
    } else if (handle.getDescriptor() instanceof SolutionDescriptor) {
      return newSolutionInstance(handle, owner);
    } else if (handle.getDescriptor() instanceof DevkitDescriptor) {
      return newDevKitInstance(handle, owner);
    } else {
      throw new IllegalArgumentException("Unknown module " + handle.getFile().getName());
    }
  }

  private static <T extends ModuleDescriptor> T getDescriptorChecked(ModuleHandle handle, Class<T> descriptorClass) {
    ModuleDescriptor descriptor = handle.getDescriptor();
    assert descriptor != null;
    assert descriptor.getId() != null;
    assert descriptorClass.isInstance(descriptor);

    return descriptorClass.cast(descriptor);
  }

  private static Language newLanguageInstance(ModuleHandle handle, MPSModuleOwner moduleOwner) {
    LanguageDescriptor descriptor = getDescriptorChecked(handle, LanguageDescriptor.class);

    Language newLanguage = new Language(descriptor, handle.getFile());
    Language language = registerModule(newLanguage, moduleOwner);
    if (language == newLanguage) {
      language.revalidateGenerators();
    }
    return language;
  }

  private static Solution newSolutionInstance(ModuleHandle handle, MPSModuleOwner moduleOwner) {
    SolutionDescriptor descriptor = getDescriptorChecked(handle, SolutionDescriptor.class);
    return registerModule(new Solution(descriptor, handle.getFile()), moduleOwner);
  }

  private static DevKit newDevKitInstance(ModuleHandle handle, MPSModuleOwner moduleOwner) {
    DevkitDescriptor descriptor = getDescriptorChecked(handle, DevkitDescriptor.class);
    return registerModule(new DevKit(descriptor, handle.getFile()), moduleOwner);
  }

  private static <T extends AbstractModule> T registerModule(T module, MPSModuleOwner moduleOwner) {
    return ModuleRepositoryFacade.getInstance().REPO.registerModule(module, moduleOwner);
  }
}
