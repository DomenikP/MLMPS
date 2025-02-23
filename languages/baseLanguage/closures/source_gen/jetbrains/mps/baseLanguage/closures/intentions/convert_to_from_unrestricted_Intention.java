package jetbrains.mps.baseLanguage.closures.intentions;

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
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import java.util.Collections;
import jetbrains.mps.intentions.IntentionExecutableBase;
import jetbrains.mps.smodel.action.SNodeFactoryOperations;
import java.util.List;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.intentions.IntentionDescriptor;

public final class convert_to_from_unrestricted_Intention extends IntentionDescriptorBase implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;
  public convert_to_from_unrestricted_Intention() {
    super(MetaAdapterFactory.getConcept(0xfd3920347849419dL, 0x907112563d152375L, 0x1174bed3125L, "jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral"), IntentionType.NORMAL, false, new SNodePointer("r:dda1964e-d5fa-4ee3-9168-3bfd25608c63(jetbrains.mps.baseLanguage.closures.intentions)", "1230480249136"));
  }
  @Override
  public String getPresentation() {
    return "convert_to_from_unrestricted";
  }
  @Override
  public boolean isApplicable(final SNode node, final EditorContext editorContext) {
    if (!(isApplicableToNode(node, editorContext))) {
      return false;
    }
    return true;
  }
  private boolean isApplicableToNode(final SNode node, final EditorContext editorContext) {
    return SNodeOperations.getConceptDeclaration(node) == MetaAdapterFactory.getConcept(0xfd3920347849419dL, 0x907112563d152375L, 0x1174bed3125L, "jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral").getDeclarationNode() || SNodeOperations.getConceptDeclaration(node) == MetaAdapterFactory.getConcept(0xfd3920347849419dL, 0x907112563d152375L, 0x11e49cdf7cbL, "jetbrains.mps.baseLanguage.closures.structure.UnrestrictedClosureLiteral").getDeclarationNode();
  }
  @Override
  public boolean isSurroundWith() {
    return false;
  }
  public Collection<IntentionExecutable> instances(final SNode node, final EditorContext context) {
    if (myCachedExecutable == null) {
      myCachedExecutable = Collections.<IntentionExecutable>singletonList(new convert_to_from_unrestricted_Intention.IntentionImplementation());
    }
    return myCachedExecutable;
  }
  /*package*/ final class IntentionImplementation extends IntentionExecutableBase {
    public IntentionImplementation() {
    }
    @Override
    public String getDescription(final SNode node, final EditorContext editorContext) {
      String type = (SNodeOperations.getConceptDeclaration(node) == MetaAdapterFactory.getConcept(0xfd3920347849419dL, 0x907112563d152375L, 0x1174bed3125L, "jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral").getDeclarationNode() ? "Unrestricted" : "Restricted");
      return "Convert to " + type + " Closure Literal";
    }
    @Override
    public void execute(final SNode node, final EditorContext editorContext) {
      SNode cl = (SNodeOperations.getConceptDeclaration(node) == MetaAdapterFactory.getConcept(0xfd3920347849419dL, 0x907112563d152375L, 0x1174bed3125L, "jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral").getDeclarationNode() ? SNodeFactoryOperations.createNewNode(SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xfd3920347849419dL, 0x907112563d152375L, 0x11e49cdf7cbL, "jetbrains.mps.baseLanguage.closures.structure.UnrestrictedClosureLiteral")), null) : SNodeFactoryOperations.createNewNode(SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xfd3920347849419dL, 0x907112563d152375L, 0x1174bed3125L, "jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral")), null));
      SNodeOperations.replaceWithAnother(node, cl);
      List<SNode> params = SLinkOperations.getChildren(node, MetaAdapterFactory.getContainmentLink(0xfd3920347849419dL, 0x907112563d152375L, 0x1174bed3125L, 0x1174bf02c34L, "parameter"));
      for (SNode p : params) {
        ListSequence.fromList(SLinkOperations.getChildren(cl, MetaAdapterFactory.getContainmentLink(0xfd3920347849419dL, 0x907112563d152375L, 0x1174bed3125L, 0x1174bf02c34L, "parameter"))).addElement(SNodeOperations.detachNode(p));
      }
      SLinkOperations.setTarget(cl, MetaAdapterFactory.getContainmentLink(0xfd3920347849419dL, 0x907112563d152375L, 0x1174bed3125L, 0x1174bf0522fL, "body"), SNodeOperations.detachNode(SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xfd3920347849419dL, 0x907112563d152375L, 0x1174bed3125L, 0x1174bf0522fL, "body"))));
    }
    @Override
    public IntentionDescriptor getDescriptor() {
      return convert_to_from_unrestricted_Intention.this;
    }
  }
}
