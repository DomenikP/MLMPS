package jetbrains.mps.lang.editor.actions.test;

/*Generated by MPS */

import jetbrains.mps.MPSLaunch;
import jetbrains.mps.lang.test.runtime.BaseTransformationTest;
import org.junit.Test;
import jetbrains.mps.lang.test.runtime.BaseEditorTestBody;

@MPSLaunch
public class Comment_SecondStatementTest_Test extends BaseTransformationTest {
  public Comment_SecondStatementTest_Test() {
  }
  @Test
  public void test_Comment_SecondStatementTest() throws Throwable {
    this.initTest("${mps_home}", "r:c44f4b8c-137c-4225-8bd9-38d232a9b736(jetbrains.mps.lang.editor.actions.test)");
    this.runTest("jetbrains.mps.lang.editor.actions.test.Comment_SecondStatementTest_Test$TestBody", "testMethod", false);
  }
  @MPSLaunch
  public static class TestBody extends BaseEditorTestBody {
    public TestBody() {
    }
    @Override
    public void testMethodImpl() throws Exception {
      initEditor("6047905657530802660", "6047905657530802678");
      this.invokeAction("jetbrains.mps.ide.editor.actions.Comment_Action");
    }
  }
}
