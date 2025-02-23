package jetbrains.mps.baseLanguage.javadoc.constraints;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.base.BaseConstraintsDescriptor;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.runtime.CheckingNodeContext;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.smodel.SNodePointer;

public class DeprecatedBlockDocTag_Constraints extends BaseConstraintsDescriptor {
  public DeprecatedBlockDocTag_Constraints() {
    super(MetaIdFactory.conceptId(0xf280165065d5424eL, 0xbb1b463a8781b786L, 0x757ba20a4c87f964L));
  }
  @Override
  public boolean hasOwnCanBeChildMethod() {
    return true;
  }
  @Override
  public boolean canBeChild(@Nullable SNode node, SNode parentNode, SNode link, SNode childConcept, final IOperationContext operationContext, @Nullable final CheckingNodeContext checkingNodeContext) {
    boolean result = static_canBeAChild(node, parentNode, link, childConcept, operationContext);

    if (!(result) && checkingNodeContext != null) {
      checkingNodeContext.setBreakingNode(canBeChildBreakingPoint);
    }

    return result;
  }
  public static boolean static_canBeAChild(final SNode node, SNode parentNode, SNode link, SNode childConcept, final IOperationContext operationContext) {
    return ListSequence.fromList(SLinkOperations.getChildren(SNodeOperations.as(parentNode, MetaAdapterFactory.getConcept(0xf280165065d5424eL, 0xbb1b463a8781b786L, 0x4a3c146b7fae70d3L, "jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment")), MetaAdapterFactory.getContainmentLink(0xf280165065d5424eL, 0xbb1b463a8781b786L, 0x4a3c146b7fae70d3L, 0x4ab5c2019ddc99f3L, "tags"))).all(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return !(SNodeOperations.isInstanceOf(it, MetaAdapterFactory.getConcept(0xf280165065d5424eL, 0xbb1b463a8781b786L, 0x757ba20a4c87f964L, "jetbrains.mps.baseLanguage.javadoc.structure.DeprecatedBlockDocTag"))) || eq_dk63q1_a0a0a0a0a0a0a3(it, node);
      }
    });
  }
  private static boolean eq_dk63q1_a0a0a0a0a0a0a3(Object a, Object b) {
    return (a != null ? a.equals(b) : a == b);
  }
  private static SNodePointer canBeChildBreakingPoint = new SNodePointer("r:28bcf003-0004-46b6-9fe7-2093e7fb1368(jetbrains.mps.baseLanguage.javadoc.constraints)", "5383422241790837060");
}
