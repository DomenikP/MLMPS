package jetbrains.mps.baseLanguage.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import java.util.List;
import javax.swing.Icon;
import java.util.ArrayList;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import jetbrains.mps.baseLanguage.plugin.IconResourceBundle_Behavior;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.project.Project;
import jetbrains.mps.baseLanguage.util.CodeStyleSettings;
import jetbrains.mps.baseLanguage.util.CodeStyleSettingsRegistry;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.baseLanguage.scopes.MembersPopulatingContext;
import jetbrains.mps.baseLanguage.scopes.FieldSignature;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.AttributeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.IAttributeDescriptor;
import jetbrains.mps.smodel.action.SNodeFactoryOperations;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.smodel.SModelUtil_new;
import org.jetbrains.mps.openapi.model.SNodeAccessUtil;

public class StaticFieldDeclaration_Behavior {
  public static void init(SNode thisNode) {
  }
  public static List<Icon> virtual_getMarkIcons_3923831204883340393(SNode thisNode) {
    List<Icon> markIcons = new ArrayList<Icon>(BehaviorReflection.invokeSuper((Class<List<Icon>>) ((Class) Object.class), thisNode, "jetbrains.mps.baseLanguage.structure.VariableDeclaration", "virtual_getMarkIcons_3923831204883340393", new Object[]{}));
    markIcons.add(IconResourceBundle_Behavior.getInstance().getResource("STATICMARK"));
    return markIcons;
  }
  public static boolean virtual_isInitializable_1213877517488(SNode thisNode) {
    return true;
  }
  public static SNode virtual_createReference_1213877517482(SNode thisNode) {
    SNode ref = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, "jetbrains.mps.baseLanguage.structure.VariableReference")));
    SLinkOperations.setTarget(ref, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, 0xf8cc6bf960L, "variableDeclaration"), thisNode);
    return ref;
  }
  public static List<SNode> virtual_getChildrenToDisplayIntention_4025276038182319200(SNode thisNode) {
    List<SNode> result = BehaviorReflection.invokeSuper((Class<List<SNode>>) ((Class) Object.class), thisNode, "jetbrains.mps.baseLanguage.structure.VariableDeclaration", "virtual_getChildrenToDisplayIntention_4025276038182319200", new Object[]{});
    ListSequence.fromList(result).addElement(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x112670d273fL, 0x112670d886aL, "visibility")));
    return result;
  }
  public static boolean virtual_isStatic_8986964027630462944(SNode thisNode) {
    return true;
  }
  public static Icon virtual_getAdditionalIcon_5017341185733863694(SNode thisNode) {
    return IVisible_Behavior.call_getVisibilityIcon_5017341185733869581(thisNode);
  }
  public static boolean virtual_canBeInterfaceMember_2949815620938109095(SAbstractConcept thisConcept) {
    return true;
  }
  public static String virtual_getSuffix_3012473318495499856(SNode thisNode, Project project) {
    CodeStyleSettings settings = CodeStyleSettingsRegistry.getSettings(project);
    if (settings == null) {
      return "";
    }
    return (settings.getStaticFieldSuffix() == null ? "" : settings.getStaticFieldSuffix());
  }
  public static String virtual_getPrefix_3012473318495495520(SNode thisNode, Project project) {
    CodeStyleSettings settings = CodeStyleSettingsRegistry.getSettings(project);
    if (settings == null) {
      return "";
    }
    return (settings.getStaticFieldPrefix() == null ? "" : settings.getStaticFieldPrefix());
  }
  @Nullable
  public static String virtual_getTraceableProperty_5067982036267369901(SNode thisNode) {
    return SPropertyOperations.getString(thisNode, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
  public static void virtual_populateMember_7405920559687254644(SNode thisNode, MembersPopulatingContext context, SNode classifier) {
    if (!(context.isElementVisible(thisNode)) || SPropertyOperations.getString(thisNode, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")) == null) {
      return;
    }
    context.addMember(thisNode, new FieldSignature(SPropertyOperations.getString(thisNode, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"))));
    context.hideMembers(new FieldSignature(SPropertyOperations.getString(thisNode, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"))));
  }
  public static SNode virtual_getQualifiedReference_4598334504606213641(SNode thisNode) {
    return _quotation_createNode_ge0l0h_a0a11(SNodeOperations.cast(SNodeOperations.getParent(thisNode), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, "jetbrains.mps.baseLanguage.structure.Classifier")), thisNode);
  }
  public static void virtual_markDeprecated_7983358747957651026(SNode thisNode) {
    BehaviorReflection.invokeSuper(Void.class, thisNode, "jetbrains.mps.baseLanguage.structure.IBLDeprecatable", "virtual_markDeprecated_7983358747957651026", new Object[]{});
    if ((AttributeOperations.getAttribute(thisNode, new IAttributeDescriptor.NodeAttribute(MetaAdapterFactory.getConcept(0xf280165065d5424eL, 0xbb1b463a8781b786L, 0x5ed0d79d7dc44bf2L, "jetbrains.mps.baseLanguage.javadoc.structure.FieldDocComment"))) == null)) {
      SNodeFactoryOperations.setNewAttribute(thisNode, new IAttributeDescriptor.NodeAttribute(MetaAdapterFactory.getConcept(0xf280165065d5424eL, 0xbb1b463a8781b786L, 0x5ed0d79d7dc44bf2L, "jetbrains.mps.baseLanguage.javadoc.structure.FieldDocComment")), SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xf280165065d5424eL, 0xbb1b463a8781b786L, 0x5ed0d79d7dc44bf2L, "jetbrains.mps.baseLanguage.javadoc.structure.FieldDocComment")));
    }
    SNodeFactoryOperations.addNewChild(AttributeOperations.getAttribute(thisNode, new IAttributeDescriptor.NodeAttribute(MetaAdapterFactory.getConcept(0xf280165065d5424eL, 0xbb1b463a8781b786L, 0x5ed0d79d7dc44bf2L, "jetbrains.mps.baseLanguage.javadoc.structure.FieldDocComment"))), MetaAdapterFactory.getContainmentLink(0xf280165065d5424eL, 0xbb1b463a8781b786L, 0x4a3c146b7fae70d3L, 0x4ab5c2019ddc99f3L, "tags"), SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xf280165065d5424eL, 0xbb1b463a8781b786L, 0x757ba20a4c87f964L, "jetbrains.mps.baseLanguage.javadoc.structure.DeprecatedBlockDocTag")));
    AnnotationUtil.attachAnnotation(thisNode, SNodeOperations.getNode("6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)", "~Deprecated"));
  }
  public static void virtual_unmarkDeprecated_7983358747957674666(SNode thisNode) {
    BehaviorReflection.invokeSuper(Void.class, thisNode, "jetbrains.mps.baseLanguage.structure.IBLDeprecatable", "virtual_unmarkDeprecated_7983358747957674666", new Object[]{});
    IBLDeprecatable_Behavior.call_removeDeprecationFromDoc_6978502240659599963(thisNode, AttributeOperations.getAttribute(thisNode, new IAttributeDescriptor.NodeAttribute(MetaAdapterFactory.getConcept(0xf280165065d5424eL, 0xbb1b463a8781b786L, 0x5ed0d79d7dc44bf2L, "jetbrains.mps.baseLanguage.javadoc.structure.FieldDocComment"))));
    AnnotationUtil.detachAnnotation(thisNode, SNodeOperations.getNode("6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)", "~Deprecated"));
  }
  private static SNode _quotation_createNode_ge0l0h_a0a11(Object parameter_1, Object parameter_2) {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_3 = null;
    quotedNode_3 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf940c80846L, "jetbrains.mps.baseLanguage.structure.StaticFieldReference"), null, null, false);
    SNodeAccessUtil.setReferenceTarget(quotedNode_3, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf940c80846L, 0x10a75869f9bL, "classifier"), (SNode) parameter_1);
    SNodeAccessUtil.setReferenceTarget(quotedNode_3, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, 0xf8cc6bf960L, "variableDeclaration"), (SNode) parameter_2);
    return quotedNode_3;
  }
}
