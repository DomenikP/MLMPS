package jetbrains.mps.baseLanguage.test;

/*Generated by MPS */

import jetbrains.mps.MPSLaunch;
import jetbrains.mps.lang.test.runtime.BaseTransformationTest;
import org.junit.Test;
import jetbrains.mps.lang.test.runtime.BaseTestBody;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;

@MPSLaunch
public class Validation_Test extends BaseTransformationTest {
  @Test
  public void test_NodeRecursiveConstructorInvocationCheck6923385624929443716() throws Throwable {
    this.initTest("${mps_home}", "r:00000000-0000-4000-0000-011c895902c7(jetbrains.mps.baseLanguage.test@tests)", false);
    this.runTest("jetbrains.mps.baseLanguage.test.Validation_Test$TestBody", "test_NodeRecursiveConstructorInvocationCheck6923385624929443716", true);
  }
  @Test
  public void test_NodeRecursiveConstructorInvocationCheck6923385624929443718() throws Throwable {
    this.initTest("${mps_home}", "r:00000000-0000-4000-0000-011c895902c7(jetbrains.mps.baseLanguage.test@tests)", false);
    this.runTest("jetbrains.mps.baseLanguage.test.Validation_Test$TestBody", "test_NodeRecursiveConstructorInvocationCheck6923385624929443718", true);
  }
  @Test
  public void test_ErrorMessagesCheck7868761255934329326() throws Throwable {
    this.initTest("${mps_home}", "r:00000000-0000-4000-0000-011c895902c7(jetbrains.mps.baseLanguage.test@tests)", false);
    this.runTest("jetbrains.mps.baseLanguage.test.Validation_Test$TestBody", "test_ErrorMessagesCheck7868761255934329326", true);
  }
  @Test
  public void test_NodeRecursiveConstructorInvocationCheck6923385624929451248() throws Throwable {
    this.initTest("${mps_home}", "r:00000000-0000-4000-0000-011c895902c7(jetbrains.mps.baseLanguage.test@tests)", false);
    this.runTest("jetbrains.mps.baseLanguage.test.Validation_Test$TestBody", "test_NodeRecursiveConstructorInvocationCheck6923385624929451248", true);
  }
  @Test
  public void test_NodeRecursiveConstructorInvocationCheck6923385624929451250() throws Throwable {
    this.initTest("${mps_home}", "r:00000000-0000-4000-0000-011c895902c7(jetbrains.mps.baseLanguage.test@tests)", false);
    this.runTest("jetbrains.mps.baseLanguage.test.Validation_Test$TestBody", "test_NodeRecursiveConstructorInvocationCheck6923385624929451250", true);
  }
  @Test
  public void test_NodeRecursiveConstructorInvocationCheck6923385624929609456() throws Throwable {
    this.initTest("${mps_home}", "r:00000000-0000-4000-0000-011c895902c7(jetbrains.mps.baseLanguage.test@tests)", false);
    this.runTest("jetbrains.mps.baseLanguage.test.Validation_Test$TestBody", "test_NodeRecursiveConstructorInvocationCheck6923385624929609456", true);
  }
  @Test
  public void test_NodeRecursiveConstructorInvocationCheck6923385624929609458() throws Throwable {
    this.initTest("${mps_home}", "r:00000000-0000-4000-0000-011c895902c7(jetbrains.mps.baseLanguage.test@tests)", false);
    this.runTest("jetbrains.mps.baseLanguage.test.Validation_Test$TestBody", "test_NodeRecursiveConstructorInvocationCheck6923385624929609458", true);
  }
  @Test
  public void test_NodeIllegalCombinationOfModifiersCheck6923385624927426848() throws Throwable {
    this.initTest("${mps_home}", "r:00000000-0000-4000-0000-011c895902c7(jetbrains.mps.baseLanguage.test@tests)", false);
    this.runTest("jetbrains.mps.baseLanguage.test.Validation_Test$TestBody", "test_NodeIllegalCombinationOfModifiersCheck6923385624927426848", true);
  }
  @MPSLaunch
  public static class TestBody extends BaseTestBody {
    public void test_NodeRecursiveConstructorInvocationCheck6923385624929443716() throws Exception {
      SNode operation = SNodeOperations.cast(this.getRealNodeById("6923385624929443716"), MetaAdapterFactory.getConcept(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11b07797e20L, "jetbrains.mps.lang.test.structure.NodeCheckOperation"));
      BehaviorReflection.invokeVirtual(Void.class, operation, "virtual_perform_245688835340859348", new Object[]{this.getRealNodeById("3951985765451229135")});
    }
    public void test_NodeRecursiveConstructorInvocationCheck6923385624929443718() throws Exception {
      SNode operation = SNodeOperations.cast(this.getRealNodeById("6923385624929443718"), MetaAdapterFactory.getConcept(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11b07797e20L, "jetbrains.mps.lang.test.structure.NodeCheckOperation"));
      BehaviorReflection.invokeVirtual(Void.class, operation, "virtual_perform_245688835340859348", new Object[]{this.getRealNodeById("3951985765451229135")});
    }
    public void test_ErrorMessagesCheck7868761255934329326() throws Exception {
      SNode operation = SNodeOperations.cast(this.getRealNodeById("7868761255934329326"), MetaAdapterFactory.getConcept(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11b07797e20L, "jetbrains.mps.lang.test.structure.NodeCheckOperation"));
      BehaviorReflection.invokeVirtual(Void.class, operation, "virtual_perform_245688835340859348", new Object[]{this.getRealNodeById("7868761255934329296")});
    }
    public void test_NodeRecursiveConstructorInvocationCheck6923385624929451248() throws Exception {
      SNode operation = SNodeOperations.cast(this.getRealNodeById("6923385624929451248"), MetaAdapterFactory.getConcept(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11b07797e20L, "jetbrains.mps.lang.test.structure.NodeCheckOperation"));
      BehaviorReflection.invokeVirtual(Void.class, operation, "virtual_perform_245688835340859348", new Object[]{this.getRealNodeById("3951985765451229787")});
    }
    public void test_NodeRecursiveConstructorInvocationCheck6923385624929451250() throws Exception {
      SNode operation = SNodeOperations.cast(this.getRealNodeById("6923385624929451250"), MetaAdapterFactory.getConcept(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11b07797e20L, "jetbrains.mps.lang.test.structure.NodeCheckOperation"));
      BehaviorReflection.invokeVirtual(Void.class, operation, "virtual_perform_245688835340859348", new Object[]{this.getRealNodeById("3951985765451229787")});
    }
    public void test_NodeRecursiveConstructorInvocationCheck6923385624929609456() throws Exception {
      SNode operation = SNodeOperations.cast(this.getRealNodeById("6923385624929609456"), MetaAdapterFactory.getConcept(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11b07797e20L, "jetbrains.mps.lang.test.structure.NodeCheckOperation"));
      BehaviorReflection.invokeVirtual(Void.class, operation, "virtual_perform_245688835340859348", new Object[]{this.getRealNodeById("3951985765451228860")});
    }
    public void test_NodeRecursiveConstructorInvocationCheck6923385624929609458() throws Exception {
      SNode operation = SNodeOperations.cast(this.getRealNodeById("6923385624929609458"), MetaAdapterFactory.getConcept(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11b07797e20L, "jetbrains.mps.lang.test.structure.NodeCheckOperation"));
      BehaviorReflection.invokeVirtual(Void.class, operation, "virtual_perform_245688835340859348", new Object[]{this.getRealNodeById("3951985765451228860")});
    }
    public void test_NodeIllegalCombinationOfModifiersCheck6923385624927426848() throws Exception {
      SNode operation = SNodeOperations.cast(this.getRealNodeById("6923385624927426848"), MetaAdapterFactory.getConcept(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11b07797e20L, "jetbrains.mps.lang.test.structure.NodeCheckOperation"));
      BehaviorReflection.invokeVirtual(Void.class, operation, "virtual_perform_245688835340859348", new Object[]{this.getRealNodeById("3951985765451231039")});
    }
  }
}
