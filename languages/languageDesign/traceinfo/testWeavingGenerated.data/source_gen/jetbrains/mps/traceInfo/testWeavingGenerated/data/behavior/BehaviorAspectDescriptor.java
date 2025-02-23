package jetbrains.mps.traceInfo.testWeavingGenerated.data.behavior;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.BehaviorDescriptor;
import java.util.Arrays;
import jetbrains.mps.smodel.runtime.interpreted.BehaviorAspectInterpreted;

public class BehaviorAspectDescriptor implements jetbrains.mps.smodel.runtime.BehaviorAspectDescriptor {
  public BehaviorAspectDescriptor() {
  }
  public BehaviorDescriptor getDescriptor(String fqName) {
    switch (Arrays.binarySearch(stringSwitchCases_846f5o_a0a0b, fqName)) {
      case 4:
        return new RootConcept_BehaviorDescriptor();
      case 1:
        return new ChildConceptWeaveEach_BehaviorDescriptor();
      case 0:
        return new ChildConceptWeave_BehaviorDescriptor();
      case 3:
        return new ChildConceptWeaveMany_BehaviorDescriptor();
      case 2:
        return new ChildConceptWeaveEachMany_BehaviorDescriptor();
      default:
        return BehaviorAspectInterpreted.getInstance().getDescriptor(fqName);
    }
  }
  private static String[] stringSwitchCases_846f5o_a0a0b = new String[]{"jetbrains.mps.traceInfo.testWeavingGenerated.data.structure.ChildConceptWeave", "jetbrains.mps.traceInfo.testWeavingGenerated.data.structure.ChildConceptWeaveEach", "jetbrains.mps.traceInfo.testWeavingGenerated.data.structure.ChildConceptWeaveEachMany", "jetbrains.mps.traceInfo.testWeavingGenerated.data.structure.ChildConceptWeaveMany", "jetbrains.mps.traceInfo.testWeavingGenerated.data.structure.RootConcept"};
}
