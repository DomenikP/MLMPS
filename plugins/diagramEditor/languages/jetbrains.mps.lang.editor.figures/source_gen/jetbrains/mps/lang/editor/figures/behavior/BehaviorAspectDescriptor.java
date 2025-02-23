package jetbrains.mps.lang.editor.figures.behavior;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.BehaviorDescriptor;
import java.util.Arrays;
import jetbrains.mps.smodel.runtime.interpreted.BehaviorAspectInterpreted;

public class BehaviorAspectDescriptor implements jetbrains.mps.smodel.runtime.BehaviorAspectDescriptor {
  public BehaviorAspectDescriptor() {
  }
  public BehaviorDescriptor getDescriptor(String fqName) {
    switch (Arrays.binarySearch(stringSwitchCases_846f5o_a0a0b, fqName)) {
      case 0:
        return new ExternalViewFigure_BehaviorDescriptor();
      case 1:
        return new ExternalViewFigureParameter_BehaviorDescriptor();
      case 2:
        return new FigureAttribute_BehaviorDescriptor();
      case 4:
        return new FigureParameterAttributeMethod_BehaviorDescriptor();
      case 3:
        return new FigureParameterAttributeField_BehaviorDescriptor();
      case 5:
        return new FigureParameterAttributeViewProperty_BehaviorDescriptor();
      default:
        return BehaviorAspectInterpreted.getInstance().getDescriptor(fqName);
    }
  }
  private static String[] stringSwitchCases_846f5o_a0a0b = new String[]{"jetbrains.mps.lang.editor.figures.structure.ExternalViewFigure", "jetbrains.mps.lang.editor.figures.structure.ExternalViewFigureParameter", "jetbrains.mps.lang.editor.figures.structure.FigureAttribute", "jetbrains.mps.lang.editor.figures.structure.FigureParameterAttributeField", "jetbrains.mps.lang.editor.figures.structure.FigureParameterAttributeMethod", "jetbrains.mps.lang.editor.figures.structure.FigureParameterAttributeViewProperty"};
}
