package jetbrains.mps.baseLanguage.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;

public class UnknownDotCall_Behavior {
  public static void init(SNode thisNode) {
  }
  public static _FunctionTypes._return_P0_E0<? extends SNode> virtual_evaluateSubst_8136348407761606764(SNode thisNode) {
    return ResolveUnknownUtil.resolveDotCall(thisNode);
  }
}
