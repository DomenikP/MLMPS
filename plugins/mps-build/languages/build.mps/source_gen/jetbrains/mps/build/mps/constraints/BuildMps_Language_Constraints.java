package jetbrains.mps.build.mps.constraints;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.base.BaseConstraintsDescriptor;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.runtime.CheckingNodeContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.smodel.SNodePointer;

public class BuildMps_Language_Constraints extends BaseConstraintsDescriptor {
  public BuildMps_Language_Constraints() {
    super(MetaIdFactory.conceptId(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x2c446791464290f8L));
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
  public static boolean static_canBeAChild(SNode node, SNode parentNode, SNode link, SNode childConcept, final IOperationContext operationContext) {
    SNode pnode = (SNodeOperations.isInstanceOf(parentNode, MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x14d3fb6fb843ebddL, "jetbrains.mps.build.mps.structure.BuildMps_Group")) ? SNodeOperations.getParent(parentNode) : parentNode);
    return SNodeOperations.isInstanceOf(pnode, MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x4df58c6f18f84a13L, "jetbrains.mps.build.structure.BuildProject")) && ListSequence.fromList(SLinkOperations.getChildren(SNodeOperations.cast(pnode, MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x4df58c6f18f84a13L, "jetbrains.mps.build.structure.BuildProject")), MetaAdapterFactory.getContainmentLink(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x4df58c6f18f84a13L, 0x5c3f3e2c1ce9ac70L, "plugins"))).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return SNodeOperations.isInstanceOf(it, MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0xc0bde9fc71699d9L, "jetbrains.mps.build.mps.structure.BuildMPSPlugin"));
      }
    }) || pnode.getConcept().getQualifiedName().startsWith("jetbrains.mps.lang.generator");
  }
  private static SNodePointer canBeChildBreakingPoint = new SNodePointer("r:76dda237-5120-4688-b749-201ab5c5059d(jetbrains.mps.build.mps.constraints)", "7670275304420320818");
}
