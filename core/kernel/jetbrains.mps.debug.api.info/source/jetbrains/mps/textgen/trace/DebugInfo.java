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

import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;
import jetbrains.mps.internal.collections.runtime.ISelector;
import jetbrains.mps.internal.collections.runtime.ITranslator2;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.SetSequence;
import jetbrains.mps.util.EqualUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeId;
import org.jetbrains.mps.openapi.model.SNodeReference;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class DebugInfo {
  private final Map<SNodeReference, DebugInfoRoot> myRoots = new HashMap<SNodeReference, DebugInfoRoot>();

  public DebugInfo() {
  }

  private DebugInfoRoot getOrCreateDebugInfoRoot(SNode rootNode) {
    SNodeReference ref = getRef(rootNode);
    DebugInfoRoot infoRoot = myRoots.get(ref);
    if (infoRoot == null) {
      infoRoot = new DebugInfoRoot(ref);
      myRoots.put(ref, infoRoot);
    }
    return infoRoot;
  }

  private SNodeReference getRef(SNode node) {
    return (node == null ? null : node.getReference());
  }

  /*package*/ synchronized void addPosition(TraceablePositionInfo position, SNode containingRoot) {
    getOrCreateDebugInfoRoot(containingRoot).addPosition(position);
  }

  /*package*/ synchronized void addScopePosition(ScopePositionInfo position, SNode containingRoot) {
    getOrCreateDebugInfoRoot(containingRoot).addScopePosition(position);
  }

  /*package*/ synchronized void addUnitPosition(UnitPositionInfo unitPosition, SNode containingRoot) {
    getOrCreateDebugInfoRoot(containingRoot).addUnitPosition(unitPosition);
  }

  public DebugInfoRoot getRootInfo(@Nullable SNode root) {
    return myRoots.get(getRef(root));
  }

  public DebugInfoRoot getRootInfo(@Nullable SNodeReference root) {
    return myRoots.get(root);
  }

  public void putRootInfo(DebugInfoRoot root) {
    myRoots.put(root.getNodeRef(), root);
  }

  @Nullable
  public TraceablePositionInfo getPositionForNode(final SNode node) {
    // used in mbeddr 
    DebugInfoRoot root = myRoots.get(getRef(node.getContainingRoot()));
    if (root == null) {
      return null;
    }
    for (TraceablePositionInfo pi : root.getPositions()) {
      if (EqualUtil.equals(pi.getNodeId(), node.getNodeId().toString())) {
        return pi;
      }
    }
    return null;
  }

  public Set<TraceablePositionInfo> getPositions(SNode rootNode) {
    // for mbeddr 
    assert (rootNode.getParent() == null);
    DebugInfoRoot root = MapSequence.fromMap(myRoots).get(getRef(rootNode));
    if (root == null) {
      return SetSequence.fromSet(new HashSet<TraceablePositionInfo>());
    }
    return root.getPositions();
  }

  @NotNull
  public List<UnitPositionInfo> getUnitsForNode(SNode node) {
    final SNodeId id = node.getNodeId();
    DebugInfoRoot debugInfoRoot = myRoots.get(getRef(node.getContainingRoot()));
    if (debugInfoRoot != null) {
      return SetSequence.fromSet(debugInfoRoot.getUnitPositions()).sort(new ISelector<UnitPositionInfo, Integer>() {
        public Integer select(UnitPositionInfo position) {
          return position.getStartLine();
        }
      }, false).where(new IWhereFilter<UnitPositionInfo>() {
        public boolean accept(UnitPositionInfo it) {
          return eq_exfyrk_a0a0a0a0a0a0a2a51(it.getNodeId(), id.toString());
        }
      }).toListSequence();
    }
    return Collections.emptyList();
  }

  @NotNull
  public <T extends PositionInfo> List<T> getInfoForPosition(final String file, int line, final _FunctionTypes._return_P1_E0<? extends Set<T>, ? super DebugInfoRoot> getAllPositionsForRoot) {
    List<T> resultList = ListSequence.fromList(new ArrayList<T>());
    for (T element : Sequence.fromIterable(MapSequence.fromMap(myRoots).values()).where(new IWhereFilter<DebugInfoRoot>() {
      public boolean accept(DebugInfoRoot it) {
        return SetSequence.fromSet(it.getFileNames()).contains(file);
      }
    }).translate(new ITranslator2<DebugInfoRoot, T>() {
      public Iterable<T> translate(DebugInfoRoot it) {
        return getAllPositionsForRoot.invoke(it);
      }
    })) {
      if (element.contains(file, line)) {
        ListSequence.fromList(resultList).addElement(element);
      }
    }
    return ListSequence.fromList(resultList).sort(new ISelector<T, Integer>() {
      public Integer select(T it) {
        return it.getStartLine();
      }
    }, false).toListSequence();
  }

  @NotNull
  public <T extends PositionInfo> Map<DebugInfoRoot, List<T>> getRootToInfoForPosition(final String file, int line, _FunctionTypes._return_P1_E0<? extends Set<T>, ? super DebugInfoRoot> getAllPositionsForRoot) {
    Map<DebugInfoRoot, List<T>> result = MapSequence.fromMap(new LinkedHashMap<DebugInfoRoot, List<T>>(16, (float) 0.75, false));
    for (DebugInfoRoot root : Sequence.fromIterable(MapSequence.fromMap(myRoots).values()).where(new IWhereFilter<DebugInfoRoot>() {
      public boolean accept(DebugInfoRoot it) {
        return SetSequence.fromSet(it.getFileNames()).contains(file);
      }
    })) {
      List<T> list = MapSequence.fromMap(result).get(root);
      for (T element : SetSequence.fromSet(getAllPositionsForRoot.invoke(root))) {
        if (element.contains(file, line)) {
          if (list == null) {
            list = ListSequence.fromList(new ArrayList<T>());
            MapSequence.fromMap(result).put(root, list);
          }
          ListSequence.fromList(list).addElement(element);
        }
      }
      if (list != null) {
        MapSequence.fromMap(result).put(root, ListSequence.fromList(list).sort(new ISelector<T, Integer>() {
          public Integer select(T it) {
            return it.getStartLine();
          }
        }, false).toListSequence());
      }
    }
    return result;
  }

  @NotNull
  public List<TraceablePositionInfo> getTraceableInfoForPosition(String file, int line) {
    return getInfoForPosition(file, line, new _FunctionTypes._return_P1_E0<Set<TraceablePositionInfo>, DebugInfoRoot>() {
      public Set<TraceablePositionInfo> invoke(DebugInfoRoot root) {
        return root.getPositions();
      }
    });
  }

  @NotNull
  public List<ScopePositionInfo> getScopeInfoForPosition(String file, int line) {
    return getInfoForPosition(file, line, new _FunctionTypes._return_P1_E0<Set<ScopePositionInfo>, DebugInfoRoot>() {
      public Set<ScopePositionInfo> invoke(DebugInfoRoot root) {
        return root.getScopePositions();
      }
    });
  }

  @NotNull
  public List<UnitPositionInfo> getUnitInfoForPosition(String file, int line) {
    return getInfoForPosition(file, line, new _FunctionTypes._return_P1_E0<Set<UnitPositionInfo>, DebugInfoRoot>() {
      public Set<UnitPositionInfo> invoke(DebugInfoRoot root) {
        return root.getUnitPositions();
      }
    });
  }

  public Iterable<DebugInfoRoot> getRoots() {
    return MapSequence.fromMap(myRoots).values();
  }

  private static boolean eq_exfyrk_a0a0a0a0a0a0a2a51(Object a, Object b) {
    return (a != null ? a.equals(b) : a == b);
  }
}
