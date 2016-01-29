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

import jetbrains.mps.RuntimeFlags;
import jetbrains.mps.extapi.model.SModelBase;
import jetbrains.mps.extapi.model.SModelData;
import jetbrains.mps.persistence.ModelEnvironmentInfo;
import jetbrains.mps.persistence.PersistenceRegistry;
import jetbrains.mps.project.ModuleId;
import jetbrains.mps.project.dependency.ModelDependenciesManager;
import jetbrains.mps.project.structure.modules.ModuleReference;
import jetbrains.mps.project.structure.modules.RefUpdateUtil;
import jetbrains.mps.smodel.adapter.ids.MetaIdByDeclaration;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.smodel.adapter.structure.language.SLanguageAdapterById;
import jetbrains.mps.smodel.descriptor.RefactorableSModelDescriptor;
import jetbrains.mps.smodel.event.SModelChildEvent;
import jetbrains.mps.smodel.event.SModelDevKitEvent;
import jetbrains.mps.smodel.event.SModelImportEvent;
import jetbrains.mps.smodel.event.SModelLanguageEvent;
import jetbrains.mps.smodel.event.SModelListener;
import jetbrains.mps.smodel.event.SModelPropertyEvent;
import jetbrains.mps.smodel.event.SModelReferenceEvent;
import jetbrains.mps.smodel.event.SModelRootEvent;
import jetbrains.mps.smodel.nodeidmap.INodeIdToNodeMap;
import jetbrains.mps.smodel.nodeidmap.UniversalOptimizedNodeIdMap;
import jetbrains.mps.smodel.tracing.TracedNode;
import jetbrains.mps.smodel.tracing.TransformationTrace;
import jetbrains.mps.smodel.tracing.nodes.SNodeProxy;
import jetbrains.mps.textgen.trace.TracingSettings;
import jetbrains.mps.util.Computable;
import jetbrains.mps.util.SNodeOperations;
import jetbrains.mps.util.annotation.ToRemove;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.model.EditableSModel;
import org.jetbrains.mps.openapi.model.SModelId;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.model.SNodeUtil;
import org.jetbrains.mps.openapi.model.SReference;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.module.SRepository;

import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLong;

public class SModel implements SModelData {
  private static final Logger LOG = LogManager.getLogger(SModel.class);
  private static AtomicLong ourCounter = new AtomicLong();

  static {
    resetIdCounter();
  }

  protected SModelBase myModelDescriptor;
  private Set<SNode> myRoots = new LinkedHashSet<SNode>();
  private SModelReference myReference;
  private boolean myDisposed;
  private List<SModuleReference> myLanguages = new ArrayList<SModuleReference>();
  private List<SModuleReference> myLanguagesEngagedOnGeneration = new ArrayList<SModuleReference>();
  private Map<SLanguage, Integer> myLanguagesIds = new LinkedHashMap<SLanguage, Integer>();
  private List<SModuleReference> myDevKits = new ArrayList<SModuleReference>();
  private List<ImportElement> myImports = new ArrayList<ImportElement>();
  private INodeIdToNodeMap myIdToNodeMap = createNodeIdMap();
  private StackTraceElement[] myDisposedStacktrace = null;
  private ModelDependenciesManager myModelDependenciesManager;
  private ImplicitImportsLegacyHolder myLegacyImplicitImports;

  public SModel(@NotNull SModelReference modelReference) {
    this(modelReference, new UniversalOptimizedNodeIdMap());
  }

  public SModel(@NotNull SModelReference modelReference, INodeIdToNodeMap map) {
    myReference = modelReference;
    myIdToNodeMap = map;
  }

  static void resetIdCounter() {
    ourCounter.set(Math.abs(new SecureRandom().nextLong()));
  }

  public static SNodeId generateUniqueId() {
    long id = Math.abs(ourCounter.incrementAndGet());
    return new jetbrains.mps.smodel.SNodeId.Regular(id);
  }


  public SModelId getModelId() {
    return myReference.getModelId();
  }

  @NotNull
  public SModelReference getReference() {
    return myReference;
  }

  @Override
  public Iterable<org.jetbrains.mps.openapi.model.SNode> getRootNodes() {
    fireModelNodesReadAccess();
    return new Iterable<org.jetbrains.mps.openapi.model.SNode>() {
      @Override
      public Iterator<org.jetbrains.mps.openapi.model.SNode> iterator() {
        return new Iterator<org.jetbrains.mps.openapi.model.SNode>() {
          private final Iterator<SNode> myIterator = myRoots.iterator();

          @Override
          public boolean hasNext() {
            return myIterator.hasNext();
          }

          @Override
          public org.jetbrains.mps.openapi.model.SNode next() {
            SNode res = myIterator.next();
            if (res != null) {
              res.nodeRead();

              res.fireNodeReadAccess();
              res.fireNodeUnclassifiedReadAccess();
            }

            return res;
          }

          @Override
          public void remove() {
            throw new UnsupportedOperationException("can't change model roots through roots iterator");
          }
        };
      }
    };
  }

  public boolean isRoot(@Nullable org.jetbrains.mps.openapi.model.SNode node) {
    return myRoots.contains(node);
  }

  //--------------IMPLEMENTATION-------------------

  @Override
  public void addRootNode(final org.jetbrains.mps.openapi.model.SNode node) {
    assert node instanceof SNode;
    if (myModelDescriptor != null) {
      ModelChange.assertLegalNodeRegistration(this, node);
    }
    enforceFullLoad();
    if (myRoots.contains(node)) return;
    org.jetbrains.mps.openapi.model.SModel model = node.getModel();
    if (model != null && model != myModelDescriptor && node.getParent() == null) {
      model.removeRootNode(node);
    } else {
      org.jetbrains.mps.openapi.model.SNode parent = node.getParent();
      if (parent != null) {
        parent.removeChild(node);
      }
    }

    SNode sn = (SNode) node;
    myRoots.add(sn);
    sn.registerInModel(this);
    performUndoableAction(new Computable<SNodeUndoableAction>() {
      @Override
      public SNodeUndoableAction compute() {
        return new AddRootUndoableAction(node);
      }
    });
    fireRootAddedEvent(sn);
  }

  @Override
  public void removeRootNode(final org.jetbrains.mps.openapi.model.SNode node) {
    assert node instanceof SNode;
    if (myModelDescriptor != null) {
      ModelChange.assertLegalNodeUnRegistration(this, node);
    }
    enforceFullLoad();
    if (myRoots.contains(node)) {
      fireBeforeRootRemovedEvent(node);
      myRoots.remove(node);
      SNode sn = (SNode) node;
      sn.unRegisterFromModel();
      performUndoableAction(new Computable<SNodeUndoableAction>() {
        @Override
        public SNodeUndoableAction compute() {
          return new RemoveRootUndoableAction(node, myModelDescriptor);
        }
      });
      fireRootRemovedEvent(sn);
    }
  }

  @Override
  @Nullable
  public SNode getNode(@NotNull org.jetbrains.mps.openapi.model.SNodeId nodeId) {
    SNode res = getNode_(nodeId);
    if (res != null) {
      res.nodeRead();

      res.fireNodeReadAccess();
      res.fireNodeUnclassifiedReadAccess();
    }
    return res;
  }

  private SNode getNode_(org.jetbrains.mps.openapi.model.SNodeId nodeId) {
    checkNotDisposed();
    if (myDisposed) return null;

    org.jetbrains.mps.openapi.model.SNode node = myIdToNodeMap.get(nodeId);
    if (node != null) return ((SNode) node);
    enforceFullLoad();
    return ((SNode) myIdToNodeMap.get(nodeId));
  }

  @NotNull
  public String toString() {
    return myReference.toString();
  }

  //todo get rid of, try to cast, show an error if not casted
  public boolean isDisposed() {
    return myDisposed;
  }

  //todo cast if can be
  public StackTraceElement[] getDisposedStacktrace() {
    return myDisposedStacktrace;
  }

  @Deprecated
  public void addModelListener(@NotNull SModelListener listener) {
    getModelDescriptor().addModelListener(listener);
  }

  @Deprecated
  public void removeModelListener(@NotNull SModelListener listener) {
    getModelDescriptor().removeModelListener(listener);
  }

  public SModelBase getModelDescriptor() {
    return myModelDescriptor;
  }

  public synchronized void setModelDescriptor(org.jetbrains.mps.openapi.model.SModel modelDescriptor) {
    myModelDescriptor = ((SModelBase) modelDescriptor);
  }

  protected void enforceFullLoad() {
  }

  private void fireModelNodesReadAccess() {
    if (!canFireReadEvent()) return;
    if (myModelDescriptor != null) {
      NodeReadEventsCaster.fireModelNodesReadAccess(myModelDescriptor);
    }
  }

//---------listeners--------

  protected void performUndoableAction(Computable<SNodeUndoableAction> action) {
    if (!canFireEvent()) return;
    if (!UndoHelper.getInstance().needRegisterUndo()) return;
    UndoHelper.getInstance().addUndoableAction(action.compute());
  }

  //todo code in the following methods should be written w/o duplication

  public boolean canFireEvent() {
    return myModelDescriptor != null && jetbrains.mps.util.SNodeOperations.isRegistered(myModelDescriptor) && !isUpdateMode();
  }

  public boolean canFireReadEvent() {
    return canFireEvent();
  }

  public void dispose() {
    assertLegalChange();
    if (myDisposed) return;

    myDisposed = true;
    myDisposedStacktrace = new Throwable().getStackTrace();
    myIdToNodeMap = null;
    myRoots.clear();
    if (myModelDependenciesManager != null) {
      myModelDependenciesManager.dispose();
      myModelDependenciesManager = null;
    }
  }

  private void checkNotDisposed() {
    if (!myDisposed) return;
    LOG.error(new IllegalModelAccessError("accessing disposed model"));
  }

  private List<SModelListener> getModelListeners() {
    if (myModelDescriptor == null) return Collections.emptyList();
    return ((SModelBase) myModelDescriptor).getModelListeners();
  }

  private void fireDevKitAddedEvent(@NotNull SModuleReference ref) {
    if (!canFireEvent()) return;
    final SModelDevKitEvent event = new SModelDevKitEvent(getModelDescriptor(), ref, true);
    for (SModelListener sModelListener : getModelListeners()) {
      try {
        sModelListener.devkitAdded(event);
      } catch (Throwable t) {
        LOG.error(null, t);
      }
    }
  }

  private void fireDevKitRemovedEvent(@NotNull SModuleReference ref) {
    if (!canFireEvent()) return;
    final SModelDevKitEvent event = new SModelDevKitEvent(getModelDescriptor(), ref, false);
    for (SModelListener sModelListener : getModelListeners()) {
      try {
        sModelListener.devkitRemoved(event);
      } catch (Throwable t) {
        LOG.error(null, t);
      }
    }
  }

  private void fireLanguageAddedEvent(@NotNull SModuleReference ref) {
    if (!canFireEvent()) return;
    final SModelLanguageEvent event = new SModelLanguageEvent(getModelDescriptor(), ref, true);
    for (SModelListener sModelListener : getModelListeners()) {
      try {
        sModelListener.languageAdded(event);
      } catch (Throwable t) {
        LOG.error(null, t);
      }
    }
  }

  private void fireLanguageRemovedEvent(@NotNull SModuleReference ref) {
    if (!canFireEvent()) return;
    final SModelLanguageEvent event = new SModelLanguageEvent(getModelDescriptor(), ref, false);
    for (SModelListener sModelListener : getModelListeners()) {
      try {
        sModelListener.languageRemoved(event);
      } catch (Throwable t) {
        LOG.error(null, t);
      }
    }
  }

  private void fireImportAddedEvent(@NotNull SModelReference modelReference) {
    if (!canFireEvent()) return;
    final SModelImportEvent event = new SModelImportEvent(getModelDescriptor(), modelReference, true);
    for (SModelListener sModelListener : getModelListeners()) {
      try {
        sModelListener.importAdded(event);
      } catch (Throwable t) {
        LOG.error(null, t);
      }
    }
  }

  private void fireImportRemovedEvent(@NotNull SModelReference modelReference) {
    if (!canFireEvent()) return;
    final SModelImportEvent event = new SModelImportEvent(getModelDescriptor(), modelReference, false);
    for (SModelListener sModelListener : getModelListeners()) {
      try {
        sModelListener.importRemoved(event);
      } catch (Throwable t) {
        LOG.error(null, t);
      }
    }
  }

  private void fireRootAddedEvent(@NotNull SNode root) {
    if (!canFireEvent()) return;
    final SModelRootEvent event = new SModelRootEvent(getModelDescriptor(), root, true);
    for (SModelListener sModelListener : getModelListeners()) {
      try {
        sModelListener.rootAdded(event);
      } catch (Throwable t) {
        LOG.error(null, t);
      }
    }
  }

  private void fireRootRemovedEvent(@NotNull SNode root) {
    if (!canFireEvent()) return;
    final SModelRootEvent event = new SModelRootEvent(getModelDescriptor(), root, false);
    for (SModelListener sModelListener : getModelListeners()) {
      try {
        sModelListener.rootRemoved(event);
      } catch (Throwable t) {
        LOG.error(null, t);
      }
    }
  }

  private void fireBeforeRootRemovedEvent(org.jetbrains.mps.openapi.model.SNode node) {
    if (!canFireEvent()) return;
    final SModelRootEvent event = new SModelRootEvent(getModelDescriptor(), node, false);
    for (SModelListener sModelListener : getModelListeners()) {
      try {
        sModelListener.beforeRootRemoved(event);
      } catch (Throwable t) {
        LOG.error(null, t);
      }
    }
  }

  void firePropertyChangedEvent(@NotNull SNode node, @NotNull String property, @Nullable String oldValue, @Nullable String newValue) {
    if (!canFireEvent()) return;
    final SModelPropertyEvent event = new SModelPropertyEvent(getModelDescriptor(), property, node, oldValue, newValue);
    for (SModelListener sModelListener : getModelListeners()) {
      try {
        sModelListener.propertyChanged(event);
      } catch (Throwable t) {
        LOG.error(null, t);
      }
    }
  }

  //---------fast node finder--------

  void fireChildAddedEvent(@NotNull SNode parent, @NotNull String role, @NotNull SNode child, SNode anchor) {
    if (!canFireEvent()) return;
    int childIndex = anchor == null ? 0 : parent.getChildren().indexOf(anchor) + 1;
    final SModelChildEvent event = new SModelChildEvent(getModelDescriptor(), true, parent, role, childIndex, child);
    for (SModelListener sModelListener : getModelListeners()) {
      try {
        sModelListener.childAdded(event);
      } catch (Throwable t) {
        LOG.error(null, t);
      }
    }
  }

  //---------node id--------

  void fireChildRemovedEvent(@NotNull SNode parent, @NotNull SContainmentLink role, @NotNull SNode child, SNode anchor) {
    if (!canFireEvent()) return;
    int childIndex = anchor == null ? 0 : parent.getChildren().indexOf(anchor) + 1;
    final SModelChildEvent event = new SModelChildEvent(getModelDescriptor(), false, parent, role.getRoleName(), childIndex, child);
    for (SModelListener sModelListener : getModelListeners()) {
      try {
        sModelListener.childRemoved(event);
      } catch (Throwable t) {
        LOG.error(null, t);
      }
    }
  }

  void fireBeforeChildRemovedEvent(@NotNull SNode parent, @NotNull SContainmentLink role, @NotNull SNode child, SNode anchor) {
    if (!canFireEvent()) return;
    int childIndex = anchor == null ? 0 : parent.getChildren().indexOf(anchor) + 1;
    final SModelChildEvent event = new SModelChildEvent(getModelDescriptor(), false, parent, role.getRoleName(), childIndex, child);
    for (SModelListener sModelListener : getModelListeners()) {
      try {
        sModelListener.beforeChildRemoved(event);
      } catch (Throwable t) {
        LOG.error(null, t);
      }
    }
  }

  void fireReferenceAddedEvent(@NotNull SReference reference) {
    if (!canFireEvent()) return;
    final SModelReferenceEvent event = new SModelReferenceEvent(getModelDescriptor(), reference, true);
    for (SModelListener sModelListener : getModelListeners()) {
      try {
        sModelListener.referenceAdded(event);
      } catch (Throwable t) {
        LOG.error(null, t);
      }
    }
  }

  void fireReferenceRemovedEvent(@NotNull SReference reference) {
    if (!canFireEvent()) return;
    final SModelReferenceEvent event = new SModelReferenceEvent(getModelDescriptor(), reference, false);
    for (SModelListener sModelListener : getModelListeners()) {
      try {
        sModelListener.referenceRemoved(event);
      } catch (Throwable t) {
        LOG.error(null, t);
      }
    }
  }

  public FastNodeFinder createFastNodeFinder() {
    return new DefaultFastNodeFinder(getModelDescriptor());
  }

  //---------node registration--------

  protected final INodeIdToNodeMap createNodeIdMap() {
    return new UniversalOptimizedNodeIdMap();
  }

  void registerNode(@NotNull SNode node) {
    checkNotDisposed();
    if (myDisposed) return;

    enforceFullLoad();
    SNodeId id = node.getNodeId();
    if (id == null) {
      assignNewId(node);
      return;
    }

    org.jetbrains.mps.openapi.model.SNode existingNode = myIdToNodeMap.get(id);
    if (existingNode == null) {
      myIdToNodeMap.put(node.getNodeId(), node);
    }

    if (existingNode != null && existingNode != node) {
      assignNewId(node);
    }

  }

  private void assignNewId(SNode node) {
    SNodeId id;
    SNodeId oldID = node.getNodeId();
    id = generateUniqueId();
    while (myIdToNodeMap.containsKey(id)) {
      resetIdCounter();
      id = generateUniqueId();
    }
    node.setId(id);

    myIdToNodeMap.put(id, node);

    if(TracingSettings.getInstance().isWriteGeneratorFile()) {
      SNodeProxy oldProxy = new SNodeProxy(oldID, this.getReference());
      if(TracingSettings.getInstance().isWriteGeneratorFile()) {
        TransformationTrace.getInstance().updateTrackedNode(oldProxy, new SNodeProxy(id,this.getReference()));
      }

    }
  }

  //---------imports manipulation--------

  void unregisterNode(@NotNull SNode node) {
    checkNotDisposed();

    enforceFullLoad();
    SNodeId id = node.getNodeId();
    if (myDisposed || id == null) return;
    myIdToNodeMap.remove(id);
  }

  public ModelDependenciesManager getModelDepsManager() {
    if (myModelDependenciesManager == null) {
      myModelDependenciesManager = new ModelDependenciesManager(getModelDescriptor());
      // we do not need to track model changes as we are invalidating dep manager right away on any change
      SRepository repo = getRepository();
      if (repo != null) {
        myModelDependenciesManager.trackRepositoryChanges(repo);
      }
    }
    return myModelDependenciesManager;
  }

  //language

  private void invalidateModelDepsManager() {
    if (myModelDependenciesManager != null) {
      myModelDependenciesManager.invalidate();
    }
  }

  public Collection<SLanguage> usedLanguages() {
    return Collections.unmodifiableSet(myLanguagesIds.keySet());
  }

  public Map<SLanguage, Integer> usedLanguagesWithVersions() {
    return Collections.unmodifiableMap(myLanguagesIds);
  }

  @Deprecated
  public List<SModuleReference> importedLanguages() {
    return Collections.unmodifiableList(myLanguages);
  }

  @Deprecated
  public void deleteLanguage(@NotNull SModuleReference ref) {
    assertLegalChange();

    if (myLanguages.remove(ref)) {
      invalidateModelDepsManager();
      fireLanguageRemovedEvent(ref);
      markChanged();
    }

    deleteLanguage(MetaIdByDeclaration.ref2Id(ref));
  }

  public void deleteLanguage(@NotNull SLanguage id) {
    if (myModelDescriptor != null) {
      ModelChange.assertLegalChange_new(myModelDescriptor);
    }

    if (myLanguagesIds.remove(id) != null) {
      invalidateModelDepsManager();
      fireLanguageRemovedEvent(convertLanguageRef(id));
      markChanged();
    }
  }

  @Deprecated
  public void addLanguage(SModuleReference ref) {
    assertLegalChange();

    if (importedLanguages().contains(ref)) return;

    if (ref.getModuleId() == null) {
      LOG.warn("Attempt to add language reference to a language without id in model " + getReference().getModelName() + ". Language = " + ref);
    }

    if (myLanguages.add(ref)) {
      invalidateModelDepsManager();
      fireLanguageAddedEvent(ref);
      markChanged();
    }

    addLanguage(MetaIdByDeclaration.ref2Id(ref), -1);
  }

  public void addLanguage(Language language) {
    addLanguage(MetaAdapterFactory.getLanguage(MetaIdByDeclaration.getLanguageId(language), language.getModuleName()), language.getLanguageVersion());
  }

  //devkit

  public void addLanguage(SLanguage id, int version) {
    if (myModelDescriptor != null) {
      ModelChange.assertLegalChange_new(myModelDescriptor);
    }

    Integer existingVersion = myLanguagesIds.get(id);
    if (existingVersion != null) {
      if (version == -1 || existingVersion == version) {
        return;
      }
      if (existingVersion == -1) {
        myLanguagesIds.remove(id);
      } else {
        throw new IllegalStateException("Can't add language import with different version. Old version: " + existingVersion + "; new version: " + version);
      }
    }

    myLanguagesIds.put(id, version);
    invalidateModelDepsManager();
    fireLanguageAddedEvent(convertLanguageRef(id));
    markChanged();

    addLanguage(convertLanguageRef(id));
  }

  public List<SModuleReference> importedDevkits() {
    return Collections.unmodifiableList(myDevKits);
  }

  public void addDevKit(SModuleReference ref) {
    assertLegalChange();

    if (myDevKits.add(ref)) {
      invalidateModelDepsManager();
      fireDevKitAddedEvent(ref);
      markChanged();
    }
  }

  //model

  public void deleteDevKit(@NotNull SModuleReference ref) {
    assertLegalChange();

    if (myDevKits.remove(ref)) {
      invalidateModelDepsManager();
      fireDevKitRemovedEvent(ref);
      markChanged();
    }
  }

  public List<ImportElement> importedModels() {
    return Collections.unmodifiableList(myImports);
  }

  public void addModelImport(SModelReference modelReference, boolean firstVersion) {
    assertLegalChange();

    ImportElement importElement = SModelOperations.getImportElement(this, modelReference);
    if (importElement != null) {
      return;
    }
    if (myLegacyImplicitImports != null) {
      importElement = myLegacyImplicitImports.find(modelReference);
    }
    if (importElement == null) {
      org.jetbrains.mps.openapi.model.SModel modelDescriptor =
          RuntimeFlags.isMergeDriverMode() ? null : SModelRepository.getInstance().getModelDescriptor(modelReference);
      int usedVersion = -1;
      if (modelDescriptor instanceof RefactorableSModelDescriptor) {
        usedVersion = ((RefactorableSModelDescriptor) modelDescriptor).getVersion();
      }
      importElement = new ImportElement(modelReference, -1, firstVersion ? -1 : usedVersion);
    }

    addModelImport(importElement);
  }

  public void addModelImport(ImportElement importElement) {
    assertLegalChange();

    myImports.add(importElement);
    fireImportAddedEvent(importElement.getModelReference());
    markChanged();
  }

  public void deleteModelImport(SModelReference modelReference) {
    assertLegalChange();

    ImportElement importElement = SModelOperations.getImportElement(this, modelReference);
    if (importElement != null) {
      myImports.remove(importElement);
      if (myLegacyImplicitImports != null) {
        // shall keep only if we do track implicit imports
        myLegacyImplicitImports.addAdditionalModelVersion(importElement);  // to save version and ID if model was imported implicitly
      }
      fireImportRemovedEvent(modelReference);
      markChanged();
    }
  }

  /**
   * This is compatibility method with legacy persistence mechanism, unless used, no implicit imports are tracked.
   * Drop once we no longer need to support serialization of old persistence formats (there's no reason to track
   * implicit imports if we aren't going to serialize them afterwards)
   */
  @NotNull
  public ImplicitImportsLegacyHolder getImplicitImportsSupport() {
    if (myLegacyImplicitImports == null) {
      myLegacyImplicitImports = new ImplicitImportsLegacyHolder(this);
    }
    return myLegacyImplicitImports;
  }
  // this method is for sole use of ImplicitImportsLegacyHolder, which used to access myIdToNodeMap, and I don't want to change this
  // (i.e. re-write with model iteration using OpenAPI). Drop it along with getImplicitImportsSupport()
  /*package*/Iterable<org.jetbrains.mps.openapi.model.SNode> allNodes() {
    return myIdToNodeMap.values();
  }

  // this method is for transition period, shall be removed once there are no uses of SModelOperations.getAllImportElements()
  // Once we drop refactorings, there is no need for the method
  @ToRemove(version = 3.2)
  /*package*/List<ImportElement> getAllImportElements() {
    List<ImportElement> result = new ArrayList<ImportElement>();
    result.addAll(myImports);
    if (myLegacyImplicitImports != null) {
      result.addAll(myLegacyImplicitImports.getAdditionalModelVersions());
    }
    return result;
  }

  public List<SModuleReference> engagedOnGenerationLanguages() {
    return myLanguagesEngagedOnGeneration;
  }

  private void markChanged() {
    if (myModelDescriptor == null) return;
    org.jetbrains.mps.openapi.model.SModel model = getModelDescriptor();
    if (model instanceof EditableSModel) {
      ((EditableSModel) model).setChanged(true);
    }
  }

  public void addEngagedOnGenerationLanguage(SModuleReference ref) {
    assertLegalChange();

    if (!myLanguagesEngagedOnGeneration.contains(ref)) {
      myLanguagesEngagedOnGeneration.add(ref);
      // don't send event but mark model as changed
      if (canFireEvent()) {
        markChanged();
      }
    }
  }

  @Deprecated
  @ToRemove(version = 3.2)
  private ModuleReference convertLanguageRef(final SLanguage ref) {
    final ModuleReference[] result = new ModuleReference[1];
    ModelAccess.instance().runReadAction(new Runnable() {
      @Override
      public void run() {
        if (ref instanceof SLanguageAdapterById) {
          //this hack is needed while we have 2 types of language adapters for ConvertModelToBinary ant task to work
          result[0] = new ModuleReference(ref.getQualifiedName(), ModuleId.regular(((SLanguageAdapterById) ref).getId().getIdValue()));
        } else {
          result[0] = (ModuleReference) ref.getSourceModule().getModuleReference();
        }
      }
    });
    return result[0];
  }

  public void removeEngagedOnGenerationLanguage(SModuleReference ref) {
    assertLegalChange();

    if (myLanguagesEngagedOnGeneration.contains(ref)) {
      myLanguagesEngagedOnGeneration.remove(ref);
      // don't send event but mark model as changed
      if (canFireEvent()) {
        markChanged();
      }
    }
  }

  //aspects / additional

  public boolean isUpdateMode() {
    return false;
  }

  //to use only from SNode
  protected SRepository getRepository() {
    return myModelDescriptor == null ? null : myModelDescriptor.getRepository();
  }

  public void detachRoots() {
    for (SNode node : myRoots) {
      node.detach();
    }
  }

  private void assertLegalChange() {
    if (myModelDescriptor != null) {
      ModelChange.assertLegalChange(this);
    }
  }

  public int getVersion() {
    return -1;
  }

  //---------refactorings--------

  public void setVersion(int version) {

  }

  public void updateImportedModelUsedVersion(org.jetbrains.mps.openapi.model.SModelReference sModelReference, int currentVersion) {
    assertLegalChange();

    ImportElement importElement = SModelOperations.getImportElement(this, sModelReference);
    if (importElement == null && myLegacyImplicitImports != null) {
      importElement = myLegacyImplicitImports.find(sModelReference);
    }

    if (importElement != null) {
      importElement.myUsedVersion = currentVersion;
    } else {
      if (myLegacyImplicitImports != null) {
        myLegacyImplicitImports.addAdditionalModelVersion(sModelReference, currentVersion);
      }
    }
  }

  public boolean updateSModelReferences() {
    assertLegalChange();
    enforceFullLoad();

    boolean changed = false;
    for (org.jetbrains.mps.openapi.model.SNode n : myIdToNodeMap.values()) {
      // TODO SNode cast
      if (!(n instanceof SNode)) continue;
      SNode node = (SNode) n;
      for (SReference reference : node.getReferences()) {
        SModelReference oldReference = reference.getTargetSModelReference();
        if (oldReference == null) continue;
        jetbrains.mps.smodel.SModelReference oldSRef = (jetbrains.mps.smodel.SModelReference) oldReference;
        jetbrains.mps.smodel.SModelReference newRef = oldSRef.update();
        if (newRef.differs(oldSRef)) {
          changed = true;
          ((jetbrains.mps.smodel.SReference) reference).setTargetSModelReference(newRef);
        }
      }
    }

    for (ImportElement e : myImports) {
      jetbrains.mps.smodel.SModelReference oldSRef = (jetbrains.mps.smodel.SModelReference) e.myModelReference;
      jetbrains.mps.smodel.SModelReference newRef = oldSRef.update();
      if (newRef.differs(oldSRef)) {
        changed = true;
        e.myModelReference = newRef;
      }
    }
    if (myLegacyImplicitImports != null) {
      changed |= myLegacyImplicitImports.updateSModelReferences();
    }

    return changed;
  }

  public boolean updateModuleReferences() {
    assertLegalChange();


    boolean changed = false;

    if (updateRefs(myDevKits)) {
      changed = true;
    }

    if (updateRefs(myLanguages)) {
      changed = true;
    }

    if (updateRefs(myLanguagesEngagedOnGeneration)) {
      changed = true;
    }

    return changed;
  }

  public void changeModelReference(SModelReference newModelReference) {
    enforceFullLoad();
    SModelReference oldReference = myReference;
    myReference = newModelReference;
    for (org.jetbrains.mps.openapi.model.SNode n : myIdToNodeMap.values()) {
      // TODO SNode cast
      if (!(n instanceof SNode)) continue;
      SNode node = (SNode) n;
      for (SReference reference : node.getReferences()) {
        if (oldReference.equals(reference.getTargetSModelReference())) {
          ((jetbrains.mps.smodel.SReference) reference).setTargetSModelReference(newModelReference);
        }
      }
    }
  }

  public boolean updateRefs(List<SModuleReference> refs) {
    boolean changed = false;
    for (int i = 0; i < refs.size(); i++) {
      SModuleReference ref = refs.get(i);
      SModule module = ModuleRepositoryFacade.getInstance().getModule(ref);
      if (module != null) {
        SModuleReference newRef = module.getModuleReference();
        refs.set(i, newRef);
        changed = changed || RefUpdateUtil.differs(ref, newRef);
      }
    }
    return changed;
  }

  public SModel createEmptyCopy() {
    return new jetbrains.mps.smodel.SModel(getReference());
  }

  public void copyPropertiesTo(SModel to) {
    if (myLegacyImplicitImports != null) {
      for (ImportElement ie : myLegacyImplicitImports.getAdditionalModelVersions()) {
        to.getImplicitImportsSupport().addAdditionalModelVersion(ie.copy());
      }
    }
    for (ImportElement ie : importedModels()) {
      to.addModelImport(ie.copy());
    }
    for (SModuleReference mr : importedDevkits()) {
      to.addDevKit(mr);
    }
    for (Entry<SLanguage, Integer> mr : usedLanguagesWithVersions().entrySet()) {
      to.addLanguage(mr.getKey(), mr.getValue());
    }
    for (SModuleReference mr : engagedOnGenerationLanguages()) {
      to.addEngagedOnGenerationLanguage(mr);
    }
    to.setVersion(getVersion());
  }

  public static class ImportElement {
    private SModelReference myModelReference;
    private int myReferenceID;  // persistence related index
    private int myUsedVersion;

    @Deprecated
    public ImportElement(SModelReference modelReference, int referenceID) {
      this(modelReference, referenceID, -1);
    }

    @Deprecated
    public ImportElement(SModelReference modelReference, int referenceID, int usedVersion) {
      myModelReference = modelReference;
      myReferenceID = referenceID;
      myUsedVersion = usedVersion;
    }

    public ImportElement(SModelReference modelReference) {
      myModelReference = modelReference;
      myReferenceID = 0;
      myUsedVersion = -1;
    }

    public SModelReference getModelReference() {
      return myModelReference;
    }

    public void setModelReference(SModelReference modelReference) {
      myModelReference = modelReference;
    }

    public int getReferenceID() {
      return myReferenceID;
    }

    public void setReferenceID(int referenceID) {
      myReferenceID = referenceID;
    }

    public int getUsedVersion() {
      return myUsedVersion;
    }

    protected ImportElement copy() {
      return new ImportElement(myModelReference, myReferenceID, myUsedVersion);
    }

    public String toString() {
      return "ImportElement(" +
          "uid=" + myModelReference + ", " +
          "referenceId=" + myReferenceID + ", " +
          "usedVersion=" + myUsedVersion + ")";
    }

    @Override
    public boolean equals(Object o) {
      if (this == o) return true;
      if (o == null || getClass() != o.getClass()) return false;

      ImportElement that = (ImportElement) o;

      if (myReferenceID != that.myReferenceID) return false;
      if (myUsedVersion != that.myUsedVersion) return false;
      if (myModelReference != null ? !myModelReference.equals(that.myModelReference) : that.myModelReference != null)
        return false;

      return true;
    }

    @Override
    public int hashCode() {
      int result = myModelReference != null ? myModelReference.hashCode() : 0;
      result = 31 * result + myReferenceID;
      result = 31 * result + myUsedVersion;
      return result;
    }
  }

}
