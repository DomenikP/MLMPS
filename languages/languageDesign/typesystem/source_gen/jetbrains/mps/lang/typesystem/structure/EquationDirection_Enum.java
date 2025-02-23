package jetbrains.mps.lang.typesystem.structure;

/*Generated by MPS */

import java.util.List;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.LinkedList;

public enum EquationDirection_Enum {
  none("none", "none"),
  left(":=", "left"),
  right("=:", "right");

  private String myName;
  public String getName() {
    return this.myName;
  }
  public String getValueAsString() {
    return this.myValue;
  }
  public static List<EquationDirection_Enum> getConstants() {
    List<EquationDirection_Enum> list = ListSequence.fromList(new LinkedList<EquationDirection_Enum>());
    ListSequence.fromList(list).addElement(EquationDirection_Enum.none);
    ListSequence.fromList(list).addElement(EquationDirection_Enum.left);
    ListSequence.fromList(list).addElement(EquationDirection_Enum.right);
    return list;
  }
  public static EquationDirection_Enum getDefault() {
    return EquationDirection_Enum.none;
  }
  public static EquationDirection_Enum parseValue(String value) {
    if (value == null) {
      return EquationDirection_Enum.getDefault();
    }
    if (value.equals(EquationDirection_Enum.none.getValueAsString())) {
      return EquationDirection_Enum.none;
    }
    if (value.equals(EquationDirection_Enum.left.getValueAsString())) {
      return EquationDirection_Enum.left;
    }
    if (value.equals(EquationDirection_Enum.right.getValueAsString())) {
      return EquationDirection_Enum.right;
    }
    return EquationDirection_Enum.getDefault();
  }
  private String myValue;
  EquationDirection_Enum(String name, String value) {
    this.myName = name;
    this.myValue = value;
  }
  public String getValue() {
    return this.myValue;
  }
}
