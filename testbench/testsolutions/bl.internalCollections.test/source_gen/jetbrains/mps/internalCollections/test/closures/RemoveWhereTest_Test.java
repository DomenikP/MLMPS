package jetbrains.mps.internalCollections.test.closures;

/*Generated by MPS */

import java.util.List;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import junit.framework.Assert;
import java.util.Queue;
import jetbrains.mps.internal.collections.runtime.QueueSequence;
import java.util.PriorityQueue;

public class RemoveWhereTest_Test extends Util_Test {
  public void test_listRemoveWhere() throws Exception {
    List<String> l1 = Sequence.fromIterable(Sequence.fromArray(new String[]{"a", "bb", "ccc", "dddd"})).toListSequence();
    ListSequence.fromList(l1).removeWhere(new IWhereFilter<String>() {
      public boolean accept(String it) {
        return it.length() > 2;
      }
    });
    Assert.assertEquals("a", ListSequence.fromList(l1).first());
    Assert.assertEquals("bb", ListSequence.fromList(l1).last());
  }
  public void test_queueRemoveWhere() throws Exception {
    Queue<String> pq = QueueSequence.fromQueueAndArray(new PriorityQueue<String>(), "a", "aa", "b", "bb");
    Queue<String> q = QueueSequence.fromQueue(pq).removeWhere(new IWhereFilter<String>() {
      public boolean accept(String it) {
        return it.length() > 1;
      }
    });
    Assert.assertEquals("a", QueueSequence.fromQueue(q).removeFirstElement());
    Assert.assertEquals("b", QueueSequence.fromQueue(q).removeFirstElement());
    Assert.assertTrue(QueueSequence.fromQueue(q).isEmpty());
  }
  public RemoveWhereTest_Test() {
  }
}
