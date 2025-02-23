package jetbrains.mps.ide.datatransfer;

/*Generated by MPS */

import java.awt.datatransfer.Transferable;
import com.intellij.ide.CopyPasteManagerEx;
import java.awt.datatransfer.DataFlavor;

public class TextPasteUtil {
  public TextPasteUtil() {
  }
  public static boolean hasStringInClipboard() {
    Transferable content = null;
    for (Transferable trf : CopyPasteManagerEx.getInstanceEx().getAllContents()) {
      if (trf != null && trf.isDataFlavorSupported(DataFlavor.stringFlavor)) {
        content = trf;
      }
      break;
    }
    return content != null;
  }
  public static String getStringFromClipboard() {
    Transferable content = null;
    for (Transferable trf : CopyPasteManagerEx.getInstanceEx().getAllContents()) {
      if (trf != null && trf.isDataFlavorSupported(DataFlavor.stringFlavor)) {
        content = trf;
      }
      break;
    }
    if (content == null) {
      return null;
    }
    return TextPasteUtil.getStringFromTransferable(content);
  }
  public static String getStringFromTransferable(Transferable content) {
    String result;
    try {
      result = (String) content.getTransferData(DataFlavor.stringFlavor);
    } catch (Exception e) {
      return null;
    }
    return result;
  }
}
