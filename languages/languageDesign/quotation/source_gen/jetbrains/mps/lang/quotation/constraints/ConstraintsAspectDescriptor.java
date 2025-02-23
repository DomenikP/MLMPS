package jetbrains.mps.lang.quotation.constraints;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.ConstraintsDescriptor;
import jetbrains.mps.smodel.adapter.ids.SConceptId;
import jetbrains.mps.smodel.runtime.base.BaseConstraintsDescriptor;

public class ConstraintsAspectDescriptor implements jetbrains.mps.smodel.runtime.ConstraintsAspectDescriptor {
  public ConstraintsAspectDescriptor() {
  }
  public ConstraintsDescriptor getDescriptor(SConceptId conceptId) {
    long id = conceptId.getIdValue();
    if (id == 0x1168c104659L) {
      return new Quotation_Constraints();
    }
    if (id == 0x1168c104656L) {
      return new AbstractAntiquotation_Constraints();
    }
    if (id == 0x4bb51009d20b0325L) {
      return new NodeBuilderInitProperty_Constraints();
    }
    if (id == 0x4bb51009d20c8e1aL) {
      return new NodeBuilderInitLink_Constraints();
    }
    if (id == 0x4bb51009d20a4aa0L) {
      return new NodeBuilderNode_Constraints();
    }
    if (id == 0x718e3f4cb7a0fa93L) {
      return new NodeBuilderRef_Constraints();
    }
    if (id == 0x718e3f4cb7a2df32L) {
      return new NodeBuilderList_Constraints();
    }
    if (id == 0x718e3f4cb7a3132eL) {
      return new NodeBuilderExpression_Constraints();
    }
    if (id == 0x4bb51009d20a4a9dL) {
      return new NodeBuilder_Constraints();
    }
    return new BaseConstraintsDescriptor(conceptId);
  }
}
