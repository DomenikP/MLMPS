<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c8b27be8-26f9-4593-9ae5-f70dd005d131(jetbrains.mps.testbench.suite.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="0" />
  </languages>
  <imports>
    <import index="tpe3" ref="r:00000000-0000-4000-0000-011c895902d7(jetbrains.mps.baseLanguage.unitTest.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ">
        <child id="1169127546356" name="extends" index="PrDN$" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="3U1VhSFTRMP">
    <property role="TrG5h" value="ModuleSuite" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="173Z5qAOsM8" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="moduleRef" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="173Z5qAOtuz" resolve="IModuleRef" />
    </node>
    <node concept="1TJgyj" id="3U1VhSFTRMY" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="testRef" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="3U1VhSFTRMU" resolve="ITestRef" />
    </node>
    <node concept="PrWs8" id="3U1VhSFTRMQ" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="3U1VhSFTRMR">
    <property role="TrG5h" value="TestCaseRef" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3U1VhSFTRN0" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="testCase" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpe3:hGB2rPm" resolve="ITestCase" />
    </node>
    <node concept="PrWs8" id="3U1VhSFTRMV" role="PzmwI">
      <ref role="PrY4T" node="3U1VhSFTRMU" resolve="ITestRef" />
    </node>
  </node>
  <node concept="1TIwiD" id="3U1VhSFTRMS">
    <property role="TrG5h" value="JUnit4TestCaseRef" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3U1VhSFTRN1" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="klass" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz12cDA" resolve="ClassConcept" />
    </node>
    <node concept="PrWs8" id="3U1VhSFTRMW" role="PzmwI">
      <ref role="PrY4T" node="3U1VhSFTRMU" resolve="ITestRef" />
    </node>
  </node>
  <node concept="1TIwiD" id="3U1VhSFTRMT">
    <property role="TrG5h" value="JUnit3TestCaseRef" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="173Z5qAOgIZ" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="klass" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz12cDA" resolve="ClassConcept" />
    </node>
    <node concept="PrWs8" id="3U1VhSFTRMX" role="PzmwI">
      <ref role="PrY4T" node="3U1VhSFTRMU" resolve="ITestRef" />
    </node>
  </node>
  <node concept="PlHQZ" id="3U1VhSFTRMU">
    <property role="TrG5h" value="ITestRef" />
    <node concept="1TJgyi" id="7tF7F0nXrLu" role="1TKVEl">
      <property role="TrG5h" value="muted" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="173Z5qAOsJs">
    <property role="TrG5h" value="SolutionRef" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="173Z5qAOsJt" role="1TKVEl">
      <property role="TrG5h" value="moduleFQName" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="173Z5qAOsJu" role="1TKVEl">
      <property role="TrG5h" value="moduleID" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="PrWs8" id="173Z5qAOtu_" role="PzmwI">
      <ref role="PrY4T" node="173Z5qAOtuz" resolve="IModuleRef" />
    </node>
  </node>
  <node concept="PlHQZ" id="173Z5qAOtuz">
    <property role="TrG5h" value="IModuleRef" />
    <node concept="PrWs8" id="59Sq3i1kbkJ" role="PrDN$">
      <ref role="PrY4T" to="tpck:19gBtYEAf4C" resolve="InterfacePart" />
    </node>
  </node>
</model>

