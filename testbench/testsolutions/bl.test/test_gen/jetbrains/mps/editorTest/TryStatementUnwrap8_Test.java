package jetbrains.mps.editorTest;

/*Generated by MPS */

import jetbrains.mps.MPSLaunch;
import jetbrains.mps.lang.test.runtime.BaseTransformationTest;
import org.junit.Test;
import jetbrains.mps.lang.test.runtime.BaseEditorTestBody;

@MPSLaunch
public class TryStatementUnwrap8_Test extends BaseTransformationTest {
  public TryStatementUnwrap8_Test() {
  }
  @Test
  public void test_TryStatementUnwrap8() throws Throwable {
    this.initTest("${mps_home}", "r:914ee49a-537d-44b2-a5fb-bac87a54743d(jetbrains.mps.editorTest@tests)");
    this.runTest("jetbrains.mps.editorTest.TryStatementUnwrap8_Test$TestBody", "testMethod", false);
  }
  @MPSLaunch
  public static class TestBody extends BaseEditorTestBody {
    public TestBody() {
    }
    @Override
    public void testMethodImpl() throws Exception {
      initEditor("4666906971842265326", "4666906971842265345");
      this.invokeAction("jetbrains.mps.ide.editor.actions.Backspace_Action");
    }
  }
}
