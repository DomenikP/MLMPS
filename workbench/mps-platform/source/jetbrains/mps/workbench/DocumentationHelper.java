/*
 * Copyright 2003-2014 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package jetbrains.mps.workbench;

import com.intellij.openapi.application.ApplicationInfo;
import org.jetbrains.annotations.NotNull;

public final class DocumentationHelper {
  public static String getConfluenceBase() {
    return "http://confluence.jetbrains.com/display/MPSD" + ApplicationInfo.getInstance().getMajorVersion() +
        removeTrailingBugfixVersion(ApplicationInfo.getInstance().getMinorVersion()) + "/";
  }

  @NotNull
  private static String removeTrailingBugfixVersion(@NotNull final String minorVersion) {
    final int index = minorVersion.indexOf('.');
    return (index > 0) ? minorVersion.substring(0, index) : minorVersion;
  }
}
