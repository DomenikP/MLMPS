package jetbrains.mps.baseLanguage.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractNonTypesystemRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.NonTypesystemRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import jetbrains.mps.typesystem.inference.TypeChecker;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.errors.messageTargets.MessageTarget;
import jetbrains.mps.errors.messageTargets.NodeMessageTarget;
import jetbrains.mps.errors.IErrorReporter;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import java.util.Set;
import jetbrains.mps.internal.collections.runtime.SetSequence;
import java.util.HashSet;
import jetbrains.mps.baseLanguage.behavior.StatementList_Behavior;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.smodel.SModelUtil_new;

public class check_ConceptFunctionReturns_NonTypesystemRule extends AbstractNonTypesystemRule_Runtime implements NonTypesystemRule_Runtime {
  public check_ConceptFunctionReturns_NonTypesystemRule() {
  }
  public void applyRule(final SNode func, final TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    SNode expectedRetType = BehaviorReflection.invokeVirtual((Class<SNode>) ((Class) Object.class), func, "virtual_getExpectedReturnType_1213877374441", new Object[]{});
    boolean noReturnExpected = ((expectedRetType == null) || TypeChecker.getInstance().getSubtypingManager().isSubtype(expectedRetType, _quotation_createNode_rs2pxi_b0a0a0b0b()));
    Iterable<SNode> returnStatements = RulesFunctions_BaseLanguage.collectReturnStatements(SLinkOperations.getTarget(func, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x108bbca0f48L, 0x108bbd29b4aL, "body")));
    if (noReturnExpected) {
      for (SNode returnStatement : Sequence.fromIterable(returnStatements)) {
        if ((SLinkOperations.getTarget(returnStatement, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc67c7feL, 0xf8cc6bf96cL, "expression")) != null)) {
          {
            MessageTarget errorTarget = new NodeMessageTarget();
            IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(returnStatement, "no return value expected", "r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)", "7243599812675828728", null, errorTarget);
          }
        }
      }
    } else {
      boolean somethingReturned = Sequence.fromIterable(returnStatements).isNotEmpty();
      SNode lastStatement = BehaviorReflection.invokeVirtual((Class<SNode>) ((Class) Object.class), func, "virtual_getLastStatement_1239354409446", new Object[]{});
      if (SNodeOperations.isInstanceOf(lastStatement, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b213L, "jetbrains.mps.baseLanguage.structure.ExpressionStatement"))) {
        somethingReturned = true;
      }
      if (!(somethingReturned)) {
        Set<SNode> throwables = SetSequence.fromSet(new HashSet<SNode>());
        StatementList_Behavior.call_collectUncaughtThrowables_5412515780383134474(BehaviorReflection.invokeVirtual((Class<SNode>) ((Class) Object.class), func, "virtual_getBody_1239354440022", new Object[]{}), throwables, true);
        if (SetSequence.fromSet(throwables).isEmpty()) {
          String whatExpected = ((expectedRetType == null) ? "some value" : "" + expectedRetType);
          {
            MessageTarget errorTarget = new NodeMessageTarget();
            IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(SLinkOperations.getTarget(func, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x108bbca0f48L, 0x108bbd29b4aL, "body")), "function should return " + whatExpected, "r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)", "7243599812675828620", null, errorTarget);
          }
        }
      }
    }
  }
  public SAbstractConcept getApplicableConcept() {
    return MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x108bbca0f48L, "jetbrains.mps.baseLanguage.structure.ConceptFunction");
  }
  public IsApplicableStatus isApplicableAndPattern(SNode argument) {
    return new IsApplicableStatus(argument.getConcept().isSubConceptOf(getApplicableConcept()), null);
  }
  public boolean overrides() {
    return false;
  }
  private static SNode _quotation_createNode_rs2pxi_b0a0a0b0b() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_1 = null;
    quotedNode_1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc6bf96dL, "jetbrains.mps.baseLanguage.structure.VoidType"), null, null, false);
    return quotedNode_1;
  }
}
