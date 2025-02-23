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
package jetbrains.mps.ide.devkit.generator;

import jetbrains.mps.generator.GenerationTrace;
import jetbrains.mps.generator.IGenerationSettings.GenTraceSettings;
import jetbrains.mps.ide.devkit.generator.TraceNodeUI.Kind;
import jetbrains.mps.ide.generator.GenerationSettings;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.SModelStereotype;
import jetbrains.mps.util.Pair;
import jetbrains.mps.util.SNodeOperations;
import jetbrains.mps.util.containers.MultiMap;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Set;

/**
 * Visitor to compose trace tree. Either resort to
 * {@link #buildBackTrace(jetbrains.mps.generator.GenerationTrace, org.jetbrains.mps.openapi.model.SNode)} and
 * {@link #buildTrace(jetbrains.mps.generator.GenerationTrace, org.jetbrains.mps.openapi.model.SNode)} default builders, or use directly:
 * <pre>
 *   GenerationTrace trace = ...;
 *   TraceBuilderUI builder = new TraceBulderUI();
 *   builder.excludeEmptySteps(careAboutStepsWithoutChanges).furtherConfig(...);
 *   trace.walkForward(builder);
 *   myViewComponent.show(builder.getResult());
 * </pre>
 *
 * Default builders resort to values from {@link jetbrains.mps.generator.IGenerationSettings}.
 *
 * Note, the builder assumes current thread holds read lock.
 * @author Artem Tikhomirov
 */
public class TraceBuilderUI implements GenerationTrace.Visitor {
  private Collection<TraceNodeUI> myResult;
  private TraceNodeUI myStepNode;
  private StepChanges myStepChange;
  private boolean myExcludeEmptySteps = true;
  private boolean myCompactTemplates = false;
  private boolean myGroupByStep = true;
  private enum NodeGrouping { Change, Input, Output };
  private NodeGrouping myChangeGrouping = NodeGrouping.Change;

  public TraceBuilderUI() {
    myResult = new ArrayList<TraceNodeUI>();
  }

  public TraceBuilderUI excludeEmptySteps(boolean excludeEmptySteps) {
    myExcludeEmptySteps = excludeEmptySteps;
    return this;
  }

  public TraceBuilderUI compactTemplates(boolean compactTemplates) {
    myCompactTemplates = compactTemplates;
    return this;
  }

  public TraceBuilderUI groupByStep(boolean groupByStep) {
    myGroupByStep = groupByStep;
    return this;
  }
  public TraceBuilderUI groupByInputNode() {
    myChangeGrouping = NodeGrouping.Input;
    return this;
  }
  public TraceBuilderUI groupByOutputNode() {
    myChangeGrouping = NodeGrouping.Output;
    return this;
  }


  /*package*/ Collection<TraceNodeUI> getResult() {
    closeStepNode();
    ArrayList<TraceNodeUI> rv = new ArrayList<TraceNodeUI>(myResult.size());
    if (myExcludeEmptySteps) {
      for (TraceNodeUI n : myResult) {
        if (n.hasChildren()) {
          rv.add(n);
        }
      }
      return rv;
    } else {
      return myResult;
    }
  }

  @Override
  public void beginStep(@NotNull SModelReference input, @NotNull SModelReference output) {
    final String modelName1 = input.getModelName();
    final String modelName2 = output.getModelName();
    final String from;
    final String to;
    if (SModelStereotype.withoutStereotype(modelName1).equals(SModelStereotype.withoutStereotype(modelName2))) {
      from = SModelStereotype.getStereotype(modelName1);
      to = SModelStereotype.getStereotype(modelName2);
    } else {
      from = modelName1;
      to = modelName2;
    }
    myStepNode = new TraceNodeUI(String.format("Phase %s->%s", from, to), Icons.COLLECTION, null);
    myStepChange = new StepChanges();
  }

  @Override
  public void endStep(@NotNull SModelReference input, @NotNull SModelReference output) {
    closeStepNode();
  }

  @Override
  public void change(@NotNull SNodeReference input, @NotNull SNodeReference output, @NotNull SNodeReference template) {
    myStepChange.record(input, output, template);
  }

  private void closeStepNode() {
    if (myStepNode == null) {
      return;
    }
    switch (myChangeGrouping) {
      case Change:
        addIndividualChanges();
        break;
      case Input:
        addChangesByInput();
        break;
      case Output:
        addChangesByOutput();
        break;
    }
    if (myGroupByStep) {
      myResult.add(myStepNode);
    } else {
      for (TraceNodeUI n : myStepNode.getChildren()) {
        myResult.add(n);
      }
    }
    myStepNode = null;
  }

  private void addIndividualChanges() {
    for (Pair<SNodeReference,SNodeReference> p : myStepChange.individualChanges()) {
      TraceNodeUI in = new TraceNodeUI(TraceNodeUI.Kind.INPUT, p.o1);
      TraceNodeUI out = new TraceNodeUI(TraceNodeUI.Kind.OUTPUT, p.o2);
      for (TraceNodeUI templates : compactTemplates(myStepChange.templates(p))) {
        in.addChild(templates);
      }
      in.addChild(out);
      myStepNode.addChild(in);
    }
  }

  private void addChangesByInput() {
    for (SNodeReference in : myStepChange.inputs()) {
      TraceNodeUI inNode = new TraceNodeUI(Kind.INPUT, in);
      for (SNodeReference out : myStepChange.outputForInput(in)) {
        inNode.addChild(new TraceNodeUI(Kind.OUTPUT, out));
      }
      for (TraceNodeUI templateNode : compactTemplates(myStepChange.templatesForInput(in))) {
        inNode.addChild(templateNode);
      }
      myStepNode.addChild(inNode);
    }
  }

  private void addChangesByOutput() {
    for (SNodeReference out : myStepChange.outputs()) {
      TraceNodeUI outNode = new TraceNodeUI(Kind.OUTPUT, out);
      for (SNodeReference in : myStepChange.inputsForOutput(out)) {
        outNode.addChild(new TraceNodeUI(Kind.INPUT, in));
      }
      for (TraceNodeUI templateNode : compactTemplates(myStepChange.templatesForOutput(out))) {
        outNode.addChild(templateNode);
      }
      myStepNode.addChild(outNode);
    }
  }

  private Collection<TraceNodeUI> compactTemplates(Collection<SNodeReference> templateNodes) {
    ArrayList<TraceNodeUI> rv = new ArrayList<TraceNodeUI>();
    if (!myCompactTemplates) {
      for (SNodeReference r : templateNodes) {
        rv.add(new TraceNodeUI(Kind.TEMPLATE, r));
      }
      return rv;
    }
    // compactByNavigateTarget();
    LinkedHashSet<SNode> mostSpecificTemplates = new LinkedHashSet<SNode>();
L1:   for (SNodeReference t : templateNodes) {
      SNode templateNode = t == null ? null : t.resolve(MPSModuleRepository.getInstance());
      if (templateNode == null) {
        rv.add(new TraceNodeUI(Kind.TEMPLATE, t));
        continue;
      }
      for (SNode tn : new ArrayList<SNode>(mostSpecificTemplates)) {
        if (tn.getContainingRoot() == templateNode.getContainingRoot()) {
          // within same hierarchy
          if (SNodeOperations.isAncestor(tn, templateNode)) {
            // templateNode is more specific template than the one we already got in mostSpecificTemplates
            mostSpecificTemplates.remove(tn);
            mostSpecificTemplates.add(templateNode);
            continue L1;
          } else if (SNodeOperations.isAncestor(templateNode, tn)) {
            // templateNode is enclosing template, forget it
            continue L1;
          }// else unrelated, two independent descendants, continue looking through most specific templates found.
        }
      }
      // no related templates found, record present one
      mostSpecificTemplates.add(templateNode);
    }
    for (SNode n : mostSpecificTemplates) {
      rv.add(new TraceNodeUI(Kind.TEMPLATE, n.getReference()));
    }
    return rv;
  }

  /**
   * Handy default forward trace composer.
   */
  public static Collection<TraceNodeUI> buildTrace(@NotNull GenerationTrace trace, @NotNull SNode node) {
    final TraceBuilderUI v = defaults();
    if (!GenerationSettings.getInstance().getTraceSettings().isGroupByChange()) {
      v.groupByInputNode();
    }
    trace.walkForward(node, v);
    return v.getResult();
  }

  public static Collection<TraceNodeUI> buildBackTrace(@NotNull GenerationTrace trace, @NotNull final SNode node) {
    final TraceBuilderUI v = defaults();
    if (!GenerationSettings.getInstance().getTraceSettings().isGroupByChange()) {
      v.groupByOutputNode();
    }
    trace.walkBackward(node, v);
    return v.getResult();
  }
  public static TraceBuilderUI defaults() {
    GenTraceSettings s = GenerationSettings.getInstance().getTraceSettings();
    return new TraceBuilderUI().excludeEmptySteps(!s.isShowEmptySteps()).compactTemplates(s.isCompactTemplates()).groupByStep(s.isGroupByStep());
  }

  private static class StepChanges {
    private final MultiMap<Pair<SNodeReference, SNodeReference>, SNodeReference> myGroupedChanges;
    private final Set<SNodeReference> myInputs, myOutputs;

    public StepChanges() {
      myGroupedChanges = new MultiMap<Pair<SNodeReference, SNodeReference>, SNodeReference>();
      myInputs = new LinkedHashSet<SNodeReference>();
      myOutputs = new LinkedHashSet<SNodeReference>();
    }

    public void record(@NotNull SNodeReference input, @NotNull SNodeReference output, @NotNull SNodeReference template) {
      myGroupedChanges.putValue(new Pair<SNodeReference, SNodeReference>(input, output), template);
      myInputs.add(input);
      myOutputs.add(output);
    }

    public Collection<Pair<SNodeReference, SNodeReference>> individualChanges() {
      return myGroupedChanges.keySet();
    }

    public Collection<SNodeReference> templates(Pair<SNodeReference, SNodeReference> change) {
      return myGroupedChanges.get(change);
    }

    public Collection<SNodeReference> inputs() {
      return myInputs;
    }

    public Collection<SNodeReference> outputs() {
      return myOutputs;
    }

    public Collection<SNodeReference> outputForInput(SNodeReference in) {
      assert myInputs.contains(in);
      LinkedHashSet<SNodeReference> rv = new LinkedHashSet<SNodeReference>();
      for (Pair<SNodeReference, SNodeReference> change : filter(in, null)) {
        rv.add(change.o2);
      }
      assert !rv.isEmpty();
      return rv;
    }

    public Collection<SNodeReference> inputsForOutput(SNodeReference out) {
      assert myOutputs.contains(out);
      LinkedHashSet<SNodeReference> rv = new LinkedHashSet<SNodeReference>();
      for (Pair<SNodeReference, SNodeReference> change : filter(null, out)) {
        rv.add(change.o1);
      }
      assert !rv.isEmpty();
      return rv;
    }

    public Collection<SNodeReference> templatesForInput(SNodeReference in) {
      assert myInputs.contains(in);
      return templates(filter(in, null));
    }

    public Collection<SNodeReference> templatesForOutput(SNodeReference out) {
      assert myOutputs.contains(out);
      return templates(filter(null, out));
    }
    private Collection<SNodeReference> templates(Collection<Pair<SNodeReference, SNodeReference>> filter) {
      LinkedHashSet<SNodeReference> rv = new LinkedHashSet<SNodeReference>();
      for (Pair<SNodeReference, SNodeReference> change : filter) {
        rv.addAll(myGroupedChanges.get(change));
      }
      assert filter.isEmpty() || !rv.isEmpty();
      return rv;
    }

    // if both in and out set, treated as OR
    private Collection<Pair<SNodeReference, SNodeReference>> filter(SNodeReference in, SNodeReference out) {
      ArrayList<Pair<SNodeReference, SNodeReference>> rv = new ArrayList<Pair<SNodeReference, SNodeReference>>();
      for (Pair<SNodeReference, SNodeReference> change : myGroupedChanges.keySet()) {
        boolean match1 = in != null && change.o1.equals(in);
        boolean match2 = out != null && change.o2.equals(out);
        if (match1 || match2) {
          rv.add(change);
        }
      }
      return rv;
    }
  }
}
