package jetbrains.mps.workbench.dialogs.project.components.parts.editors;

/*Generated by MPS */

import javax.swing.DefaultCellEditor;
import javax.swing.JTextField;
import java.awt.Component;
import javax.swing.JTable;
import jetbrains.mps.project.structure.modules.ModuleReference;

public class ModuleEditor extends DefaultCellEditor {
  private JTextField myTextField;
  public ModuleEditor() {
    super(new JTextField());
    myTextField = (JTextField) super.getComponent();
    myTextField.setOpaque(false);
  }
  @Override
  public Object getCellEditorValue() {
    return myTextField.getText();
  }
  @Override
  public Component getTableCellEditorComponent(final JTable table, Object value, boolean isSelected, final int row, final int column) {
    myTextField.setText(((ModuleReference) value).getModuleName());
    return super.getTableCellEditorComponent(table, value, isSelected, row, column);
  }
}
