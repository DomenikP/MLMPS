package jetbrains.mps.console.ideCommands.behavior;

/*Generated by MPS */

import jetbrains.mps.console.base.behavior.InterpretedCommand_BehaviorDescriptor;
import jetbrains.mps.lang.core.behavior.IDontSubstituteByDefault_BehaviorDescriptor;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.console.tool.ConsoleContext;
import jetbrains.mps.console.tool.ConsoleStream;

public abstract class RebuildProjectCommand_BehaviorDescriptor extends InterpretedCommand_BehaviorDescriptor implements IDontSubstituteByDefault_BehaviorDescriptor {
  public RebuildProjectCommand_BehaviorDescriptor() {
  }
  public void virtual_doExecute_3321948346081469500(SNode thisNode, ConsoleContext context, ConsoleStream console) {
    RebuildProjectCommand_Behavior.virtual_doExecute_3321948346081469500(thisNode, context, console);
  }
  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.console.ideCommands.structure.RebuildProjectCommand";
  }
}
