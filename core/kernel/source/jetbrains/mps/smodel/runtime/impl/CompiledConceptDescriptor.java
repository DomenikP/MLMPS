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
package jetbrains.mps.smodel.runtime.impl;

import jetbrains.mps.smodel.SNodeUtil;
import jetbrains.mps.smodel.adapter.ids.SConceptId;
import jetbrains.mps.smodel.adapter.ids.SContainmentLinkId;
import jetbrains.mps.smodel.adapter.ids.SPropertyId;
import jetbrains.mps.smodel.adapter.ids.SReferenceLinkId;
import jetbrains.mps.smodel.language.ConceptRegistry;
import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import jetbrains.mps.smodel.runtime.LinkDescriptor;
import jetbrains.mps.smodel.runtime.PropertyDescriptor;
import jetbrains.mps.smodel.runtime.ReferenceDescriptor;
import jetbrains.mps.smodel.runtime.StaticScope;
import jetbrains.mps.smodel.runtime.base.BaseConceptDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class CompiledConceptDescriptor extends BaseConceptDescriptor {
  private final SConceptId myId;
  private final String myConceptFqName;
  @Nullable
  private final SConceptId mySuperConceptId;
  private final String mySuperConcept;
  private final boolean myInterfaceConcept;
  private final SConceptId[] myParents;
  private final String[] myParentNames;
  private final PropertyDescriptor[] myOwnProperties;
  private final ReferenceDescriptor[] myOwnReferences;
  private final LinkDescriptor[] myOwnLinks;
  private final boolean myAbstract;
  private final boolean myFinal;
  private final String myConceptAlias;
  private final String myConceptShortDescription;
  private final String myHelpUrl;
  private final StaticScope myStaticScope;
  private final Object myLock = "";
  // to be initialized
  private Set<String> ancestors;
  private List<String> parentNames;
  private List<SConceptId> parents;
  private Set<SConceptId> ancestorsIds;
  private Map<SPropertyId, PropertyDescriptor> properties;
  private Map<SReferenceLinkId, ReferenceDescriptor> references;
  private Map<SContainmentLinkId, LinkDescriptor> links;
  private Map<String, PropertyDescriptor> propertiesByName;
  private Map<String, ReferenceDescriptor> referencesByName;
  private Map<String, LinkDescriptor> linksByName;
  private volatile boolean myInitialized = false;

  CompiledConceptDescriptor(@NotNull SConceptId id,
      @NotNull String conceptFqName,
      @Nullable SConceptId superConceptId,
      @Nullable String superConcept,
      boolean interfaceConcept,
      SConceptId[] parents,
      String[] parentNames,
      PropertyDescriptor[] ownProperties,
      ReferenceDescriptor[] ownReferences,
      LinkDescriptor[] ownLinks,
      boolean isAbstract,
      boolean isFinal,
      String conceptAlias,
      String shortDescription,
      String helpUrl,
      StaticScope staticScope) {
    myId = id;
    myConceptFqName = conceptFqName;
    mySuperConceptId = superConceptId;
    mySuperConcept = superConcept;
    myInterfaceConcept = interfaceConcept;
    myParents = parents;

    myParentNames = parentNames;
    myOwnProperties = ownProperties;
    myOwnReferences = ownReferences;
    myOwnLinks = ownLinks;

    myAbstract = isAbstract;
    myFinal = isFinal;
    myConceptAlias = conceptAlias;
    myConceptShortDescription = shortDescription;
    myHelpUrl = helpUrl;
    myStaticScope = staticScope;

    // todo: common with StructureAspectInterpreted to new class!
  }

  private void init() {
    if (myInitialized) {
      return;
    }
    synchronized (myLock) {
      if (myInitialized) {
        return;
      }
      List<ConceptDescriptor> parentDescriptors = new ArrayList<ConceptDescriptor>(myParentNames.length);
      for (SConceptId parent : myParents) {
        ConceptDescriptor descriptor = ConceptRegistry.getInstance().getConceptDescriptor(parent);
        parentDescriptors.add(descriptor);
      }

      if (isInterfaceConcept()){
        parentDescriptors.add(ConceptRegistry.getInstance().getConceptDescriptor(SNodeUtil.conceptId_BaseConcept));
      }

      initAncestors(parentDescriptors);
      initPropertyNames(parentDescriptors);
      initReferenceNames(parentDescriptors);
      initChildNames(parentDescriptors);
      myInitialized = true;
    }
  }

  private void initAncestors(List<ConceptDescriptor> parentDescriptors) {
    assert !myInitialized;
    parentNames = Arrays.asList(myParentNames);
    parents = Arrays.asList(myParents);
    ancestorsIds = new LinkedHashSet<SConceptId>();
    ancestors = new LinkedHashSet<String>();
    Collections.addAll(ancestorsIds, myParents);
    Collections.addAll(ancestors, myParentNames);
    ancestorsIds.add(myId);
    ancestors.add(myConceptFqName);
    for (ConceptDescriptor parentDescriptor : parentDescriptors) {
      ancestorsIds.addAll(parentDescriptor.getAncestorsIds());
      ancestors.addAll(parentDescriptor.getAncestorsNames());
    }
  }

  private void initPropertyNames(List<ConceptDescriptor> parentDescriptors) {
    assert !myInitialized;

    Map<SPropertyId, PropertyDescriptor> propsMap = new HashMap<SPropertyId, PropertyDescriptor>();
    HashMap<String, PropertyDescriptor> propByNameMap = new HashMap<String, PropertyDescriptor>();
    for (PropertyDescriptor p : myOwnProperties) {
      propsMap.put(p.getId(), p);
      propByNameMap.put(p.getName(), p);
    }
    for (ConceptDescriptor parentDescriptor : parentDescriptors) {
      for (SPropertyId p : parentDescriptor.getPropertyIds()) {
        PropertyDescriptor pd = parentDescriptor.getPropertyDescriptor(p);
        propsMap.put(p, pd);
        propByNameMap.put(pd.getName(), pd);
      }
    }
    properties = propsMap;
    propertiesByName = propByNameMap;
  }

  private void initReferenceNames(List<ConceptDescriptor> parentDescriptors) {
    assert !myInitialized;

    Map<SReferenceLinkId, ReferenceDescriptor> refsMap = new HashMap<SReferenceLinkId, ReferenceDescriptor>();
    HashMap<String, ReferenceDescriptor> refsByNameMap = new HashMap<String, ReferenceDescriptor>();
    for (ReferenceDescriptor r : myOwnReferences) {
      refsMap.put(r.getId(), r);
      refsByNameMap.put(r.getName(), r);
    }
    for (ConceptDescriptor parentDescriptor : parentDescriptors) {
      for (SReferenceLinkId r : parentDescriptor.getReferenceIds()) {
        ReferenceDescriptor rd = parentDescriptor.getRefDescriptor(r);
        refsMap.put(r, rd);
        refsByNameMap.put(rd.getName(), rd);
      }
    }
    references = refsMap;
    referencesByName = refsByNameMap;
  }

  private void initChildNames(List<ConceptDescriptor> parentDescriptors) {
    assert !myInitialized;

    //ids
    Map<SContainmentLinkId, LinkDescriptor> linksMap = new HashMap<SContainmentLinkId, LinkDescriptor>();
    HashMap<String, LinkDescriptor> linksByNameMap = new HashMap<String, LinkDescriptor>();
    for (LinkDescriptor r : myOwnLinks) {
      linksMap.put(r.getId(), r);
      linksByNameMap.put(r.getName(), r);
    }
    for (ConceptDescriptor parentDescriptor : parentDescriptors) {
      for (SContainmentLinkId r : parentDescriptor.getLinkIds()) {
        LinkDescriptor ld = parentDescriptor.getLinkDescriptor(r);
        linksMap.put(r, ld);
        linksByNameMap.put(ld.getName(), ld);
      }
    }
    links = linksMap;
    linksByName = linksByNameMap;
  }

  @Override
  public List<String> getParentsNames() {
    init();
    return parentNames;
  }

  @Override
  public Set<String> getAncestorsNames() {
    init();
    return ancestors;
  }

  @Override
  public String getConceptFqName() {
    return myConceptFqName;
  }

  @Override
  public String getSuperConcept() {
    return mySuperConcept;
  }

  @Override
  public boolean isInterfaceConcept() {
    return myInterfaceConcept;
  }

  @Override
  public StaticScope getStaticScope() {
    return myStaticScope;
  }

  @Override
  public boolean isAbstract() {
    return myAbstract;
  }

  @Override
  public boolean isFinal() {
    return myFinal;
  }

  @Override
  public String getConceptAlias() {
    return myConceptAlias;
  }

  @Override
  public String getConceptShortDescription() {
    return myConceptShortDescription;
  }

  @Override
  public String getHelpUrl() {
    return myHelpUrl;
  }

  @NotNull
  @Override
  public SConceptId getId() {
    return myId;
  }

  @Nullable
  @Override
  public SConceptId getSuperConceptId() {
    return mySuperConceptId;
  }

  @Override
  public List<SConceptId> getParentsIds() {
    init();
    return parents;
  }

  @Override
  public Set<SConceptId> getAncestorsIds() {
    init();
    return ancestorsIds;
  }

  @Override
  public Set<SPropertyId> getPropertyIds() {
    init();
    return properties.keySet();
  }

  @Override
  public PropertyDescriptor getPropertyDescriptor(SPropertyId id) {
    init();
    return properties.get(id);
  }

  @Override
  public PropertyDescriptor getPropertyDescriptor(String name) {
    init();
    return propertiesByName.get(name);
  }

  @Override
  public Set<SReferenceLinkId> getReferenceIds() {
    init();
    return references.keySet();
  }

  @Override
  public ReferenceDescriptor getRefDescriptor(SReferenceLinkId id) {
    init();
    return references.get(id);
  }

  @Override
  public ReferenceDescriptor getRefDescriptor(String name) {
    init();
    return referencesByName.get(name);
  }

  @Override
  public Set<SContainmentLinkId> getLinkIds() {
    init();
    return links.keySet();
  }

  @Override
  public LinkDescriptor getLinkDescriptor(SContainmentLinkId id) {
    init();
    return links.get(id);
  }

  @Override
  public LinkDescriptor getLinkDescriptor(String name) {
    init();
    return linksByName.get(name);
  }
}
