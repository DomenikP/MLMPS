package jetbrains.mps.build.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.build.util.DependenciesHelper;
import jetbrains.mps.build.util.UnpackHelper;

public class BuildExternalLayoutDependency_BehaviorDescriptor extends BuildDependency_BehaviorDescriptor implements BuildLayout_PathElement_BehaviorDescriptor {
  public BuildExternalLayoutDependency_BehaviorDescriptor() {
  }
  public void virtual_appendName_1368030936106665465(SNode thisNode, SNode parent, StringBuilder sb) {
    BuildExternalLayoutDependency_Behavior.virtual_appendName_1368030936106665465(thisNode, parent, sb);
  }
  public String virtual_location_7117056644539862594(SNode thisNode, DependenciesHelper helper, Object artifactId) {
    return BuildExternalLayoutDependency_Behavior.virtual_location_7117056644539862594(thisNode, helper, artifactId);
  }
  public void virtual_unpack_7128123785277710736(SNode thisNode, UnpackHelper helper, Iterable<Object> artifacts) {
    BuildExternalLayoutDependency_Behavior.virtual_unpack_7128123785277710736(thisNode, helper, artifacts);
  }
  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.build.structure.BuildExternalLayoutDependency";
  }
}
