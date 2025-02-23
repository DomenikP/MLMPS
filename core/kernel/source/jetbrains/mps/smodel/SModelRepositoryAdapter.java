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
package jetbrains.mps.smodel;

import org.jetbrains.mps.openapi.model.SModel;

import java.util.Set;

/**
 * use {@link org.jetbrains.mps.openapi.module.SRepositoryContentAdapter} via
 * {@link jetbrains.mps.extapi.module.SRepositoryRegistry#addGlobalListener(org.jetbrains.mps.openapi.module.SRepositoryListener)}
 */
@Deprecated
public abstract class SModelRepositoryAdapter implements SModelRepositoryListener {
  private SModelRepositoryListenerPriority myPriority;

  public SModelRepositoryAdapter() {
    this(SModelRepositoryListenerPriority.CLIENT);
  }

  public SModelRepositoryAdapter(SModelRepositoryListenerPriority priority) {
    this.myPriority = priority;
  }

  @Override
  public void modelRemoved(SModel modelDescriptor) {
    modelRepositoryChanged();
  }

  @Override
  public void beforeModelRemoved(SModel modelDescriptor) {

  }

  @Override
  public void modelAdded(SModel modelDescriptor) {
    modelRepositoryChanged();
  }

  @Override
  public void modelRenamed(SModel modelDescriptor) {
    modelRepositoryChanged();
  }

  @Override
  public void modelsReplaced(Set<SModel> replacedModels) {
    modelRepositoryChanged();
  }

  public void modelRepositoryChanged() {

  }

  public SModelRepositoryListenerPriority getPriority() {
    return myPriority;
  }

}
