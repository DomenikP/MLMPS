package jetbrains.mps.baseLanguage.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractNonTypesystemRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.NonTypesystemRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.errors.messageTargets.MessageTarget;
import jetbrains.mps.errors.messageTargets.NodeMessageTarget;
import jetbrains.mps.errors.IErrorReporter;
import jetbrains.mps.errors.BaseQuickFixProvider;
import org.jetbrains.mps.openapi.language.SAbstractConcept;

public class check_InstanceMethodDeclarationDecreasesVisibility_NonTypesystemRule extends AbstractNonTypesystemRule_Runtime implements NonTypesystemRule_Runtime {
  public check_InstanceMethodDeclarationDecreasesVisibility_NonTypesystemRule() {
  }
  public void applyRule(final SNode instanceMethodDeclaration, final TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    SNode nearestOverriddenMethod = BehaviorReflection.invokeVirtual((Class<SNode>) ((Class) Object.class), instanceMethodDeclaration, "virtual_getNearestOverriddenMethod_5358895268254685434", new Object[]{});
    if ((nearestOverriddenMethod == null)) {
      nearestOverriddenMethod = BehaviorReflection.invokeVirtual((Class<SNode>) ((Class) Object.class), instanceMethodDeclaration, "virtual_getImplementedInterfaceMethod_8302934035201331324", new Object[]{});
    }
    if ((nearestOverriddenMethod == null)) {
      return;
    }

    SNode superVisibility = SLinkOperations.getTarget(SNodeOperations.cast(nearestOverriddenMethod, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x112670d273fL, "jetbrains.mps.baseLanguage.structure.IVisible")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x112670d273fL, 0x112670d886aL, "visibility"));
    SNode myVisibility = SLinkOperations.getTarget(instanceMethodDeclaration, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x112670d273fL, 0x112670d886aL, "visibility"));

    if (SNodeOperations.isInstanceOf(superVisibility, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10af9586f0cL, "jetbrains.mps.baseLanguage.structure.PrivateVisibility")) || eq_68cpna_a0a7a1(SNodeOperations.getConceptDeclaration(myVisibility), SNodeOperations.getConceptDeclaration(superVisibility))) {
      return;
    }
    if (SNodeOperations.isInstanceOf(superVisibility, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10af958b686L, "jetbrains.mps.baseLanguage.structure.ProtectedVisibility")) && SNodeOperations.isInstanceOf(myVisibility, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10af9581ff1L, "jetbrains.mps.baseLanguage.structure.PublicVisibility"))) {
      return;
    }
    if ((superVisibility == null) && !(SNodeOperations.isInstanceOf(myVisibility, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10af9586f0cL, "jetbrains.mps.baseLanguage.structure.PrivateVisibility")))) {
      return;
    }

    String classifierName = SPropertyOperations.getString(SNodeOperations.getNodeAncestor(nearestOverriddenMethod, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, "jetbrains.mps.baseLanguage.structure.Classifier"), false, false), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
    if (classifierName == null) {
      classifierName = "the super class";
    }
    {
      MessageTarget errorTarget = new NodeMessageTarget();
      IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(instanceMethodDeclaration, "Cannot reduce the visibility of the inherited method from " + classifierName, "r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)", "8302934035197954391", null, errorTarget);
      {
        BaseQuickFixProvider intentionProvider = new BaseQuickFixProvider("jetbrains.mps.baseLanguage.typesystem.MatchVisibility_QuickFix", false);
        intentionProvider.putArgument("visibility", superVisibility);
        _reporter_2309309498.addIntentionProvider(intentionProvider);
      }
    }
  }
  public SAbstractConcept getApplicableConcept() {
    return MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b21dL, "jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration");
  }
  public IsApplicableStatus isApplicableAndPattern(SNode argument) {
    return new IsApplicableStatus(argument.getConcept().isSubConceptOf(getApplicableConcept()), null);
  }
  public boolean overrides() {
    return false;
  }
  private static boolean eq_68cpna_a0a7a1(Object a, Object b) {
    return (a != null ? a.equals(b) : a == b);
  }
}
