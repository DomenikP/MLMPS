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
package jetbrains.mps.smodel;

import jetbrains.mps.extapi.model.PersistenceProblem;
import jetbrains.mps.smodel.persistence.def.ModelReadException;
import org.jdom.Element;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModel.Problem;
import org.jetbrains.mps.openapi.model.SModel.Problem.Kind;
import org.jetbrains.mps.openapi.model.SModelReference;

import java.util.Collections;

/**
 * evgeny, 11/20/12
 */
public class DefaultSModel extends LazySModel {

  private final SModelHeader myHeader;
  private Element myStructureModificationHistory;

  public DefaultSModel(@NotNull SModelReference modelReference) {
    this(modelReference, new SModelHeader());
  }

  public DefaultSModel(@NotNull SModelReference modelReference, @Nullable SModelHeader modelHeader) {
    super(modelReference);
    myHeader = modelHeader == null ? new SModelHeader() : modelHeader;
    // make sure header's model reference, if any, is identical to what clients see for the model
    myHeader.setModelReference(modelReference);
  }

  @NotNull
  public SModelHeader getSModelHeader() {
    return myHeader;
  }

  @Override
  public SModel createEmptyCopy() {
    return new DefaultSModel(getReference());
  }

  @Override
  public void copyPropertiesTo(SModel to) {
    super.copyPropertiesTo(to);
    if (to instanceof DefaultSModel) {
      DefaultSModel dto = (DefaultSModel) to;
      dto.myHeader.setPersistenceVersion(myHeader.getPersistenceVersion());
      // XXX not clear why we copy nothing but persistence version. What about doNotGenerate and other properties from header?
    }
  }

  /**
   * @deprecated Use SModel.getRefactoringsHistory()
   */
  @Deprecated
  public Element getRefactoringHistoryElement() {
    return myStructureModificationHistory;
  }

  @Deprecated
  public void setRefactoringHistoryElement(Element history) {
    ModelChange.assertLegalChange(this);

    myStructureModificationHistory = history;
  }

  public static class InvalidDefaultSModel extends DefaultSModel implements InvalidSModel {

    @Nullable
    private final ModelReadException myCause;

    public InvalidDefaultSModel(@NotNull SModelReference modelReference, @Nullable ModelReadException cause) {
      super(modelReference);
      myCause = cause;
    }

    @NotNull
    @Override
    public Iterable<Problem> getProblems() {
      return Collections.<Problem>singleton(
        new PersistenceProblem(Kind.Load, myCause == null ? "Couldn't read model." : myCause.getMessageEx(), null, true));
    }
  }
}
