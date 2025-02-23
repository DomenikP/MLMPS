/*
 * Copyright 2003-2011 JetBrains s.r.o.
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
package jetbrains.mps.nodeEditor;

import jetbrains.mps.errors.MessageStatus;
import jetbrains.mps.errors.QuickFixProvider;
import jetbrains.mps.nodeEditor.inspector.InspectorEditorComponent;
import jetbrains.mps.openapi.editor.message.EditorMessageOwner;
import jetbrains.mps.openapi.editor.message.SimpleEditorMessage;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.util.Computable;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.nodeEditor.cells.EditorCell;

import java.awt.Color;
import java.awt.Graphics;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.HashMap;

/**
 * Cyril.Konopko, 01.04.2008
 */
public class DefaultEditorMessage implements EditorMessage {
  private static final int DEFAULT_MESSAGE_PRIORITY = 0;

  private Color myColor;
  private String myMessage;
  private EditorMessageOwner myOwner;
  private SNode myNode;
  private List<QuickFixProvider> myIntentionProviders;
  private MessageStatus myStatus = MessageStatus.OK;

  private Map<Object, Object> myUserObjects;

  public DefaultEditorMessage(SNode node, Color color, String message, EditorMessageOwner owner) {
    myNode = node;
    myColor = color;
    myMessage = message;
    myOwner = owner;
  }

  public DefaultEditorMessage(SNode node, MessageStatus status, Color color, String message, EditorMessageOwner owner) {
    this(node, color, message, owner);
    myStatus = status;
  }

  @Override
  public boolean sameAs(SimpleEditorMessage message) {
    return message.getNode() == getNode() && getOwner() == message.getOwner() &&
      getStatus() == message.getStatus() && getMessage().equals(message.getMessage());
  }

  @Override
  public void putUserObject(Object key, Object value) {
    if (myUserObjects == null) {
      myUserObjects = new HashMap<Object, Object>(1);
    }
    myUserObjects.put(key, value);
  }

  @Override
  public Object getUserObject(Object key) {
    if (myUserObjects == null) {
      return null;
    }
    return myUserObjects.get(key);
  }

  @Override
  public String getMessage() {
    return myMessage;
  }

  @Override
  public Color getColor() {
    return myColor;
  }

  @Override
  public EditorMessageOwner getOwner() {
    return myOwner;
  }

  @Override
  public boolean isValid(EditorComponent editorComponent) {
    return getCellInBothWays(editorComponent) != null;
  }

  @Override
  public int getStart(jetbrains.mps.openapi.editor.EditorComponent editorComponent) {
    jetbrains.mps.openapi.editor.cells.EditorCell editorCell = getCellInBothWays((EditorComponent) editorComponent);
    if (editorCell == null) {
      return -1;
    }
    return editorCell.getY();
  }

  @Override
  public int getHeight(jetbrains.mps.openapi.editor.EditorComponent editorComponent) {
    jetbrains.mps.openapi.editor.cells.EditorCell editorCell = getCellInBothWays((EditorComponent) editorComponent);
    if (editorCell == null) {
      return -1;
    }
    return editorCell.getHeight();
  }

  @Override
  public void doNavigate(EditorComponent editorComponent) {
    editorComponent.changeSelection(getCellInBothWays(editorComponent));
  }

  protected jetbrains.mps.openapi.editor.cells.EditorCell getCellInBothWays(final EditorComponent editor) {
    return ModelAccess.instance().runReadAction(new Computable<jetbrains.mps.openapi.editor.cells.EditorCell>() {
      @Override
      public jetbrains.mps.openapi.editor.cells.EditorCell compute() {
        jetbrains.mps.openapi.editor.cells.EditorCell editorCell = getCell(editor);
        if (editorCell != null) {
          return editorCell;
        }
        return getCellForParentNodeInMainEditor(editor);
      }
    });
  }

  @Override
  public MessageStatus getStatus() {
    return myStatus;
  }

  @Override
  public jetbrains.mps.openapi.editor.cells.EditorCell getCell(EditorComponent editor) {
    if (editor == null) return null;
    return editor.getBigValidCellForNode(getNode());
  }

  @Override
  public EditorCell getCellForParentNodeInMainEditor(final EditorComponent editor) {
    return ModelAccess.instance().runReadAction(new Computable<EditorCell>() {
      @Override
      public EditorCell compute() {
        if (getNode() == null) return null;
        if (editor instanceof InspectorEditorComponent) {
          return null;
        }
        SNode parent = getNode().getParent();
        EditorCell result = null;
        while (parent != null) {
          result = editor.getBigValidCellForNode(parent);
          if (result != null) {
            return result;
          }
          parent = parent.getParent();
        }
        return result;
      }
    });
  }

  @Override
  public boolean acceptCell(jetbrains.mps.openapi.editor.cells.EditorCell cell, EditorComponent editor) {
    if (cell == null) return false;
    return cell.isBig() && editor.isValid(cell) && cell.getSNode() == getNode();
  }

  @Override
  public SNode getNode() {
    return myNode;
  }

  @Override
  public void paint(Graphics g, EditorComponent editorComponent, EditorCell cell) {
    paintWithColor(g, cell, getColor());
  }

  protected void paintWithColor(Graphics g, EditorCell cell, Color color) {
    int x = cell.getX() + cell.getLeftInset();
    int y = cell.getY();
    int width = cell.getWidth() - cell.getLeftInset() - cell.getRightInset() - 1;
    int height = cell.getHeight() - cell.getTopInset() - cell.getBottomInset() - 1;
    g.setColor(color);
    g.drawRect(x, y, width, height);
    color = new Color(color.getRed(), color.getGreen(), color.getBlue(), color.getAlpha() / 5);
    g.setColor(color);
    g.fillRect(x, y, width, height);
  }

  @Override
  public boolean isBackground() {
    return false;
  }

  public void setIntentionProvider(QuickFixProvider intentionProvider) {
    addIntentionProvider(intentionProvider);
  }

  public void addIntentionProvider(QuickFixProvider intentionProvider) {
    if (myIntentionProviders == null) {
      myIntentionProviders = new ArrayList<QuickFixProvider>(1);
    }
    myIntentionProviders.add(intentionProvider);
  }

  @Override
  public QuickFixProvider getIntentionProvider() {
    if (myIntentionProviders == null) return null;
    if (myIntentionProviders.isEmpty()) return null;
    return myIntentionProviders.get(0);
  }

  @Override
  public List<QuickFixProvider> getIntentionProviders() {
    ArrayList<QuickFixProvider> result = new ArrayList<QuickFixProvider>(1);
    if (myIntentionProviders != null) {
      result.addAll(myIntentionProviders);
    }
    return result;
  }

  @Override
  public int getPriority() {
    return DEFAULT_MESSAGE_PRIORITY;
  }

  @Override
  public boolean showInGutter() {
    return true;
  }
}
