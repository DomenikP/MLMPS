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
package jetbrains.mps.ide.findusages.view.treeholder.tree.nodedatatypes;

import jetbrains.mps.ide.findusages.CantLoadSomethingException;
import jetbrains.mps.ide.findusages.CantSaveSomethingException;
import jetbrains.mps.ide.findusages.view.treeholder.tree.TextOptions;
import jetbrains.mps.ide.findusages.view.treeholder.treeview.path.PathItemRole;
import jetbrains.mps.ide.icons.IconManager;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.project.Project;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.SNodeUtil;
import jetbrains.mps.util.StringUtil;
import jetbrains.mps.util.annotation.ToRemove;
import org.apache.log4j.LogManager;
import org.jdom.Element;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;

import javax.swing.Icon;

public class NodeNodeData extends AbstractResultNodeData {
  private static final Logger LOG = Logger.wrap(LogManager.getLogger(NodeNodeData.class));

  private static final String NODE = "nodePtr";

  private SNodeReference myNodePointer;

  public NodeNodeData(PathItemRole role, @Nullable String caption, @NotNull SNode pathObject, boolean isResultNode, boolean resultsSection) {
    super(role, caption != null ? caption : snodeRepresentation(pathObject), nodeAdditionalInfo(pathObject), false, isResultNode, resultsSection);
    myNodePointer = pathObject.getReference();
  }

  public NodeNodeData(Element element, Project project) throws CantLoadSomethingException {
    read(element, project);
  }

  public SNodeReference getNodePointer() {
    return myNodePointer;
  }

  /**
   * @deprecated use {@link #getNodePointer()} and resolve as appropriate
   */
  @Deprecated
  @ToRemove(version = 3.3)
  public SNode getNode() {
    return myNodePointer.resolve(MPSModuleRepository.getInstance());
  }

  @Override
  public Icon getIcon() {
    final SNode node = getNode();
    return node == null ? null : IconManager.getIconFor(node);
  }

  @Override
  public String createIdObject() {
    return myNodePointer.toString() + "/" + getPlainText();
  }

  @Override
  public void write(Element element, Project project) throws CantSaveSomethingException {
    super.write(element, project);
    element.setAttribute(NODE, PersistenceFacade.getInstance().asString(myNodePointer));
  }

  @Override
  public void read(Element element, Project project) throws CantLoadSomethingException {
    super.read(element, project);
    try {
      myNodePointer = PersistenceFacade.getInstance().createNodeReference(element.getAttributeValue(NODE));
    } catch (Exception ex) {
      throw new CantLoadSomethingException(ex);
    }
  }

  private static String snodeRepresentation(final SNode node) {
    try {
      String presentation = SNodeUtil.getPresentation(node);
      String result = (presentation != null) ? presentation : node.toString();
      LOG.assertLog(result != null, "Node presentation is null.");
      result = StringUtil.escapeXml(result);
      return result;
    } catch (Throwable t) {
      LOG.error(t);
      return "Exception was thrown during node representation calculation " + t.getMessage();
    }
  }

  private static String nodeAdditionalInfo(final SNode node) {
    if (node.getParent() == null) return "";
    return "role: " +
      "<i>" +
      StringUtil.escapeXml(node.getRoleInParent()) +
      "</i>" +
      "; " +
      "in: " +
      "<i>" +
      snodeRepresentation(node.getParent()) +
      "</i>";
  }

  @Override
  public String getText(TextOptions options) {
    boolean showCounter = options.myCounters && isResultsSection();
    String counter = showCounter ? " " + sizeRepresentation(options.mySubresultsCount) : "";
    return super.getText(options) + counter;
  }

  private static String sizeRepresentation(int size) {
    return "<font color='gray'>(" + Integer.toString(size) + ")</font>";
  }
}
