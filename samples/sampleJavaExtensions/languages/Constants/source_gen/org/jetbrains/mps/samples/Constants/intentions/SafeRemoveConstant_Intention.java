package org.jetbrains.mps.samples.Constants.intentions;

/*Generated by MPS */

import jetbrains.mps.intentions.IntentionDescriptorBase;
import jetbrains.mps.intentions.IntentionFactory;
import java.util.Collection;
import jetbrains.mps.intentions.IntentionExecutable;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.intentions.IntentionType;
import jetbrains.mps.smodel.SNodePointer;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import java.util.Collections;
import jetbrains.mps.intentions.IntentionExecutableBase;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.IVisitor;
import jetbrains.mps.intentions.IntentionDescriptor;

public final class SafeRemoveConstant_Intention extends IntentionDescriptorBase implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;
  public SafeRemoveConstant_Intention() {
    super(MetaAdapterFactory.getConcept(0xd40d465dded40d0L, 0x8d4c2c6d177f60d7L, 0x14be6cdec1861419L, "org.jetbrains.mps.samples.Constants.structure.Constant"), IntentionType.NORMAL, false, new SNodePointer("r:42e1ac37-7eb5-465e-8f7a-fef5bc98a099(org.jetbrains.mps.samples.Constants.intentions)", "3986994675334573802"));
  }
  @Override
  public String getPresentation() {
    return "SafeRemoveConstant";
  }
  @Override
  public boolean isApplicable(final SNode node, final EditorContext editorContext) {
    return true;
  }
  @Override
  public boolean isSurroundWith() {
    return false;
  }
  public Collection<IntentionExecutable> instances(final SNode node, final EditorContext context) {
    if (myCachedExecutable == null) {
      myCachedExecutable = Collections.<IntentionExecutable>singletonList(new SafeRemoveConstant_Intention.IntentionImplementation());
    }
    return myCachedExecutable;
  }
  /*package*/ final class IntentionImplementation extends IntentionExecutableBase {
    public IntentionImplementation() {
    }
    @Override
    public String getDescription(final SNode node, final EditorContext editorContext) {
      return "Safely Remove Constant";
    }
    @Override
    public void execute(final SNode node, final EditorContext editorContext) {
      Iterable<SNode> allReferences = ListSequence.fromList(SNodeOperations.getNodeDescendants(SNodeOperations.getNodeAncestor(node, MetaAdapterFactory.getConcept(0xd40d465dded40d0L, 0x8d4c2c6d177f60d7L, 0x14be6cdec1861417L, "org.jetbrains.mps.samples.Constants.structure.Constants"), false, false), MetaAdapterFactory.getConcept(0xd40d465dded40d0L, 0x8d4c2c6d177f60d7L, 0x37600150f5294665L, "org.jetbrains.mps.samples.Constants.structure.ConstantReference"), false, new SAbstractConcept[]{})).where(new IWhereFilter<SNode>() {
        public boolean accept(SNode it) {
          return SLinkOperations.getTarget(it, MetaAdapterFactory.getReferenceLink(0xd40d465dded40d0L, 0x8d4c2c6d177f60d7L, 0x37600150f5294665L, 0x37600150f5294666L, "original")) == node;
        }
      });
      Sequence.fromIterable(allReferences).visitAll(new IVisitor<SNode>() {
        public void visit(SNode it) {
          SNodeOperations.replaceWithAnother(it, SNodeOperations.copyNode(SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xd40d465dded40d0L, 0x8d4c2c6d177f60d7L, 0x14be6cdec1861419L, 0x1bc7b724b7dec5e1L, "initializer"))));
        }
      });
      SNodeOperations.deleteNode(node);
    }
    @Override
    public IntentionDescriptor getDescriptor() {
      return SafeRemoveConstant_Intention.this;
    }
  }
}
