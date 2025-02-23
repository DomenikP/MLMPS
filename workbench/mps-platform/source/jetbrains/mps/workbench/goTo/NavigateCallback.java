/*
 * Copyright 2003-2011 JetBrains s.r.o.
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
package jetbrains.mps.workbench.goTo;

import com.intellij.ide.util.gotoByName.ChooseByNamePopupComponent;
import com.intellij.navigation.NavigationItem;

import javax.swing.SwingUtilities;

public class NavigateCallback extends ChooseByNamePopupComponent.Callback {
  private NavigationItem myNavigationItem;

  @Override
  public void onClose() {
    if (myNavigationItem == null) {
      return;
    }
    Runnable navigateRunnable = new Runnable() {
      @Override
      public void run() {
        myNavigationItem.navigate(true);
      }
    };
    SwingUtilities.invokeLater(navigateRunnable);
  }

  @Override
  public void elementChosen(Object element) {
    myNavigationItem = (NavigationItem) element;
  }
}
