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
package jetbrains.mps.generator.template;

import jetbrains.mps.generator.runtime.TemplateContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;

/**
 * Evgeny Gryaznov, 11/15/10
 */
public class TemplateQueryContextWithMacro extends TemplateQueryContext {

  /**
   * @since 3.1
   */
  public TemplateQueryContextWithMacro(@NotNull TemplateContext context, @NotNull SNodeReference macroNode) {
    // public, not protected - although work in progress and, perhaps, ITemplateGenerator shall be gone, as well, there are usages
    // e.g. in InsertMacro, that instantiate this context directly and may benefit from this cons.
    super(macroNode, context);
  }

  @Override
  public SNode getTemplateNode() {
    SNode macro = super.getTemplateNode();
    return macro == null ? null : macro.getParent();
  }
}
