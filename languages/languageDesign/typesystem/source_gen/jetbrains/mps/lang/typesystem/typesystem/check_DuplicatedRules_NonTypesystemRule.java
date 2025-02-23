package jetbrains.mps.lang.typesystem.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractNonTypesystemRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.NonTypesystemRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SModelOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.errors.messageTargets.MessageTarget;
import jetbrains.mps.errors.messageTargets.NodeMessageTarget;
import jetbrains.mps.errors.messageTargets.PropertyMessageTarget;
import jetbrains.mps.errors.IErrorReporter;
import org.jetbrains.mps.openapi.language.SAbstractConcept;

public class check_DuplicatedRules_NonTypesystemRule extends AbstractNonTypesystemRule_Runtime implements NonTypesystemRule_Runtime {
  public check_DuplicatedRules_NonTypesystemRule() {
  }
  public void applyRule(final SNode abstractRule, final TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    final String name = SPropertyOperations.getString(abstractRule, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
    if ((name == null || name.length() == 0)) {
      return;
    }
    if (ListSequence.fromList(SModelOperations.roots(SNodeOperations.getModel(abstractRule), MetaAdapterFactory.getConcept(0x7a5dda6291404668L, 0xab76d5ed1746f2b2L, 0x1117e7b5c73L, "jetbrains.mps.lang.typesystem.structure.AbstractRule"))).any(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return it != abstractRule && name.equalsIgnoreCase(SPropertyOperations.getString(it, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")));
      }
    })) {
      {
        MessageTarget errorTarget = new NodeMessageTarget();
        errorTarget = new PropertyMessageTarget("name");
        IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(abstractRule, "Duplicated name of the typesystem rule", "r:00000000-0000-4000-0000-011c895902b1(jetbrains.mps.lang.typesystem.typesystem)", "8433157989202147284", null, errorTarget);
      }
    }
  }
  public SAbstractConcept getApplicableConcept() {
    return MetaAdapterFactory.getConcept(0x7a5dda6291404668L, 0xab76d5ed1746f2b2L, 0x1117e7b5c73L, "jetbrains.mps.lang.typesystem.structure.AbstractRule");
  }
  public IsApplicableStatus isApplicableAndPattern(SNode argument) {
    return new IsApplicableStatus(argument.getConcept().isSubConceptOf(getApplicableConcept()), null);
  }
  public boolean overrides() {
    return false;
  }
}
