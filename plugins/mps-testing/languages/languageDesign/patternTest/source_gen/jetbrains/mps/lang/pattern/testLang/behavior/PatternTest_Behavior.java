package jetbrains.mps.lang.pattern.testLang.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import java.util.List;
import java.util.ArrayList;
import jetbrains.mps.util.SNodeOperations;

public class PatternTest_Behavior {
  public static void init(SNode thisNode) {
  }
  public static String call_getPatternTestName_394224946578869064(SNode thisNode) {
    return "Pattern" + SPropertyOperations.getString(thisNode, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")) + "_Test";
  }
  public static List<SNode> virtual_getTestSet_1216130724401(SNode thisNode) {
    List<SNode> methods = new ArrayList<SNode>();
    methods.add(thisNode);
    return methods;
  }
  public static String virtual_getClassName_1216136193905(SNode thisNode) {
    return SNodeOperations.getModelLongName(thisNode.getModel()) + "." + PatternTest_Behavior.call_getPatternTestName_394224946578869064(thisNode);
  }
  public static List<SNode> virtual_getTestMethods_2148145109766218395(SNode thisNode) {
    List<SNode> methods = new ArrayList<SNode>();
    methods.add(thisNode);
    return methods;
  }
  public static SNode virtual_getTestCase_1216134500045(SNode thisNode) {
    return thisNode;
  }
  public static String virtual_getTestName_1216136419751(SNode thisNode) {
    return "testMethod";
  }
  public static boolean virtual_isMpsStartRequired_3310779261129403089(SNode thisNode) {
    return true;
  }
}
