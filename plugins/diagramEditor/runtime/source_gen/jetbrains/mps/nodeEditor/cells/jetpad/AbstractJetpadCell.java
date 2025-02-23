package jetbrains.mps.nodeEditor.cells.jetpad;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.nodeEditor.cells.SynchronizeableEditorCell;
import java.util.List;
import jetbrains.jetpad.model.property.Property;
import jetbrains.jetpad.model.property.ValueProperty;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.nodeEditor.cells.CellFinderUtil;
import org.jetbrains.mps.util.Condition;
import java.awt.Graphics;
import jetbrains.mps.nodeEditor.cells.ParentSettings;
import jetbrains.mps.openapi.editor.cells.CellMessagesUtil;
import java.util.LinkedList;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.internal.collections.runtime.Sequence;
import java.util.ListIterator;
import java.util.Set;
import jetbrains.jetpad.projectional.view.View;
import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;
import jetbrains.jetpad.projectional.diagram.view.RootTrait;
import jetbrains.jetpad.projectional.diagram.view.DeleteHandler;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.jetpad.projectional.view.ViewTraitBuilder;
import jetbrains.jetpad.projectional.view.ViewEvents;
import jetbrains.jetpad.projectional.view.ViewEventHandler;
import jetbrains.jetpad.event.KeyEvent;
import jetbrains.mps.ide.tooltips.MPSToolTipManager;
import jetbrains.jetpad.event.Key;
import jetbrains.jetpad.event.ModifierKey;

public abstract class AbstractJetpadCell extends EditorCell_Collection implements SynchronizeableEditorCell {
  private List<ReadableModelProperty> myModelProperties;
  protected Property<Boolean> myErrorItem = new ValueProperty<Boolean>(false);
  protected Property<Boolean> mySelectedItem = new ValueProperty<Boolean>(false);
  public AbstractJetpadCell(EditorContext editorContext, SNode node) {
    super(editorContext, node, new EmptyCellLayout(), null);
  }
  @Override
  public boolean isTransparentCollection() {
    return false;
  }
  protected DiagramCell getDiagramCell() {
    return (DiagramCell) CellFinderUtil.findParent(this, new Condition<jetbrains.mps.openapi.editor.cells.EditorCell_Collection>() {
      public boolean met(jetbrains.mps.openapi.editor.cells.EditorCell_Collection parent) {
        return parent instanceof DiagramCell;
      }
    });
  }

  @Override
  public void paintCell(Graphics graphics, ParentSettings settings) {
    // just blocking child cell painting here 
    paintChildCells(graphics, settings);
  }

  @Override
  public void paintDecorations(Graphics graphics) {
    myErrorItem.set(CellMessagesUtil.hasErrorMessages(this));
    paintChildDecorations(graphics);
  }
  protected void addModelProperty(ReadableModelProperty modelProperty) {
    if (myModelProperties == null) {
      myModelProperties = new LinkedList<ReadableModelProperty>();
    }
    myModelProperties.add(modelProperty);
  }
  @Override
  public int getAscent() {
    return getHeight();
  }

  public boolean canBeSynchronized() {
    return true;
  }
  @Override
  public void synchronizeViewWithModel() {
    if (myModelProperties != null) {
      for (ReadableModelProperty nextModelProperty : myModelProperties) {
        nextModelProperty.synchronizeViewWithModel();
      }
      requestRelayout();
    }
  }
  protected AbstractJetpadCell getDirectChildCell(SNode node) {
    // TODO: use more effitient way of getting port cell (by ID) 
    for (EditorCell nextCell : Sequence.fromIterable(getContentCells())) {
      if (nextCell.getSNode() == node) {
        return (AbstractJetpadCell) nextCell;
      }
    }
    return null;
  }
  protected void syncToNextNode(ListIterator<SNode> nodesIterator, Set<SNode> existingNodes, SNode node, EditorCell cell) {
    if (existingNodes.contains(node)) {
      while (nodesIterator.hasNext()) {
        SNode nextNode = nodesIterator.next();
        if (nextNode == node) {
          return;
        }
        nodesIterator.remove();
        existingNodes.remove(nextNode);
        removeCell((getDirectChildCell(nextNode)));
      }
      assert false : "Next element was not found in passed listIterator";
    } else {
      addEditorCell(cell);
      nodesIterator.add(node);
      existingNodes.add(node);
    }
  }
  protected void purgeTailNodes(ListIterator<SNode> listIterator) {
    while (listIterator.hasNext()) {
      SNode nextFromList = listIterator.next();
      listIterator.remove();
      removeCell((getDirectChildCell(nextFromList)));
    }
  }
  protected void configureView(final View view, final _FunctionTypes._return_P0_E0<? extends Boolean> canDelete) {
    view.focusable().set(true);
    view.prop(RootTrait.DELETE_HANDLER).set(new DeleteHandler() {
      public boolean canDelete() {
        // TODO: do we need it? it always return true.. 
        return canDelete.invoke();
      }
      public void delete() {
        getEditorComponent().getSelectionManager().getSelection().executeAction(CellActionType.DELETE);
      }
    });
    view.addTrait(new ViewTraitBuilder().on(ViewEvents.KEY_PRESSED, new ViewEventHandler<KeyEvent>() {
      @Override
      public void handle(View view, KeyEvent e) {
        if (!(view.focused().get())) {
          return;
        }
        MPSToolTipManager.getInstance().hideToolTip();
        if (e.is(Key.F1, ModifierKey.CONTROL)) {
          getEditorComponent().getSelectionManager().getSelection().executeAction(CellActionType.SHOW_MESSAGE);
        }
      }
    }).build());
  }

  @Override
  public void setSelected(boolean isSelected) {
    super.setSelected(isSelected);
    mySelectedItem.set(isSelected);
  }
}
