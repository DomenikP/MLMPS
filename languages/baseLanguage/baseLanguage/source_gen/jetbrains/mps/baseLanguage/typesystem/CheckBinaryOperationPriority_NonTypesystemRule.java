package jetbrains.mps.baseLanguage.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractNonTypesystemRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.NonTypesystemRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.baseLanguage.behavior.ParenthesisUtil;
import jetbrains.mps.errors.messageTargets.MessageTarget;
import jetbrains.mps.errors.messageTargets.NodeMessageTarget;
import jetbrains.mps.errors.IErrorReporter;
import jetbrains.mps.errors.BaseQuickFixProvider;
import org.jetbrains.mps.openapi.language.SAbstractConcept;

public class CheckBinaryOperationPriority_NonTypesystemRule extends AbstractNonTypesystemRule_Runtime implements NonTypesystemRule_Runtime {
  public CheckBinaryOperationPriority_NonTypesystemRule() {
  }
  public void applyRule(final SNode binaryOperation, final TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    if (SNodeOperations.getParent(binaryOperation) != null && SNodeOperations.isInstanceOf(SNodeOperations.getParent(binaryOperation), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfbdeb6fecfL, "jetbrains.mps.baseLanguage.structure.BinaryOperation"))) {
      SNode parent = SNodeOperations.cast(SNodeOperations.getParent(binaryOperation), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfbdeb6fecfL, "jetbrains.mps.baseLanguage.structure.BinaryOperation"));
      boolean isRigth = false;
      if (SLinkOperations.getTarget(parent, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfbdeb6fecfL, 0xfbdeb7a11bL, "rightExpression")) == binaryOperation) {
        isRigth = true;
      } else if (SLinkOperations.getTarget(parent, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfbdeb6fecfL, 0xfbdeb7a11cL, "leftExpression")) == binaryOperation) {
        isRigth = false;
      }
      if (ParenthesisUtil.isBadPriority(binaryOperation, parent, isRigth)) {
        {
          MessageTarget errorTarget = new NodeMessageTarget();
          IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(binaryOperation, "Bad priority of operations", "r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)", "6778605776626937239", null, errorTarget);
          {
            BaseQuickFixProvider intentionProvider = new BaseQuickFixProvider("jetbrains.mps.baseLanguage.typesystem.BinaryExpressionPriority_QuickFix", true);
            intentionProvider.putArgument("child", binaryOperation);
            intentionProvider.putArgument("parent", parent);
            _reporter_2309309498.addIntentionProvider(intentionProvider);
          }
        }
      }
    }
  }
  public SAbstractConcept getApplicableConcept() {
    return MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfbdeb6fecfL, "jetbrains.mps.baseLanguage.structure.BinaryOperation");
  }
  public IsApplicableStatus isApplicableAndPattern(SNode argument) {
    return new IsApplicableStatus(argument.getConcept().isSubConceptOf(getApplicableConcept()), null);
  }
  public boolean overrides() {
    return false;
  }
}
