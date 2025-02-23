/*
 * Copyright 2003-2015 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package jetbrains.mps.ide.ui.tree;

import com.intellij.openapi.editor.colors.ColorKey;
import com.intellij.openapi.editor.colors.EditorColorsManager;
import jetbrains.mps.ide.icons.IdeIcons;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.util.annotation.ToRemove;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import javax.swing.Icon;
import javax.swing.tree.DefaultMutableTreeNode;
import javax.swing.tree.DefaultTreeModel;
import javax.swing.tree.MutableTreeNode;
import javax.swing.tree.TreeNode;
import java.awt.Color;
import java.awt.Font;
import java.awt.font.TextAttribute;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * @author Kostik
 */
public class MPSTreeNode extends DefaultMutableTreeNode implements Iterable<MPSTreeNode> {
  private static final Logger LOG = LogManager.getLogger(MPSTreeNode.class);

  private MPSTree myTree;
  private boolean myAdded;

  private Icon myCollapsedIcon = IdeIcons.CLOSED_FOLDER;
  private Icon myExpandedIcon = IdeIcons.OPENED_FOLDER;
  private String myNodeIdentifier;
  private String myText;
  private String myAdditionalText = null;
  private String myTooltipText;
  private Color myColor = EditorColorsManager.getInstance().getGlobalScheme().getColor(ColorKey.createColorKey("FILESTATUS_NOT_CHANGED"));
  private int myFontStyle = Font.PLAIN;
  private boolean myAutoExpandable = true;
  private ErrorState myErrorState = ErrorState.NONE;
  private ErrorState myCombinedErrorState = ErrorState.NONE;
  private final Object myTreeMessagesLock = new Object();
  private List<TreeMessage> myTreeMessages = null;
  private Map<TextAttribute, Object> myFontAttributes = new HashMap<TextAttribute, Object>();
  private int myToggleClickCount = 2;

  public MPSTreeNode() {
    super(null);
  }

  public MPSTreeNode(Object userObject) {
    super(userObject);
  }

  /**
   * @deprecated use cons without IOperationContext parameter
   * @param userObject
   * @param operationContext <em>ignored</em>
   */
  @Deprecated
  @ToRemove(version = 3.3)
  public MPSTreeNode(Object userObject, IOperationContext operationContext) {
    super(userObject);
  }

  @Override
  @SuppressWarnings("unchecked")
  public Iterator<MPSTreeNode> iterator() {
    if (children == null) {
      return Collections.<MPSTreeNode>emptySet().iterator();
    }
    return children.iterator();
  }

  public MPSTree getTree() {
    if (myTree == null && getParent() instanceof MPSTreeNode) {
      return ((MPSTreeNode) getParent()).getTree();
    }
    return myTree;
  }

  /**
   *  returns the closest ancestor (nodes or the containing tree) which implements the given class
   */
  @SuppressWarnings("unchecked")
  public <T> T getAncestor(@Nullable Class<T> cls) {
    TreeNode parent = getParent();
    while (parent != null) {
      if (cls.isInstance(parent)) {
        return (T) parent;
      }
      parent = parent.getParent();
    }
    if (myTree != null && cls.isInstance(myTree)) {
      return (T) myTree;
    }
    return null;
  }

  public void setTree(MPSTree tree) {
    myTree = tree;
  }

  public boolean isInitialized() {
    return true;
  }

  public boolean hasInfiniteSubtree() {
    return false;
  }

  public void doubleClick() {
  }

  protected void onRemove() {
    getTree().fireTreeNodeRemoved(this);
  }

  protected void onAdd() {
    updatePresentation();
    getTree().fireTreeNodeAdded(this);
  }

  /**
   * Deemed for tree clients to ensure node is initialized (i.e. has its children).
   * If the node is already {@link #isInitialized() initialized}, does nothing.
   * Otherwise, {@link jetbrains.mps.ide.ui.tree.MPSTree#performInit(MPSTreeNode)}  delegates} to owning tree, if any,
   * to perform actual initialization, with respect to tree's considerations (e.g. might wrap with model read action or
   * "Loading..."  notification nodes).
   * Tree shall call {@link #doInit()} at some point where actual node initialization takes place.
   * Although not final, extra care should be taken if overriding (FIXME perhaps, shall make final, and move isInitialized field here as well).
   */
  public void init() {
    if (isInitialized()) {
      return;
    }
    MPSTree tree = getTree();
    if (tree != null) {
      tree.performInit(this);
    } else {
      doInit();
    }
  }

  /**
   * This method shall not be invoked by code outside of MPSTree framework.
   * Subclasses shall override and perform actual node initialization here.
   * Default implementation does nothing, subclasses don't need to invoke <code>super.doInit()</code>
   */
  protected void doInit() {
  }

  public void updateSubTree() {
    getTree().runRebuildAction(new Runnable() {
      @Override
      public void run() {
        update();
      }
    }, true);
  }

  public void update() {
    doUpdate();
    ((DefaultTreeModel) getTree().getModel()).nodeStructureChanged(this);
  }

  protected void doUpdate() {
  }

  @Override
  public void remove(int childIndex) {
    if (myAdded && getTree() != null && !getTree().isDisposed()) {
      ((MPSTreeNode) getChildAt(childIndex)).removeThisAndChildren();
    }
    super.remove(childIndex);
    updateErrorState();
  }


  @Override
  public void insert(MutableTreeNode newChild, int childIndex) {
    super.insert(newChild, childIndex);
    if (myAdded && getTree() != null && !getTree().isDisposed()) {
      ((MPSTreeNode) getChildAt(childIndex)).addThisAndChildren();
    }
    updateErrorState();
  }

  public boolean hasChild(MutableTreeNode node) {
    for (int i = 0; i < getChildCount(); i++) {
      if (getChildAt(i) == node) return true;
    }
    return false;
  }

  final void removeThisAndChildren() {
    if (!myAdded) {
      throw new IllegalStateException(
          String.format("Trying to remove tree node which have not been added, tree=%s, node=%s",
              myTree != null ? myTree.getClass().getName() : "null", getClass().getName()));
    }
    try {
      onRemove();
    } catch (Throwable t) {
      LOG.error(null, t);
    }
    myAdded = false;
    if (!isInitialized()) {
      return;
    }
    for (MPSTreeNode node : this) {
      node.removeThisAndChildren();
    }
    setParent(null);
    children = null;
  }

  final void addThisAndChildren() {
    if (myAdded) {
      throw new IllegalStateException(
          String.format("Trying to add tree node which have already been added, tree=%s, node=%s",
              myTree != null ? myTree.getClass().getName() : "null", getClass().getName()));
    }
    try {
      onAdd();
    } catch (Throwable t) {
      LOG.error(null, t);
    }
    myAdded = true;
    if (!isInitialized()) {
      return;
    }
    for (int i = 0; i < getChildCount(); i++) {
      MPSTreeNode node = (MPSTreeNode) getChildAt(i);
      node.addThisAndChildren();
    }
  }

  public MPSTreeNode findExactChildWith(Object userObject) {
    for (MPSTreeNode child : this) {
      if (child.getUserObject() == userObject) return child;
    }
    return null;
  }

  /**
   * Ignores subtree of nodes that have not been initialized yet.
   */
  @Nullable
  public final MPSTreeNode findDescendantWith(Object userObject) {
    if (getUserObject() == null ? userObject == null : getUserObject().equals(userObject)) return this;
    if (isInitialized()) {
      for (int i = 0; i < getChildCount(); i++) {
        MPSTreeNode result = ((MPSTreeNode) getChildAt(i)).findDescendantWith(userObject);
        if (result != null) return result;
      }
    }
    return null;
  }

  /**
   * Default value is: 2
   */
  public int getToggleClickCount() {
    return myToggleClickCount;
  }

  public void setToggleClickCount(int clickCount) {
    myToggleClickCount = clickCount;
  }

  //updates and refreshes tree
  public void renewPresentation() {
    final MPSTree tree = getTree();
    if (tree == null || tree.isDisposed()) {
      return;
    }
    updatePresentation();
    updateNodePresentationInTree();
  }

  //todo make final
  protected void updatePresentation() {
    setColor(EditorColorsManager.getInstance().getGlobalScheme().getColor(ColorKey.createColorKey("FILESTATUS_NOT_CHANGED")));
    doUpdatePresentation();
    if (myTree == null) {
      myTree = getTree();
    }
    if (myTree != null) {
      myTree.fireTreeNodeUpdated(this);
    }
    Color c = null;
    String additionalText = null;
    synchronized (myTreeMessagesLock) {
      if (myTreeMessages != null) {
        int maxColorPriority = Integer.MIN_VALUE;
        int maxAdditionalTextPriority = Integer.MIN_VALUE;
        for (TreeMessage message : myTreeMessages) {
          if (maxColorPriority < message.getPriority() && message.alternatesColor()) {
            c = message.getColor();
          }
          if (maxAdditionalTextPriority < message.getPriority() && message.hasAdditionalText()) {
            additionalText = message.getAdditionalText();
          }
        }
      }
    }
    if (c != null) {
      setColor(c);
    }
    if (additionalText != null) {
      setAdditionalText(additionalText);
    }
  }

  public void updatePresentation(final boolean reloadSubTree, final boolean updateAncestors) {
    renewPresentation();
    if (reloadSubTree) {
      updateSubTree();
    }

    if (updateAncestors) {
      updateAncestorsPresentationInTree();
    }
  }

  /**
   * Attach an extra message to a node. Messages are identified by their {@link jetbrains.mps.ide.ui.tree.TreeMessageOwner owner}.
   * This method may be invoked from any thread, and doesn't trigger UI update, use {@link #renewPresentation()} from correct (EDT/UI) thread
   * if needed (e.g. if messages are attached the moment tree is being constructed, there's no reason to renew each node individually,
   * they get a chance to update them once tree becomes visible)
   * @param message message to attach
   */
  public void addTreeMessage(@NotNull TreeMessage message) {
    synchronized (myTreeMessagesLock) {
      if (myTreeMessages == null) {
        myTreeMessages = new ArrayList<TreeMessage>(1);
      }
      myTreeMessages.add(message);
    }
  }

  /**
   * Detach all messages of the specified owner.
   * This method can be invoked from any thread.
   * To trigger UI update, use {@link #renewPresentation()} from correct (EDT/UI) thread.
   * @param owner identifies messages to remove
   * @return set of detached messages, or empty collection if none found
   */
  @NotNull
  public Set<TreeMessage> removeTreeMessages(TreeMessageOwner owner) {
    Set<TreeMessage> result = new HashSet<TreeMessage>(1);
    if (owner == null) {
      return result;
    }
    final ArrayList<TreeMessage> copy;
    synchronized (myTreeMessagesLock) {
      if (myTreeMessages == null) {
        return result;
      }
      copy = new ArrayList<TreeMessage>(myTreeMessages);
    }
    for (TreeMessage message : copy) {
      if (owner.equals(message.getOwner())) {
        result.add(message);
      }
    }
    synchronized (myTreeMessagesLock) {
      myTreeMessages.removeAll(result);
    }
    return result;
  }

  protected void doUpdatePresentation() {

  }

  public final Icon getIcon(boolean expanded) {
    if (expanded) {
      return myExpandedIcon;
    } else {
      return myCollapsedIcon;
    }
  }

  public final void setIcon(Icon newIcon, boolean expanded) {
    if (expanded) {
      myExpandedIcon = newIcon;
    } else {
      myCollapsedIcon = newIcon;
    }
  }

  public final void setIcon(Icon newIcon) {
    setIcon(newIcon, true);
    setIcon(newIcon, false);
  }

  public final Color getColor() {
    return myColor;
  }

  public final void setColor(Color color) {
    myColor = color;
  }

  public final int getFontStyle() {
    return myFontStyle;
  }

  public final void setFontStyle(int fontStyle) {
    myFontStyle = fontStyle;
  }

  public final void addFontAttribute(TextAttribute key, Object value) {
    myFontAttributes.put(key, value);
  }

  public final Map getFontAttributes() {
    return myFontAttributes;
  }

  @NotNull
  public final String getNodeIdentifier() {
    if (myNodeIdentifier == null) {
      // extra info for assertion failed due to MPS-12305
      String parentId = null;
      if (getParent() instanceof MPSTreeNode) {
        parentId = ((MPSTreeNode) getParent()).getNodeIdentifier();
      }
      throw new IllegalStateException("MPSTreeNode identifier cannot be null, class="
          + getClass().getName() + ", parent id=" + parentId);
    } else {
      return myNodeIdentifier;
    }
  }

  public final void setNodeIdentifier(@NotNull String newNodeIdentifier) {
    myNodeIdentifier = newNodeIdentifier;
  }

  public final String getAdditionalText() {
    return myAdditionalText;
  }

  public final void setAdditionalText(String newAdditionalText) {
    myAdditionalText = newAdditionalText;
  }

  public final String getText() {
    if (myText == null) {
      return getNodeIdentifier();
    } else {
      return myText;
    }
  }

  public final void setText(String text) {
    myText = text;
  }

  public final String getTooltipText() {
    return myTooltipText;
  }

  public final void setTooltipText(String tooltipText) {
    myTooltipText = tooltipText;
  }

  public final boolean isErrorState() {
    return myErrorState == ErrorState.ERROR;
  }

  public final void setErrorState(ErrorState state) {
    myErrorState = state;
    updateErrorState();
  }

  public final ErrorState getErrorState() {
    return myErrorState;
  }

  public final ErrorState getAggregatedErrorState() {
    return myCombinedErrorState;
  }

  protected void updateErrorState() {
    ErrorState state = ErrorState.NONE;
    if (propogateErrorUpwards()) {
      for (MPSTreeNode node : this) {
        state = state.combine(node.getAggregatedErrorState());
      }
    }
    myCombinedErrorState = state.combine(myErrorState);
    if (getParent() != null) {
      ((MPSTreeNode) getParent()).updateErrorState();
    }
  }

  protected boolean propogateErrorUpwards() {
    return true;
  }

  public String toString() {
    return getText();
  }

  public final boolean isAutoExpandable() {
    return myAutoExpandable;
  }

  public final void setAutoExpandable(boolean autoExpandable) {
    myAutoExpandable = autoExpandable;
  }

  public final void updateNodePresentationInTree() {
    if (getTree() == null) return;
    ((DefaultTreeModel) getTree().getModel()).nodeChanged(this);
  }

  public void updateAncestorsPresentationInTree() {
    updateNodePresentationInTree();
    if (getParent() == null) return;
    ((MPSTreeNode) getParent()).updateAncestorsPresentationInTree();
  }

  protected boolean canBeOpened() {
    return true;
  }

  public void autoscroll() {

  }

  public boolean isLoadingEnabled() {
    return false;
  }
}
