package jetbrains.mps.internalCollections.test.nullHacks;

/*Generated by MPS */

import jetbrains.mps.internalCollections.test.closures.Util_Test;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.ISelector;
import jetbrains.mps.internal.collections.runtime.ITranslator2;
import java.util.Iterator;
import jetbrains.mps.baseLanguage.closures.runtime.YieldingIterator;
import junit.framework.Assert;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import java.util.List;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import jetbrains.mps.internal.collections.runtime.ISequenceClosure;
import java.util.Arrays;

public class NullValues_Test extends Util_Test {
  public void test_nullValues() throws Exception {
    if (Sequence.IGNORE_NULL_VALUES) {
      Iterable<Integer> input = this.input5();
      this.assertIterableEquals(this.expectEmpty(), Sequence.fromIterable(input).select(new ISelector<Integer, Integer>() {
        public Integer select(Integer it) {
          return (Integer) null;
        }
      }));
      this.assertIterableEquals(this.expectEmpty(), Sequence.fromIterable(input).translate(new ITranslator2<Integer, Integer>() {
        public Iterable<Integer> translate(final Integer it) {
          return new Iterable<Integer>() {
            public Iterator<Integer> iterator() {
              return new YieldingIterator<Integer>() {
                private int __CP__ = 0;
                protected boolean moveToNext() {
__loop__:
                  do {
__switch__:
                    switch (this.__CP__) {
                      case -1:
                        assert false : "Internal error";
                        return false;
                      case 2:
                        this.__CP__ = 1;
                        this.yield((Integer) null);
                        return true;
                      case 0:
                        this.__CP__ = 2;
                        break;
                      default:
                        break __loop__;
                    }
                  } while (true);
                  return false;
                }
              };
            }
          };
        }
      }));
    } else {
      Iterable<Integer> input = this.input5();
      Iterable<Integer> seqOfNulls = Sequence.fromIterable(input).select(new ISelector<Integer, Integer>() {
        public Integer select(Integer it) {
          return (Integer) null;
        }
      });
      Assert.assertSame(Sequence.fromIterable(input).count(), Sequence.fromIterable(seqOfNulls).count());
      Assert.assertTrue(Sequence.fromIterable(seqOfNulls).all(new IWhereFilter<Integer>() {
        public boolean accept(Integer it) {
          return it == null;
        }
      }));
      Iterable<Integer> seqOfNulls2 = Sequence.fromIterable(input).translate(new ITranslator2<Integer, Integer>() {
        public Iterable<Integer> translate(final Integer it) {
          return new Iterable<Integer>() {
            public Iterator<Integer> iterator() {
              return new YieldingIterator<Integer>() {
                private int __CP__ = 0;
                protected boolean moveToNext() {
__loop__:
                  do {
__switch__:
                    switch (this.__CP__) {
                      case -1:
                        assert false : "Internal error";
                        return false;
                      case 2:
                        this.__CP__ = 3;
                        this.yield((Integer) null);
                        return true;
                      case 3:
                        this.__CP__ = 1;
                        this.yield((Integer) null);
                        return true;
                      case 0:
                        this.__CP__ = 2;
                        break;
                      default:
                        break __loop__;
                    }
                  } while (true);
                  return false;
                }
              };
            }
          };
        }
      });
      Assert.assertSame(Sequence.fromIterable(input).count() * 2, Sequence.fromIterable(seqOfNulls2).count());
      Assert.assertFalse(Sequence.fromIterable(seqOfNulls2).any(new IWhereFilter<Integer>() {
        public boolean accept(Integer it) {
          return it != null;
        }
      }));
    }
  }
  public void test_nullElements() throws Exception {
    if (Sequence.IGNORE_NULL_VALUES) {
      List<Integer> list5 = ListSequence.fromListAndArray(new ArrayList<Integer>(), 1, 2, 3, 4, 5);
      ListSequence.fromList(list5).addElement(null);
      this.assertIterableEquals(this.expect5(), list5);
      ListSequence.fromList(list5).removeElement(null);
      this.assertIterableEquals(this.expect5(), list5);
      ListSequence.fromList(list5).removeSequence(Sequence.fromIterable(this.input5()));
      this.assertEmptyList(list5);
      this.assertEmptyList(ListSequence.fromListAndArray(new ArrayList<Integer>(), null));
      this.assertEmptyList(ListSequence.fromListAndArray(new ArrayList<Integer>(), null, null));
      Integer nullvalue = null;
      this.assertEmptyList(ListSequence.fromListAndArray(new ArrayList<Integer>(), nullvalue));
    } else {
      List<Integer> list5 = ListSequence.fromListAndArray(new ArrayList<Integer>(), 1, 2, 3, 4, 5);
      ListSequence.fromList(list5).addElement(null);
      this.assertIterableEquals(this.expect5(), ListSequence.fromList(list5).take(5));
      Assert.assertSame(6, ListSequence.fromList(list5).count());
      Assert.assertNull(ListSequence.fromList(list5).last());
      ListSequence.fromList(list5).removeElement(null);
      this.assertIterableEquals(this.expect5(), list5);
      ListSequence.fromList(list5).removeSequence(Sequence.fromIterable(this.input5()));
      Assert.assertSame(0, ListSequence.fromList(list5).count());
      Assert.assertTrue(ListSequence.fromList(list5).isEmpty());
      Assert.assertSame(1, ListSequence.fromList(ListSequence.fromListAndArray(new ArrayList<Integer>(), (Integer) null)).count());
      Assert.assertSame(2, ListSequence.fromList(ListSequence.fromListAndArray(new ArrayList<Integer>(), null, null)).count());
      Assert.assertSame(3, ListSequence.fromList(ListSequence.fromListAndArray(new ArrayList<Integer>(), null, null)).addSequence(Sequence.fromIterable(Sequence.fromArray(new Integer[]{null}))).count());
      final Integer nullvalue = null;
      Assert.assertSame(1, ListSequence.fromList(ListSequence.fromListAndArray(new ArrayList<Integer>(), nullvalue)).count());
      Assert.assertSame(3, Sequence.fromIterable(Sequence.fromClosure(new ISequenceClosure<Integer>() {
        public Iterable<Integer> iterable() {
          return new Iterable<Integer>() {
            public Iterator<Integer> iterator() {
              return new YieldingIterator<Integer>() {
                private int __CP__ = 0;
                protected boolean moveToNext() {
__loop__:
                  do {
__switch__:
                    switch (this.__CP__) {
                      case -1:
                        assert false : "Internal error";
                        return false;
                      case 2:
                        this.__CP__ = 3;
                        this.yield((Integer) null);
                        return true;
                      case 3:
                        this.__CP__ = 4;
                        this.yield((Integer) null);
                        return true;
                      case 4:
                        this.__CP__ = 1;
                        this.yield(nullvalue);
                        return true;
                      case 0:
                        this.__CP__ = 2;
                        break;
                      default:
                        break __loop__;
                    }
                  } while (true);
                  return false;
                }
              };
            }
          };
        }
      })).count());
    }
  }
  public void test_nullsViaBackdoor() throws Exception {
    if (Sequence.IGNORE_NULL_VALUES) {
      List<String> listWithNulls = Arrays.asList("foo", null, "bar");
      String[] arr = ListSequence.fromList(listWithNulls).toGenericArray(String.class);
      Assert.assertSame(3, arr.length);
      Assert.assertEquals("foo", arr[0]);
      Assert.assertNull(arr[1]);
      Assert.assertEquals("bar", arr[2]);
      List<String> dlist = ListSequence.fromList(listWithNulls).distinct().toListSequence();
      Assert.assertSame(2, ListSequence.fromList(dlist).count());
      this.assertIterableEquals(Arrays.asList("foo", "bar"), dlist);
    } else {
      List<String> listWithNulls = Arrays.asList("foo", null, "bar");
      String[] arr = ListSequence.fromList(listWithNulls).toGenericArray(String.class);
      Assert.assertSame(3, arr.length);
      Assert.assertEquals("foo", arr[0]);
      Assert.assertNull(arr[1]);
      Assert.assertEquals("bar", arr[2]);
      List<String> dlist = ListSequence.fromList(listWithNulls).distinct().toListSequence();
      Assert.assertSame(3, ListSequence.fromList(dlist).count());
      this.assertIterableEquals(Arrays.asList("foo", null, "bar"), dlist);
    }
  }
  private void assertEmptyList(List<Integer> emptyList) {
    this.assertIterableEquals(this.expectEmpty(), emptyList);
    ListSequence.fromList(emptyList).removeElement(null);
    this.assertIterableEquals(this.expectEmpty(), emptyList);
    ListSequence.fromList(emptyList).addElement(null);
    this.assertIterableEquals(this.expectEmpty(), emptyList);
    ListSequence.fromList(emptyList).addSequence(Sequence.fromIterable(this.input5()));
    this.assertIterableEquals(this.expect5(), emptyList);
  }
}
