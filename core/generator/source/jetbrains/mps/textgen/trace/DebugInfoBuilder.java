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

package jetbrains.mps.textgen.trace;

import jetbrains.mps.generator.TransientModelsModule;
import jetbrains.mps.generator.TransientModelsModule.TransientSModelDescriptor;
import jetbrains.mps.generator.TransientModelsProvider;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.project.Project;
import jetbrains.mps.project.SModuleOperations;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.tracing.TextTrace;
import jetbrains.mps.smodel.tracing.TracedNode;
import jetbrains.mps.smodel.tracing.TransformationTrace;
import jetbrains.mps.smodel.tracing.nodes.SNodeProxy;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.model.SNodeUtil;
import org.jetbrains.mps.openapi.module.SRepository;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class DebugInfoBuilder {
  private final DebugInfo myDebugInfo = new DebugInfo();

  public DebugInfoBuilder() {
  }

  private static SNode getOriginalInputNodeForNearestParent(SNode output, SRepository repository) {
    while (output != null) {
      SNode input = output;
      while (input != null && (input.getModel().getModule() instanceof TransientModelsModule)) {
        SNodeReference inputRef = TracingUtil.getInput(input);
        input = inputRef == null ? null : inputRef.resolve(repository);
      }
      if (input != null) {
        return input;
      }
      output = output.getParent();
    }
    return null;
  }

  public static void completeDebugInfoFromCache(@NotNull DebugInfo cachedDebugInfo, @NotNull DebugInfo generatedDebugInfo, Collection<String> unchangedFiles) {
    Set<String> files = new HashSet<String>(unchangedFiles);
    for (DebugInfoRoot cachedRoot : cachedDebugInfo.getRoots()) {
      DebugInfoRoot generatedRoot = generatedDebugInfo.getRootInfo(cachedRoot.getNodeRef());
      boolean newFromCache = false;
      if (generatedRoot == null) {
        generatedRoot = new DebugInfoRoot(cachedRoot.getNodeRef());
        newFromCache = true;
      }
      for (TraceablePositionInfo position : cachedRoot.getPositions()) {
        if (files.contains(position.getFileName())) {
          generatedRoot.addPosition(position);
        }
      }
      for (ScopePositionInfo position : cachedRoot.getScopePositions()) {
        if (files.contains(position.getFileName())) {
          generatedRoot.addScopePosition(position);
        }
      }
      for (UnitPositionInfo position : cachedRoot.getUnitPositions()) {
        if (files.contains(position.getFileName())) {
          generatedRoot.addUnitPosition(position);
        }
      }
      if (newFromCache) {
        // if a node is removed, generatedDebugInfo won't have an entry for it, while cachedDebugInfo has.
        // no position from this cached info, however, would pass unchangedFiles filter, and generatedDebugInfo
        // would stay empty. Here, we detect this case and drop stale debug info entries
        final boolean noCachedData =
            generatedRoot.getPositions().isEmpty() && generatedRoot.getScopePositions().isEmpty() && generatedRoot.getUnitPositions().isEmpty();
        if (!noCachedData) {
          generatedDebugInfo.putRootInfo(generatedRoot);
        }
      }
    }
  }

  public void addTraceablePosition(SNode inputNode, SModel originalInputModel, String fileName, TraceablePositionInfo positionInfo) {
    positionInfo.setNodeId(inputNode.getNodeId().toString());
    positionInfo.setFileName(fileName);
    SNode topmostAncestor = inputNode.getContainingRoot();
    myDebugInfo.addPosition(positionInfo, topmostAncestor);
  }

  public void addScopePosition(SNode inputNode, SModel originalInputModel, String fileName, ScopePositionInfo positionInfo) {
    positionInfo.setNodeId(inputNode.getNodeId().toString());
    positionInfo.setFileName(fileName);
    final SRepository originRepo = originalInputModel.getRepository();
    Map<SNode, VarInfo> varMap = positionInfo.getTempVarInfoMap();
    for (SNode varNode : varMap.keySet()) {
      SNode originalVar = getOriginalInputNodeForNearestParent(varNode, originRepo);
      VarInfo varInfo = varMap.get(varNode);
      if (originalVar != null && SNodeUtil.isAccessible(originalVar, originRepo)) {
        varInfo.setNodeId(originalVar.getNodeId().toString());
      } else {
        positionInfo.removeVarInfo(varInfo);
      }
    }
    positionInfo.clearTempVarInfoMap();
    myDebugInfo.addScopePosition(positionInfo, inputNode.getContainingRoot());
  }

  public void addUnitPosition(SNode inputNode, SModel originalInputModel, String fileName, UnitPositionInfo positionInfo) {
    positionInfo.setFileName(fileName);
    SNode topmostAncestor = null;
    if (inputNode != null && SNodeUtil.isAccessible(inputNode, originalInputModel.getRepository())) {
      positionInfo.setNodeId(inputNode.getNodeId().toString());
      topmostAncestor = inputNode.getContainingRoot();
    }
    myDebugInfo.addUnitPosition(positionInfo, topmostAncestor);
  }

  public DebugInfo getDebugInfo() {
    return myDebugInfo;
  }

  private List<SModel> getTransientModels(SModel originalInputModel, SNode sNode) {
    if (sNode != null && sNode.getModel() != null && sNode.getModel() instanceof TransientSModelDescriptor) {
      Project project = SModuleOperations.getProjectForModule(originalInputModel.getModule());
      TransientModelsProvider transientModelsProvider = project.getComponent(TransientModelsProvider.class);
      TransientModelsModule transientModule = transientModelsProvider.getModule(originalInputModel.getModule());
      List<SModel> transientModels = transientModule.getModels();
      Collections.sort(transientModels, new Comparator<SModel>() {
        @Override
        public int compare(SModel o1, SModel o2) {

          String[] o1SplittedModelName = o1.getModelName().split("@");
          String o1ModelNumber = o1SplittedModelName[o1SplittedModelName.length - 1];
          float o1ParsedModelNumber = Float.parseFloat(o1ModelNumber.replace("_", "."));

          String[] o2SplittedModelName = o2.getModelName().split("@");
          String o2ModelNumber = o2SplittedModelName[o2SplittedModelName.length - 1];
          float o2ParsedModelNumber = Float.parseFloat(o2ModelNumber.replace("_", "."));

          if (o1ParsedModelNumber == o2ParsedModelNumber) {
            return 0;
          } else if (o1ParsedModelNumber >= o2ParsedModelNumber) {
            return 1;
          } else {
            return -1;
          }
        }
      });
      return transientModels;
    }
    return null;
  }

  private TraceablePositionInfo getTracablePosInfoFromPreviousModel(List<TransientPositionInfo> previousTransientPosInfos, SNode current) {
    for (TransientPositionInfo transientPosInfo : previousTransientPosInfos) {
      for (SNode keyNode : transientPosInfo.positions.keySet()) {
        if (keyNode.getNodeId().equals(current.getNodeId())) {
          return transientPosInfo.positions.get(keyNode);
        }
      }
    }
    return null;
  }

  private TraceablePositionInfo getTracePosInfoFromReducedNode(List<TransientPositionInfo> previousTransientPosInfos, SNode current) {
    for (TransientPositionInfo transientPosInfo : previousTransientPosInfos) {
      for (SNode posNode : transientPosInfo.positions.keySet()) {
        if (posNode.getUserObject(TracingUtil.ORIGINAL_INPUT_NODE) != null &&
            ((SNodeReference) posNode.getUserObject(TracingUtil.ORIGINAL_INPUT_NODE)).resolve(MPSModuleRepository.getInstance()).equals(current)) {
          // there can be more than one!
          return transientPosInfo.positions.get(posNode);
        }
      }
    }
    return null;
  }

  private TraceablePositionInfo getTraceablePosition(List<TransientPositionInfo> previousTransientPosInfos, SNode current) {
    TraceablePositionInfo posInfoFromPrevModel = getTracablePosInfoFromPreviousModel(previousTransientPosInfos, current);
    if (posInfoFromPrevModel != null) {
      return posInfoFromPrevModel;
    }

    TraceablePositionInfo tracePosInfoFromReducedNode = getTracePosInfoFromReducedNode(previousTransientPosInfos, current);
    if (tracePosInfoFromReducedNode != null) {
      return tracePosInfoFromReducedNode;
    }

    return null;
  }

  public List<TransientPositionInfo> getTracedTransientModels(SModel inputModel, SNode nodeInOutputModel, Map<SNode, TraceablePositionInfo> positions,
      Map<SNode, ScopePositionInfo> scopePositions, Map<SNode, UnitPositionInfo> unitPositions) {
    final SRepository originRepo = inputModel.getRepository();
    List<TransientPositionInfo> transientPositionInfos = new ArrayList<TransientPositionInfo>();
    List<SModel> models = getTransientModels(inputModel, nodeInOutputModel);
    models.add(0, inputModel);
    final SModel outputModel = models.get(models.size() - 1);

    SModel nextLowerLevelModel = null;
    List<TracedNode> lowerLevelTraces = new ArrayList<TracedNode>();
    List<TracedNode> currentTraces = new ArrayList<TracedNode>();

    if(TracingSettings.getInstance().isWriteGeneratorFile()) {
      TransformationTrace.getInstance().resolveLazyNodes(models);
    }


    for (int index = models.size() - 1; index >= 0; index--) {
      SModel currentModel = models.get(index);

      // create traces for each model level
      if (currentModel == outputModel) {
        if (TracingSettings.getInstance().isWriteTracingFile()) {
          transientPositionInfos.add(new TransientPositionInfo(positions, scopePositions, unitPositions, currentModel));
        }
        if (TracingSettings.getInstance().isWriteGeneratorFile()) {
          for (SNode currentRoot : currentModel.getRootNodes()) {
            for (SNode currentNode : SNodeOperations.getNodeDescendants(currentRoot, null, true)) {
              SNodeProxy currentProxy = new SNodeProxy(currentNode.getNodeId(), currentNode.getModel().getReference());
              TracedNode currentTracedNode =
                  TransformationTrace.getInstance().getTrackedNode(new SNodeProxy(currentNode.getNodeId(), currentNode.getModel().getReference()));
              if (currentTracedNode == null) {
                currentTracedNode = TransformationTrace.getInstance().addTrackedNode(
                    new SNodeProxy(currentNode.getNodeId(), currentNode.getModel().getReference()));
              }
              currentTraces.add(currentTracedNode);
            }
          }
        }
      } else {
        Map<SNode, TraceablePositionInfo> transientPos = new HashMap<SNode, TraceablePositionInfo>();
        Map<SNode, ScopePositionInfo> transientScopePos = new HashMap<SNode, ScopePositionInfo>();
        Map<SNode, UnitPositionInfo> transientUnitPos = new HashMap<SNode, UnitPositionInfo>();

        Iterable<SNode> rootNodes = currentModel.getRootNodes();
        for (SNode currentRoot : currentModel.getRootNodes()) {
          for (SNode currentNode : SNodeOperations.getNodeDescendants(currentRoot, null, true)) {
            if (TracingSettings.getInstance().isWriteTracingFile()) {
              TraceablePositionInfo traceablePosition = getTraceablePosition(transientPositionInfos, currentNode);

              if (traceablePosition != null) {
                TraceablePositionInfo newTracePos = new TraceablePositionInfo();
                newTracePos.setPropertyString(traceablePosition.getPropertyString());
                newTracePos.setNodeId(currentNode.getNodeId().toString());
                newTracePos.setEndPosition(traceablePosition.getEndPosition());
                newTracePos.setStartPosition(traceablePosition.getStartPosition());
                newTracePos.setConceptFqName(currentNode.getConcept().getQualifiedName());
                newTracePos.setFileName(traceablePosition.getFileName());
                newTracePos.setStartLine(traceablePosition.getStartLine());
                newTracePos.setEndLine(traceablePosition.getEndLine());
                transientPos.put(currentNode, newTracePos);
              }

            }
            if (TracingSettings.getInstance().isWriteGeneratorFile()) {
              SNodeProxy currentProxy = new SNodeProxy(currentNode.getNodeId(), currentNode.getModel().getReference());
              TracedNode currentTracedNode =
                  TransformationTrace.getInstance().getTrackedNode(new SNodeProxy(currentNode.getNodeId(), currentNode.getModel().getReference()));
              if (currentTracedNode == null) {
                currentTracedNode = TransformationTrace.getInstance().addTrackedNode(
                    new SNodeProxy(currentNode.getNodeId(), currentNode.getModel().getReference()));
              }
              currentTraces.add(currentTracedNode);

              if (nextLowerLevelModel != null) {
                SNode lowerLevelCopy = nextLowerLevelModel.getNode(currentNode.getNodeId());

                if (lowerLevelCopy != null) {
                  // this node is just a copy
                  TracedNode lowerLevelCopyTrace = TransformationTrace.getInstance().getTrackedNode(
                      new SNodeProxy(lowerLevelCopy.getNodeId(), lowerLevelCopy.getModel().getReference()));

                  if (lowerLevelCopyTrace != null) {
                    if (lowerLevelCopyTrace.getInputNode() == null) {
                      lowerLevelCopyTrace.setInputNode(currentTracedNode.getNode());
                    }
                    if (lowerLevelCopyTrace.getTrace() != null) {
                      currentTracedNode.setTrace(new TextTrace(lowerLevelCopyTrace.getTrace().liftedFunctionName, lowerLevelCopyTrace.getTrace().liftedFunctionName, lowerLevelCopyTrace.getTrace().inline));
                    }
//                    if (lowerLevelCopyTrace.getAnnotation() != null) {
//                      currentTracedNode.setTrace(SNodeOperations.copyNode(lowerLevelCopyTrace.getAnnotation()));
//                    }
                    currentTracedNode.addOutputNode(lowerLevelCopyTrace.getNode());
                  }
                }
              }

              List<TracedNode> nodesWithCurrentAsInput = new ArrayList<TracedNode>();
              for (TracedNode lowerLevelTrace : lowerLevelTraces) {
                if (lowerLevelTrace.getInputNode() != null && lowerLevelTrace.getInputNode().equals(currentProxy)) {
                  nodesWithCurrentAsInput.add(lowerLevelTrace);
                }
              }

              for (TracedNode lowerLevelWithInput : nodesWithCurrentAsInput) {
                currentTracedNode.addOutputNode(lowerLevelWithInput.getNode());
                currentTracedNode.addReducedBy(lowerLevelWithInput.getCreatedBy());
              }

              for (SNodeProxy outputNode : currentTracedNode.getOutputNodes()) {
                TracedNode tracedOutputNode = TransformationTrace.getInstance().addTrackedNode(outputNode);
                if (tracedOutputNode.getInputNode() == null || tracedOutputNode.getInputNode().getNode() == null) {
                  tracedOutputNode.setInputNode(currentProxy);
                }
              }
            }
          }
        }
        if (TracingSettings.getInstance().isWriteTracingFile()) {
          transientPositionInfos.add(new TransientPositionInfo(transientPos, transientScopePos, transientUnitPos, currentModel));
        }
      }

      if (TracingSettings.getInstance().isWriteGeneratorFile()) {
        // the current model is the lower-level model for the next model
        nextLowerLevelModel = currentModel;
        lowerLevelTraces.clear();
        lowerLevelTraces.addAll(currentTraces);
        currentTraces.clear();
      }
    }


    return transientPositionInfos;
  }

  public void fillDebugInfoWithTransientModels(String fileName, Map<SNode, TraceablePositionInfo> positions, Map<SNode, ScopePositionInfo> scopePositions,
      Map<SNode, UnitPositionInfo> unitPositions, SModel originalInputModel) {
    if (positions == null && scopePositions == null && unitPositions == null) {
      return;
    }

    final SRepository originRepo = originalInputModel.getRepository();
    try {
      if (!positions.keySet().isEmpty()) {
        SNode keyNode = (SNode) positions.keySet().toArray()[0];
        List<TransientPositionInfo> transientModels = getTracedTransientModels(originalInputModel, keyNode, positions, scopePositions, unitPositions);
        if (TracingSettings.getInstance().isWriteTracingFile()) {
          for (TransientPositionInfo posInfo : transientModels) {
            Set<SNode> units = new HashSet<SNode>();
            for (SNode out : posInfo.positions.keySet()) {
              posInfo.positions.get(out).setNodeId(out.getNodeId().toString());
              posInfo.positions.get(out).setFileName(fileName);

              SNode topmostAncestor = out.getContainingRoot();
              units.add(topmostAncestor);
              myDebugInfo.addPosition(posInfo.positions.get(out), topmostAncestor);

            }
            for (SNode unit : units) {
              UnitPositionInfo unitPosition = new UnitPositionInfo();
              unitPosition.setUnitName(unit.getModel().getModelName() + "." + unit.getName());
              unitPosition.setFileName(fileName);
              unitPosition.setStartLine(1);
              unitPosition.setEndLine(100);
              unitPosition.setStartPosition(0);
              unitPosition.setEndPosition(10);
              unitPosition.setNodeId(unit.getNodeId().toString());
              myDebugInfo.addUnitPosition(unitPosition, unit);
            }
          }
        } else {
          fillDebugInfo(fileName, positions, scopePositions, unitPositions, originalInputModel);
        }
      }
      if (positions != null) {
        for (SNode out : positions.keySet()) {
          SNode input = getOriginalInputNodeForNearestParent(out, originRepo);
          if (input != null && SNodeUtil.isAccessible(input, originRepo)) {
            addTraceablePosition(out, originalInputModel, fileName, positions.get(out));
          }
        }
      }

      if (unitPositions != null) {
        for (SNode out : unitPositions.keySet()) {
          SNode input = getOriginalInputNodeForNearestParent(out, originRepo);
          addUnitPosition(input, originalInputModel, fileName, unitPositions.get(out));
        }
      }
    } catch (NullPointerException e) {
      fillDebugInfo(fileName, positions, scopePositions, unitPositions, originalInputModel);
    }



    /*if (positions != null) {
      for (SNode out : positions.keySet()) {
        addTraceablePosition(out, originalInputModel, fileName, positions.get(out));
      }
    }

    if (scopePositions != null) {
      for (SNode out : scopePositions.keySet()) {
        addScopePosition(out, originalInputModel, fileName, scopePositions.get(out));
      }
    }

    if (unitPositions != null) {
      for (SNode out : unitPositions.keySet()) {
        addUnitPosition(out, originalInputModel, fileName, unitPositions.get(out));
      }
    }*/
  }

  public void fillDebugInfo(String fileName, Map<SNode, TraceablePositionInfo> positions, Map<SNode, ScopePositionInfo> scopePositions,
      Map<SNode, UnitPositionInfo> unitPositions, SModel originalInputModel) {
    if (positions == null && scopePositions == null && unitPositions == null) {
      return;
    }
    final SRepository originRepo = originalInputModel.getRepository();
   /* if (positions != null) {
      for (SNode out : positions.keySet()) {
        addTraceablePosition(out, originalInputModel, fileName, positions.get(out));
        *//*SNode input = getOriginalInputNodeForNearestParent(out, originRepo);
        if (input != null && SNodeUtil.isAccessible(input, originRepo)) {
          addTraceablePosition(out, originalInputModel, fileName, positions.get(out));
        }*//*
      }
    }
    if (scopePositions != null) {
      for (SNode out : scopePositions.keySet()) {
        SNode input = getOriginalInputNodeForNearestParent(out, originRepo);
        if (input != null && SNodeUtil.isAccessible(input, originRepo)) {
          addScopePosition(input, originalInputModel, fileName, scopePositions.get(out));
        }
      }
    }
    if (unitPositions != null) {
      for (SNode out : unitPositions.keySet()) {
        SNode input = getOriginalInputNodeForNearestParent(out, originRepo);
        addUnitPosition(input, originalInputModel, fileName, unitPositions.get(out));
      }
    }*/
  }
}
