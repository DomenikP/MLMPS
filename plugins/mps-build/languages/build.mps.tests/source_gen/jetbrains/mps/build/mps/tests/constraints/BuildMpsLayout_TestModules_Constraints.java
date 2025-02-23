package jetbrains.mps.build.mps.tests.constraints;

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
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.build.behavior.BuildProject_Behavior;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.SNodePointer;

public class BuildMpsLayout_TestModules_Constraints extends BaseConstraintsDescriptor {
  public BuildMpsLayout_TestModules_Constraints() {
    super(MetaIdFactory.conceptId(0x3600cb0a44dd4a5bL, 0x996822924406419eL, 0x3f496e80bd8ef36dL));
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
    if (parentNode.getConcept().getQualifiedName().startsWith("jetbrains.mps.lang.generator")) {
      // anything in generator 
      return true;
    }
    if (SNodeOperations.isInstanceOf(parentNode, MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x4df58c6f18f84a13L, "jetbrains.mps.build.structure.BuildProject")) && ListSequence.fromList(SLinkOperations.getChildren(SNodeOperations.cast(parentNode, MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x4df58c6f18f84a13L, "jetbrains.mps.build.structure.BuildProject")), MetaAdapterFactory.getContainmentLink(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x4df58c6f18f84a13L, 0x5c3f3e2c1ce9ac70L, "plugins"))).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return SNodeOperations.isInstanceOf(it, MetaAdapterFactory.getConcept(0x3600cb0a44dd4a5bL, 0x996822924406419eL, 0x37967cbe67d9eca4L, "jetbrains.mps.build.mps.tests.structure.BuildModuleTestsPlugin"));
      }
    })) {
      SNode project = SNodeOperations.getNodeAncestor(parentNode, MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x4df58c6f18f84a13L, "jetbrains.mps.build.structure.BuildProject"), true, false);
      if (project == null) {
        return false;
      }
      return Sequence.fromIterable(BuildProject_Behavior.call_getVisibleProjects_1224588814561807665(project, false)).findFirst(new IWhereFilter<SNode>() {
        public boolean accept(SNode it) {
          return SPropertyOperations.getString(it, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")).equals("mps");
        }
      }) != null;
    }
    return false;
  }
  private static SNodePointer canBeChildBreakingPoint = new SNodePointer("r:09cf4c23-1b4d-4723-ac0b-a240d2fdcc67(jetbrains.mps.build.mps.tests.constraints)", "3655813416643587820");
}
