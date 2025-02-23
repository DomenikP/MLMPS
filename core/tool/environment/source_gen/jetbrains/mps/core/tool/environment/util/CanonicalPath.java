package jetbrains.mps.core.tool.environment.util;

/*Generated by MPS */

import org.jetbrains.annotations.NonNls;
import java.io.File;
import java.util.StringTokenizer;
import java.util.Stack;

public class CanonicalPath {
  private final String canonicalPath;

  public CanonicalPath(@NonNls String path) {
    canonicalPath = convertToCanonical(path);
  }

  private static String convertToCanonical(@NonNls String path) {
    if (path == null || path.length() == 0) {
      return path;
    }
    path = path.replace(File.separatorChar, '/');
    final StringTokenizer tokenizer = new StringTokenizer(path, "/");
    final Stack<String> stack = new Stack<String>();
    while (tokenizer.hasMoreTokens()) {
      final String token = tokenizer.nextToken();
      if ("..".equals(token)) {
        if (stack.isEmpty()) {
          return null;
        }
        stack.pop();
      } else
      if (token.length() != 0 && !(".".equals(token))) {
        stack.push(token);
      }
    }
    final StringBuilder result = new StringBuilder(path.length());
    if (path.charAt(0) == '/') {
      result.append("/");
    }
    for (int i = 0; i < stack.size(); i++) {
      String str = stack.get(i);
      if (i > 0) {
        result.append('/');
      }
      result.append(str);
    }
    return result.toString();
  }

  public boolean isValidDirectory() {
    File file = new File(canonicalPath);
    if (file.exists() && file.isDirectory()) {
      return true;
    }
    return false;
  }

  public String getValue() {
    return canonicalPath;
  }
}
