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
package jetbrains.mps.smodel.tracing;

import com.sun.tools.javac.util.Pair;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.SNodePointer;
import jetbrains.mps.smodel.tracing.nodes.SNodeProxy;
import jetbrains.mps.textgen.trace.TracingSettings;
import org.jetbrains.mps.openapi.model.*;
import org.jetbrains.mps.openapi.model.SModel;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/**
 * Created by domenik on 09.10.15 KW:41.
 */
public class TransformationTrace {
  List<TracedNode> tracedNodes = new ArrayList<TracedNode>();
  List<TracedNode> unregistredTracedNodes = new ArrayList<TracedNode>();
  List<SNodeProxy> lazyResolvedModels = new ArrayList<SNodeProxy>();
  List<SModelReference> transientModels = new ArrayList<SModelReference>();
  List<SNodeReference> reducedByTrafosKeys = new ArrayList<SNodeReference>();
  List<List<SNodeReference>> reducedByTrafosValues = new ArrayList<List<SNodeReference>>();

  List<SNodeReference> outputNodesForInputKeys = new ArrayList<SNodeReference>();
  List<List<SNodeReference>> outputNodesForInputValues = new ArrayList<List<SNodeReference>>();

  List<Pair<SNodeReference, SNodeReference>> outputCreatedByTrafo = new ArrayList<Pair<SNodeReference, SNodeReference>>();
  List<Pair<SNodeProxy, SNodeReference>> lazyOutputCreatedByTrafo = new ArrayList<Pair<SNodeProxy, SNodeReference>>();

  private TransformationTrace() {

  }

  public void addTransientModel(SModelReference modelRef) {
    if(!transientModels.contains(modelRef)) {
      transientModels.add(modelRef);
    }
  }

  public SModelReference getNextTransientModel(SModelReference modelRef) {
    int index = transientModels.indexOf(modelRef);
    if(index >= 0 &&  index+1 < transientModels.size()) {
      return transientModels.get(index+1);
    } else {
      return transientModels.get(transientModels.size()-1);
    }
  }

  public SModelReference getPreviousTransientModel(SModelReference modelRef) {
    int index = transientModels.indexOf(modelRef);
    if(index >= 0 &&  index-1 < transientModels.size()) {
      return transientModels.get(index-1);
    }else {
      return transientModels.get(transientModels.size()-1);
    }
  }

  private static TransformationTrace INSTANCE;
  public static TransformationTrace getInstance() {
    if(INSTANCE == null) {
      INSTANCE = new TransformationTrace();
    }
    return INSTANCE;
  }

  public void init() {
    reducedByTrafosValues.clear();
    reducedByTrafosKeys.clear();
    outputNodesForInputKeys.clear();
    outputNodesForInputValues.clear();
    tracedNodes.clear();
    outputCreatedByTrafo.clear();
    unregistredTracedNodes.clear();
    lazyResolvedModels.clear();
    lazyOutputCreatedByTrafo.clear();
    transientModels.clear();
  }

  public void addNodeWithLazyResoledModel(SNodeProxy nodeProxy) {
    lazyResolvedModels.add(nodeProxy);
  }

  public void resolveLazyNodes(List<SModel> models) {
    List<SNodeProxy> proxiesToRemove = new ArrayList<SNodeProxy>();
    for(SNodeProxy proxy : lazyResolvedModels) {
      boolean createdModelReached = false;
      for (int index = 0; index < models.size(); index++) {
        SModelReference currentModelRef = models.get(index).getReference();
        if(!createdModelReached  && currentModelRef.equals(proxy.getModelRef())) {
          createdModelReached = true;
        }
        if(createdModelReached) {
          SNodePointer sNodePointer = new SNodePointer(currentModelRef, proxy.getNodeId());
          SNode resolveNode = sNodePointer.resolve(MPSModuleRepository.getInstance());
          if(resolveNode != null) {
            proxy.setModelReference(currentModelRef);
            proxiesToRemove.add(proxy);
            break;
          }
        }
      }
    }
    for(Pair<SNodeProxy, SNodeReference> pair : lazyOutputCreatedByTrafo) {
      outputCreatedByTrafo.add(new Pair<SNodeReference, SNodeReference>(pair.fst.getNode().getReference(), pair.snd));
    }
    lazyOutputCreatedByTrafo.clear();
    lazyResolvedModels.removeAll(proxiesToRemove);
  }

  public void resolveUnregistredNode(SNodeId nodeId, SModelReference reference) {
    TracedNode trace = null;
    for(int index = 0; index < unregistredTracedNodes.size(); index++) {
      TracedNode tracedNode = unregistredTracedNodes.get(index);
      if(tracedNode.getNode().getNodeId().equals(nodeId) && !reference.equals(tracedNode.getNode().getModelRef())) {
        tracedNode.getNode().setModelReference(reference);
        unregistredTracedNodes.remove(tracedNode);
        tracedNodes.add(tracedNode);
        return;
      }
    }
  }

  public void updateTrackedNode(SNodeProxy old, SNodeProxy newProxy) {
    TracedNode oldTrackedNode = getTrackedNode(old);
    if(oldTrackedNode != null) {
      this.tracedNodes.remove(oldTrackedNode);
      TracedNode newTracedNode = new TracedNode(newProxy);
      for (SNodeProxy output : oldTrackedNode.getOutputNodes()) {
        newTracedNode.addOutputNode(output);
      }
      newTracedNode.setInputNode(oldTrackedNode.getNode());
      newTracedNode.setCreatedBy(oldTrackedNode.getCreatedBy());
      for (SNodeProxy reducedBy : oldTrackedNode.getReducedBy()) {
        newTracedNode.addReducedBy(reducedBy);
      }
      this.unregistredTracedNodes.add(newTracedNode);
    }
  }

  public TracedNode addTrackedNode(SNodeProxy proxy) {
    TracedNode trackedNode = getTrackedNode(proxy);
    if(trackedNode == null) {
      TracedNode tracedNode = new TracedNode(proxy);

      if(!transientModels.contains(proxy.getModelRef())) {
        transientModels.add(proxy.getModelRef());
      }


      this.tracedNodes.add(tracedNode);
      return tracedNode;
    }
    return trackedNode;
  }

  public TracedNode getTrackedNode(SNodeProxy proxy) {
    for(int index = 0; index < tracedNodes.size(); index++) {
      if(tracedNodes.get(index).getNode().equals(proxy)) {
        return tracedNodes.get(index);
      }
    }
    return null;
  }


  public void trackReducedByTrafo(SNodeReference inputNode, SNodeReference trafo) {
    int index = indexOf(inputNode, reducedByTrafosKeys);
    if(index == -1) {
      reducedByTrafosKeys.add(inputNode);
      List<SNodeReference> trafos = new ArrayList<SNodeReference>();
      trafos.add(trafo);
      reducedByTrafosValues.add(trafos);
    } else {
      reducedByTrafosValues.get(index).add(trafo);
    }
  }

  public void trackOutputNodes(SNodeReference inputNode, Collection<org.jetbrains.mps.openapi.model.SNodeId> outputNodes, SModel outputModel) {
    int index = indexOf(inputNode, outputNodesForInputKeys);
    if(index == -1) {
      outputNodesForInputKeys.add(inputNode);
      List<SNodeReference> outputNodesList = new ArrayList<SNodeReference>();
      for(org.jetbrains.mps.openapi.model.SNodeId outputNodeID : outputNodes) {
        outputNodesList.add(new SNodePointer(outputModel.getReference(), outputNodeID));
      }
      outputNodesForInputValues.add(outputNodesList);
    } else {
      for(org.jetbrains.mps.openapi.model.SNodeId outputNodeID : outputNodes) {
        outputNodesForInputValues.get(index).add(new SNodePointer(outputModel.getReference(), outputNodeID));
      }
    }
  }

  public void trackOutputNode(SNodeReference inputNode, org.jetbrains.mps.openapi.model.SNodeId outputNode, SModel outputNodeModel) {
    int index = indexOf(inputNode, outputNodesForInputKeys);
    if(index == -1) {
      outputNodesForInputKeys.add(inputNode);
      List<SNodeReference> outputNodesList = new ArrayList<SNodeReference>();
      outputNodesList.add(new SNodePointer(outputNodeModel.getReference(), outputNode));
      outputNodesForInputValues.add(outputNodesList);
    } else {
      outputNodesForInputValues.get(index).add(new SNodePointer(outputNodeModel.getReference(), outputNode));
    }
  }

  public void trackResolvedOutputNodes(SNodeReference inputNode, Collection<SNodeReference> outputNodes) {
    int index = indexOf(inputNode, outputNodesForInputKeys);
    if(index == -1) {
      outputNodesForInputKeys.add(inputNode);
      List<SNodeReference> outputNodesList = new ArrayList<SNodeReference>();
      for(SNodeReference outputNode : outputNodes) {
        outputNodesList.add(outputNode);
      }
      outputNodesForInputValues.add(outputNodesList);
    } else {
      for(SNodeReference outputNode : outputNodes) {
        outputNodesForInputValues.get(index).add(outputNode);
      }
    }
  }

  public void trackLazyCreatedByTrafo(SNodeProxy proxy, SNodeReference trafo) {
    lazyOutputCreatedByTrafo.add(new Pair<SNodeProxy, SNodeReference>(proxy, trafo));
  }

  public void trackCreatedByTrafo(SNodeReference outputNode, SNodeReference trafo) {
    outputCreatedByTrafo.add(new Pair<SNodeReference, SNodeReference>(outputNode, trafo));
  }

  public List<SNodeReference> getOutputNodes(SNodeReference inputNode) {
    int indexOf = indexOf(inputNode, outputNodesForInputKeys);
    if(indexOf >= 0) {
      return outputNodesForInputValues.get(indexOf);
    } else {
      return new ArrayList<SNodeReference>();
    }
  }

  public SNodeReference getInputNode(SNodeReference outputNode) {
    for (List<SNodeReference> outputNodeList : outputNodesForInputValues) {
      for(SNodeReference nodeReference : outputNodeList) {
        if(nodeReference.equals(outputNode)) {
          int index = outputNodesForInputValues.indexOf(outputNodeList);
          return new ArrayList<SNodeReference>(outputNodesForInputKeys).get(index);
        }
      }
    }
    return null;
  }

  public List<SNodeReference> getReducedByTrafos(SNodeReference inputNode) {
    int indexOf = indexOf(inputNode, reducedByTrafosKeys);
    if(indexOf >= 0) {
      return reducedByTrafosValues.get(indexOf);
    } else {
      return new ArrayList<SNodeReference>();
    }
  }

  public SNodeReference getCreatedByTrafo(SNodeReference node) {
    for(Pair<SNodeReference, SNodeReference> pair : outputCreatedByTrafo) {
      if(pair.fst.equals(node)) {
        return pair.snd;
      }
    }
    return null;
  }

  private int indexOf(SNodeReference nodeReference, List<SNodeReference> list) {
    for(int index = 0; index < list.size(); index++) {
      if(list.get(index).equals(nodeReference)) {
        return index;
      }
    }
    return -1;
  }

}
