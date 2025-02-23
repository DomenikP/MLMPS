package jetbrains.mps.ide.actions;

/*Generated by MPS */

import com.intellij.openapi.ui.DialogWrapper;
import javax.swing.JComponent;
import javax.swing.JTextArea;
import com.intellij.openapi.project.Project;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NonNls;
import javax.swing.JPanel;
import java.awt.BorderLayout;
import javax.swing.JLabel;
import jetbrains.mps.ide.datatransfer.TextPasteUtil;
import javax.swing.JScrollPane;
import com.intellij.ui.ScrollPaneFactory;
import java.awt.Dimension;
import com.intellij.unscramble.AnalyzeStacktraceUtil;

public class AnalyzeStacktraceDialog extends DialogWrapper {
  private JComponent myComponent;
  private JTextArea myText;
  private Project myProject;
  public AnalyzeStacktraceDialog(Project project) {
    super(project);
    setTitle("Analyze Stacktrace");
    setOKButtonText("&OK");
    setCancelButtonText("Ca&ncel");
    this.myProject = project;
    this.myComponent = this.createPanel();

    init();
  }
  @Nullable
  @NonNls
  @Override
  protected String getDimensionServiceKey() {
    return AnalyzeStacktraceDialog.class.getCanonicalName();
  }
  @Nullable
  @Override
  public JComponent getPreferredFocusedComponent() {
    return myText;
  }
  @Nullable
  @Override
  protected JComponent createCenterPanel() {
    return this.myComponent;
  }
  public JComponent createPanel() {
    JPanel panel = new JPanel(new BorderLayout());

    panel.add(new JLabel("Put a stack trace here:"), BorderLayout.NORTH);

    this.myText = new JTextArea("");
    String str = TextPasteUtil.getStringFromClipboard();
    if (str != null) {
      this.myText.setText(str);
    }
    this.myText.setCaretPosition(0);

    JScrollPane scrollPane = ScrollPaneFactory.createScrollPane(myText);
    scrollPane.setAutoscrolls(true);
    scrollPane.setPreferredSize(new Dimension(400, 400));

    panel.add(scrollPane, BorderLayout.CENTER);
    return panel;
  }
  @Override
  protected void doOKAction() {
    AnalyzeStacktraceUtil.addConsole(myProject, null, "<Stacktrace>", myText.getText());
    super.doOKAction();
  }
}
