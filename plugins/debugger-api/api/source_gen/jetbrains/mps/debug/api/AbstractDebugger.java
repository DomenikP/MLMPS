package jetbrains.mps.debug.api;

/*Generated by MPS */

import jetbrains.mps.debug.api.breakpoints.IBreakpoint;
import jetbrains.mps.debug.api.breakpoints.IBreakpointKind;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.debug.api.breakpoints.BreakpointProvidersManager;
import jetbrains.mps.debug.api.breakpoints.IBreakpointsProvider;
import org.jetbrains.annotations.NonNls;
import jetbrains.mps.ide.ThreadUtils;
import jetbrains.mps.debug.api.breakpoints.ILocationBreakpoint;
import org.jetbrains.mps.openapi.model.SNode;
import com.intellij.openapi.project.Project;

public abstract class AbstractDebugger<B extends IBreakpoint, K extends IBreakpointKind<B>> implements IDebugger<B, K> {
  @NotNull
  private final String myName;
  private final BreakpointProvidersManager myBreakpointsProviderManager;
  private final Debuggers myDebuggers;
  private IBreakpointsProvider<B, K> myBreakpointsProvider;
  public AbstractDebugger(@NonNls String name, @NotNull Debuggers debuggers, @NotNull BreakpointProvidersManager breakpointsProviderManager) {
    myName = name;
    myDebuggers = debuggers;
    myBreakpointsProviderManager = breakpointsProviderManager;
  }
  public void init() {
    ThreadUtils.assertEDT();
    myBreakpointsProvider = getBreakpointsProvider();
    myDebuggers.registerDebugger(this);
    myBreakpointsProviderManager.registerProvider(myBreakpointsProvider);
  }
  public void dispose() {
    ThreadUtils.assertEDT();
    myBreakpointsProviderManager.unregisterProvider(myBreakpointsProvider);
    myDebuggers.unRegisterDebugger(this);
  }
  @NotNull
  @Override
  public String getName() {
    return myName;
  }
  @Override
  public ILocationBreakpoint createBreakpoint(SNode node, String kindName, Project project) {
    K kind = null;
    for (K k : myBreakpointsProvider.getAllKinds()) {
      if (k.getName().equals(kindName)) {
        kind = k;
        break;
      }
    }
    if (kind != null && myBreakpointsProvider.canCreateFromNode(kind)) {
      return myBreakpointsProvider.createFromNode(node, kind, project);
    }
    return null;
  }
}
