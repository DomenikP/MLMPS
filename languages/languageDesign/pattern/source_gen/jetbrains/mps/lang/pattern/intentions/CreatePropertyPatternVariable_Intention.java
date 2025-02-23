package jetbrains.mps.lang.pattern.intentions;

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
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.nodeEditor.cells.EditorCell_Property;
import jetbrains.mps.nodeEditor.cells.PropertyAccessor;
import jetbrains.mps.lang.pattern.editor.PatternAddingUtil;
import java.util.Collections;
import jetbrains.mps.intentions.IntentionExecutableBase;
import jetbrains.mps.smodel.action.SNodeFactoryOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.IAttributeDescriptor;
import jetbrains.mps.intentions.IntentionDescriptor;

public final class CreatePropertyPatternVariable_Intention extends IntentionDescriptorBase implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;
  public CreatePropertyPatternVariable_Intention() {
    super(MetaAdapterFactory.getConcept(0xd4615e3bd6714ba9L, 0xaf012b78369b0ba7L, 0x108a9cb4791L, "jetbrains.mps.lang.pattern.structure.PatternExpression"), IntentionType.NORMAL, true, new SNodePointer("r:00000000-0000-4000-0000-011c89590344(jetbrains.mps.lang.pattern.intentions)", "3514655265371724198"));
  }
  @Override
  public String getPresentation() {
    return "CreatePropertyPatternVariable";
  }
  @Override
  public boolean isApplicable(final SNode node, final EditorContext editorContext) {
    if (!(isApplicableToNode(node, editorContext))) {
      return false;
    }
    return true;
  }
  private boolean isApplicableToNode(final SNode node, final EditorContext editorContext) {
    EditorCell selectedCell = editorContext.getSelectedCell();
    return selectedCell instanceof EditorCell_Property && ((EditorCell_Property) selectedCell).getModelAccessor() instanceof PropertyAccessor && PatternAddingUtil.isPatternApplicable(editorContext);
  }
  @Override
  public boolean isSurroundWith() {
    return false;
  }
  public Collection<IntentionExecutable> instances(final SNode node, final EditorContext context) {
    if (myCachedExecutable == null) {
      myCachedExecutable = Collections.<IntentionExecutable>singletonList(new CreatePropertyPatternVariable_Intention.IntentionImplementation());
    }
    return myCachedExecutable;
  }
  /*package*/ final class IntentionImplementation extends IntentionExecutableBase {
    public IntentionImplementation() {
    }
    @Override
    public String getDescription(final SNode node, final EditorContext editorContext) {
      return "Create Property Pattern Variable";
    }
    @Override
    public void execute(final SNode node, final EditorContext editorContext) {
      EditorCell_Property cell = (EditorCell_Property) editorContext.getSelectedCell();
      String propertyName = ((PropertyAccessor) cell.getModelAccessor()).getPropertyName();
      SNode cellNode = cell.getSNode();
      SNodeFactoryOperations.setNewAttribute(cellNode, new IAttributeDescriptor.PropertyAttribute(MetaAdapterFactory.getConcept(0xd4615e3bd6714ba9L, 0xaf012b78369b0ba7L, 0x108a9cb4795L, "jetbrains.mps.lang.pattern.structure.PropertyPatternVariableDeclaration"), propertyName), SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xd4615e3bd6714ba9L, 0xaf012b78369b0ba7L, 0x108a9cb4795L, "jetbrains.mps.lang.pattern.structure.PropertyPatternVariableDeclaration")));
    }
    @Override
    public IntentionDescriptor getDescriptor() {
      return CreatePropertyPatternVariable_Intention.this;
    }
  }
}
