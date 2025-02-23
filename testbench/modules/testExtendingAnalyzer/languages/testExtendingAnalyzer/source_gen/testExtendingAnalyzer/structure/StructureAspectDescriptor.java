package testExtendingAnalyzer.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.BaseStructureAspectDescriptor;
import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import jetbrains.mps.smodel.runtime.impl.ConceptDescriptorBuilder;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;
import java.util.Collection;
import java.util.Arrays;
import org.jetbrains.annotations.Nullable;

public class StructureAspectDescriptor extends BaseStructureAspectDescriptor {

  /*package*/ final ConceptDescriptor myConceptNullSafeDotExpression = new ConceptDescriptorBuilder("testExtendingAnalyzer.structure.NullSafeDotExpression", MetaIdFactory.conceptId(0x3ac033a0bffa48e3L, 0xa843a40cbdd89859L, 0x13ac54c0e557dc29L)).super_("jetbrains.mps.baseLanguage.structure.DotExpression").super_(MetaIdFactory.conceptId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L)).parents("jetbrains.mps.baseLanguage.structure.DotExpression").parentIds(MetaIdFactory.conceptId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L)).alias("safe", "").create();
  /*package*/ final ConceptDescriptor myConceptNullUnsafeDotExpression = new ConceptDescriptorBuilder("testExtendingAnalyzer.structure.NullUnsafeDotExpression", MetaIdFactory.conceptId(0x3ac033a0bffa48e3L, 0xa843a40cbdd89859L, 0x13ac54c0e557da2eL)).super_("jetbrains.mps.baseLanguage.structure.DotExpression").super_(MetaIdFactory.conceptId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L)).parents("jetbrains.mps.baseLanguage.structure.DotExpression").parentIds(MetaIdFactory.conceptId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L)).alias("unsafe", "").create();

  @Override
  public Collection<ConceptDescriptor> getDescriptors() {
    return Arrays.asList(myConceptNullSafeDotExpression, myConceptNullUnsafeDotExpression);
  }

  @Override
  @Nullable
  public ConceptDescriptor getDescriptor(String conceptFqName) {
    switch (Arrays.binarySearch(stringSwitchCases_1htk8d_a0a0g, conceptFqName)) {
      case 0:
        return myConceptNullSafeDotExpression;
      case 1:
        return myConceptNullUnsafeDotExpression;
      default:
        return null;
    }
  }
  private static String[] stringSwitchCases_1htk8d_a0a0g = new String[]{"testExtendingAnalyzer.structure.NullSafeDotExpression", "testExtendingAnalyzer.structure.NullUnsafeDotExpression"};
}
