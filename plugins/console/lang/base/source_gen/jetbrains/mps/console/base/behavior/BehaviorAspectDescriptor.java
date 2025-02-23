package jetbrains.mps.console.base.behavior;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.BehaviorDescriptor;
import java.util.Arrays;
import jetbrains.mps.smodel.runtime.interpreted.BehaviorAspectInterpreted;

public class BehaviorAspectDescriptor implements jetbrains.mps.smodel.runtime.BehaviorAspectDescriptor {
  public BehaviorAspectDescriptor() {
  }
  public BehaviorDescriptor getDescriptor(String fqName) {
    switch (Arrays.binarySearch(stringSwitchCases_846f5o_a0a0b, fqName)) {
      case 7:
        return new History_BehaviorDescriptor();
      case 2:
        return new CommandHolder_BehaviorDescriptor();
      case 13:
        return new NodeWithClosure_BehaviorDescriptor();
      case 15:
        return new PastedNodeReference_BehaviorDescriptor();
      case 11:
        return new NodeReferenceString_BehaviorDescriptor();
      case 10:
        return new NodeReferencePresentation_BehaviorDescriptor();
      case 8:
        return new ModifiedCommandHistoryItem_BehaviorDescriptor();
      case 5:
        return new HelpCommand_BehaviorDescriptor();
      case 3:
        return new ConsoleRoot_BehaviorDescriptor();
      case 23:
        return new Response_BehaviorDescriptor();
      case 12:
        return new NodeResponseItem_BehaviorDescriptor();
      case 24:
        return new TextResponseItem_BehaviorDescriptor();
      case 9:
        return new NewLineResponseItem_BehaviorDescriptor();
      case 6:
        return new HelpConceptReference_BehaviorDescriptor();
      case 14:
        return new OutputConsoleRoot_BehaviorDescriptor();
      case 4:
        return new ExceptionHolder_BehaviorDescriptor();
      case 0:
        return new BLCommand_BehaviorDescriptor();
      case 1:
        return new BLExpression_BehaviorDescriptor();
      case 16:
        return new PrintExpression_BehaviorDescriptor();
      case 17:
        return new PrintNodeExpression_BehaviorDescriptor();
      case 18:
        return new PrintNodeReferenceExpression_BehaviorDescriptor();
      case 19:
        return new PrintSequenceExpression_BehaviorDescriptor();
      case 20:
        return new PrintTextExpression_BehaviorDescriptor();
      case 22:
        return new ProjectScope_BehaviorDescriptor();
      case 21:
        return new ProjectExpression_BehaviorDescriptor();
      default:
        return BehaviorAspectInterpreted.getInstance().getDescriptor(fqName);
    }
  }
  private static String[] stringSwitchCases_846f5o_a0a0b = new String[]{"jetbrains.mps.console.base.structure.BLCommand", "jetbrains.mps.console.base.structure.BLExpression", "jetbrains.mps.console.base.structure.CommandHolder", "jetbrains.mps.console.base.structure.ConsoleRoot", "jetbrains.mps.console.base.structure.ExceptionHolder", "jetbrains.mps.console.base.structure.HelpCommand", "jetbrains.mps.console.base.structure.HelpConceptReference", "jetbrains.mps.console.base.structure.History", "jetbrains.mps.console.base.structure.ModifiedCommandHistoryItem", "jetbrains.mps.console.base.structure.NewLineResponseItem", "jetbrains.mps.console.base.structure.NodeReferencePresentation", "jetbrains.mps.console.base.structure.NodeReferenceString", "jetbrains.mps.console.base.structure.NodeResponseItem", "jetbrains.mps.console.base.structure.NodeWithClosure", "jetbrains.mps.console.base.structure.OutputConsoleRoot", "jetbrains.mps.console.base.structure.PastedNodeReference", "jetbrains.mps.console.base.structure.PrintExpression", "jetbrains.mps.console.base.structure.PrintNodeExpression", "jetbrains.mps.console.base.structure.PrintNodeReferenceExpression", "jetbrains.mps.console.base.structure.PrintSequenceExpression", "jetbrains.mps.console.base.structure.PrintTextExpression", "jetbrains.mps.console.base.structure.ProjectExpression", "jetbrains.mps.console.base.structure.ProjectScope", "jetbrains.mps.console.base.structure.Response", "jetbrains.mps.console.base.structure.TextResponseItem"};
}
