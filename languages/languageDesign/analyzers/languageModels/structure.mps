<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:8b09f5e2-b403-4747-aaa3-eac5acb1f753(jetbrains.mps.lang.dataFlow.analyzers.structure)">
  <persistence version="9" />
  <languages>
    <use id="97a52717-898f-4598-8150-573d9fd03868" name="jetbrains.mps.lang.dataFlow.analyzers" version="-1" />
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tp3t" ref="r:00000000-0000-4000-0000-011c89590345(jetbrains.mps.lang.pattern.structure)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="4628067390765956807" name="final" index="R5$K2" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="5404671619616246344" name="staticScope" index="2_RsDV" />
        <property id="1160488491229" name="iconPath" index="MwhBj" />
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="5JpT3MjX6u9">
    <property role="19KtqR" value="true" />
    <property role="MwhBj" value="${language_descriptor}/icons/DataFlowAnalyser.png" />
    <property role="TrG5h" value="Analyzer" />
    <property role="3GE5qa" value="Analyzer" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="47tk9ge7tjt" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="initialFunction" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="47tk9ge7tj8" resolve="AnalyzerInitialFunction" />
    </node>
    <node concept="1TJgyj" id="47tk9ge7sFc" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="mergeFunction" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="5yU2Aq9Usc9" resolve="AnalyzerMergeFunction" />
    </node>
    <node concept="1TJgyj" id="47tk9ge7tju" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="funFunction" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="47tk9ge7tj9" resolve="AnalyzerFunFunction" />
    </node>
    <node concept="PrWs8" id="47tk9ge7sQZ" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="7XrupC0KJIo" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="direction" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="7XrupC0KJI6" resolve="AnalysisDirection" />
    </node>
    <node concept="1TJgyj" id="7XrupC0LhIV" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="latticeElementType" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1H" resolve="Type" />
    </node>
    <node concept="1TJgyj" id="2S_HFuhAG4S" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="instruction" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="5JpT3MjX6ua" resolve="Instruction" />
    </node>
  </node>
  <node concept="1TIwiD" id="5JpT3MjX6ua">
    <property role="TrG5h" value="Instruction" />
    <property role="3GE5qa" value="Instructions" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2S_HFuhAG54" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="parameter" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="nUEAIXm3Ew" resolve="InstructionParameter" />
    </node>
    <node concept="PrWs8" id="5JpT3MjX6ud" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="5yU2Aq9Usc9">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="AnalyzerMergeFunction" />
    <property role="2_RsDV" value="none" />
    <property role="3GE5qa" value="Analyzer.AnalyzerFunctions" />
    <property role="34LRSv" value="merge" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
  </node>
  <node concept="1TIwiD" id="47tk9ge7nUW">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="AnalyzerParameterProgram" />
    <property role="2_RsDV" value="none" />
    <property role="3GE5qa" value="Analyzer.AnalyzerFunctions" />
    <property role="34LRSv" value="program" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="47tk9ge7nV5">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="AnalyzerMergeParameterInput" />
    <property role="2_RsDV" value="none" />
    <property role="3GE5qa" value="Analyzer.AnalyzerFunctions" />
    <property role="34LRSv" value="input" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="47tk9ge7tj8">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="AnalyzerInitialFunction" />
    <property role="2_RsDV" value="none" />
    <property role="3GE5qa" value="Analyzer.AnalyzerFunctions" />
    <property role="34LRSv" value="initial" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
  </node>
  <node concept="1TIwiD" id="47tk9ge7tj9">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="AnalyzerFunFunction" />
    <property role="2_RsDV" value="none" />
    <property role="3GE5qa" value="Analyzer.AnalyzerFunctions" />
    <property role="34LRSv" value="fun" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
  </node>
  <node concept="1TIwiD" id="47tk9ge7tji">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="AnalyzerFunParameterProgramState" />
    <property role="2_RsDV" value="none" />
    <property role="3GE5qa" value="Analyzer.AnalyzerFunctions" />
    <property role="34LRSv" value="state" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="47tk9ge7tjk">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="AnalyzerFunParameterInput" />
    <property role="2_RsDV" value="none" />
    <property role="3GE5qa" value="Analyzer.AnalyzerFunctions" />
    <property role="34LRSv" value="input" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="7XrupC0KJI6">
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="AnalysisDirection" />
    <property role="3GE5qa" value="Analyzer.AnalysisDirection" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="7XrupC0KJI8">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="ForwardDirection" />
    <property role="3GE5qa" value="Analyzer.AnalysisDirection" />
    <property role="34LRSv" value="forward" />
    <ref role="1TJDcQ" node="7XrupC0KJI6" resolve="AnalysisDirection" />
  </node>
  <node concept="1TIwiD" id="7XrupC0KJIm">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="BackwardDirection" />
    <property role="3GE5qa" value="Analyzer.AnalysisDirection" />
    <property role="34LRSv" value="backward" />
    <ref role="1TJDcQ" node="7XrupC0KJI6" resolve="AnalysisDirection" />
  </node>
  <node concept="1TIwiD" id="7XrupC0LiYB">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="AnalyzerFunctionResultType" />
    <property role="2_RsDV" value="none" />
    <property role="3GE5qa" value="Analyzer.AnalyzerFunctions" />
    <property role="34LRSv" value="lattice element type" />
    <ref role="1TJDcQ" to="tpee:fz3vP1H" resolve="Type" />
  </node>
  <node concept="1TIwiD" id="nUEAIXlVr8">
    <property role="19KtqR" value="true" />
    <property role="MwhBj" value="${language_descriptor}/icons/DataFlowRule.png" />
    <property role="TrG5h" value="Rule" />
    <property role="3GE5qa" value="Rules" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3_iNRJnrAh0" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="analyzer" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="5JpT3MjX6u9" resolve="Analyzer" />
    </node>
    <node concept="1TJgyj" id="4ipeeu8Vzea" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="actions" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" to="tpee:fzclF80" resolve="StatementList" />
    </node>
    <node concept="1TJgyj" id="2S_HFuhBt_m" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="condition" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="2S_HFuhBtro" resolve="ApplicableCondition" />
    </node>
    <node concept="PrWs8" id="2S_HFuhBowU" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="nUEAIXm3Ew">
    <property role="TrG5h" value="InstructionParameter" />
    <property role="3GE5qa" value="Instructions" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="nUEAIXm3Ey" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1H" resolve="Type" />
    </node>
    <node concept="PrWs8" id="nUEAIXm3Ex" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="2S_HFuhBtro">
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="ApplicableCondition" />
    <property role="3GE5qa" value="Rules" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="2S_HFuhBt_k" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="2S_HFuhBwHz">
    <property role="TrG5h" value="PatternCondition" />
    <property role="3GE5qa" value="Rules" />
    <ref role="1TJDcQ" node="2S_HFuhBtro" resolve="ApplicableCondition" />
    <node concept="1TJgyj" id="2S_HFuhBx12" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="pattern" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tp3t:gyDMOuh" resolve="PatternExpression" />
    </node>
  </node>
  <node concept="1TIwiD" id="3E8vDQwGYyk">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="EmitInstruction" />
    <property role="2_RsDV" value="none" />
    <property role="34LRSv" value="insert" />
    <ref role="1TJDcQ" to="tp3t:3OYWvKo5t_w" resolve="ActionStatement" />
    <node concept="1TJgyj" id="3E8vDQwHfPr" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="instructionRef" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3E8vDQwHcVs" resolve="InstructionReference" />
    </node>
    <node concept="1TJgyj" id="hWYZ0eE_w2" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="target" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="1l_fWI5bCG" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="position" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tp3t:1r$KkbaWFOW" resolve="InsertPosition" />
    </node>
  </node>
  <node concept="1TIwiD" id="3E8vDQwHcVs">
    <property role="TrG5h" value="InstructionReference" />
    <property role="3GE5qa" value="Instructions" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3E8vDQwHcV_" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="instruction" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="5JpT3MjX6ua" resolve="Instruction" />
    </node>
    <node concept="1TJgyj" id="3E8vDQwHcVt" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="argument" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="DMZNGGDWmK">
    <property role="TrG5h" value="RuleReference" />
    <property role="3GE5qa" value="Rules" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="DMZNGGDWmL" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="rule" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="nUEAIXlVr8" resolve="Rule" />
    </node>
  </node>
  <node concept="1TIwiD" id="1LzFTOJeBWz">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="AnalyzerRunnerType" />
    <property role="2_RsDV" value="none" />
    <property role="3GE5qa" value="Analyzer" />
    <property role="34LRSv" value="analyzerRunner" />
    <ref role="1TJDcQ" to="tpee:fz3vP1H" resolve="Type" />
  </node>
  <node concept="1TIwiD" id="5hLfAui9Ch">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="AnalyzerRunnerAnalyzeOperation" />
    <property role="2_RsDV" value="none" />
    <property role="3GE5qa" value="Analyzer" />
    <property role="34LRSv" value="analyze" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="5hLfAuimD9" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="5hLfAui9Cm">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="AnalyzerRunnerCreator" />
    <property role="2_RsDV" value="none" />
    <property role="3GE5qa" value="Analyzer" />
    <property role="34LRSv" value="runner" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="9V7Nft_oMw" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="nodeToCheck" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="5hLfAui9Cn" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="analyzer" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="5JpT3MjX6u9" resolve="Analyzer" />
    </node>
  </node>
  <node concept="1TIwiD" id="6ViLkrkrEhy">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="IsOperation" />
    <property role="2_RsDV" value="none" />
    <property role="3GE5qa" value="Instructions" />
    <property role="34LRSv" value="is" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="6ViLkrkrJVL" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="left" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="6ViLkrkrEhz" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="instruction" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="5JpT3MjX6ua" resolve="Instruction" />
    </node>
  </node>
  <node concept="1TIwiD" id="4ipeeu8UrBu">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="ConceptCondition" />
    <property role="3GE5qa" value="Rules" />
    <property role="34LRSv" value="concept =" />
    <ref role="1TJDcQ" node="2S_HFuhBtro" resolve="ApplicableCondition" />
    <node concept="1TJgyj" id="4ipeeu8Vyel" role="1TKVEi">
      <property role="20kJfa" value="concept" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
    <node concept="PrWs8" id="4ipeeu8Vyh8" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="4ipeeu8WK4g">
    <property role="TrG5h" value="ApplicableNodeReference" />
    <property role="2_RsDV" value="none" />
    <property role="3GE5qa" value="Rules" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="4ipeeu8WK4h" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="applicableNode" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="4ipeeu8UrBu" resolve="ConceptCondition" />
    </node>
  </node>
  <node concept="1TIwiD" id="7jE3VEJNDMv">
    <property role="TrG5h" value="InsertBeforePosition" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="7jE3VEJNFWz">
    <property role="TrG5h" value="InsertPosition" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="7jE3VEJNFW$">
    <property role="TrG5h" value="InsertAfterPosition" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="5vxy$fN7gVQ">
    <property role="TrG5h" value="InstructionClassKeeper" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3QJUKqjisVE" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="member" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" to="tpee:h9ngReX" resolve="ClassifierMember" />
    </node>
    <node concept="PrWs8" id="3QJUKqjisVH" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="1eG8_N9UvmZ">
    <property role="TrG5h" value="AnalyzerRunnerClassKeeper" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3QJUKqj7A6F" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="member" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" to="tpee:h9ngReX" resolve="ClassifierMember" />
    </node>
    <node concept="PrWs8" id="3QJUKqj7A6_" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
</model>

