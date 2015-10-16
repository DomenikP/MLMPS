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
package jetbrains.mps.smodel.tracing.nodes;

import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.SNodePointer;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeId;

/**
 * Created by domenik on 09.10.15 KW:41.
 */
public class SNodeProxy {

  private boolean requiresResolving;
  private SNode node;
  private SNodeId nodeId;
  private SModelReference modelReference;

  public SNodeProxy(SNodeId nodeId, SModelReference modelReference) {
    requiresResolving = true;
    this.modelReference = modelReference;
    this.nodeId = nodeId;
  }

  public SNode getNode() {
    if(requiresResolving) {
      this.node = new SNodePointer(modelReference, nodeId).resolve(MPSModuleRepository.getInstance());
    }
    return this.node;
  }

  public SModelReference getModelRef() {
    return this.modelReference;
  }

  public SNodeId getNodeId() {
    if(this.node == null) {
      return this.nodeId;
    } else {
      return this.node.getNodeId();
    }
  }

  public void setModelReference(SModelReference ref) {
    this.requiresResolving = true;
    this.modelReference = ref;
  }

  @Override
  public int hashCode() {
    return this.toString().hashCode();
  }

  @Override
  public boolean equals(Object obj) {
    if(obj instanceof SNodeProxy) {
      SNodeProxy otherProxy = (SNodeProxy) obj;
      return obj.toString().equals(this.toString());
    }
    return false;
  }

  @Override
  public String toString() {
    if(this.requiresResolving) {
      return this.modelReference.getModelId().toString()+"/"+this.nodeId.toString();
    } else {
      String modelID = null;
      if(this.node.getModel() == null) {
        modelID = "";
      } else {
        modelID = this.node.getModel().getModelId().toString();
      }
      return modelID+"/"+this.node.getNodeId().toString();
    }
  }
}
