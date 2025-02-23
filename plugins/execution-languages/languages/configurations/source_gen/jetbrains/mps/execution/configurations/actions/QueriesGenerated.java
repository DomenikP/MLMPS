package jetbrains.mps.execution.configurations.actions;

/*Generated by MPS */

import java.util.List;
import jetbrains.mps.openapi.editor.cells.SubstituteAction;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.action.NodeSubstituteActionsFactoryContext;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.util.Computable;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.action.DefaultChildNodeSubstituteAction;
import org.jetbrains.mps.openapi.model.SModel;
import jetbrains.mps.smodel.action.SNodeFactoryOperations;
import jetbrains.mps.smodel.action.NodeSubstitutePreconditionContext;

public class QueriesGenerated {
  public static List<SubstituteAction> nodeSubstituteActionsBuilder_ActionsFactory_ConfigurationFromExecutorReference_7806358006983765719(final IOperationContext operationContext, final NodeSubstituteActionsFactoryContext _context) {
    List<SubstituteAction> result = ListSequence.fromList(new ArrayList<SubstituteAction>());
    {
      SNode outputConcept = MetaAdapterFactory.getConcept(0x22e72e4c0f6946ceL, 0x84036750153aa615L, 0x6c55c13f5bcac62fL, "jetbrains.mps.execution.configurations.structure.ConfigurationFromExecutorReference").getDeclarationNode();
      SNode childConcept = (SNode) _context.getChildConcept();
      if (SConceptOperations.isSuperConceptOf(SNodeOperations.asSConcept(childConcept), SNodeOperations.asSConcept(outputConcept))) {
        Iterable<String> queryResult = new Computable<Iterable<String>>() {
          public Iterable<String> compute() {
            return ListSequence.fromListAndArray(new ArrayList<String>(), SPropertyOperations.getString(SNodeOperations.cast(SNodeOperations.getContainingRoot(_context.getParentNode()), MetaAdapterFactory.getConcept(0x22e72e4c0f6946ceL, 0x84036750153aa615L, 0x2153d8f1c1f52479L, "jetbrains.mps.execution.configurations.structure.AbstractRunConfigurationExecutor")), MetaAdapterFactory.getProperty(0x22e72e4c0f6946ceL, 0x84036750153aa615L, 0x2153d8f1c1f52479L, 0x1acdeec3ca0ad49cL, "configurationName")));
          }
        }.compute();
        if (queryResult != null) {
          for (final String item : queryResult) {
            ListSequence.fromList(result).addElement(new DefaultChildNodeSubstituteAction(outputConcept, item, _context.getParentNode(), _context.getCurrentTargetNode(), _context.getChildSetter()) {
              public SNode createChildNode(Object parameterObject, SModel model, String pattern) {
                return SNodeFactoryOperations.createNewNode(SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x22e72e4c0f6946ceL, 0x84036750153aa615L, 0x6c55c13f5bcac62fL, "jetbrains.mps.execution.configurations.structure.ConfigurationFromExecutorReference")), null);
              }
            });
          }
        }
      }
    }
    return result;
  }
  public static boolean nodeSubstituteActionsBuilder_Precondition_ConfigurationFromExecutorReference_2186841766260429985(final IOperationContext operationContext, final NodeSubstitutePreconditionContext _context) {
    return SNodeOperations.isInstanceOf(SNodeOperations.getContainingRoot(_context.getParentNode()), MetaAdapterFactory.getConcept(0x22e72e4c0f6946ceL, 0x84036750153aa615L, 0x2153d8f1c1f52479L, "jetbrains.mps.execution.configurations.structure.AbstractRunConfigurationExecutor"));
  }
}
