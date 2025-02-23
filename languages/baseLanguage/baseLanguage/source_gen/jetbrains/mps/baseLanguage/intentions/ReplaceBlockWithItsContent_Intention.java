package jetbrains.mps.baseLanguage.intentions;

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
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import java.util.Collections;
import jetbrains.mps.intentions.IntentionExecutableBase;
import java.util.List;
import jetbrains.mps.intentions.IntentionDescriptor;

public final class ReplaceBlockWithItsContent_Intention extends IntentionDescriptorBase implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;
  public ReplaceBlockWithItsContent_Intention() {
    super(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfc092b6b77L, "jetbrains.mps.baseLanguage.structure.BlockStatement"), IntentionType.NORMAL, false, new SNodePointer("r:00000000-0000-4000-0000-011c895902c6(jetbrains.mps.baseLanguage.intentions)", "1199892779474"));
  }
  @Override
  public String getPresentation() {
    return "ReplaceBlockWithItsContent";
  }
  @Override
  public boolean isApplicable(final SNode node, final EditorContext editorContext) {
    if (!(isApplicableToNode(node, editorContext))) {
      return false;
    }
    return true;
  }
  private boolean isApplicableToNode(final SNode node, final EditorContext editorContext) {
    boolean applicable = false;
    SContainmentLink containmentLink = node.getContainmentLink();
    if (containmentLink != null && SConceptOperations.isSuperConceptOf(SNodeOperations.asSConcept(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b215L, "jetbrains.mps.baseLanguage.structure.Statement")), SNodeOperations.asSConcept((SAbstractConcept) containmentLink.getTargetConcept()))) {
      int statementsCount = ListSequence.fromList(SLinkOperations.getChildren(SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfc092b6b77L, 0xfc092b6b78L, "statements")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b200L, 0xf8cc6bf961L, "statement"))).count();
      switch (statementsCount) {
        case 0:
          applicable = containmentLink.isOptional();
          break;
        case 1:
          applicable = true;
          break;
        default:
          // statementsCount > 1 
          applicable = containmentLink.isMultiple();
      }
    }
    return applicable;
  }
  @Override
  public boolean isSurroundWith() {
    return false;
  }
  public Collection<IntentionExecutable> instances(final SNode node, final EditorContext context) {
    if (myCachedExecutable == null) {
      myCachedExecutable = Collections.<IntentionExecutable>singletonList(new ReplaceBlockWithItsContent_Intention.IntentionImplementation());
    }
    return myCachedExecutable;
  }
  /*package*/ final class IntentionImplementation extends IntentionExecutableBase {
    public IntentionImplementation() {
    }
    @Override
    public String getDescription(final SNode node, final EditorContext editorContext) {
      return "Replace Block with Its Content";
    }
    @Override
    public void execute(final SNode node, final EditorContext editorContext) {
      List<SNode> statements = SLinkOperations.getChildren(SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfc092b6b77L, 0xfc092b6b78L, "statements")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b200L, 0xf8cc6bf961L, "statement"));
      for (SNode statement : ListSequence.fromList(statements)) {
        SNodeOperations.insertPrevSiblingChild(node, statement);
      }
      SNodeOperations.deleteNode(node);
    }
    @Override
    public IntentionDescriptor getDescriptor() {
      return ReplaceBlockWithItsContent_Intention.this;
    }
  }
}
