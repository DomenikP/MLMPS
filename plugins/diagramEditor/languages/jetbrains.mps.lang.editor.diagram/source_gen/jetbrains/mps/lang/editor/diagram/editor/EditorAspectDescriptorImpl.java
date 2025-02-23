package jetbrains.mps.lang.editor.diagram.editor;

/*Generated by MPS */

import jetbrains.mps.openapi.editor.descriptor.EditorAspectDescriptor;
import java.util.Collection;
import jetbrains.mps.openapi.editor.descriptor.ConceptEditor;
import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import java.util.Arrays;
import java.util.Collections;
import jetbrains.mps.openapi.editor.descriptor.ConceptEditorComponent;

public class EditorAspectDescriptorImpl implements EditorAspectDescriptor {

  public Collection<ConceptEditor> getEditors(ConceptDescriptor descriptor) {
    switch (Arrays.binarySearch(stringSwitchCases_xbvbvu_a0a0b, descriptor.getConceptFqName())) {
      case 0:
        return Collections.<ConceptEditor>singletonList(new AbstractDiagramCreation_Editor());
      case 1:
        return Collections.<ConceptEditor>singletonList(new ActionGroup_Editor());
      case 2:
        return Collections.<ConceptEditor>singletonList(new AttributedFigureReference_Editor());
      case 3:
        return Collections.<ConceptEditor>singletonList(new BLQueryArgument_Editor());
      case 4:
        return Collections.<ConceptEditor>singletonList(new CellModel_Diagram_Editor());
      case 5:
        return Collections.<ConceptEditor>singletonList(new CellModel_DiagramConnector_Editor());
      case 6:
        return Collections.<ConceptEditor>singletonList(new CellModel_DiagramNode_Editor());
      case 7:
        return Collections.<ConceptEditor>singletonList(new CellModel_DiagramPort_Editor());
      case 8:
        return Collections.<ConceptEditor>singletonList(new ConnectionEndBLQuery_Editor());
      case 9:
        return Collections.<ConceptEditor>singletonList(new CreationActionReference_Editor());
      case 10:
        return Collections.<ConceptEditor>singletonList(new CustomElementReference_Editor());
      case 11:
        return Collections.<ConceptEditor>singletonList(new DiagramElementBLQuery_Editor());
      case 12:
        return Collections.<ConceptEditor>singletonList(new ExternalFigureReference_Editor());
      case 13:
        return Collections.<ConceptEditor>singletonList(new FigureParameterMapping_Editor());
      case 14:
        return Collections.<ConceptEditor>singletonList(new LinkArgument_Editor());
      case 15:
        return Collections.<ConceptEditor>singletonList(new Palette_Editor());
      case 16:
        return Collections.<ConceptEditor>singletonList(new PropertyArgument_Editor());
      case 17:
        return Collections.<ConceptEditor>singletonList(new Separator_Editor());
      case 18:
        return Collections.<ConceptEditor>singletonList(new ThisEditorNodeExpression_Editor());
      default:
    }
    return Collections.<ConceptEditor>emptyList();
  }
  public Collection<ConceptEditorComponent> getEditorComponents(ConceptDescriptor descriptor, String editorComponentId) {
    switch (Arrays.binarySearch(stringSwitchCases_xbvbvu_a0a0c, descriptor.getConceptFqName())) {
      case 0:
        if ("jetbrains.mps.lang.editor.diagram.editor.HandlersComponent".equals(editorComponentId)) {
          return Collections.<ConceptEditorComponent>singletonList(new HandlersComponent());
        }
        break;
      case 1:
        if ("jetbrains.mps.lang.editor.diagram.editor.IconSelectorComponent".equals(editorComponentId)) {
          return Collections.<ConceptEditorComponent>singletonList(new IconSelectorComponent());
        }
        break;
      case 2:
        if ("jetbrains.mps.lang.editor.diagram.editor.HandlersComponent".equals(editorComponentId)) {
          return Collections.<ConceptEditorComponent>singletonList(new ConnectorCreationHandlers_EditorComponent());
        }
        break;
      case 3:
        if ("jetbrains.mps.lang.editor.diagram.editor.HandlersComponent".equals(editorComponentId)) {
          return Collections.<ConceptEditorComponent>singletonList(new DiagramElementCreationHandlers_EditoComponent());
        }
        break;
      default:
    }
    return Collections.<ConceptEditorComponent>emptyList();
  }


  private static String[] stringSwitchCases_xbvbvu_a0a0b = new String[]{"jetbrains.mps.lang.editor.diagram.structure.AbstractDiagramCreation", "jetbrains.mps.lang.editor.diagram.structure.ActionGroup", "jetbrains.mps.lang.editor.diagram.structure.AttributedFigureReference", "jetbrains.mps.lang.editor.diagram.structure.BLQueryArgument", "jetbrains.mps.lang.editor.diagram.structure.CellModel_Diagram", "jetbrains.mps.lang.editor.diagram.structure.CellModel_DiagramConnector", "jetbrains.mps.lang.editor.diagram.structure.CellModel_DiagramNode", "jetbrains.mps.lang.editor.diagram.structure.CellModel_DiagramPort", "jetbrains.mps.lang.editor.diagram.structure.ConnectionEndBLQuery", "jetbrains.mps.lang.editor.diagram.structure.CreationActionReference", "jetbrains.mps.lang.editor.diagram.structure.CustomElementReference", "jetbrains.mps.lang.editor.diagram.structure.DiagramElementBLQuery", "jetbrains.mps.lang.editor.diagram.structure.ExternalFigureReference", "jetbrains.mps.lang.editor.diagram.structure.FigureParameterMapping", "jetbrains.mps.lang.editor.diagram.structure.LinkArgument", "jetbrains.mps.lang.editor.diagram.structure.Palette", "jetbrains.mps.lang.editor.diagram.structure.PropertyArgument", "jetbrains.mps.lang.editor.diagram.structure.Separator", "jetbrains.mps.lang.editor.diagram.structure.ThisEditorNodeExpression"};
  private static String[] stringSwitchCases_xbvbvu_a0a0c = new String[]{"jetbrains.mps.lang.editor.diagram.structure.AbstractDiagramCreation", "jetbrains.mps.lang.editor.diagram.structure.CreationActionReference", "jetbrains.mps.lang.editor.diagram.structure.DiagramConnectorCreation", "jetbrains.mps.lang.editor.diagram.structure.DiagramElementsCreation"};
}
