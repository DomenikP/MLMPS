package jetbrains.mps.debugger.java.runtime.state.customViewers;

/*Generated by MPS */

import jetbrains.mps.debugger.java.api.state.proxy.ValueWrapperFactory;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.debugger.java.api.evaluation.proxies.IValueProxy;
import jetbrains.mps.debugger.java.api.evaluation.proxies.IObjectValueProxy;
import com.sun.jdi.StringReference;
import jetbrains.mps.debugger.java.api.state.proxy.ValueWrapper;
import com.sun.jdi.ThreadReference;
import java.util.List;
import jetbrains.mps.debug.api.programState.IWatchable;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;

public class StringWrapperFactory extends ValueWrapperFactory {
  @Override
  public boolean canWrapValue(@NotNull IValueProxy value) {
    return value instanceof IObjectValueProxy && value.getJDIValue() instanceof StringReference;
  }
  @Override
  public String getWrappedType() {
    return "Ljava/lang/String;";
  }
  @Override
  public String getName() {
    return "String";
  }
  public ValueWrapper createValueWrapper(IValueProxy value, ThreadReference threadReference) {
    return new StringWrapperFactory.JavaStringValue(((IObjectValueProxy) value), threadReference);
  }
  private static class JavaStringValue extends ObjectWrapperFactory.JavaObjectValue {
    public JavaStringValue(IObjectValueProxy value, ThreadReference threadReference) {
      super(value, threadReference);
    }
    @Override
    public boolean isStructure() {
      return false;
    }
    @Override
    public List<IWatchable> getSubvaluesImpl() {
      return ListSequence.fromList(new ArrayList<IWatchable>());
    }
  }

}
