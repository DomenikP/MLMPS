<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:00000000-0000-4000-0000-011c895902ed(jetbrains.mps.lang.generator.generationContext.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="-1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="-1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpf3" ref="r:00000000-0000-4000-0000-011c895902f3(jetbrains.mps.lang.generator.generationContext.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <property id="5864038008284099149" name="isStatic" index="2Ki8OM" />
        <property id="1225194472833" name="isPrivate" index="13i0is" />
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <property id="1225194472834" name="isAbstract" index="13i0iv" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <reference id="1140138128738" name="concept" index="1PxNhF" />
        <child id="1140138123956" name="leftExpression" index="1PxMeX" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="13h7C7" id="hIg3m_s">
    <ref role="13h7C2" to="tpf3:hIfTwd8" resolve="GenerationContextOp_UserObjectAccessBase" />
    <node concept="13hLZK" id="hIg3m_t" role="13h7CW">
      <node concept="3clFbS" id="hIg3m_u" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="hIg3nxk" role="13h7CS">
      <property role="13i0is" value="false" />
      <property role="TrG5h" value="isLValueInAssignment" />
      <node concept="10P_77" id="hIg3ojq" role="3clF45" />
      <node concept="3clFbS" id="hIg3nxm" role="3clF47">
        <node concept="3cpWs8" id="hIg3v7e" role="3cqZAp">
          <node concept="3cpWsn" id="hIg3v7f" role="3cpWs9">
            <property role="TrG5h" value="mayBeAssignment" />
            <node concept="3Tqbb2" id="hIg3v7g" role="1tU5fm" />
            <node concept="2OqwBi" id="hIg3v7h" role="33vP2m">
              <node concept="2OqwBi" id="hIg3v7i" role="2Oq$k0">
                <node concept="13iPFW" id="hIg3wxh" role="2Oq$k0" />
                <node concept="1mfA1w" id="hIg3v7k" role="2OqNvi" />
              </node>
              <node concept="1mfA1w" id="hIg3v7l" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="hIg3v7m" role="3cqZAp">
          <node concept="3clFbS" id="hIg3v7n" role="3clFbx">
            <node concept="3clFbJ" id="hIg3v7o" role="3cqZAp">
              <node concept="3clFbS" id="hIg3v7p" role="3clFbx">
                <node concept="3cpWs6" id="hIg3v7q" role="3cqZAp">
                  <node concept="3clFbT" id="hIg3v7r" role="3cqZAk">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="hIg3v7s" role="3clFbw">
                <node concept="2OqwBi" id="hIg3v7t" role="3uHU7w">
                  <node concept="1PxgMI" id="hIg3v7u" role="2Oq$k0">
                    <ref role="1PxNhF" to="tpee:fz7vLUm" resolve="AssignmentExpression" />
                    <node concept="37vLTw" id="3GM_nagTwCh" role="1PxMeX">
                      <ref role="3cqZAo" node="hIg3v7f" resolve="mayBeAssignment" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="hIg3v7w" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:fz7vLUn" />
                  </node>
                </node>
                <node concept="2OqwBi" id="hIg3v7x" role="3uHU7B">
                  <node concept="13iPFW" id="hIg3yfC" role="2Oq$k0" />
                  <node concept="1mfA1w" id="hIg3v7z" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="hIg3v7$" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagT_0K" role="2Oq$k0">
              <ref role="3cqZAo" node="hIg3v7f" resolve="mayBeAssignment" />
            </node>
            <node concept="1mIQ4w" id="hIg3v7A" role="2OqNvi">
              <node concept="chp4Y" id="hIg3v7B" role="cj9EA">
                <ref role="cht4Q" to="tpee:fz7vLUm" resolve="AssignmentExpression" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="hIg3v7C" role="3cqZAp">
          <node concept="3clFbT" id="hIg3v7D" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="hJrm0$5" role="1B3o_S" />
    </node>
  </node>
  <node concept="13h7C7" id="1xCtdgeTQH_">
    <ref role="13h7C2" to="tpf3:1xCtdgeQQCm" resolve="GenerationContextOp_PatternRef" />
    <node concept="13i0hz" id="1xCtdgeTQHC" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="TrG5h" value="getTarget" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="1xCtdgeTQHD" role="1B3o_S" />
      <node concept="3clFbS" id="1xCtdgeTQHF" role="3clF47" />
      <node concept="3Tqbb2" id="1xCtdgeTQR5" role="3clF45" />
    </node>
    <node concept="13i0hz" id="1xCtdgeUoP5" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="TrG5h" value="setTarget" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="1xCtdgeUoP6" role="1B3o_S" />
      <node concept="3cqZAl" id="1xCtdgeUoP9" role="3clF45" />
      <node concept="3clFbS" id="1xCtdgeUoP8" role="3clF47" />
      <node concept="37vLTG" id="1xCtdgeUoPa" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3Tqbb2" id="1xCtdgeUoPb" role="1tU5fm" />
      </node>
    </node>
    <node concept="13hLZK" id="1xCtdgeTQHA" role="13h7CW">
      <node concept="3clFbS" id="1xCtdgeTQHB" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="1xCtdgeTQR6">
    <ref role="13h7C2" to="tpf3:1xCtdgeQstn" resolve="GenerationContextOp_LinkPatternRef" />
    <node concept="13hLZK" id="1xCtdgeTQR7" role="13h7CW">
      <node concept="3clFbS" id="1xCtdgeTQR8" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1xCtdgeTQR9" role="13h7CS">
      <property role="TrG5h" value="getTarget" />
      <property role="13i0it" value="true" />
      <ref role="13i0hy" node="1xCtdgeTQHC" resolve="getTarget" />
      <node concept="3Tm1VV" id="1xCtdgeTQRa" role="1B3o_S" />
      <node concept="3clFbS" id="1xCtdgeTQRb" role="3clF47">
        <node concept="3clFbF" id="1xCtdgeTQRz" role="3cqZAp">
          <node concept="2OqwBi" id="1xCtdgeTQRg" role="3clFbG">
            <node concept="13iPFW" id="1xCtdgeTQRf" role="2Oq$k0" />
            <node concept="3TrEf2" id="1xCtdgeTQRk" role="2OqNvi">
              <ref role="3Tt5mk" to="tpf3:1xCtdgeQstr" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="1xCtdgeTQRc" role="3clF45" />
    </node>
    <node concept="13i0hz" id="1xCtdgeUoPc" role="13h7CS">
      <property role="TrG5h" value="setTarget" />
      <property role="13i0it" value="true" />
      <ref role="13i0hy" node="1xCtdgeUoP5" resolve="setTarget" />
      <node concept="3Tm1VV" id="1xCtdgeUoPd" role="1B3o_S" />
      <node concept="3clFbS" id="1xCtdgeUoPe" role="3clF47">
        <node concept="3clFbF" id="1xCtdgeUoPi" role="3cqZAp">
          <node concept="37vLTI" id="1xCtdgeUoPp" role="3clFbG">
            <node concept="2OqwBi" id="1xCtdgeUoPk" role="37vLTJ">
              <node concept="13iPFW" id="1xCtdgeUoPj" role="2Oq$k0" />
              <node concept="3TrEf2" id="1xCtdgeUoPo" role="2OqNvi">
                <ref role="3Tt5mk" to="tpf3:1xCtdgeQstr" />
              </node>
            </node>
            <node concept="10Nm6u" id="1xCtdgeUoPs" role="37vLTx" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1xCtdgeUoPf" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3Tqbb2" id="1xCtdgeUoPg" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="1xCtdgeUoPh" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="1xCtdgeTQRl">
    <ref role="13h7C2" to="tpf3:3YMQ4vlnW8u" resolve="GenerationContextOp_NodePatternRef" />
    <node concept="13hLZK" id="1xCtdgeTQRm" role="13h7CW">
      <node concept="3clFbS" id="1xCtdgeTQRn" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1xCtdgeTQRo" role="13h7CS">
      <property role="TrG5h" value="getTarget" />
      <property role="13i0it" value="true" />
      <ref role="13i0hy" node="1xCtdgeTQHC" resolve="getTarget" />
      <node concept="3Tm1VV" id="1xCtdgeTQRp" role="1B3o_S" />
      <node concept="3clFbS" id="1xCtdgeTQRq" role="3clF47">
        <node concept="3clFbF" id="1xCtdgeTQRs" role="3cqZAp">
          <node concept="2OqwBi" id="1xCtdgeTQRu" role="3clFbG">
            <node concept="13iPFW" id="1xCtdgeTQRt" role="2Oq$k0" />
            <node concept="3TrEf2" id="1xCtdgeTQRy" role="2OqNvi">
              <ref role="3Tt5mk" to="tpf3:3YMQ4vlnXNl" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="1xCtdgeTQRr" role="3clF45" />
    </node>
    <node concept="13i0hz" id="1xCtdgeUoPt" role="13h7CS">
      <property role="TrG5h" value="setTarget" />
      <property role="13i0it" value="true" />
      <ref role="13i0hy" node="1xCtdgeUoP5" resolve="setTarget" />
      <node concept="3Tm1VV" id="1xCtdgeUoPu" role="1B3o_S" />
      <node concept="3clFbS" id="1xCtdgeUoPv" role="3clF47">
        <node concept="3clFbF" id="1xCtdgeUoPz" role="3cqZAp">
          <node concept="37vLTI" id="1xCtdgeUoPE" role="3clFbG">
            <node concept="2OqwBi" id="1xCtdgeUoP_" role="37vLTJ">
              <node concept="13iPFW" id="1xCtdgeUoP$" role="2Oq$k0" />
              <node concept="3TrEf2" id="1xCtdgeUoPD" role="2OqNvi">
                <ref role="3Tt5mk" to="tpf3:3YMQ4vlnXNl" />
              </node>
            </node>
            <node concept="10Nm6u" id="1xCtdgeUoPH" role="37vLTx" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1xCtdgeUoPw" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3Tqbb2" id="1xCtdgeUoPx" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="1xCtdgeUoPy" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="1xCtdgeTQR_">
    <ref role="13h7C2" to="tpf3:1xCtdgeQsto" resolve="GenerationContextOp_PropertyPatternRef" />
    <node concept="13hLZK" id="1xCtdgeTQRA" role="13h7CW">
      <node concept="3clFbS" id="1xCtdgeTQRB" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1xCtdgeTQRC" role="13h7CS">
      <property role="TrG5h" value="getTarget" />
      <property role="13i0it" value="true" />
      <ref role="13i0hy" node="1xCtdgeTQHC" resolve="getTarget" />
      <node concept="3Tm1VV" id="1xCtdgeTQRD" role="1B3o_S" />
      <node concept="3clFbS" id="1xCtdgeTQRE" role="3clF47">
        <node concept="3clFbF" id="1xCtdgeTQRG" role="3cqZAp">
          <node concept="2OqwBi" id="1xCtdgeTQRI" role="3clFbG">
            <node concept="13iPFW" id="1xCtdgeTQRH" role="2Oq$k0" />
            <node concept="3TrEf2" id="1xCtdgeTQRM" role="2OqNvi">
              <ref role="3Tt5mk" to="tpf3:1xCtdgeQsts" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="1xCtdgeTQRF" role="3clF45" />
    </node>
    <node concept="13i0hz" id="1xCtdgeUoPM" role="13h7CS">
      <property role="TrG5h" value="setTarget" />
      <property role="13i0it" value="true" />
      <ref role="13i0hy" node="1xCtdgeUoP5" resolve="setTarget" />
      <node concept="3Tm1VV" id="1xCtdgeUoPN" role="1B3o_S" />
      <node concept="3clFbS" id="1xCtdgeUoPO" role="3clF47">
        <node concept="3clFbF" id="1xCtdgeUoPS" role="3cqZAp">
          <node concept="37vLTI" id="1xCtdgeUoPZ" role="3clFbG">
            <node concept="2OqwBi" id="1xCtdgeUoPU" role="37vLTJ">
              <node concept="13iPFW" id="1xCtdgeUoPT" role="2Oq$k0" />
              <node concept="3TrEf2" id="1xCtdgeUoPY" role="2OqNvi">
                <ref role="3Tt5mk" to="tpf3:1xCtdgeQsts" />
              </node>
            </node>
            <node concept="10Nm6u" id="1xCtdgeUoQ2" role="37vLTx" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1xCtdgeUoPP" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3Tqbb2" id="1xCtdgeUoPQ" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="1xCtdgeUoPR" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="1653mnvANzR">
    <ref role="13h7C2" to="tpf3:hIg92A3" resolve="GenerationContextOp_TransientObjectAccess" />
    <node concept="13hLZK" id="1653mnvANzS" role="13h7CW">
      <node concept="3clFbS" id="1653mnvANzT" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1653mnvANzM" role="13h7CS">
      <property role="2Ki8OM" value="true" />
      <property role="13i0is" value="false" />
      <property role="TrG5h" value="lvalue" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="tpek:1653mnvAgvW" resolve="lvalue" />
      <node concept="3Tm1VV" id="1653mnvANzN" role="1B3o_S" />
      <node concept="10P_77" id="1653mnvANzL" role="3clF45" />
      <node concept="3clFbS" id="1653mnvANzO" role="3clF47">
        <node concept="3cpWs6" id="1653mnvANzP" role="3cqZAp">
          <node concept="3clFbT" id="1653mnvANzQ" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="1653mnvAOU2">
    <ref role="13h7C2" to="tpf3:hIg8Xag" resolve="GenerationContextOp_StepObjectAccess" />
    <node concept="13hLZK" id="1653mnvAOU3" role="13h7CW">
      <node concept="3clFbS" id="1653mnvAOU4" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1653mnvAOTX" role="13h7CS">
      <property role="2Ki8OM" value="true" />
      <property role="13i0is" value="false" />
      <property role="TrG5h" value="lvalue" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="tpek:1653mnvAgvW" resolve="lvalue" />
      <node concept="3Tm1VV" id="1653mnvAOTY" role="1B3o_S" />
      <node concept="10P_77" id="1653mnvAOTW" role="3clF45" />
      <node concept="3clFbS" id="1653mnvAOTZ" role="3clF47">
        <node concept="3cpWs6" id="1653mnvAOU0" role="3cqZAp">
          <node concept="3clFbT" id="1653mnvAOU1" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="1653mnvB6jF">
    <ref role="13h7C2" to="tpf3:hIfSARC" resolve="GenerationContextOp_SessionObjectAccess" />
    <node concept="13hLZK" id="1653mnvB6jG" role="13h7CW">
      <node concept="3clFbS" id="1653mnvB6jH" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1653mnvB6jA" role="13h7CS">
      <property role="2Ki8OM" value="true" />
      <property role="13i0is" value="false" />
      <property role="TrG5h" value="lvalue" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="tpek:1653mnvAgvW" resolve="lvalue" />
      <node concept="3Tm1VV" id="1653mnvB6jB" role="1B3o_S" />
      <node concept="10P_77" id="1653mnvB6j_" role="3clF45" />
      <node concept="3clFbS" id="1653mnvB6jC" role="3clF47">
        <node concept="3cpWs6" id="1653mnvB6jD" role="3cqZAp">
          <node concept="3clFbT" id="1653mnvB6jE" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="4IGpg_YjLH5">
    <ref role="13h7C2" to="tpf3:hHiwH3z" resolve="TemplateFunctionParameter_generationContext" />
    <node concept="13hLZK" id="4IGpg_YjLH6" role="13h7CW">
      <node concept="3clFbS" id="4IGpg_YjLH7" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="4IGpg_YjLJp" role="13h7CS">
      <property role="TrG5h" value="getType" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="tpek:27DJnJtIQ9C" resolve="getType" />
      <node concept="3Tm1VV" id="4IGpg_YjLJq" role="1B3o_S" />
      <node concept="3clFbS" id="4IGpg_YjLJr" role="3clF47">
        <node concept="3cpWs6" id="6SkmEu0o1KB" role="3cqZAp">
          <node concept="2pJPEk" id="6SkmEu0o1LM" role="3cqZAk">
            <node concept="2pJPED" id="6SkmEu0o1M$" role="2pJPEn">
              <ref role="2pJxaS" to="tpf3:hHiwH3x" resolve="GenerationContextType" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="4IGpg_YjLJt" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
      </node>
    </node>
  </node>
</model>

