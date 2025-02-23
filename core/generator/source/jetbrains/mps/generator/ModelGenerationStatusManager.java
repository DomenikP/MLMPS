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

import jetbrains.mps.components.CoreComponent;
import jetbrains.mps.extapi.model.GeneratableSModel;
import jetbrains.mps.extapi.module.SRepositoryRegistry;
import jetbrains.mps.smodel.SModelRepository;
import jetbrains.mps.util.SNodeOperations;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.EditableSModel;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SRepositoryContentAdapter;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public class ModelGenerationStatusManager implements CoreComponent {
  private static ModelGenerationStatusManager INSTANCE;

  public static ModelGenerationStatusManager getInstance() {
    return INSTANCE;
  }

  private final List<ModelGenerationStatusListener> myListeners = new ArrayList<ModelGenerationStatusListener>();

  private ModelHashSource myModelHashSource;

  private final SRepositoryContentAdapter myModelReloadListener = new SRepositoryContentAdapter() {
    @Override
    protected boolean isIncluded(SModule module) {
      return !module.isPackaged() && !module.isReadOnly();
    }

    @Override
    protected void startListening(SModel model) {
      if (SNodeOperations.isGeneratable(model)) {
        model.addModelListener(this);
      }
    }

    @Override
    protected void stopListening(SModel model) {
      model.removeModelListener(this);
    }

    @Override
    public void modelReplaced(SModel model) {
      ModelGenerationStatusManager.this.invalidateData(Collections.singleton(model));
    }
  };

  public ModelGenerationStatusManager() {

  }

  /*
   * Now there could be only one source of model hashes at a time.
   */
  public void setModelHashSource(@NotNull ModelHashSource source) {
    myModelHashSource = source;
  }

  @Override
  public void init() {
    if (INSTANCE != null) {
      throw new IllegalStateException("double initialization");
    }

    INSTANCE = this;
    SRepositoryRegistry.getInstance().addGlobalListener(myModelReloadListener);
  }

  @Override
  public void dispose() {
    SRepositoryRegistry.getInstance().removeGlobalListener(myModelReloadListener);
    INSTANCE = null;
  }

  public String currentHash(SModel md) {
    if (md instanceof EditableSModel && ((EditableSModel)md).isChanged()) return null;
    if (!(md instanceof GeneratableSModel)) return null;
    GeneratableSModel sm = (GeneratableSModel) md;
    return sm.getModelHash();
  }

  public boolean generationRequired(SModel md) {
    if (!(md instanceof GeneratableSModel)) return false;
    GeneratableSModel sm = (GeneratableSModel) md;
    if (!sm.isGeneratable()) return false;
    if (sm instanceof EditableSModel && ((EditableSModel) sm).isChanged()) return true;

    String currentHash = sm.getModelHash();
    if (currentHash == null) return true;

    String generatedHash = getGenerationHash(sm);
    if (generatedHash == null) return true;

    return !generatedHash.equals(currentHash);
  }

  private String getGenerationHash(@NotNull GeneratableSModel sm) {
    return getLastGenerationHash(sm);
  }

  public void invalidateData(Iterable<? extends SModel> models) {
    ModelGenerationStatusListener[] copy;
    synchronized (myListeners) {
      copy = myListeners.toArray(new ModelGenerationStatusListener[myListeners.size()]);
    }
    for (SModel model : models) {
      for (ModelGenerationStatusListener l : copy) {
        l.generatedFilesChanged(model);
      }
    }
  }

  /*
   * PROVISIONAL: when a file get changed, we have to update all model instances in all repositories (i.e. if the same model is loaded
   * into few). Hence, we can't rely on SModel. Either we shall make MGSM per-project (and use SModel then), or keep it application-wide
   * and then track all repositories and reload given model in every repository. However, the only ModelGenerationStatusListener we've got so far
   * is project-specific (project pane), and it might be reasonable to pass SModelReference right up to listener so it can decide what to do
   */
  public void invalidate(Collection<SModelReference> models) {
    ModelGenerationStatusListener[] copy;
    synchronized (myListeners) {
      copy = myListeners.toArray(new ModelGenerationStatusListener[myListeners.size()]);
    }
    for (SModelReference mr : models) {
      // XXX temp solution until I decide whether to iterate over all SRepositories or pass SModelReference to the listener
      SModel m = SModelRepository.getInstance().getModelDescriptor(mr);
      if (m == null) {
        continue;
      }
      for (ModelGenerationStatusListener l : copy) {
        l.generatedFilesChanged(m);
      }
    }
  }

  public void addGenerationStatusListener(ModelGenerationStatusListener l) {
    synchronized (myListeners) {
      myListeners.add(l);
    }
  }

  public void removeGenerationStatusListener(ModelGenerationStatusListener l) {
    synchronized (myListeners) {
      myListeners.remove(l);
    }
  }

  public static String getLastGenerationHash(GeneratableSModel sm) {
    return String.valueOf(getInstance().myModelHashSource.getModelHash(sm));
  }

  /**
   * PROVISIONAL, don't want a String as model hash, rather need a class.
   */
  public interface ModelHashSource {
    Object getModelHash(SModel model);
  }
}
