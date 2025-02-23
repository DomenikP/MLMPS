package jetbrains.mps.lang.generator.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.pattern.GeneratedMatchingPattern;
import jetbrains.mps.typesystem.inference.TypeChecker;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.pattern.IMatchingPattern;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.lang.pattern.runtime.PatternUtil;
import jetbrains.mps.util.IterableUtil;

public class MapSrcListMacro_Behavior {
  public static void init(SNode thisNode) {
  }
  public static SNode virtual_getInputNodeTypeInsideOfMacro_1213877290799(SNode thisNode) {
    {
      GeneratedMatchingPattern pattern_wn5chh_a0a = new MapSrcListMacro_Behavior.Pattern_wn5chh_a0a0a0a1();
      SNode coercedNode_wn5chh_a0a = TypeChecker.getInstance().getRuntimeSupport().coerce_(TypeChecker.getInstance().getTypeOf(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getContainmentLink(0xb401a68083254110L, 0x8fd384331ff25befL, 0x107ce4fbf98L, 0x11003977640L, "sourceNodesQuery"))), pattern_wn5chh_a0a);
      if (coercedNode_wn5chh_a0a != null) {
        return ((SNode) pattern_wn5chh_a0a.getFieldValue("patternVar_concept"));
      } else {
      }
    }
    return null;
  }
  public static class Pattern_wn5chh_a0a0a0a1 extends GeneratedMatchingPattern implements IMatchingPattern {
    /*package*/ SNode patternVar_concept;
    public Pattern_wn5chh_a0a0a0a1() {
    }
    public SConcept getConcept() {
      return MetaAdapterFactory.getConcept(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x10c25fb076aL, "jetbrains.mps.baseLanguage.collections.structure.ListType");
    }
    public boolean match(SNode nodeToMatch) {
      {
        SNode nodeToMatch_wn5chh_a0a0a0 = nodeToMatch;
        if (!(MetaAdapterFactory.getConcept(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x10c25fb076aL, "jetbrains.mps.baseLanguage.collections.structure.ListType").equals(nodeToMatch_wn5chh_a0a0a0.getConcept()))) {
          return false;
        }
        {
          SContainmentLink childRole_wn5chh_ = MetaAdapterFactory.getContainmentLink(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x10c25fb076aL, 0x10c25fe95c5L, "elementType");
          if (!(PatternUtil.hasNChildren(nodeToMatch_wn5chh_a0a0a0, childRole_wn5chh_, 1))) {
            return false;
          }
          {
            SNode childVar_wn5chh_a0a0a0a = IterableUtil.get(nodeToMatch_wn5chh_a0a0a0.getChildren(childRole_wn5chh_), 0);
            {
              SNode nodeToMatch_wn5chh_a0a0a0a = childVar_wn5chh_a0a0a0a;
              if (!(MetaAdapterFactory.getConcept(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L, 0x108f968b3caL, "jetbrains.mps.lang.smodel.structure.SNodeType").equals(nodeToMatch_wn5chh_a0a0a0a.getConcept()))) {
                return false;
              }
              patternVar_concept = nodeToMatch_wn5chh_a0a0a0a.getReferenceTarget(MetaAdapterFactory.getReferenceLink(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L, 0x108f968b3caL, 0x1090e46ca51L, "concept"));
            }
          }
        }
      }
      return true;
    }
    public boolean hasAntiquotations() {
      return false;
    }
    public void fillFieldValuesFrom(GeneratedMatchingPattern pattern) {
      if (pattern != null && pattern.getClass() == this.getClass()) {
        patternVar_concept = (SNode) pattern.getFieldValue("patternVar_concept");
      }
    }
    public Object getFieldValue(String fieldName) {
      if ("patternVar_concept".equals(fieldName)) {
        return patternVar_concept;
      }
      return null;
    }
    public void performActions(Object o) {
    }
  }
}
