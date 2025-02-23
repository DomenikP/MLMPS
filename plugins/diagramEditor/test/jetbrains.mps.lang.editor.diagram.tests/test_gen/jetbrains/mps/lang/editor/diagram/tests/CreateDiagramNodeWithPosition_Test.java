package jetbrains.mps.lang.editor.diagram.tests;

/*Generated by MPS */

import jetbrains.mps.MPSLaunch;
import jetbrains.mps.lang.test.runtime.BaseTransformationTest;
import org.junit.Test;
import jetbrains.mps.lang.test.runtime.BaseEditorTestBody;
import java.awt.Component;
import java.awt.event.MouseEvent;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;

@MPSLaunch
public class CreateDiagramNodeWithPosition_Test extends BaseTransformationTest {
  public CreateDiagramNodeWithPosition_Test() {
  }
  @Test
  public void test_CreateDiagramNodeWithPosition() throws Throwable {
    this.initTest("${mps_home}", "r:e41d7e03-7ef3-4161-a48a-e48d8152e422(jetbrains.mps.lang.editor.diagram.tests@tests)");
    this.runTest("jetbrains.mps.lang.editor.diagram.tests.CreateDiagramNodeWithPosition_Test$TestBody", "testMethod", false);
  }
  @MPSLaunch
  public static class TestBody extends BaseEditorTestBody {
    public TestBody() {
    }
    @Override
    public void testMethodImpl() throws Exception {
      initEditor("8794120090375902403", "8794120090375978070");
      {
        int x_rbsw50_a0 = 150;
        int y_rbsw50_a0 = 150;
        Component eventTargetComponent_rbsw50_a0 = this.processMouseEvent(x_rbsw50_a0, y_rbsw50_a0, MouseEvent.MOUSE_PRESSED);
        this.processSecondaryMouseEvent(eventTargetComponent_rbsw50_a0, x_rbsw50_a0, y_rbsw50_a0, MouseEvent.MOUSE_RELEASED);
        this.processSecondaryMouseEvent(eventTargetComponent_rbsw50_a0, x_rbsw50_a0, y_rbsw50_a0, MouseEvent.MOUSE_CLICKED);
      }
      {
        int x_rbsw50_b0 = 150;
        int y_rbsw50_b0 = 150;
        Component eventTargetComponent_rbsw50_b0 = this.processMouseEvent(x_rbsw50_b0, y_rbsw50_b0, MouseEvent.MOUSE_PRESSED);
        this.processSecondaryMouseEvent(eventTargetComponent_rbsw50_b0, x_rbsw50_b0, y_rbsw50_b0, MouseEvent.MOUSE_RELEASED);
        this.processSecondaryMouseEvent(eventTargetComponent_rbsw50_b0, x_rbsw50_b0, y_rbsw50_b0, MouseEvent.MOUSE_CLICKED);
      }
      this.typeString("Node");
      this.pressKeys(ListSequence.fromListAndArray(new ArrayList<String>(), " ENTER"));
    }
  }
}
