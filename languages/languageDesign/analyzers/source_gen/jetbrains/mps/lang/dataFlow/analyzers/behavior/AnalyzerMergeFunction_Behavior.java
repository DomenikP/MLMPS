package jetbrains.mps.lang.dataFlow.analyzers.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import java.util.List;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import jetbrains.mps.internal.collections.runtime.ListSequence;

public class AnalyzerMergeFunction_Behavior {
  public static void init(SNode thisNode) {
  }
  public static SNode virtual_getExpectedReturnType_1213877374441(SNode thisNode) {
    return SLinkOperations.getTarget(SNodeOperations.getNodeAncestor(thisNode, MetaAdapterFactory.getConcept(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5bd9e43c93f46789L, "jetbrains.mps.lang.dataFlow.analyzers.structure.Analyzer"), false, false), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5bd9e43c93f46789L, 0x7f5b799a00c51bbbL, "latticeElementType"));
  }
  public static List<SNode> virtual_getApplicableConceptFunctionParameter_3044950653914717136(SAbstractConcept thisConcept) {
    List<SNode> result = BehaviorReflection.invokeSuperStatic((Class<List<SNode>>) ((Class) Object.class), SNodeOperations.asSConcept(thisConcept), "jetbrains.mps.baseLanguage.structure.ConceptFunction", "virtual_getApplicableConceptFunctionParameter_3044950653914717136", new Object[]{});
    ListSequence.fromList(result).addElement(SNodeOperations.getNode("r:8b09f5e2-b403-4747-aaa3-eac5acb1f753(jetbrains.mps.lang.dataFlow.analyzers.structure)", "4746038179140566716"));
    ListSequence.fromList(result).addElement(SNodeOperations.getNode("r:8b09f5e2-b403-4747-aaa3-eac5acb1f753(jetbrains.mps.lang.dataFlow.analyzers.structure)", "4746038179140566725"));
    return result;
  }
}
