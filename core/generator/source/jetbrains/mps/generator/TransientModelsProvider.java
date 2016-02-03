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
package jetbrains.mps.generator;

import jetbrains.mps.extapi.model.SModelData;
import jetbrains.mps.project.Project;
import jetbrains.mps.smodel.BaseMPSModuleOwner;
import jetbrains.mps.smodel.MPSModuleOwner;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.smodel.SModelRepository;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.module.SModule;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public class TransientModelsProvider {

  private final ConcurrentMap<SModule, TransientModelsModule> myModuleMap = new ConcurrentHashMap<SModule, TransientModelsModule>();
  private int myModelsToKeepMax = 0; /* unlimited */
  private Project myProject;
  private int myKeptModels;
  private final TransientSwapOwner myTransientSwapOwner;
  private String mySessionId;
  private final MPSModuleOwner myOwner = new BaseMPSModuleOwner();

  public TransientModelsProvider(Project project, TransientSwapOwner owner) {
    myProject = project;
    myTransientSwapOwner = owner;
  }

  protected void clearAll() {
    ModelAccess.instance().requireWrite(new Runnable() {
      @Override
      public void run() {
        List<TransientModelsModule> toRemove = new ArrayList<TransientModelsModule>(myModuleMap.values());
        myModuleMap.clear();
        for (TransientModelsModule m : toRemove) {
          MPSModuleRepository.getInstance().unregisterModule(m, myOwner);
        }
      }
    });
    TransientSwapSpace space = getTransientSwapSpace();
    if (space != null) {
      space.clear();
    }
    mySessionId = null;
    myKeptModels = 0;
  }

  public void publishAll() {
    ModelAccess.instance().requireWrite(new Runnable() {
      @Override
      public void run() {
        for (TransientModelsModule m : myModuleMap.values()) {
          m.publishAll();
        }
      }
    });
  }

  public void createModule(final SModule module) {
    if (myModuleMap.containsKey(module)) {
      return;
    }

    final TransientModelsModule transientModelsModule = new TransientModelsModule(module, TransientModelsProvider.this);
    MPSModuleRepository.getInstance().registerModule(transientModelsModule, myOwner);
    myModuleMap.put(module, transientModelsModule);
  }

  public TransientModelsModule getModule(final SModule module) {
    if (myModuleMap.containsKey(module)) {
      return myModuleMap.get(module);
    }

    throw new IllegalStateException();
  }

  public boolean canKeepOneMore() {
    return myModelsToKeepMax <= 0 || myKeptModels < myModelsToKeepMax;
  }

  public void decreaseKeptModels() {
    if (myModelsToKeepMax <= 0) {
      return;
    }
    myKeptModels++; // I know it's stupid and misguiding, but these two methods (canKeepOneMore and decreaseKeptModels) shall become history anyway
  }

  @Nullable
  private TransientSwapOwner getTransientSwapOwner() {
    return myTransientSwapOwner;
  }

  @Nullable
  public TransientSwapSpace getTransientSwapSpace() {
    if (mySessionId == null) {
      return null;
    }

    TransientSwapOwner tso = getTransientSwapOwner();
    if (tso == null) {
      return null;
    }

    TransientSwapSpace space = tso.accessSwapSpace(mySessionId);
    if (space != null) {
      return space;
    }

    return tso.initSwapSpace(mySessionId);
  }

  public void removeAllTransient() {
    clearAll();
  }

  public void removeTransientModel(final SModule module) {
    // remove transient models for model
    ModelAccess.instance().requireWrite(new Runnable() {
      @Override
      public void run() {
        List<SModule> removals = new ArrayList<SModule>();
        for (SModule m : myModuleMap.keySet()) {
          if(m.getModuleId().equals(module.getModuleId())) {
            removals.add(m);
          }
        }
        for(SModule removal : removals) {
          MPSModuleRepository.getInstance().unregisterModule(myModuleMap.get(removal), myOwner);
          myModuleMap.remove(removal);
        }
      }
    });
  }


  public Iterable<TransientModelsModule> getModules() {
    ModelAccess.assertLegalRead();

    List<TransientModelsModule> result = new ArrayList<TransientModelsModule>(myModuleMap.size());
    for (TransientModelsModule m : myModuleMap.values()) {
      if (m.hasPublished()) {
        result.add(m);
      }
    }

    return result;
  }

  @Nullable
  public GenerationTrace getTrace(@NotNull SModelReference model) {
    // FIXME need a better way to find the trace. Use of SModelRepository is likely bad.
    SModel m = SModelRepository.getInstance().getModelDescriptor(model);
    if (m != null && (m.getModule() instanceof TransientModelsModule)) {
      return ((TransientModelsModule) m.getModule()).getTrace(model);
    }
    return null;
  }

  public void startGeneration(int numberOfModelsToKeep) {
    if (mySessionId == null) {
      mySessionId = newSessionId();
      myKeptModels = 0;
    }
    myModelsToKeepMax = numberOfModelsToKeep;
  }

  private String newSessionId() {
    File projectFile = myProject.getProjectFile();
    return (projectFile != null ? projectFile.getAbsolutePath().hashCode() : System.identityHashCode(myProject)) +
        Long.toHexString(System.currentTimeMillis());
  }

  public static interface TransientSwapSpace {

    boolean swapOut(SModelData model);

    <T extends SModelData> T restoreFromSwap(SModelReference mref, T modelData);

    void clear();
  }

  public static interface TransientSwapOwner {

    TransientSwapSpace initSwapSpace(String spaceId);

    TransientSwapSpace accessSwapSpace(String spaceId);
  }
}
