/*
 * Copyright 2003-2015 JetBrains s.r.o.
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
package jetbrains.mps.smodel.tracing;

import org.jetbrains.mps.openapi.model.SNode;

/**
 * Created by domenik on 27.10.15 KW:44.
 */
public class TextTrace {

  public String reducedFunctionName;
  public String liftedFunctionName;
  public boolean inline;
  public boolean virtual;

  public TextTrace(String reducedFunctionName, String liftedFunctionName, boolean inline) {
    this.reducedFunctionName = reducedFunctionName;
    this.liftedFunctionName = liftedFunctionName;
    this.inline = inline;
  }
}
