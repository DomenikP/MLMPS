package jetbrains.mps.samples.multipleProjections.stateMachine.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.BaseStructureAspectDescriptor;
import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import jetbrains.mps.smodel.runtime.impl.ConceptDescriptorBuilder;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;
import java.util.Collection;
import java.util.Arrays;
import org.jetbrains.annotations.Nullable;

public class StructureAspectDescriptor extends BaseStructureAspectDescriptor {

  /*package*/ final ConceptDescriptor myConceptAbstractStateMachineElement = new ConceptDescriptorBuilder("jetbrains.mps.samples.multipleProjections.stateMachine.structure.AbstractStateMachineElement", MetaIdFactory.conceptId(0x530533eef7894c1eL, 0xba56de1bbf3afda7L, 0x6e3eaf7a54e76eeaL)).super_("jetbrains.mps.lang.core.structure.BaseConcept").super_(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL)).parents("jetbrains.mps.lang.core.structure.BaseConcept").parentIds(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL)).abstract_().create();
  /*package*/ final ConceptDescriptor myConceptEvent = new ConceptDescriptorBuilder("jetbrains.mps.samples.multipleProjections.stateMachine.structure.Event", MetaIdFactory.conceptId(0x530533eef7894c1eL, 0xba56de1bbf3afda7L, 0xa99ffe1c845743bL)).super_("jetbrains.mps.samples.multipleProjections.stateMachine.structure.AbstractStateMachineElement").super_(MetaIdFactory.conceptId(0x530533eef7894c1eL, 0xba56de1bbf3afda7L, 0x6e3eaf7a54e76eeaL)).parents("jetbrains.mps.samples.multipleProjections.stateMachine.structure.AbstractStateMachineElement", "jetbrains.mps.lang.core.structure.INamedConcept").parentIds(MetaIdFactory.conceptId(0x530533eef7894c1eL, 0xba56de1bbf3afda7L, 0x6e3eaf7a54e76eeaL), MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L)).create();
  /*package*/ final ConceptDescriptor myConceptEventReference = new ConceptDescriptorBuilder("jetbrains.mps.samples.multipleProjections.stateMachine.structure.EventReference", MetaIdFactory.conceptId(0x530533eef7894c1eL, 0xba56de1bbf3afda7L, 0xa99ffe1c8457446L)).super_("jetbrains.mps.lang.core.structure.BaseConcept").super_(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL)).parents("jetbrains.mps.lang.core.structure.BaseConcept").parentIds(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL)).referenceDescriptors(new ConceptDescriptorBuilder.Ref(763922957008729159L, "event", MetaIdFactory.conceptId(0x530533eef7894c1eL, 0xba56de1bbf3afda7L, 0xa99ffe1c845743bL), false)).references("event").create();
  /*package*/ final ConceptDescriptor myConceptState = new ConceptDescriptorBuilder("jetbrains.mps.samples.multipleProjections.stateMachine.structure.State", MetaIdFactory.conceptId(0x530533eef7894c1eL, 0xba56de1bbf3afda7L, 0xa99ffe1c8457442L)).super_("jetbrains.mps.samples.multipleProjections.stateMachine.structure.AbstractStateMachineElement").super_(MetaIdFactory.conceptId(0x530533eef7894c1eL, 0xba56de1bbf3afda7L, 0x6e3eaf7a54e76eeaL)).parents("jetbrains.mps.samples.multipleProjections.stateMachine.structure.AbstractStateMachineElement", "jetbrains.mps.lang.core.structure.INamedConcept").parentIds(MetaIdFactory.conceptId(0x530533eef7894c1eL, 0xba56de1bbf3afda7L, 0x6e3eaf7a54e76eeaL), MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L)).create();
  /*package*/ final ConceptDescriptor myConceptStateMachine = new ConceptDescriptorBuilder("jetbrains.mps.samples.multipleProjections.stateMachine.structure.StateMachine", MetaIdFactory.conceptId(0x530533eef7894c1eL, 0xba56de1bbf3afda7L, 0xa99ffe1c8456ba1L)).super_("jetbrains.mps.lang.core.structure.BaseConcept").super_(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL)).parents("jetbrains.mps.lang.core.structure.BaseConcept").parentIds(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL)).childDescriptors(new ConceptDescriptorBuilder.Link(763922957008726947L, "events", MetaIdFactory.conceptId(0x530533eef7894c1eL, 0xba56de1bbf3afda7L, 0xa99ffe1c845743bL), true, true, false), new ConceptDescriptorBuilder.Link(763922957008726948L, "transitions", MetaIdFactory.conceptId(0x530533eef7894c1eL, 0xba56de1bbf3afda7L, 0xa99ffe1c845743dL), true, true, false), new ConceptDescriptorBuilder.Link(763922957008726949L, "states", MetaIdFactory.conceptId(0x530533eef7894c1eL, 0xba56de1bbf3afda7L, 0xa99ffe1c8457442L), true, true, false)).children(new String[]{"events", "transitions", "states"}, new boolean[]{true, true, true}).create();
  /*package*/ final ConceptDescriptor myConceptStateReference = new ConceptDescriptorBuilder("jetbrains.mps.samples.multipleProjections.stateMachine.structure.StateReference", MetaIdFactory.conceptId(0x530533eef7894c1eL, 0xba56de1bbf3afda7L, 0xa99ffe1c8457444L)).super_("jetbrains.mps.lang.core.structure.BaseConcept").super_(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL)).parents("jetbrains.mps.lang.core.structure.BaseConcept").parentIds(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL)).referenceDescriptors(new ConceptDescriptorBuilder.Ref(763922957008729157L, "state", MetaIdFactory.conceptId(0x530533eef7894c1eL, 0xba56de1bbf3afda7L, 0xa99ffe1c8457442L), false)).references("state").create();
  /*package*/ final ConceptDescriptor myConceptTransition = new ConceptDescriptorBuilder("jetbrains.mps.samples.multipleProjections.stateMachine.structure.Transition", MetaIdFactory.conceptId(0x530533eef7894c1eL, 0xba56de1bbf3afda7L, 0xa99ffe1c845743dL)).super_("jetbrains.mps.samples.multipleProjections.stateMachine.structure.AbstractStateMachineElement").super_(MetaIdFactory.conceptId(0x530533eef7894c1eL, 0xba56de1bbf3afda7L, 0x6e3eaf7a54e76eeaL)).parents("jetbrains.mps.samples.multipleProjections.stateMachine.structure.AbstractStateMachineElement").parentIds(MetaIdFactory.conceptId(0x530533eef7894c1eL, 0xba56de1bbf3afda7L, 0x6e3eaf7a54e76eeaL)).propertyDescriptors(new ConceptDescriptorBuilder.Prop(763922957008729153L, "condition")).properties("condition").childDescriptors(new ConceptDescriptorBuilder.Link(763922957008729150L, "fromState", MetaIdFactory.conceptId(0x530533eef7894c1eL, 0xba56de1bbf3afda7L, 0xa99ffe1c8457444L), false, false, false), new ConceptDescriptorBuilder.Link(763922957008729152L, "toState", MetaIdFactory.conceptId(0x530533eef7894c1eL, 0xba56de1bbf3afda7L, 0xa99ffe1c8457444L), false, false, false), new ConceptDescriptorBuilder.Link(763922957008729151L, "trigger", MetaIdFactory.conceptId(0x530533eef7894c1eL, 0xba56de1bbf3afda7L, 0xa99ffe1c8457446L), false, false, false)).children(new String[]{"fromState", "toState", "trigger"}, new boolean[]{false, false, false}).create();

  @Override
  public Collection<ConceptDescriptor> getDescriptors() {
    return Arrays.asList(myConceptAbstractStateMachineElement, myConceptEvent, myConceptEventReference, myConceptState, myConceptStateMachine, myConceptStateReference, myConceptTransition);
  }

  @Override
  @Nullable
  public ConceptDescriptor getDescriptor(String conceptFqName) {
    switch (Arrays.binarySearch(stringSwitchCases_1htk8d_a0a0l, conceptFqName)) {
      case 0:
        return myConceptAbstractStateMachineElement;
      case 1:
        return myConceptEvent;
      case 2:
        return myConceptEventReference;
      case 3:
        return myConceptState;
      case 4:
        return myConceptStateMachine;
      case 5:
        return myConceptStateReference;
      case 6:
        return myConceptTransition;
      default:
        return null;
    }
  }
  private static String[] stringSwitchCases_1htk8d_a0a0l = new String[]{"jetbrains.mps.samples.multipleProjections.stateMachine.structure.AbstractStateMachineElement", "jetbrains.mps.samples.multipleProjections.stateMachine.structure.Event", "jetbrains.mps.samples.multipleProjections.stateMachine.structure.EventReference", "jetbrains.mps.samples.multipleProjections.stateMachine.structure.State", "jetbrains.mps.samples.multipleProjections.stateMachine.structure.StateMachine", "jetbrains.mps.samples.multipleProjections.stateMachine.structure.StateReference", "jetbrains.mps.samples.multipleProjections.stateMachine.structure.Transition"};
}
