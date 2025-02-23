<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:00000000-0000-4000-0000-011c89590350(jetbrains.mps.lang.intentions.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="-1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tp3j" ref="r:00000000-0000-4000-0000-011c89590353(jetbrains.mps.lang.intentions.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpd3" ref="r:00000000-0000-4000-0000-011c895902bb(jetbrains.mps.lang.sharedConcepts.editor)" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" />
    <import index="tpen" ref="r:00000000-0000-4000-0000-011c895902c3(jetbrains.mps.baseLanguage.editor)" />
    <import index="g51k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cells(MPS.Editor/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
      </concept>
      <concept id="1198489924438" name="jetbrains.mps.lang.editor.structure.CellModel_Block" flags="sg" stub="8104358048506730066" index="b$f91">
        <child id="1198489985045" name="header" index="b$u42" />
        <child id="1198489993734" name="body" index="b$wch" />
      </concept>
      <concept id="1078308402140" name="jetbrains.mps.lang.editor.structure.CellModel_Custom" flags="sg" stub="8104358048506730068" index="gc7cB">
        <child id="1176795024817" name="cellProvider" index="3YsKMw" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2">
        <property id="1186403771423" name="style" index="Vbekb" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414860679" name="jetbrains.mps.lang.editor.structure.EditableStyleClassItem" flags="ln" index="VPxyj" />
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ng" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1215007762405" name="jetbrains.mps.lang.editor.structure.FloatStyleClassItem" flags="ln" index="3$6MrZ">
        <property id="1215007802031" name="value" index="3$6WeP" />
      </concept>
      <concept id="1215007897487" name="jetbrains.mps.lang.editor.structure.PaddingRightStyleClassItem" flags="ln" index="3$7jql" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1214560368769" name="emptyNoTargetText" index="39s7Ar" />
        <property id="1139852716018" name="noTargetText" index="1$x2rV" />
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <property id="1130859485024" name="attractsFocus" index="1cu_pB" />
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <property id="1073389446425" name="vertical" index="3EZMnw" />
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1161622981231" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_editorContext" flags="nn" index="1Q80Hx" />
      <concept id="1176749715029" name="jetbrains.mps.lang.editor.structure.QueryFunction_CellProvider" flags="in" index="3VJUX4" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
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
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1172323065820" name="jetbrains.mps.lang.smodel.structure.Node_GetConceptOperation" flags="nn" index="3NT_Vc" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1172420572800" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3THzug">
        <reference id="1180481110358" name="conceptDeclaraton" index="3qa414" />
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
  <node concept="24kQdi" id="i38NSC6">
    <property role="3GE5qa" value="parameterized" />
    <ref role="1XX52x" to="tp3j:i38Bcsp" resolve="QueryBlock" />
    <node concept="3EZMnI" id="i38NZ29" role="2wV5jI">
      <node concept="3EZMnI" id="i38O3rx" role="3EZMnx">
        <node concept="VPM3Z" id="i38O3ry" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="i38O50V" role="3EZMnx">
          <property role="3F0ifm" value="type" />
          <node concept="Vb9p2" id="i38Ol5b" role="3F10Kt">
            <property role="Vbekb" value="PLAIN" />
          </node>
          <node concept="VPM3Z" id="i38OOfF" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="VPxyj" id="i38OOfG" role="3F10Kt" />
          <node concept="VechU" id="i38OOfH" role="3F10Kt">
            <property role="Vb096" value="DARK_BLUE" />
          </node>
        </node>
        <node concept="3F0ifn" id="i38OcD2" role="3EZMnx">
          <property role="3F0ifm" value=":" />
          <node concept="VPM3Z" id="i38OPyJ" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="VPxyj" id="i38OPyK" role="3F10Kt" />
          <node concept="VechU" id="i38OPyL" role="3F10Kt">
            <property role="Vb096" value="DARK_BLUE" />
          </node>
          <node concept="11L4FC" id="i38OSro" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F1sOY" id="i3donR0" role="3EZMnx">
          <property role="1cu_pB" value="1" />
          <ref role="1NtTu8" to="tp3j:i3ddBrI" />
        </node>
        <node concept="2iRfu4" id="i38O3r$" role="2iSdaV" />
        <node concept="VPM3Z" id="i38O3r_" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="2iRkQZ" id="i38NZ2a" role="2iSdaV" />
      <node concept="PMmxH" id="i38NUmI" role="3EZMnx">
        <ref role="PMmxG" to="tpen:hqLiD8Q" resolve="ConceptFunction_Component" />
      </node>
    </node>
    <node concept="gc7cB" id="i38NWbL" role="6VMZX">
      <node concept="3VJUX4" id="i38NWbM" role="3YsKMw">
        <node concept="3clFbS" id="i38NWbN" role="2VODD2">
          <node concept="3cpWs6" id="i38NWbO" role="3cqZAp">
            <node concept="2ShNRf" id="i38NWbP" role="3cqZAk">
              <node concept="YeOm9" id="i38NWbQ" role="2ShVmc">
                <node concept="1Y3b0j" id="i38NWbR" role="YeSDq">
                  <ref role="1Y3XeK" to="exr9:~AbstractCellProvider" resolve="AbstractCellProvider" />
                  <ref role="37wK5l" to="exr9:~AbstractCellProvider.&lt;init&gt;()" resolve="AbstractCellProvider" />
                  <node concept="3Tm1VV" id="i38NWbS" role="1B3o_S" />
                  <node concept="3clFb_" id="i38NWbT" role="jymVt">
                    <property role="TrG5h" value="createEditorCell" />
                    <node concept="3Tm1VV" id="i38NWbU" role="1B3o_S" />
                    <node concept="3uibUv" id="i38NWbV" role="3clF45">
                      <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                    </node>
                    <node concept="37vLTG" id="i38NWbW" role="3clF46">
                      <property role="TrG5h" value="editorContext" />
                      <node concept="3uibUv" id="i38NWbX" role="1tU5fm">
                        <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="i38NWbY" role="3clF47">
                      <node concept="3cpWs8" id="i38NWbZ" role="3cqZAp">
                        <node concept="3cpWsn" id="i38NWc0" role="3cpWs9">
                          <property role="TrG5h" value="collection" />
                          <node concept="3uibUv" id="i38NWc1" role="1tU5fm">
                            <ref role="3uigEE" to="f4zo:~EditorCell_Collection" resolve="EditorCell_Collection" />
                          </node>
                          <node concept="2YIFZM" id="i38NWc2" role="33vP2m">
                            <ref role="1Pybhc" to="g51k:~EditorCell_Collection" resolve="EditorCell_Collection" />
                            <ref role="37wK5l" to="g51k:~EditorCell_Collection.createVertical(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.nodeEditor.cells.EditorCell_Collection" resolve="createVertical" />
                            <node concept="1Q80Hx" id="i38NWc3" role="37wK5m" />
                            <node concept="pncrf" id="i38NWc4" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="i38NWc5" role="3cqZAp">
                        <node concept="2OqwBi" id="i38NWc6" role="3clFbG">
                          <node concept="37vLTw" id="3GM_nagTsZi" role="2Oq$k0">
                            <ref role="3cqZAo" node="i38NWc0" resolve="collection" />
                          </node>
                          <node concept="liA8E" id="i38NWc8" role="2OqNvi">
                            <ref role="37wK5l" to="f4zo:~EditorCell_Collection.addEditorCell(jetbrains.mps.openapi.editor.cells.EditorCell):void" resolve="addEditorCell" />
                            <node concept="2ShNRf" id="i38NWc9" role="37wK5m">
                              <node concept="1pGfFk" id="i38NWca" role="2ShVmc">
                                <ref role="37wK5l" to="g51k:~EditorCell_Constant.&lt;init&gt;(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode,java.lang.String)" resolve="EditorCell_Constant" />
                                <node concept="1Q80Hx" id="i38NWcb" role="37wK5m" />
                                <node concept="pncrf" id="i38NWcc" role="37wK5m" />
                                <node concept="Xl_RD" id="i38NWcd" role="37wK5m">
                                  <property role="Xl_RC" value="Concept function help:" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="i38NWce" role="3cqZAp">
                        <node concept="3clFbS" id="i38NWcf" role="3clFbx">
                          <node concept="3clFbF" id="i38NWcg" role="3cqZAp">
                            <node concept="2OqwBi" id="i38NWch" role="3clFbG">
                              <node concept="37vLTw" id="3GM_nagTylZ" role="2Oq$k0">
                                <ref role="3cqZAo" node="i38NWc0" resolve="collection" />
                              </node>
                              <node concept="liA8E" id="i38NWcj" role="2OqNvi">
                                <ref role="37wK5l" to="f4zo:~EditorCell_Collection.addEditorCell(jetbrains.mps.openapi.editor.cells.EditorCell):void" resolve="addEditorCell" />
                                <node concept="2ShNRf" id="i38NWck" role="37wK5m">
                                  <node concept="1pGfFk" id="i38NWcl" role="2ShVmc">
                                    <ref role="37wK5l" to="g51k:~EditorCell_Constant.&lt;init&gt;(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode,java.lang.String)" resolve="EditorCell_Constant" />
                                    <node concept="1Q80Hx" id="i38NWcm" role="37wK5m" />
                                    <node concept="pncrf" id="i38NWcn" role="37wK5m" />
                                    <node concept="2OqwBi" id="2wdLO7KeA_Z" role="37wK5m">
                                      <node concept="3TrcHB" id="2wdLO7KeAA0" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpck:gOOYnlO" resolve="shortDescription" />
                                      </node>
                                      <node concept="2OqwBi" id="2wdLO7KeAA1" role="2Oq$k0">
                                        <node concept="pncrf" id="2wdLO7KeAA2" role="2Oq$k0" />
                                        <node concept="3NT_Vc" id="2wdLO7KeAA3" role="2OqNvi" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3y3z36" id="i38NWct" role="3clFbw">
                          <node concept="2OqwBi" id="2wdLO7KgFNf" role="3uHU7B">
                            <node concept="3TrcHB" id="2wdLO7KgFNg" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:gOOYnlO" resolve="shortDescription" />
                            </node>
                            <node concept="2OqwBi" id="2wdLO7KgFNh" role="2Oq$k0">
                              <node concept="pncrf" id="2wdLO7KgFNi" role="2Oq$k0" />
                              <node concept="3NT_Vc" id="2wdLO7KgFNj" role="2OqNvi" />
                            </node>
                          </node>
                          <node concept="10Nm6u" id="i38NWcu" role="3uHU7w" />
                        </node>
                      </node>
                      <node concept="3clFbF" id="i38NWc$" role="3cqZAp">
                        <node concept="2OqwBi" id="i38NWc_" role="3clFbG">
                          <node concept="37vLTw" id="3GM_nagT$Sn" role="2Oq$k0">
                            <ref role="3cqZAo" node="i38NWc0" resolve="collection" />
                          </node>
                          <node concept="liA8E" id="i38NWcB" role="2OqNvi">
                            <ref role="37wK5l" to="f4zo:~EditorCell_Collection.addEditorCell(jetbrains.mps.openapi.editor.cells.EditorCell):void" resolve="addEditorCell" />
                            <node concept="2ShNRf" id="i38NWcC" role="37wK5m">
                              <node concept="1pGfFk" id="i38NWcD" role="2ShVmc">
                                <ref role="37wK5l" to="g51k:~EditorCell_Constant.&lt;init&gt;(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode,java.lang.String)" resolve="EditorCell_Constant" />
                                <node concept="1Q80Hx" id="i38NWcE" role="37wK5m" />
                                <node concept="pncrf" id="i38NWcF" role="37wK5m" />
                                <node concept="Xl_RD" id="i38NWcG" role="37wK5m">
                                  <property role="Xl_RC" value="" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="i38NWcH" role="3cqZAp">
                        <node concept="2OqwBi" id="i38NWcI" role="3clFbG">
                          <node concept="37vLTw" id="3GM_nagTAru" role="2Oq$k0">
                            <ref role="3cqZAo" node="i38NWc0" resolve="collection" />
                          </node>
                          <node concept="liA8E" id="i38NWcK" role="2OqNvi">
                            <ref role="37wK5l" to="f4zo:~EditorCell_Collection.addEditorCell(jetbrains.mps.openapi.editor.cells.EditorCell):void" resolve="addEditorCell" />
                            <node concept="2ShNRf" id="i38NWcL" role="37wK5m">
                              <node concept="1pGfFk" id="i38NWcM" role="2ShVmc">
                                <ref role="37wK5l" to="g51k:~EditorCell_Constant.&lt;init&gt;(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode,java.lang.String)" resolve="EditorCell_Constant" />
                                <node concept="1Q80Hx" id="i38NWcN" role="37wK5m" />
                                <node concept="pncrf" id="i38NWcO" role="37wK5m" />
                                <node concept="Xl_RD" id="i38NWcP" role="37wK5m">
                                  <property role="Xl_RC" value="Parameter help:" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1DcWWT" id="i38NWcQ" role="3cqZAp">
                        <node concept="3clFbS" id="i38NWcR" role="2LFqv$">
                          <node concept="3cpWs8" id="i38NWcS" role="3cqZAp">
                            <node concept="3cpWsn" id="i38NWcT" role="3cpWs9">
                              <property role="TrG5h" value="alias" />
                              <node concept="2OqwBi" id="2wdLO7Kf05D" role="33vP2m">
                                <node concept="3TrcHB" id="2wdLO7Kf05E" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpce:4qF2Hm2r7ja" resolve="conceptAlias" />
                                </node>
                                <node concept="37vLTw" id="3GM_nagTyZK" role="2Oq$k0">
                                  <ref role="3cqZAo" node="i38NWdx" resolve="cfp" />
                                </node>
                              </node>
                              <node concept="17QB3L" id="i38NWcU" role="1tU5fm" />
                            </node>
                          </node>
                          <node concept="3cpWs8" id="i38NWcY" role="3cqZAp">
                            <node concept="3cpWsn" id="i38NWcZ" role="3cpWs9">
                              <property role="TrG5h" value="description" />
                              <node concept="2OqwBi" id="2wdLO7KgJ2s" role="33vP2m">
                                <node concept="3TrcHB" id="2wdLO7KgJ2t" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:gOOYnlO" resolve="shortDescription" />
                                </node>
                                <node concept="37vLTw" id="3GM_nagTAnl" role="2Oq$k0">
                                  <ref role="3cqZAo" node="i38NWdx" resolve="cfp" />
                                </node>
                              </node>
                              <node concept="17QB3L" id="i38NWd0" role="1tU5fm" />
                            </node>
                          </node>
                          <node concept="3clFbJ" id="i38NWd4" role="3cqZAp">
                            <node concept="3clFbS" id="i38NWd5" role="3clFbx">
                              <node concept="3clFbF" id="i38NWd6" role="3cqZAp">
                                <node concept="37vLTI" id="i38NWd7" role="3clFbG">
                                  <node concept="Xl_RD" id="i38NWd8" role="37vLTx">
                                    <property role="Xl_RC" value="&lt;no help. use short_description concept function property to create one&gt;" />
                                  </node>
                                  <node concept="37vLTw" id="3GM_nagTuDe" role="37vLTJ">
                                    <ref role="3cqZAo" node="i38NWcZ" resolve="description" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbC" id="i38NWda" role="3clFbw">
                              <node concept="10Nm6u" id="i38NWdb" role="3uHU7w" />
                              <node concept="37vLTw" id="3GM_nagTxmU" role="3uHU7B">
                                <ref role="3cqZAo" node="i38NWcZ" resolve="description" />
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="i38NWdd" role="3cqZAp">
                            <node concept="3cpWsn" id="i38NWde" role="3cpWs9">
                              <property role="TrG5h" value="message" />
                              <node concept="3uibUv" id="i38NWdf" role="1tU5fm">
                                <ref role="3uigEE" to="g51k:~EditorCell_Constant" resolve="EditorCell_Constant" />
                              </node>
                              <node concept="2ShNRf" id="i38NWdg" role="33vP2m">
                                <node concept="1pGfFk" id="i38NWdh" role="2ShVmc">
                                  <ref role="37wK5l" to="g51k:~EditorCell_Constant.&lt;init&gt;(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode,java.lang.String)" resolve="EditorCell_Constant" />
                                  <node concept="1Q80Hx" id="i38NWdi" role="37wK5m" />
                                  <node concept="pncrf" id="i38NWdj" role="37wK5m" />
                                  <node concept="3cpWs3" id="i38NWdl" role="37wK5m">
                                    <node concept="37vLTw" id="3GM_nagTzaa" role="3uHU7w">
                                      <ref role="3cqZAo" node="i38NWcZ" resolve="description" />
                                    </node>
                                    <node concept="3cpWs3" id="i38NWdk" role="3uHU7B">
                                      <node concept="37vLTw" id="3GM_nagTuCx" role="3uHU7B">
                                        <ref role="3cqZAo" node="i38NWcT" resolve="alias" />
                                      </node>
                                      <node concept="Xl_RD" id="i38NWdn" role="3uHU7w">
                                        <property role="Xl_RC" value=" : " />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="i38NWdp" role="3cqZAp">
                            <node concept="2OqwBi" id="i38NWdq" role="3clFbG">
                              <node concept="37vLTw" id="3GM_nagTz38" role="2Oq$k0">
                                <ref role="3cqZAo" node="i38NWc0" resolve="collection" />
                              </node>
                              <node concept="liA8E" id="i38NWds" role="2OqNvi">
                                <ref role="37wK5l" to="f4zo:~EditorCell_Collection.addEditorCell(jetbrains.mps.openapi.editor.cells.EditorCell):void" resolve="addEditorCell" />
                                <node concept="37vLTw" id="3GM_nagTub2" role="37wK5m">
                                  <ref role="3cqZAo" node="i38NWde" resolve="message" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="i38NWdu" role="1DdaDG">
                          <node concept="pncrf" id="i38NWdv" role="2Oq$k0" />
                          <node concept="2qgKlT" id="i38NWdw" role="2OqNvi">
                            <ref role="37wK5l" to="tpek:hEwIGRM" resolve="getParameters" />
                          </node>
                        </node>
                        <node concept="3cpWsn" id="i38NWdx" role="1Duv9x">
                          <property role="TrG5h" value="cfp" />
                          <node concept="3THzug" id="i38NWdy" role="1tU5fm">
                            <ref role="3qa414" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="i38NWdz" role="3cqZAp">
                        <node concept="37vLTw" id="3GM_nagTrGu" role="3cqZAk">
                          <ref role="3cqZAo" node="i38NWc0" resolve="collection" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="3tYsUK_UpVj" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="i3dlAbB">
    <property role="3GE5qa" value="parameterized" />
    <ref role="1XX52x" to="tp3j:i3dkpKH" resolve="ParameterizedIntentionDeclaration" />
    <node concept="b$f91" id="i3dlAyP" role="2wV5jI">
      <node concept="3EZMnI" id="i3dlAyQ" role="b$wch">
        <property role="3EZMnw" value="true" />
        <node concept="3EZMnI" id="i3dlAyR" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="i3dlAyS" role="3EZMnx">
            <property role="3F0ifm" value="error intention :" />
          </node>
          <node concept="3F0A7n" id="i3dlAyT" role="3EZMnx">
            <ref role="1NtTu8" to="tp3j:2c3oNEsfcpT" resolve="isErrorIntention" />
          </node>
          <node concept="VPM3Z" id="i3dlAyU" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i3dlAyV" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="i3dlAyW" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="VPM3Z" id="i3dlAyX" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3F0ifn" id="i3dlAyY" role="3EZMnx">
            <property role="3F0ifm" value="available in child nodes :" />
          </node>
          <node concept="3F0A7n" id="i3dlAyZ" role="3EZMnx">
            <ref role="1NtTu8" to="tp3j:2c3oNEsfcpU" resolve="isAvailableInChildNodes" />
          </node>
          <node concept="2iRfu4" id="i3dlAz0" role="2iSdaV" />
        </node>
        <node concept="3F0ifn" id="i3dlAz1" role="3EZMnx">
          <node concept="VPM3Z" id="i3dlAz2" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F1sOY" id="i3dlAz3" role="3EZMnx">
          <property role="1$x2rV" value="&lt;add query&gt;" />
          <ref role="1NtTu8" to="tp3j:i3dlsyr" />
        </node>
        <node concept="3F0ifn" id="i3dlAz4" role="3EZMnx">
          <property role="3F0ifm" value="" />
        </node>
        <node concept="3F1sOY" id="i3dlAz5" role="3EZMnx">
          <ref role="1NtTu8" to="tp3j:1$_U1xaWR1c" />
        </node>
        <node concept="3F0ifn" id="i3dlAz6" role="3EZMnx">
          <node concept="VPM3Z" id="i3dlAz7" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F1sOY" id="i3dlAz8" role="3EZMnx">
          <property role="1$x2rV" value="&lt;isApplicable = true&gt;" />
          <ref role="1NtTu8" to="tp3j:2c3oNEsfd2F" />
        </node>
        <node concept="3F0ifn" id="i3dlAz9" role="3EZMnx">
          <node concept="VPM3Z" id="i3dlAza" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F1sOY" id="i3dlAzb" role="3EZMnx">
          <ref role="1NtTu8" to="tp3j:1$_U1xaWR1f" />
        </node>
        <node concept="2iRkQZ" id="i3dlAzc" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="i3dlAzd" role="b$u42">
        <property role="3EZMnw" value="false" />
        <node concept="3F0ifn" id="i3dlD41" role="3EZMnx">
          <property role="3F0ifm" value="parameterized" />
        </node>
        <node concept="3F0ifn" id="i3dlAze" role="3EZMnx">
          <property role="3F0ifm" value="intention" />
        </node>
        <node concept="3F0A7n" id="i3dlAzf" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="i3dlAzg" role="3EZMnx">
          <property role="3F0ifm" value="for concept" />
        </node>
        <node concept="1iCGBv" id="i3dlAzh" role="3EZMnx">
          <ref role="1NtTu8" to="tp3j:2c3oNEsfAwi" />
          <node concept="1sVBvm" id="i3dlAzi" role="1sWHZn">
            <node concept="3F0A7n" id="i3dlAzj" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1k5W1q" to="tpd3:hwSE21y" resolve="ReferenceOnConcept" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
          <node concept="3$7jql" id="i3dlAzk" role="3F10Kt">
            <property role="3$6WeP" value="0.0" />
          </node>
        </node>
        <node concept="VPM3Z" id="i3dlAzl" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i3dlAzm" role="2iSdaV" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="i3dUSO3">
    <property role="3GE5qa" value="parameterized" />
    <ref role="1XX52x" to="tp3j:i38ZlvV" resolve="IntentionParameter" />
    <node concept="3EZMnI" id="i3dUXBY" role="2wV5jI">
      <node concept="PMmxH" id="2wdLO7KhY6v" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <node concept="Vb9p2" id="2wdLO7KhY6w" role="3F10Kt">
          <property role="Vbekb" value="ITALIC" />
        </node>
      </node>
      <node concept="2iRfu4" id="i3dUXBZ" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5rGvd38Dc3U">
    <ref role="1XX52x" to="tp3j:2c3oNEsfcpP" resolve="BaseIntentionDeclaration" />
    <node concept="b$f91" id="5rGvd38Dc3W" role="2wV5jI">
      <node concept="3EZMnI" id="5rGvd38Dc3X" role="b$wch">
        <property role="3EZMnw" value="true" />
        <node concept="3EZMnI" id="5rGvd38Dc3Y" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="5rGvd38Dc3Z" role="3EZMnx">
            <property role="3F0ifm" value="error intention :" />
          </node>
          <node concept="3F0A7n" id="5rGvd38Dc40" role="3EZMnx">
            <ref role="1NtTu8" to="tp3j:2c3oNEsfcpT" resolve="isErrorIntention" />
          </node>
          <node concept="VPM3Z" id="5rGvd38Dc41" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="5rGvd38Dc42" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="5rGvd38Dc43" role="3EZMnx">
          <node concept="2iRkQZ" id="5rGvd38Dc44" role="2iSdaV" />
          <node concept="3EZMnI" id="5rGvd38Dc45" role="3EZMnx">
            <property role="3EZMnw" value="false" />
            <node concept="VPM3Z" id="5rGvd38Dc46" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="3F0ifn" id="5rGvd38Dc47" role="3EZMnx">
              <property role="3F0ifm" value="available in child nodes :" />
            </node>
            <node concept="3F0A7n" id="5rGvd38Dc48" role="3EZMnx">
              <ref role="1NtTu8" to="tp3j:2c3oNEsfcpU" resolve="isAvailableInChildNodes" />
            </node>
            <node concept="2iRfu4" id="5rGvd38Dc49" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="5rGvd38Dc4a" role="3EZMnx">
            <node concept="2iRfu4" id="5rGvd38Dc4b" role="2iSdaV" />
            <node concept="3F0ifn" id="5rGvd38Dc4c" role="3EZMnx">
              <property role="3F0ifm" value="child filter :" />
            </node>
            <node concept="3F1sOY" id="5rGvd38Dc4d" role="3EZMnx">
              <property role="1$x2rV" value="&lt;all child nodes&gt;" />
              <property role="39s7Ar" value="false" />
              <ref role="1NtTu8" to="tp3j:2c3oNEsfd2E" />
            </node>
            <node concept="pkWqt" id="5rGvd38Dc4e" role="pqm2j">
              <node concept="3clFbS" id="5rGvd38Dc4f" role="2VODD2">
                <node concept="3clFbF" id="5rGvd38Dc4g" role="3cqZAp">
                  <node concept="2OqwBi" id="5rGvd38Dc4h" role="3clFbG">
                    <node concept="pncrf" id="5rGvd38Dc4i" role="2Oq$k0" />
                    <node concept="3TrcHB" id="5rGvd38Dc4j" role="2OqNvi">
                      <ref role="3TsBF5" to="tp3j:2c3oNEsfcpU" resolve="isAvailableInChildNodes" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="5rGvd38Dc4k" role="3EZMnx">
          <property role="3F0ifm" value="" />
        </node>
        <node concept="3F1sOY" id="5rGvd38Dc4l" role="3EZMnx">
          <ref role="1NtTu8" to="tp3j:2c3oNEsfd2D" />
        </node>
        <node concept="3F0ifn" id="5rGvd38Dc4m" role="3EZMnx">
          <node concept="VPM3Z" id="5rGvd38Dc4n" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F1sOY" id="5rGvd38Dc4o" role="3EZMnx">
          <property role="1$x2rV" value="&lt;isApplicable = true&gt;" />
          <ref role="1NtTu8" to="tp3j:2c3oNEsfd2F" />
        </node>
        <node concept="3F0ifn" id="5rGvd38Dc4p" role="3EZMnx">
          <node concept="VPM3Z" id="5rGvd38Dc4q" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F1sOY" id="5rGvd38Dc4r" role="3EZMnx">
          <ref role="1NtTu8" to="tp3j:2c3oNEsfAwj" />
        </node>
        <node concept="2iRkQZ" id="5rGvd38Dc4s" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="5rGvd38Dc4t" role="b$u42">
        <property role="3EZMnw" value="false" />
        <node concept="3F0ifn" id="5rGvd38Dc4u" role="3EZMnx">
          <property role="3F0ifm" value="intention" />
        </node>
        <node concept="3F0A7n" id="5rGvd38Dc4v" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="5rGvd38Dc4w" role="3EZMnx">
          <property role="3F0ifm" value="for concept" />
          <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        </node>
        <node concept="1iCGBv" id="5rGvd38Dc4x" role="3EZMnx">
          <ref role="1NtTu8" to="tp3j:2c3oNEsfAwi" />
          <node concept="1sVBvm" id="5rGvd38Dc4y" role="1sWHZn">
            <node concept="3F0A7n" id="5rGvd38Dc4z" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
              <ref role="1k5W1q" to="tpd3:hwSE21y" resolve="ReferenceOnConcept" />
            </node>
          </node>
          <node concept="3$7jql" id="5rGvd38Dc4$" role="3F10Kt">
            <property role="3$6WeP" value="0.0" />
          </node>
        </node>
        <node concept="VPM3Z" id="5rGvd38Dc4_" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="5rGvd38Dc4A" role="2iSdaV" />
      </node>
    </node>
  </node>
</model>

