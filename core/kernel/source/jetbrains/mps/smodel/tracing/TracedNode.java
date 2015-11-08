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

import jetbrains.mps.smodel.tracing.nodes.SNodeProxy;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by domenik on 09.10.15 KW:41.
 */
public class TracedNode {

  private SNodeProxy inputNode;
  private Set<SNodeProxy> outputNodes = new HashSet<SNodeProxy>();
  private SNodeProxy createdBy;
  private Set<SNodeProxy> reducedBy = new HashSet<SNodeProxy>();
  private SNodeProxy node;
  private TextTrace trace;
  private SNode tracedAnnotation;

  public TracedNode(SNodeProxy node) {
    this.node = node;
  }

  public SNodeProxy getNode() {
    return this.node;
  }

  public void setNode(SNodeProxy node) {
    if(this.node != null) {
      throw new RuntimeException("node already set");
    }
    this.node = node;
  }

  public Collection<SNodeProxy> getReducedBy() {
    return this.reducedBy;
  }

  public void addReducedBy(SNodeProxy trafo) {
    if(trafo == null) return;
    for(SNodeProxy aTrafo : reducedBy) {
      if(aTrafo.equals(trafo)) {
        return;
      }
    }
    this.reducedBy.add(trafo);
  }

  public SNodeProxy getCreatedBy() {
    return this.createdBy;
  }

  public void setCreatedBy(SNodeProxy trafo) {
    if(this.createdBy != null) {
      throw new RuntimeException("createdBy already set");
    }
    this.createdBy = trafo;
  }

  public SNodeProxy getInputNode() {
    return this.inputNode;
  }

  public void setInputNode(SNodeProxy node) {
    if(this.inputNode != null) {
      throw new RuntimeException("inputNode already set");
    }
    this.inputNode = node;
  }

  public Collection<SNodeProxy> getOutputNodes() {
    return this.outputNodes;
  }

  public void addOutputNode(SNodeProxy aNode) {
    for(SNodeProxy outputNode : outputNodes) {
      if(outputNode.equals(aNode)) {
        return;
      }
    }
    this.outputNodes.add(aNode);
  }

  @Override
  public int hashCode() {
    return getNode().hashCode();
  }

  @Override
  public boolean equals(Object obj) {
    return obj instanceof  TracedNode && ((TracedNode)obj).getNode().equals(this.getNode());
  }

  public void setTrace(TextTrace trace) {
    this.trace = trace;
  }

  public TextTrace getTrace() {
    return this.trace;
  }

  public void setTrace(SNode tracedAnnotation) {
    this.tracedAnnotation = tracedAnnotation;
  }

  public SNode getAnnotation() {
    return this.tracedAnnotation;
  }
}
