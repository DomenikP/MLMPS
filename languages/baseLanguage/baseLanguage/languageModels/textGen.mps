<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c6eeedda-084d-4659-9c4d-80b7768f2bb2(jetbrains.mps.baseLanguage.textGen)">
  <persistence version="9" />
  <languages>
    <use id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen" version="-1" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="m373" ref="r:4095af4f-a097-4799-aaa9-03df087ddfa6(jetbrains.mps.baseLanguage.javadoc.structure)" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" />
    <import index="e2lb" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" />
    <import index="ua2a" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.typesystem.inference(MPS.Core/jetbrains.mps.typesystem.inference@java_stub)" />
    <import index="cu2c" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.smodel(MPS.Core/jetbrains.mps.smodel@java_stub)" />
    <import index="msyo" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.util(MPS.Core/jetbrains.mps.util@java_stub)" />
    <import index="zrid" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.textGen(MPS.Core/jetbrains.mps.textGen@java_stub)" />
    <import index="k7g3" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(java.util@java_stub)" />
    <import index="unno" ref="r:61e3d524-8c49-4491-b5e3-f6d6e9364527(jetbrains.mps.util)" />
    <import index="ec5l" ref="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.model(org.jetbrains.mps.openapi.model@java_stub)" />
    <import index="tpcz" ref="r:00000000-0000-4000-0000-011c895902bf(jetbrains.mps.baseLanguage.actions)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples">
      <concept id="1238852151516" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleType" flags="in" index="1LlUBW">
        <child id="1238852204892" name="componentType" index="1Lm7xW" />
      </concept>
      <concept id="1238853782547" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleLiteral" flags="nn" index="1Ls8ON">
        <child id="1238853845806" name="component" index="1Lso8e" />
      </concept>
      <concept id="1238857743184" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleMemberAccessExpression" flags="nn" index="1LFfDK">
        <child id="1238857764950" name="tuple" index="1LFl5Q" />
        <child id="1238857834412" name="index" index="1LF_Uc" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1224848483129" name="jetbrains.mps.baseLanguage.structure.IBLDeprecatable" flags="ng" index="IEa8$">
        <property id="1224848525476" name="isDeprecated" index="IEkAT" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534555686" name="jetbrains.mps.baseLanguage.structure.CharType" flags="in" index="10Pfzv" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ" />
      <concept id="1109279851642" name="jetbrains.mps.baseLanguage.structure.GenericDeclaration" flags="ng" index="16eOlS">
        <child id="1109279881614" name="typeVariableDeclaration" index="16eVyc" />
      </concept>
      <concept id="1109283449304" name="jetbrains.mps.baseLanguage.structure.TypeVariableReference" flags="in" index="16syzq">
        <reference id="1109283546497" name="typeVariableDeclaration" index="16sUi3" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1160998861373" name="jetbrains.mps.baseLanguage.structure.AssertStatement" flags="nn" index="1gVbGN">
        <child id="1160998896846" name="condition" index="1gVkn0" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1200397529627" name="jetbrains.mps.baseLanguage.structure.CharConstant" flags="nn" index="1Xhbcc">
        <property id="1200397540847" name="charConstant" index="1XhdNS" />
      </concept>
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="6832197706140518104" name="jetbrains.mps.baseLanguage.javadoc.structure.DocMethodParameterReference" flags="ng" index="zr_55" />
      <concept id="6832197706140518103" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseParameterReference" flags="ng" index="zr_5a">
        <reference id="6832197706140518108" name="param" index="zr_51" />
      </concept>
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331499" name="deprecated" index="TZ5Hx" />
        <child id="8465538089690331502" name="body" index="TZ5H$" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv">
        <child id="8465538089690917625" name="param" index="TUOzN" />
      </concept>
      <concept id="8465538089690881930" name="jetbrains.mps.baseLanguage.javadoc.structure.ParameterBlockDocTag" flags="ng" index="TUZQ0">
        <property id="8465538089690881934" name="text" index="TUZQ4" />
        <child id="6832197706140518123" name="parameter" index="zr_5Q" />
      </concept>
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="8465538089690331492" name="jetbrains.mps.baseLanguage.javadoc.structure.DeprecatedBlockDocTag" flags="ng" index="TZ5HI">
        <child id="2667874559098216723" name="text" index="3HnX3l" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
    </language>
    <language id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen">
      <concept id="8931911391946696733" name="jetbrains.mps.lang.textGen.structure.ExtensionDeclaration" flags="in" index="9MYSb" />
      <concept id="1237305208784" name="jetbrains.mps.lang.textGen.structure.NewLineAppendPart" flags="ng" index="l8MVK" />
      <concept id="1237305334312" name="jetbrains.mps.lang.textGen.structure.NodeAppendPart" flags="ng" index="l9hG8">
        <property id="1237306318654" name="withIndent" index="ld1Su" />
        <child id="1237305790512" name="value" index="lb14g" />
      </concept>
      <concept id="1237305491868" name="jetbrains.mps.lang.textGen.structure.CollectionAppendPart" flags="ng" index="l9S2W">
        <property id="1237306003719" name="separator" index="lbP0B" />
        <property id="1237983969951" name="withSeparator" index="XA4eZ" />
        <child id="1237305945551" name="list" index="lbANJ" />
      </concept>
      <concept id="1237305557638" name="jetbrains.mps.lang.textGen.structure.ConstantStringAppendPart" flags="ng" index="la8eA">
        <property id="1237305576108" name="value" index="lacIc" />
        <property id="1237306361677" name="withIndent" index="ldcpH" />
      </concept>
      <concept id="1237306079178" name="jetbrains.mps.lang.textGen.structure.AppendOperation" flags="nn" index="lc7rE">
        <child id="1237306115446" name="part" index="lcghm" />
      </concept>
      <concept id="6911933836258445304" name="jetbrains.mps.lang.textGen.structure.ReferenceAppendPart" flags="ng" index="2yR1zb">
        <child id="6911933836258445307" name="reference" index="2yR1z8" />
      </concept>
      <concept id="1233670071145" name="jetbrains.mps.lang.textGen.structure.ConceptTextGenDeclaration" flags="ig" index="WtQ9Q">
        <reference id="1233670257997" name="conceptDeclaration" index="WuzLi" />
        <child id="1233749296504" name="textGenBlock" index="11c4hB" />
        <child id="7991274449437422201" name="extension" index="33IsuW" />
      </concept>
      <concept id="1233748055915" name="jetbrains.mps.lang.textGen.structure.NodeParameter" flags="nn" index="117lpO" />
      <concept id="1233749247888" name="jetbrains.mps.lang.textGen.structure.GenerateTextDeclaration" flags="in" index="11bSqf" />
      <concept id="1233752719417" name="jetbrains.mps.lang.textGen.structure.IncreaseDepthOperation" flags="nn" index="11p84A" />
      <concept id="1233752780875" name="jetbrains.mps.lang.textGen.structure.DecreaseDepthOperation" flags="nn" index="11pn5k" />
      <concept id="1233920501193" name="jetbrains.mps.lang.textGen.structure.IndentBufferOperation" flags="nn" index="1bpajm" />
      <concept id="1233921373471" name="jetbrains.mps.lang.textGen.structure.LanguageTextGenDeclaration" flags="ig" index="1bsvg0">
        <reference id="1234781160172" name="baseTextGen" index="1YGkfN" />
        <child id="1233922432965" name="operation" index="1bwxVq" />
        <child id="1234526822589" name="function" index="1Jy66y" />
      </concept>
      <concept id="1233922353619" name="jetbrains.mps.lang.textGen.structure.OperationDeclaration" flags="sg" stub="3147100357551177019" index="1bwezc" />
      <concept id="1233924848298" name="jetbrains.mps.lang.textGen.structure.OperationCall" flags="ng" index="1bDJIP">
        <reference id="1234190664409" name="function" index="1rvKf6" />
        <child id="1234191323697" name="parameter" index="1ryhcI" />
      </concept>
      <concept id="1236188139846" name="jetbrains.mps.lang.textGen.structure.WithIndentOperation" flags="nn" index="3izx1p">
        <child id="1236188238861" name="list" index="3izTki" />
      </concept>
      <concept id="1234351783410" name="jetbrains.mps.lang.textGen.structure.BufferParameter" flags="nn" index="1_6nNH" />
      <concept id="1234524838116" name="jetbrains.mps.lang.textGen.structure.UtilityMethodDeclaration" flags="ng" index="1JqxBV" />
      <concept id="1234529062040" name="jetbrains.mps.lang.textGen.structure.UtilityMethodCall" flags="nn" index="1JECQ7">
        <reference id="1234529163244" name="function" index="1JF1rN" />
        <child id="1234529174917" name="parameter" index="1JF4iq" />
      </concept>
      <concept id="1234794705341" name="jetbrains.mps.lang.textGen.structure.FoundErrorOperation" flags="nn" index="1ZvZ2y">
        <child id="1237470722868" name="text" index="v0bCk" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="1167227138527" name="jetbrains.mps.baseLanguage.logging.structure.LogStatement" flags="nn" index="34ab3g">
        <property id="1167245565795" name="severity" index="35gtTG" />
        <child id="1167227463056" name="logExpression" index="34bqiv" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1204851882688" name="jetbrains.mps.lang.smodel.structure.LinkRefQualifier" flags="ng" index="26LbJo">
        <reference id="1204851882689" name="link" index="26LbJp" />
      </concept>
      <concept id="5692182839349412519" name="jetbrains.mps.lang.smodel.structure.Reference_GetRoleOperation" flags="nn" index="90r25" />
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1140725362528" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetOperation" flags="nn" index="2oxUTD">
        <child id="1140725362529" name="linkTarget" index="2oxUTC" />
      </concept>
      <concept id="5253134957341697434" name="jetbrains.mps.lang.smodel.structure.LinkNameRefExpression" flags="nn" index="prKvN">
        <reference id="5253134957341833005" name="conceptDeclaration" index="prhl4" />
        <reference id="5253134957341833006" name="linkDeclaration" index="prhl7" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1138661924179" name="jetbrains.mps.lang.smodel.structure.Property_SetOperation" flags="nn" index="tyxLq">
        <child id="1138662048170" name="value" index="tz02z" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="8758390115029295477" name="jetbrains.mps.lang.smodel.structure.SReferenceType" flags="in" index="2z4iKi" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171315804604" name="jetbrains.mps.lang.smodel.structure.Model_RootsOperation" flags="nn" index="2RRcyG">
        <reference id="1171315804605" name="concept" index="2RRcyH" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="3609773094169249792" name="jetbrains.mps.lang.smodel.structure.Node_GetReferenceOperation" flags="nn" index="37Cfm0">
        <child id="3609773094169252180" name="linkQualifier" index="37CeNk" />
      </concept>
      <concept id="5168775467716640652" name="jetbrains.mps.lang.smodel.structure.OperationParm_LinkQualifier" flags="ng" index="1aIX9F">
        <child id="5168775467716640653" name="linkQualifier" index="1aIX9E" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1219352745532" name="jetbrains.mps.lang.smodel.structure.NodeRefExpression" flags="nn" index="3B5_sB">
        <reference id="1219352800908" name="referentNode" index="3B5MYn" />
      </concept>
      <concept id="6407023681583036853" name="jetbrains.mps.lang.smodel.structure.NodeAttributeQualifier" flags="ng" index="3CFYIy">
        <reference id="6407023681583036854" name="attributeConcept" index="3CFYIx" />
      </concept>
      <concept id="6407023681583031218" name="jetbrains.mps.lang.smodel.structure.AttributeAccess" flags="nn" index="3CFZ6_">
        <child id="6407023681583036852" name="qualifier" index="3CFYIz" />
      </concept>
      <concept id="5708036808576088033" name="jetbrains.mps.lang.smodel.structure.Reference_GetResolveInfo" flags="nn" index="1FfNbt" />
      <concept id="1172323065820" name="jetbrains.mps.lang.smodel.structure.Node_GetConceptOperation" flags="nn" index="3NT_Vc" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
        <reference id="1140138128738" name="concept" index="1PxNhF" />
        <child id="1140138123956" name="leftExpression" index="1PxMeX" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1226566855640" name="jetbrains.mps.baseLanguage.collections.structure.AddSetElementOperation" flags="nn" index="2l5eF5">
        <child id="1226567214363" name="argument" index="2l6Ag6" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1235573135402" name="jetbrains.mps.baseLanguage.collections.structure.SingletonSequenceCreator" flags="nn" index="2HTt$P">
        <child id="1235573175711" name="elementType" index="2HTBi0" />
        <child id="1235573187520" name="singletonValue" index="2HTEbv" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1165595910856" name="jetbrains.mps.baseLanguage.collections.structure.GetLastOperation" flags="nn" index="1yVyf7" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
    </language>
  </registry>
  <node concept="1bsvg0" id="hXZ_k_W">
    <property role="TrG5h" value="BaseLanguageTextGen" />
    <property role="3GE5qa" value="lang" />
    <node concept="1JqxBV" id="6fUw26UhHEr" role="1Jy66y">
      <property role="TrG5h" value="getPackageAndShortName" />
      <node concept="1LlUBW" id="6fUw26UhHEu" role="3clF45">
        <node concept="17QB3L" id="6fUw26UhHEw" role="1Lm7xW" />
        <node concept="17QB3L" id="6fUw26UhHEy" role="1Lm7xW" />
      </node>
      <node concept="3clFbS" id="6fUw26UhHEt" role="3clF47">
        <node concept="3cpWs8" id="6fUw26Uh$w_" role="3cqZAp">
          <node concept="3cpWsn" id="6fUw26Uh$wA" role="3cpWs9">
            <property role="TrG5h" value="reference" />
            <node concept="3uibUv" id="6fUw26Uh$wB" role="1tU5fm">
              <ref role="3uigEE" to="ec5l:~SReference" resolve="SReference" />
            </node>
            <node concept="37vLTw" id="2BHiRxgmP6f" role="33vP2m">
              <ref role="3cqZAo" node="6fUw26UhHEz" resolve="classifierRef" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6fUw26UhzYR" role="3cqZAp">
          <node concept="3clFbC" id="6fUw26UhzYS" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTwsL" role="3uHU7B">
              <ref role="3cqZAo" node="6fUw26Uh$wA" resolve="reference" />
            </node>
            <node concept="10Nm6u" id="6fUw26UhzYU" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="6fUw26UhzYV" role="3clFbx">
            <node concept="1ZvZ2y" id="6fUw26Uh$wo" role="3cqZAp">
              <node concept="Xl_RD" id="6fUw26Uh$wq" role="v0bCk">
                <property role="Xl_RC" value="null reference" />
              </node>
            </node>
            <node concept="3cpWs6" id="6fUw26Uh$wQ" role="3cqZAp">
              <node concept="10Nm6u" id="6fUw26UhHEF" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6fUw26UhzZ1" role="3cqZAp">
          <node concept="3cpWsn" id="6fUw26UhzZ2" role="3cpWs9">
            <property role="TrG5h" value="shortName" />
            <property role="3TUv4t" value="false" />
            <node concept="17QB3L" id="6fUw26Uh$wr" role="1tU5fm" />
            <node concept="Xl_RD" id="6fUw26UieFX" role="33vP2m">
              <property role="Xl_RC" value="" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6fUw26UhzZ4" role="3cqZAp">
          <node concept="3cpWsn" id="6fUw26UhzZ5" role="3cpWs9">
            <property role="TrG5h" value="packageName" />
            <property role="3TUv4t" value="false" />
            <node concept="17QB3L" id="6fUw26Uh$ww" role="1tU5fm" />
            <node concept="Xl_RD" id="6fUw26UieFQ" role="33vP2m">
              <property role="Xl_RC" value="" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6fUw26UhzZ8" role="3cqZAp">
          <node concept="2ZW3vV" id="6fUw26UhzZ9" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTu8C" role="2ZW6bz">
              <ref role="3cqZAo" node="6fUw26Uh$wA" resolve="reference" />
            </node>
            <node concept="3uibUv" id="6fUw26UhzZb" role="2ZW6by">
              <ref role="3uigEE" to="cu2c:~DynamicReference" resolve="DynamicReference" />
            </node>
          </node>
          <node concept="9aQIb" id="6fUw26UhzZc" role="9aQIa">
            <node concept="3clFbS" id="6fUw26UhzZd" role="9aQI4">
              <node concept="3cpWs8" id="6fUw26UhzZe" role="3cqZAp">
                <node concept="3cpWsn" id="6fUw26UhzZf" role="3cpWs9">
                  <property role="TrG5h" value="targetNode" />
                  <property role="3TUv4t" value="false" />
                  <node concept="2YIFZM" id="4xPcS81BzbR" role="33vP2m">
                    <ref role="37wK5l" to="unno:7Yvyxcb_4ZV" resolve="getTargetNodeSilently" />
                    <ref role="1Pybhc" to="unno:1NYD3hytmTa" resolve="SNodeOperations" />
                    <node concept="37vLTw" id="3GM_nagTzUW" role="37wK5m">
                      <ref role="3cqZAo" node="6fUw26Uh$wA" resolve="reference" />
                    </node>
                  </node>
                  <node concept="3Tqbb2" id="6fUw26UhT5g" role="1tU5fm" />
                </node>
              </node>
              <node concept="3clFbJ" id="6fUw26UhzZk" role="3cqZAp">
                <node concept="3clFbC" id="6fUw26UhzZl" role="3clFbw">
                  <node concept="37vLTw" id="3GM_nagT_9U" role="3uHU7B">
                    <ref role="3cqZAo" node="6fUw26UhzZf" resolve="targetNode" />
                  </node>
                  <node concept="10Nm6u" id="6fUw26UhzZn" role="3uHU7w" />
                </node>
                <node concept="3clFbS" id="6fUw26UhzZo" role="3clFbx">
                  <node concept="1ZvZ2y" id="6fUw26Uh$wO" role="3cqZAp">
                    <node concept="3cpWs3" id="4NvDrdllM_W" role="v0bCk">
                      <node concept="2YIFZM" id="7LmwlFdRJyU" role="3uHU7w">
                        <ref role="1Pybhc" to="msyo:~SNodeOperations" resolve="SNodeOperations" />
                        <ref role="37wK5l" to="msyo:~SNodeOperations.getDebugText(org.jetbrains.mps.openapi.model.SNode):java.lang.String" resolve="getDebugText" />
                        <node concept="2OqwBi" id="7LmwlFdRJyV" role="37wK5m">
                          <node concept="37vLTw" id="2BHiRxgm7py" role="2Oq$k0">
                            <ref role="3cqZAo" node="6fUw26UhHEz" resolve="classifierRef" />
                          </node>
                          <node concept="liA8E" id="7LmwlFdRJyX" role="2OqNvi">
                            <ref role="37wK5l" to="ec5l:~SReference.getSourceNode():org.jetbrains.mps.openapi.model.SNode" resolve="getSourceNode" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs3" id="4NvDrdllM_$" role="3uHU7B">
                        <node concept="3cpWs3" id="4NvDrdllMp5" role="3uHU7B">
                          <node concept="3cpWs3" id="4NvDrdllMoH" role="3uHU7B">
                            <node concept="3cpWs3" id="4NvDrdllMnT" role="3uHU7B">
                              <node concept="Xl_RD" id="4NvDrdllMn$" role="3uHU7B">
                                <property role="Xl_RC" value="Target node is null for reference to classifier with role " />
                              </node>
                              <node concept="2OqwBi" id="4NvDrdllMoh" role="3uHU7w">
                                <node concept="37vLTw" id="2BHiRxglI6F" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6fUw26UhHEz" resolve="classifierRef" />
                                </node>
                                <node concept="90r25" id="4NvDrdllMon" role="2OqNvi" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="4NvDrdllMoK" role="3uHU7w">
                              <property role="Xl_RC" value="; resolve info " />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="4NvDrdllMpt" role="3uHU7w">
                            <node concept="37vLTw" id="2BHiRxghg$y" role="2Oq$k0">
                              <ref role="3cqZAo" node="6fUw26UhHEz" resolve="classifierRef" />
                            </node>
                            <node concept="1FfNbt" id="4NvDrdllMp$" role="2OqNvi" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="4NvDrdllM_B" role="3uHU7w">
                          <property role="Xl_RC" value="; " />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="6fUw26Uh$wU" role="3cqZAp">
                    <node concept="10Nm6u" id="6fUw26UhHEW" role="3cqZAk" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="6fUw26UhHEY" role="3cqZAp">
                <node concept="1Ls8ON" id="6fUw26UhHF0" role="3cqZAk">
                  <node concept="2YIFZM" id="4DcpLEzkIr" role="1Lso8e">
                    <ref role="37wK5l" to="cu2c:~SModelStereotype.withoutStereotype(java.lang.String):java.lang.String" resolve="withoutStereotype" />
                    <ref role="1Pybhc" to="cu2c:~SModelStereotype" resolve="SModelStereotype" />
                    <node concept="2OqwBi" id="4DcpLEzkIs" role="37wK5m">
                      <node concept="liA8E" id="4DcpLEzkIt" role="2OqNvi">
                        <ref role="37wK5l" to="ec5l:~SModelReference.getModelName():java.lang.String" resolve="getModelName" />
                      </node>
                      <node concept="2OqwBi" id="4DcpLEzkIu" role="2Oq$k0">
                        <node concept="liA8E" id="4DcpLEzkIv" role="2OqNvi">
                          <ref role="37wK5l" to="ec5l:~SModel.getReference():org.jetbrains.mps.openapi.model.SModelReference" resolve="getReference" />
                        </node>
                        <node concept="2OqwBi" id="4DcpLEzkIw" role="2Oq$k0">
                          <node concept="2JrnkZ" id="4DcpLEzkIx" role="2Oq$k0">
                            <node concept="37vLTw" id="3GM_nagTB1Q" role="2JrQYb">
                              <ref role="3cqZAo" node="6fUw26UhzZf" resolve="targetNode" />
                            </node>
                          </node>
                          <node concept="liA8E" id="4DcpLEzkIz" role="2OqNvi">
                            <ref role="37wK5l" to="ec5l:~SNode.getModel():org.jetbrains.mps.openapi.model.SModel" resolve="getModel" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3K4zz7" id="6fUw26UhT4I" role="1Lso8e">
                    <node concept="2YIFZM" id="7LmwlFdRJz$" role="3K4GZi">
                      <ref role="1Pybhc" to="msyo:~SNodeOperations" resolve="SNodeOperations" />
                      <ref role="37wK5l" to="msyo:~SNodeOperations.getResolveInfo(org.jetbrains.mps.openapi.model.SNode):java.lang.String" resolve="getResolveInfo" />
                      <node concept="2JrnkZ" id="7LmwlFdRJz_" role="37wK5m">
                        <node concept="37vLTw" id="3GM_nagTzah" role="2JrQYb">
                          <ref role="3cqZAo" node="6fUw26UhzZf" resolve="targetNode" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6fUw26UhT4J" role="3K4E3e">
                      <node concept="1PxgMI" id="6fUw26UhT4K" role="2Oq$k0">
                        <ref role="1PxNhF" to="tpee:g7pOWCK" resolve="Classifier" />
                        <node concept="37vLTw" id="3GM_nagTB_B" role="1PxMeX">
                          <ref role="3cqZAo" node="6fUw26UhzZf" resolve="targetNode" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="6fUw26UhT4M" role="2OqNvi">
                        <ref role="3TsBF5" to="tpee:hCjj90d" resolve="nestedName" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6fUw26UhT4N" role="3K4Cdx">
                      <node concept="37vLTw" id="3GM_nagT_I7" role="2Oq$k0">
                        <ref role="3cqZAo" node="6fUw26UhzZf" resolve="targetNode" />
                      </node>
                      <node concept="1mIQ4w" id="6fUw26UhT4P" role="2OqNvi">
                        <node concept="chp4Y" id="6fUw26UhT4Q" role="cj9EA">
                          <ref role="cht4Q" to="tpee:g7pOWCK" resolve="Classifier" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6fUw26UhzZH" role="3clFbx">
            <node concept="3clFbF" id="6fUw26UhzZI" role="3cqZAp">
              <node concept="37vLTI" id="6fUw26UhzZJ" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTx$L" role="37vLTJ">
                  <ref role="3cqZAo" node="6fUw26UhzZ2" resolve="shortName" />
                </node>
                <node concept="2OqwBi" id="6fUw26UhzZL" role="37vLTx">
                  <node concept="1eOMI4" id="hVurbzUxIN" role="2Oq$k0">
                    <node concept="10QFUN" id="hVurbzUxIO" role="1eOMHV">
                      <node concept="3uibUv" id="hVurbzUxIP" role="10QFUM">
                        <ref role="3uigEE" to="cu2c:~SReference" resolve="SReference" />
                      </node>
                      <node concept="37vLTw" id="3GM_nagTvHf" role="10QFUP">
                        <ref role="3cqZAo" node="6fUw26Uh$wA" resolve="reference" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="6fUw26UhzZN" role="2OqNvi">
                    <ref role="37wK5l" to="cu2c:~SReference.getResolveInfo():java.lang.String" resolve="getResolveInfo" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="6fUw26UhDII" role="3cqZAp">
              <node concept="3SKdUq" id="6fUw26UhDIJ" role="3SKWNk">
                <property role="3SKdUp" value="hack, todo: remove!" />
              </node>
            </node>
            <node concept="3clFbJ" id="6fUw26UhDIM" role="3cqZAp">
              <node concept="3clFbS" id="6fUw26UhDIN" role="3clFbx">
                <node concept="3cpWs6" id="6fUw26UhHEH" role="3cqZAp">
                  <node concept="1Ls8ON" id="6fUw26UhHEJ" role="3cqZAk">
                    <node concept="2OqwBi" id="6fUw26UhDMb" role="1Lso8e">
                      <node concept="2OqwBi" id="6fUw26UhDJP" role="2Oq$k0">
                        <node concept="37vLTw" id="3GM_nagTrwJ" role="2Oq$k0">
                          <ref role="3cqZAo" node="6fUw26UhzZ2" resolve="shortName" />
                        </node>
                        <node concept="liA8E" id="6fUw26UhDJV" role="2OqNvi">
                          <ref role="37wK5l" to="e2lb:~String.substring(int,int):java.lang.String" resolve="substring" />
                          <node concept="3cmrfG" id="6fUw26UhDJW" role="37wK5m">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="2OqwBi" id="6fUw26UhDKf" role="37wK5m">
                            <node concept="37vLTw" id="3GM_nagTxwx" role="2Oq$k0">
                              <ref role="3cqZAo" node="6fUw26UhzZ2" resolve="shortName" />
                            </node>
                            <node concept="liA8E" id="6fUw26UhDKl" role="2OqNvi">
                              <ref role="37wK5l" to="e2lb:~String.lastIndexOf(java.lang.String):int" resolve="lastIndexOf" />
                              <node concept="Xl_RD" id="6fUw26UhDKm" role="37wK5m">
                                <property role="Xl_RC" value="]" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="6fUw26UhDMp" role="2OqNvi">
                        <ref role="37wK5l" to="e2lb:~String.trim():java.lang.String" resolve="trim" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6fUw26UhDMF" role="1Lso8e">
                      <node concept="2OqwBi" id="6fUw26UhDL2" role="2Oq$k0">
                        <node concept="37vLTw" id="3GM_nagTzKz" role="2Oq$k0">
                          <ref role="3cqZAo" node="6fUw26UhzZ2" resolve="shortName" />
                        </node>
                        <node concept="liA8E" id="6fUw26UhDL8" role="2OqNvi">
                          <ref role="37wK5l" to="e2lb:~String.substring(int):java.lang.String" resolve="substring" />
                          <node concept="3cpWs3" id="6fUw26UhDLO" role="37wK5m">
                            <node concept="3cmrfG" id="6fUw26UhDLR" role="3uHU7w">
                              <property role="3cmrfH" value="1" />
                            </node>
                            <node concept="2OqwBi" id="6fUw26UhDLq" role="3uHU7B">
                              <node concept="37vLTw" id="3GM_nagT$$o" role="2Oq$k0">
                                <ref role="3cqZAo" node="6fUw26UhzZ2" resolve="shortName" />
                              </node>
                              <node concept="liA8E" id="6fUw26UhDLw" role="2OqNvi">
                                <ref role="37wK5l" to="e2lb:~String.lastIndexOf(java.lang.String):int" resolve="lastIndexOf" />
                                <node concept="Xl_RD" id="6fUw26UhDLx" role="37wK5m">
                                  <property role="Xl_RC" value="]" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="6fUw26UhDMO" role="2OqNvi">
                        <ref role="37wK5l" to="e2lb:~String.trim():java.lang.String" resolve="trim" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6fUw26UhDJ7" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagT_25" role="2Oq$k0">
                  <ref role="3cqZAo" node="6fUw26UhzZ2" resolve="shortName" />
                </node>
                <node concept="liA8E" id="6fUw26UhDJd" role="2OqNvi">
                  <ref role="37wK5l" to="e2lb:~String.startsWith(java.lang.String):boolean" resolve="startsWith" />
                  <node concept="Xl_RD" id="6fUw26UhDJe" role="37wK5m">
                    <property role="Xl_RC" value="[" />
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="6fUw26UhDMQ" role="9aQIa">
                <node concept="3clFbS" id="6fUw26UhDMR" role="9aQI4">
                  <node concept="3SKdUt" id="6fUw26UhDN0" role="3cqZAp">
                    <node concept="3SKdUq" id="6fUw26UhDN1" role="3SKWNk">
                      <property role="3SKdUp" value="todo: remove!" />
                    </node>
                  </node>
                  <node concept="3cpWs8" id="6fUw26UhzZO" role="3cqZAp">
                    <node concept="3cpWsn" id="6fUw26UhzZP" role="3cpWs9">
                      <property role="TrG5h" value="modelReference" />
                      <property role="3TUv4t" value="true" />
                      <node concept="3uibUv" id="6fUw26UhzZQ" role="1tU5fm">
                        <ref role="3uigEE" to="ec5l:~SModelReference" resolve="SModelReference" />
                      </node>
                      <node concept="2OqwBi" id="6fUw26UhzZR" role="33vP2m">
                        <node concept="37vLTw" id="3GM_nagT_fF" role="2Oq$k0">
                          <ref role="3cqZAo" node="6fUw26Uh$wA" resolve="reference" />
                        </node>
                        <node concept="liA8E" id="6fUw26UhzZT" role="2OqNvi">
                          <ref role="37wK5l" to="ec5l:~SReference.getTargetSModelReference():org.jetbrains.mps.openapi.model.SModelReference" resolve="getTargetSModelReference" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="6fUw26UhzZU" role="3cqZAp">
                    <node concept="3y3z36" id="6fUw26UhzZV" role="3clFbw">
                      <node concept="37vLTw" id="3GM_nagTvR1" role="3uHU7B">
                        <ref role="3cqZAo" node="6fUw26UhzZP" resolve="modelReference" />
                      </node>
                      <node concept="10Nm6u" id="6fUw26UhzZX" role="3uHU7w" />
                    </node>
                    <node concept="9aQIb" id="6fUw26UhzZY" role="9aQIa">
                      <node concept="3clFbS" id="6fUw26UhzZZ" role="9aQI4">
                        <node concept="3cpWs8" id="6fUw26Uh$00" role="3cqZAp">
                          <node concept="3cpWsn" id="6fUw26Uh$01" role="3cpWs9">
                            <property role="TrG5h" value="lastDot" />
                            <property role="3TUv4t" value="false" />
                            <node concept="10Oyi0" id="6fUw26Uh$02" role="1tU5fm" />
                            <node concept="2OqwBi" id="6fUw26Uh$03" role="33vP2m">
                              <node concept="37vLTw" id="3GM_nagTrQY" role="2Oq$k0">
                                <ref role="3cqZAo" node="6fUw26UhzZ2" resolve="shortName" />
                              </node>
                              <node concept="liA8E" id="6fUw26Uh$05" role="2OqNvi">
                                <ref role="37wK5l" to="e2lb:~String.lastIndexOf(int):int" resolve="lastIndexOf" />
                                <node concept="1Xhbcc" id="6fUw26Uh$06" role="37wK5m">
                                  <property role="1XhdNS" value="." />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="6fUw26Uh$07" role="3cqZAp">
                          <node concept="2d3UOw" id="6fUw26Uh$08" role="3clFbw">
                            <node concept="37vLTw" id="3GM_nagTu46" role="3uHU7B">
                              <ref role="3cqZAo" node="6fUw26Uh$01" resolve="lastDot" />
                            </node>
                            <node concept="3cmrfG" id="6fUw26Uh$0a" role="3uHU7w">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="6fUw26Uh$0b" role="3clFbx">
                            <node concept="3clFbF" id="6fUw26Uh$0c" role="3cqZAp">
                              <node concept="37vLTI" id="6fUw26Uh$0d" role="3clFbG">
                                <node concept="37vLTw" id="3GM_nagTzgF" role="37vLTJ">
                                  <ref role="3cqZAo" node="6fUw26UhzZ5" resolve="packageName" />
                                </node>
                                <node concept="2OqwBi" id="6fUw26Uh$0f" role="37vLTx">
                                  <node concept="37vLTw" id="3GM_nagTzo8" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6fUw26UhzZ2" resolve="shortName" />
                                  </node>
                                  <node concept="liA8E" id="6fUw26Uh$0h" role="2OqNvi">
                                    <ref role="37wK5l" to="e2lb:~String.substring(int,int):java.lang.String" resolve="substring" />
                                    <node concept="3cmrfG" id="6fUw26Uh$0i" role="37wK5m">
                                      <property role="3cmrfH" value="0" />
                                    </node>
                                    <node concept="37vLTw" id="3GM_nagTs8M" role="37wK5m">
                                      <ref role="3cqZAo" node="6fUw26Uh$01" resolve="lastDot" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="6fUw26Uh$0k" role="3cqZAp">
                              <node concept="37vLTI" id="6fUw26Uh$0l" role="3clFbG">
                                <node concept="37vLTw" id="3GM_nagTwj4" role="37vLTJ">
                                  <ref role="3cqZAo" node="6fUw26UhzZ2" resolve="shortName" />
                                </node>
                                <node concept="2OqwBi" id="6fUw26UhT5R" role="37vLTx">
                                  <node concept="2OqwBi" id="6fUw26Uh$0n" role="2Oq$k0">
                                    <node concept="37vLTw" id="3GM_nagTzPR" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6fUw26UhzZ2" resolve="shortName" />
                                    </node>
                                    <node concept="liA8E" id="6fUw26Uh$0p" role="2OqNvi">
                                      <ref role="37wK5l" to="e2lb:~String.substring(int):java.lang.String" resolve="substring" />
                                      <node concept="3cpWs3" id="6fUw26Uh$0q" role="37wK5m">
                                        <node concept="37vLTw" id="3GM_nagTrF0" role="3uHU7B">
                                          <ref role="3cqZAo" node="6fUw26Uh$01" resolve="lastDot" />
                                        </node>
                                        <node concept="3cmrfG" id="6fUw26Uh$0s" role="3uHU7w">
                                          <property role="3cmrfH" value="1" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="6fUw26UhT5X" role="2OqNvi">
                                    <ref role="37wK5l" to="e2lb:~String.replace(char,char):java.lang.String" resolve="replace" />
                                    <node concept="1Xhbcc" id="6fUw26UhT5Y" role="37wK5m">
                                      <property role="1XhdNS" value="$" />
                                    </node>
                                    <node concept="1Xhbcc" id="6fUw26UhT6b" role="37wK5m">
                                      <property role="1XhdNS" value="." />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="9aQIb" id="7jooz54y7d2" role="9aQIa">
                            <node concept="3clFbS" id="7jooz54y7d3" role="9aQI4">
                              <node concept="3cpWs8" id="5pLHUf5rnqS" role="3cqZAp">
                                <node concept="3cpWsn" id="5pLHUf5rnqT" role="3cpWs9">
                                  <property role="TrG5h" value="sModelReference" />
                                  <node concept="2OqwBi" id="2n9zn0CqN3z" role="33vP2m">
                                    <node concept="liA8E" id="2n9zn0CqN3$" role="2OqNvi">
                                      <ref role="37wK5l" to="ec5l:~SModel.getReference():org.jetbrains.mps.openapi.model.SModelReference" resolve="getReference" />
                                    </node>
                                    <node concept="2OqwBi" id="2n9zn0CqN3_" role="2Oq$k0">
                                      <node concept="2OqwBi" id="2n9zn0CqN3A" role="2Oq$k0">
                                        <node concept="37vLTw" id="2BHiRxgmCil" role="2Oq$k0">
                                          <ref role="3cqZAo" node="6fUw26UhHEz" resolve="classifierRef" />
                                        </node>
                                        <node concept="liA8E" id="2n9zn0CqN3C" role="2OqNvi">
                                          <ref role="37wK5l" to="ec5l:~SReference.getSourceNode():org.jetbrains.mps.openapi.model.SNode" resolve="getSourceNode" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="2n9zn0CqN3D" role="2OqNvi">
                                        <ref role="37wK5l" to="ec5l:~SNode.getModel():org.jetbrains.mps.openapi.model.SModel" resolve="getModel" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3uibUv" id="5pLHUf5rnqU" role="1tU5fm">
                                    <ref role="3uigEE" to="ec5l:~SModelReference" resolve="SModelReference" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="5QkZ54YTtvn" role="3cqZAp">
                                <node concept="37vLTI" id="5QkZ54YTtvp" role="3clFbG">
                                  <node concept="37vLTw" id="3GM_nagTBab" role="37vLTJ">
                                    <ref role="3cqZAo" node="6fUw26UhzZ5" resolve="packageName" />
                                  </node>
                                  <node concept="3K4zz7" id="5pLHUf5rnr7" role="37vLTx">
                                    <node concept="2YIFZM" id="4DcpLEzkIT" role="3K4E3e">
                                      <ref role="37wK5l" to="cu2c:~SModelStereotype.withoutStereotype(java.lang.String):java.lang.String" resolve="withoutStereotype" />
                                      <ref role="1Pybhc" to="cu2c:~SModelStereotype" resolve="SModelStereotype" />
                                      <node concept="2OqwBi" id="4DcpLEzkIU" role="37wK5m">
                                        <node concept="liA8E" id="4DcpLEzkIV" role="2OqNvi">
                                          <ref role="37wK5l" to="ec5l:~SModelReference.getModelName():java.lang.String" resolve="getModelName" />
                                        </node>
                                        <node concept="37vLTw" id="3GM_nagTA$d" role="2Oq$k0">
                                          <ref role="3cqZAo" node="5pLHUf5rnqT" resolve="sModelReference" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="Xl_RD" id="5pLHUf5rnrh" role="3K4GZi">
                                      <property role="Xl_RC" value="" />
                                    </node>
                                    <node concept="3y3z36" id="5pLHUf5rnr3" role="3K4Cdx">
                                      <node concept="10Nm6u" id="5pLHUf5rnr6" role="3uHU7w" />
                                      <node concept="37vLTw" id="3GM_nagTsiV" role="3uHU7B">
                                        <ref role="3cqZAo" node="5pLHUf5rnqT" resolve="sModelReference" />
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
                    <node concept="3clFbS" id="6fUw26Uh$0H" role="3clFbx">
                      <node concept="3clFbF" id="6fUw26Uh$0I" role="3cqZAp">
                        <node concept="37vLTI" id="6fUw26Uh$0J" role="3clFbG">
                          <node concept="2YIFZM" id="4DcpLEzkH2" role="37vLTx">
                            <ref role="37wK5l" to="cu2c:~SModelStereotype.withoutStereotype(java.lang.String):java.lang.String" resolve="withoutStereotype" />
                            <ref role="1Pybhc" to="cu2c:~SModelStereotype" resolve="SModelStereotype" />
                            <node concept="2OqwBi" id="4DcpLEzkH3" role="37wK5m">
                              <node concept="liA8E" id="4DcpLEzkH4" role="2OqNvi">
                                <ref role="37wK5l" to="ec5l:~SModelReference.getModelName():java.lang.String" resolve="getModelName" />
                              </node>
                              <node concept="37vLTw" id="3GM_nagTuzb" role="2Oq$k0">
                                <ref role="3cqZAo" node="6fUw26UhzZP" resolve="modelReference" />
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="3GM_nagTzXL" role="37vLTJ">
                            <ref role="3cqZAo" node="6fUw26UhzZ5" resolve="packageName" />
                          </node>
                        </node>
                      </node>
                      <node concept="34ab3g" id="6fUw26UhDN3" role="3cqZAp">
                        <property role="35gtTG" value="warn" />
                        <node concept="3cpWs3" id="6fUw26UhDNX" role="34bqiv">
                          <node concept="37vLTw" id="2BHiRxghgfK" role="3uHU7w">
                            <ref role="3cqZAo" node="6fUw26UhHEz" resolve="classifierRef" />
                          </node>
                          <node concept="3cpWs3" id="6fUw26UhDND" role="3uHU7B">
                            <node concept="3cpWs3" id="6fUw26UhDNl" role="3uHU7B">
                              <node concept="Xl_RD" id="6fUw26UhDN4" role="3uHU7B">
                                <property role="Xl_RC" value="generating classifier reference with target model reference " />
                              </node>
                              <node concept="37vLTw" id="3GM_nagTvtR" role="3uHU7w">
                                <ref role="3cqZAo" node="6fUw26UhzZP" resolve="modelReference" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="6fUw26UhDNG" role="3uHU7w">
                              <property role="Xl_RC" value=" @ " />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="6fUw26UhHFf" role="3cqZAp">
                    <node concept="1Ls8ON" id="6fUw26UhHFh" role="3cqZAk">
                      <node concept="37vLTw" id="3GM_nagTsAc" role="1Lso8e">
                        <ref role="3cqZAo" node="6fUw26UhzZ5" resolve="packageName" />
                      </node>
                      <node concept="37vLTw" id="3GM_nagTzwR" role="1Lso8e">
                        <ref role="3cqZAo" node="6fUw26UhzZ2" resolve="shortName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6fUw26UhHEz" role="3clF46">
        <property role="TrG5h" value="classifierRef" />
        <node concept="2z4iKi" id="6fUw26UhHE$" role="1tU5fm" />
      </node>
    </node>
    <node concept="1JqxBV" id="hXZMgFX" role="1Jy66y">
      <property role="TrG5h" value="getUserObjects" />
      <node concept="3clFbS" id="hXZMgFZ" role="3clF47">
        <node concept="3cpWs8" id="hXZMutm" role="3cqZAp">
          <node concept="3cpWsn" id="hXZMutn" role="3cpWs9">
            <property role="TrG5h" value="names" />
            <node concept="2hMVRd" id="i0pX8iP" role="1tU5fm">
              <node concept="17QB3L" id="4dKd5TsHqsp" role="2hN53Y" />
            </node>
            <node concept="10QFUN" id="hY0elhE" role="33vP2m">
              <node concept="2hMVRd" id="i0pX8CM" role="10QFUM">
                <node concept="17QB3L" id="4dKd5TsHqs_" role="2hN53Y" />
              </node>
              <node concept="2OqwBi" id="hY0elhH" role="10QFUP">
                <node concept="1_6nNH" id="hY0elhI" role="2Oq$k0" />
                <node concept="liA8E" id="hY0elhJ" role="2OqNvi">
                  <ref role="37wK5l" to="zrid:~TextGenBuffer.getUserObject(java.lang.Object):java.lang.Object" resolve="getUserObject" />
                  <node concept="37vLTw" id="2BHiRxgm7Qi" role="37wK5m">
                    <ref role="3cqZAo" node="6vYD9Ekajv2" resolve="type" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="hXZNrfW" role="3cqZAp">
          <node concept="3clFbS" id="hXZNrfX" role="3clFbx">
            <node concept="3clFbF" id="hXZNL3V" role="3cqZAp">
              <node concept="37vLTI" id="hXZNNNL" role="3clFbG">
                <node concept="2ShNRf" id="hXZNO76" role="37vLTx">
                  <node concept="2i4dXS" id="i0X0wAk" role="2ShVmc">
                    <node concept="17QB3L" id="4dKd5TsHqsF" role="HW$YZ" />
                  </node>
                </node>
                <node concept="37vLTw" id="3GM_nagTvPo" role="37vLTJ">
                  <ref role="3cqZAo" node="hXZMutn" resolve="names" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="hXZNRYh" role="3cqZAp">
              <node concept="2OqwBi" id="hXZNS6Q" role="3clFbG">
                <node concept="1_6nNH" id="hXZNRYi" role="2Oq$k0" />
                <node concept="liA8E" id="hXZNSIH" role="2OqNvi">
                  <ref role="37wK5l" to="zrid:~TextGenBuffer.putUserObject(java.lang.Object,java.lang.Object):void" resolve="putUserObject" />
                  <node concept="37vLTw" id="2BHiRxgkZ1v" role="37wK5m">
                    <ref role="3cqZAo" node="6vYD9Ekajv2" resolve="type" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagT_X3" role="37wK5m">
                    <ref role="3cqZAo" node="hXZMutn" resolve="names" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="hXZNtCc" role="3clFbw">
            <node concept="10Nm6u" id="hXZNu1C" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTsz9" role="3uHU7B">
              <ref role="3cqZAo" node="hXZMutn" resolve="names" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="hXZNWah" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTssk" role="3cqZAk">
            <ref role="3cqZAo" node="hXZMutn" resolve="names" />
          </node>
        </node>
      </node>
      <node concept="2hMVRd" id="i0pX8bB" role="3clF45">
        <node concept="17QB3L" id="4dKd5TsHqsv" role="2hN53Y" />
      </node>
      <node concept="37vLTG" id="6vYD9Ekajv2" role="3clF46">
        <property role="TrG5h" value="type" />
        <node concept="17QB3L" id="6vYD9Ekajv3" role="1tU5fm" />
      </node>
    </node>
    <node concept="1JqxBV" id="hXZAS9u" role="1Jy66y">
      <property role="TrG5h" value="getPackageName" />
      <node concept="17QB3L" id="4dKd5TsHqsn" role="3clF45" />
      <node concept="3clFbS" id="hXZAS9w" role="3clF47">
        <node concept="3cpWs6" id="hXZB0rA" role="3cqZAp">
          <node concept="2YIFZM" id="4DcpLEzkSG" role="3cqZAk">
            <ref role="37wK5l" to="cu2c:~SModelStereotype.withoutStereotype(java.lang.String):java.lang.String" resolve="withoutStereotype" />
            <ref role="1Pybhc" to="cu2c:~SModelStereotype" resolve="SModelStereotype" />
            <node concept="2OqwBi" id="4DcpLEzkSH" role="37wK5m">
              <node concept="liA8E" id="4DcpLEzkSI" role="2OqNvi">
                <ref role="37wK5l" to="ec5l:~SModelReference.getModelName():java.lang.String" resolve="getModelName" />
              </node>
              <node concept="2OqwBi" id="4DcpLEzkSJ" role="2Oq$k0">
                <node concept="liA8E" id="4DcpLEzkSK" role="2OqNvi">
                  <ref role="37wK5l" to="ec5l:~SModel.getReference():org.jetbrains.mps.openapi.model.SModelReference" resolve="getReference" />
                </node>
                <node concept="2OqwBi" id="4DcpLEzkSL" role="2Oq$k0">
                  <node concept="2JrnkZ" id="4DcpLEzkSM" role="2Oq$k0">
                    <node concept="37vLTw" id="2BHiRxgm8mE" role="2JrQYb">
                      <ref role="3cqZAo" node="hXZAY1h" resolve="cls" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4DcpLEzkSO" role="2OqNvi">
                    <ref role="37wK5l" to="ec5l:~SNode.getModel():org.jetbrains.mps.openapi.model.SModel" resolve="getModel" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="hXZAY1h" role="3clF46">
        <property role="TrG5h" value="cls" />
        <node concept="3Tqbb2" id="hXZAY1i" role="1tU5fm">
          <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
        </node>
      </node>
    </node>
    <node concept="1JqxBV" id="hZKgBrC" role="1Jy66y">
      <property role="TrG5h" value="getClassName" />
      <node concept="17QB3L" id="3ZMLpv22KQB" role="3clF45" />
      <node concept="37vLTG" id="58GMDmany3Y" role="3clF46">
        <property role="TrG5h" value="packageName" />
        <node concept="17QB3L" id="58GMDmany40" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5T4fSAVZ1VF" role="3clF46">
        <property role="TrG5h" value="fqName" />
        <node concept="17QB3L" id="5T4fSAVZ1VH" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7QHNx0BoylM" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="7QHNx0BoylO" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="hZKgBrE" role="3clF47">
        <node concept="3clFbJ" id="hZKgBIO" role="3cqZAp">
          <node concept="3clFbC" id="hZKgBIP" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxgmGVe" role="3uHU7B">
              <ref role="3cqZAo" node="5T4fSAVZ1VF" resolve="fqName" />
            </node>
            <node concept="10Nm6u" id="hZKgBIQ" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="hZKgBIS" role="3clFbx">
            <node concept="1ZvZ2y" id="i0vcghZ" role="3cqZAp">
              <node concept="Xl_RD" id="i0vcgGB" role="v0bCk">
                <property role="Xl_RC" value="class name is NULL" />
              </node>
            </node>
            <node concept="3cpWs6" id="hZKgBIX" role="3cqZAp">
              <node concept="Xl_RD" id="3ZMLpv22KQD" role="3cqZAk">
                <property role="Xl_RC" value="???" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="20Jnaccot7b" role="3cqZAp" />
        <node concept="3clFbF" id="7hYWH8xUhjb" role="3cqZAp">
          <node concept="1JECQ7" id="7hYWH8xUhjc" role="3clFbG">
            <ref role="1JF1rN" node="7hYWH8xUhj0" resolve="addDependency" />
            <node concept="37vLTw" id="2BHiRxgmwSY" role="1JF4iq">
              <ref role="3cqZAo" node="58GMDmany3Y" resolve="packageName" />
            </node>
            <node concept="37vLTw" id="2BHiRxgma86" role="1JF4iq">
              <ref role="3cqZAo" node="5T4fSAVZ1VF" resolve="fqName" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3bI5ETjeU0Z" role="3cqZAp">
          <node concept="2OqwBi" id="3bI5ETjeU1o" role="3clFbG">
            <node concept="2YIFZM" id="3bI5ETjeU12" role="2Oq$k0">
              <ref role="37wK5l" node="5kChkJ6qHHh" resolve="getInstance" />
              <ref role="1Pybhc" node="5kChkJ6qdl_" resolve="ImportsContext" />
              <node concept="1_6nNH" id="3bI5ETjeU13" role="37wK5m" />
            </node>
            <node concept="liA8E" id="3bI5ETjeU1u" role="2OqNvi">
              <ref role="37wK5l" node="7lG0I2m9ZGU" resolve="getClassifierRefText" />
              <node concept="37vLTw" id="2BHiRxgm9aX" role="37wK5m">
                <ref role="3cqZAo" node="58GMDmany3Y" resolve="packageName" />
              </node>
              <node concept="37vLTw" id="2BHiRxgl8Qq" role="37wK5m">
                <ref role="3cqZAo" node="5T4fSAVZ1VF" resolve="fqName" />
              </node>
              <node concept="37vLTw" id="2BHiRxgm5JF" role="37wK5m">
                <ref role="3cqZAo" node="7QHNx0BoylM" resolve="contextNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1JqxBV" id="7hYWH8xUhj0" role="1Jy66y">
      <property role="TrG5h" value="addDependency" />
      <node concept="37vLTG" id="7hYWH8xUhj4" role="3clF46">
        <property role="TrG5h" value="packageName" />
        <node concept="17QB3L" id="7hYWH8xUhj6" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7hYWH8xUhj7" role="3clF46">
        <property role="TrG5h" value="fqName" />
        <node concept="17QB3L" id="7hYWH8xUhj9" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="7hYWH8xUhj3" role="3clF45" />
      <node concept="3clFbS" id="7hYWH8xUhj2" role="3clF47">
        <node concept="3SKdUt" id="7QHNx0BnLzo" role="3cqZAp">
          <node concept="3SKdUq" id="7QHNx0BnLzp" role="3SKWNk">
            <property role="3SKdUp" value="using only root classifiers as dependencies" />
          </node>
        </node>
        <node concept="3cpWs8" id="7QHNx0Bob2u" role="3cqZAp">
          <node concept="3cpWsn" id="7QHNx0Bob2v" role="3cpWs9">
            <property role="TrG5h" value="nestedName" />
            <node concept="17QB3L" id="7QHNx0Bob2w" role="1tU5fm" />
            <node concept="2YIFZM" id="7hYWH8xUhiS" role="33vP2m">
              <ref role="1Pybhc" to="msyo:~JavaNameUtil" resolve="JavaNameUtil" />
              <ref role="37wK5l" to="msyo:~JavaNameUtil.nestedClassName(java.lang.String,java.lang.String):java.lang.String" resolve="nestedClassName" />
              <node concept="37vLTw" id="2BHiRxgl0KY" role="37wK5m">
                <ref role="3cqZAo" node="7hYWH8xUhj4" resolve="packageName" />
              </node>
              <node concept="37vLTw" id="2BHiRxghfVG" role="37wK5m">
                <ref role="3cqZAo" node="7hYWH8xUhj7" resolve="fqName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7QHNx0Bob4m" role="3cqZAp">
          <node concept="3cpWsn" id="7QHNx0Bob4n" role="3cpWs9">
            <property role="TrG5h" value="dotIndex" />
            <node concept="10Oyi0" id="7QHNx0Bob4o" role="1tU5fm" />
            <node concept="2OqwBi" id="7QHNx0Bob4J" role="33vP2m">
              <node concept="37vLTw" id="3GM_nagTsBQ" role="2Oq$k0">
                <ref role="3cqZAo" node="7QHNx0Bob2v" resolve="nestedName" />
              </node>
              <node concept="liA8E" id="7QHNx0Bob4P" role="2OqNvi">
                <ref role="37wK5l" to="e2lb:~String.indexOf(java.lang.String):int" resolve="indexOf" />
                <node concept="Xl_RD" id="7QHNx0Bob4Q" role="37wK5m">
                  <property role="Xl_RC" value="." />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7QHNx0Bob55" role="3cqZAp">
          <node concept="3cpWsn" id="7QHNx0Bob56" role="3cpWs9">
            <property role="TrG5h" value="dependencyFqName" />
            <node concept="17QB3L" id="7QHNx0Bob57" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbJ" id="7QHNx0Bob5c" role="3cqZAp">
          <node concept="3clFbS" id="7QHNx0Bob5d" role="3clFbx">
            <node concept="3clFbF" id="7QHNx0Bob5E" role="3cqZAp">
              <node concept="37vLTI" id="7QHNx0Bob60" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxghgCz" role="37vLTx">
                  <ref role="3cqZAo" node="7hYWH8xUhj7" resolve="fqName" />
                </node>
                <node concept="37vLTw" id="3GM_nagTwTS" role="37vLTJ">
                  <ref role="3cqZAo" node="7QHNx0Bob56" resolve="dependencyFqName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7QHNx0Bob5A" role="3clFbw">
            <node concept="3cmrfG" id="7QHNx0Bob5D" role="3uHU7w">
              <property role="3cmrfH" value="-1" />
            </node>
            <node concept="37vLTw" id="3GM_nagTBFh" role="3uHU7B">
              <ref role="3cqZAo" node="7QHNx0Bob4n" resolve="dotIndex" />
            </node>
          </node>
          <node concept="9aQIb" id="7QHNx0Bob64" role="9aQIa">
            <node concept="3clFbS" id="7QHNx0Bob65" role="9aQI4">
              <node concept="3clFbF" id="7QHNx0Bob66" role="3cqZAp">
                <node concept="37vLTI" id="7QHNx0Bob6s" role="3clFbG">
                  <node concept="37vLTw" id="3GM_nagTvXf" role="37vLTJ">
                    <ref role="3cqZAo" node="7QHNx0Bob56" resolve="dependencyFqName" />
                  </node>
                  <node concept="3cpWs3" id="7QHNx0Boej4" role="37vLTx">
                    <node concept="3cpWs3" id="7QHNx0BoeiG" role="3uHU7B">
                      <node concept="37vLTw" id="2BHiRxgmfHG" role="3uHU7B">
                        <ref role="3cqZAo" node="7hYWH8xUhj4" resolve="packageName" />
                      </node>
                      <node concept="Xl_RD" id="7QHNx0BoeiJ" role="3uHU7w">
                        <property role="Xl_RC" value="." />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7QHNx0Boejs" role="3uHU7w">
                      <node concept="37vLTw" id="3GM_nagTAfX" role="2Oq$k0">
                        <ref role="3cqZAo" node="7QHNx0Bob2v" resolve="nestedName" />
                      </node>
                      <node concept="liA8E" id="7QHNx0Boejy" role="2OqNvi">
                        <ref role="37wK5l" to="e2lb:~String.substring(int,int):java.lang.String" resolve="substring" />
                        <node concept="3cmrfG" id="7QHNx0Boejz" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="37vLTw" id="3GM_nagTsvv" role="37wK5m">
                          <ref role="3cqZAo" node="7QHNx0Bob4n" resolve="dotIndex" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7hYWH8xUkvm" role="3cqZAp">
          <node concept="1JECQ7" id="7hYWH8xUkvn" role="3clFbG">
            <ref role="1JF1rN" node="7hYWH8xUkv5" resolve="addDependency" />
            <node concept="37vLTw" id="3GM_nagTv$S" role="1JF4iq">
              <ref role="3cqZAo" node="7QHNx0Bob56" resolve="dependencyFqName" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1JqxBV" id="7hYWH8xUkv5" role="1Jy66y">
      <property role="TrG5h" value="addDependency" />
      <node concept="3cqZAl" id="7hYWH8xUkv8" role="3clF45" />
      <node concept="3clFbS" id="7hYWH8xUkv7" role="3clF47">
        <node concept="3cpWs8" id="20Jnaccot7d" role="3cqZAp">
          <node concept="3cpWsn" id="20Jnaccot7e" role="3cpWs9">
            <property role="TrG5h" value="dependencies" />
            <node concept="2hMVRd" id="20Jnaccot7f" role="1tU5fm">
              <node concept="17QB3L" id="20Jnaccot7h" role="2hN53Y" />
            </node>
            <node concept="1JECQ7" id="7hYWH8xUkvf" role="33vP2m">
              <ref role="1JF1rN" node="hXZMgFX" resolve="getUserObjects" />
              <node concept="10M0yZ" id="7hYWH8xUkvg" role="1JF4iq">
                <ref role="1PxDUh" to="zrid:~TextGen" resolve="TextGen" />
                <ref role="3cqZAo" to="zrid:~TextGen.DEPENDENCY" resolve="DEPENDENCY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7hYWH8xUkvd" role="3cqZAp">
          <node concept="2OqwBi" id="7hYWH8xUkve" role="3clFbG">
            <node concept="TSZUe" id="7hYWH8xUkvh" role="2OqNvi">
              <node concept="2YIFZM" id="7hYWH8xUkvi" role="25WWJ7">
                <ref role="1Pybhc" to="msyo:~InternUtil" resolve="InternUtil" />
                <ref role="37wK5l" to="msyo:~InternUtil.intern(java.lang.String):java.lang.String" resolve="intern" />
                <node concept="37vLTw" id="2BHiRxghfCW" role="37wK5m">
                  <ref role="3cqZAo" node="7hYWH8xUkv9" resolve="fqName" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="3GM_nagTBmv" role="2Oq$k0">
              <ref role="3cqZAo" node="20Jnaccot7e" resolve="dependencies" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7hYWH8xUkv9" role="3clF46">
        <property role="TrG5h" value="fqName" />
        <node concept="17QB3L" id="7hYWH8xUkva" role="1tU5fm" />
      </node>
    </node>
    <node concept="1JqxBV" id="3su$jtv$Bzs" role="1Jy66y">
      <property role="TrG5h" value="appendClassName" />
      <node concept="3cqZAl" id="3su$jtv$Bzv" role="3clF45" />
      <node concept="3clFbS" id="3su$jtv$Bzu" role="3clF47">
        <node concept="lc7rE" id="3su$jtv$Bz_" role="3cqZAp">
          <node concept="l9hG8" id="3su$jtv$BzB" role="lcghm">
            <node concept="1JECQ7" id="3su$jtv$BzD" role="lb14g">
              <ref role="1JF1rN" node="hZKgBrC" resolve="getClassName" />
              <node concept="37vLTw" id="2BHiRxgm_5O" role="1JF4iq">
                <ref role="3cqZAo" node="3su$jtv$Bzw" resolve="packageName" />
              </node>
              <node concept="37vLTw" id="2BHiRxglPPF" role="1JF4iq">
                <ref role="3cqZAo" node="3su$jtv$Bzy" resolve="fqName" />
              </node>
              <node concept="37vLTw" id="2BHiRxgheIS" role="1JF4iq">
                <ref role="3cqZAo" node="7QHNx0BoylR" resolve="contextNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3su$jtv$Bzw" role="3clF46">
        <property role="TrG5h" value="packageName" />
        <node concept="17QB3L" id="3su$jtv$Bzx" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3su$jtv$Bzy" role="3clF46">
        <property role="TrG5h" value="fqName" />
        <node concept="17QB3L" id="3su$jtv$Bz$" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7QHNx0BoylR" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="7QHNx0BoylT" role="1tU5fm" />
      </node>
    </node>
    <node concept="1JqxBV" id="1aKcY0LpgjQ" role="1Jy66y">
      <property role="TrG5h" value="registerExtendsRelation" />
      <node concept="3cqZAl" id="1aKcY0Lpj0E" role="3clF45" />
      <node concept="3clFbS" id="1aKcY0LpgjS" role="3clF47">
        <node concept="3SKdUt" id="1aKcY0Lrxec" role="3cqZAp">
          <node concept="3SKdUq" id="1aKcY0LrxmM" role="3SKWNk">
            <property role="3SKdUp" value="if an inner class extends/implements outer classifier, we shall not record this dependency as 'extends' of a" />
          </node>
        </node>
        <node concept="3SKdUt" id="1aKcY0Lry9V" role="3cqZAp">
          <node concept="3SKdUq" id="1aKcY0LrykJ" role="3SKWNk">
            <property role="3SKdUp" value="top-level unit (see sample in MPS-17604). Perhaps, we shall not record this dependency at all?" />
          </node>
        </node>
        <node concept="3cpWs8" id="1aKcY0Lpn68" role="3cqZAp">
          <node concept="3cpWsn" id="1aKcY0Lpn69" role="3cpWs9">
            <property role="TrG5h" value="dependencies" />
            <node concept="2hMVRd" id="1aKcY0Lpn6a" role="1tU5fm">
              <node concept="17QB3L" id="1aKcY0Lpn6b" role="2hN53Y" />
            </node>
            <node concept="1JECQ7" id="1aKcY0Lpn6c" role="33vP2m">
              <ref role="1JF1rN" node="hXZMgFX" resolve="getUserObjects" />
              <node concept="3K4zz7" id="1aKcY0LruQ6" role="1JF4iq">
                <node concept="10M0yZ" id="1aKcY0Lrv9D" role="3K4E3e">
                  <ref role="1PxDUh" to="zrid:~TextGen" resolve="TextGen" />
                  <ref role="3cqZAo" to="zrid:~TextGen.EXTENDS" resolve="EXTENDS" />
                </node>
                <node concept="10M0yZ" id="1aKcY0Lrvae" role="3K4GZi">
                  <ref role="1PxDUh" to="zrid:~TextGen" resolve="TextGen" />
                  <ref role="3cqZAo" to="zrid:~TextGen.DEPENDENCY" resolve="DEPENDENCY" />
                </node>
                <node concept="37vLTw" id="1aKcY0Lrurt" role="3K4Cdx">
                  <ref role="3cqZAo" node="1aKcY0LrtQr" resolve="isTopClassifier" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="1aKcY0LpnhQ" role="3cqZAp">
          <node concept="3clFbS" id="1aKcY0LpnhT" role="2LFqv$">
            <node concept="3clFbF" id="1aKcY0Lpn6e" role="3cqZAp">
              <node concept="2OqwBi" id="1aKcY0Lpn6f" role="3clFbG">
                <node concept="37vLTw" id="1aKcY0Lpn6g" role="2Oq$k0">
                  <ref role="3cqZAo" node="1aKcY0Lpn69" resolve="dependencies" />
                </node>
                <node concept="TSZUe" id="1aKcY0Lqu9Q" role="2OqNvi">
                  <node concept="2YIFZM" id="1aKcY0Lqu9M" role="25WWJ7">
                    <ref role="37wK5l" to="msyo:~NameUtil.nodeFQName(org.jetbrains.mps.openapi.model.SNode):java.lang.String" resolve="nodeFQName" />
                    <ref role="1Pybhc" to="msyo:~NameUtil" resolve="NameUtil" />
                    <node concept="2OqwBi" id="1aKcY0Lqu9N" role="37wK5m">
                      <node concept="37vLTw" id="1aKcY0Lqu9O" role="2Oq$k0">
                        <ref role="3cqZAo" node="1aKcY0LpnhW" resolve="c" />
                      </node>
                      <node concept="3TrEf2" id="1aKcY0Lqu9P" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:g7uigIF" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1aKcY0LpnhW" role="1Duv9x">
            <property role="TrG5h" value="c" />
            <node concept="3Tqbb2" id="1aKcY0LpnyY" role="1tU5fm">
              <ref role="ehGHo" to="tpee:g7uibYu" resolve="ClassifierType" />
            </node>
          </node>
          <node concept="37vLTw" id="1aKcY0Lpo6a" role="1DdaDG">
            <ref role="3cqZAo" node="1aKcY0Lpn50" resolve="classifiers" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1aKcY0Lpn50" role="3clF46">
        <property role="TrG5h" value="classifiers" />
        <node concept="2I9FWS" id="1aKcY0Lpn4Z" role="1tU5fm">
          <ref role="2I9WkF" to="tpee:g7uibYu" resolve="ClassifierType" />
        </node>
      </node>
      <node concept="37vLTG" id="1aKcY0LrtQr" role="3clF46">
        <property role="TrG5h" value="isTopClassifier" />
        <node concept="10P_77" id="1aKcY0Lru7M" role="1tU5fm" />
      </node>
      <node concept="P$JXv" id="1aKcY0Lrvbp" role="lGtFl">
        <node concept="TUZQ0" id="1aKcY0Lrvbs" role="TUOzN">
          <property role="TUZQ4" value="collection to report" />
          <node concept="zr_55" id="1aKcY0Lrvbu" role="zr_5Q">
            <ref role="zr_51" node="1aKcY0Lpn50" resolve="classifiers" />
          </node>
        </node>
        <node concept="TUZQ0" id="1aKcY0Lrvbv" role="TUOzN">
          <property role="TUZQ4" value="true indicates we generate a top-level class, false for inner class indicates we shall record relaxed dependency" />
          <node concept="zr_55" id="1aKcY0Lrvbx" role="zr_5Q">
            <ref role="zr_51" node="1aKcY0LrtQr" resolve="isTopClassifier" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1bwezc" id="hXZ_zy0" role="1bwxVq">
      <property role="TrG5h" value="typeParameters" />
      <node concept="3cqZAl" id="hXZ_zy1" role="3clF45" />
      <node concept="3clFbS" id="hXZ_zy2" role="3clF47">
        <node concept="3clFbJ" id="hXZ_XyK" role="3cqZAp">
          <node concept="3clFbS" id="hXZ_XyL" role="3clFbx">
            <node concept="lc7rE" id="i0uAwsw" role="3cqZAp">
              <node concept="la8eA" id="i0uAwsy" role="lcghm">
                <property role="lacIc" value="&lt;" />
              </node>
              <node concept="l9S2W" id="i0uAwsz" role="lcghm">
                <property role="XA4eZ" value="true" />
                <property role="lbP0B" value=", " />
                <node concept="37vLTw" id="2BHiRxgm9n_" role="lbANJ">
                  <ref role="3cqZAo" node="hXZ_OCU" resolve="types" />
                </node>
              </node>
              <node concept="la8eA" id="i0uAws$" role="lcghm">
                <property role="lacIc" value="&gt;" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="hXZ_Zo9" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxgm9xZ" role="2Oq$k0">
              <ref role="3cqZAo" node="hXZ_OCU" resolve="types" />
            </node>
            <node concept="3GX2aA" id="hXZ_ZJD" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="hXZ_OCU" role="3clF46">
        <property role="TrG5h" value="types" />
        <node concept="2I9FWS" id="hXZ_PIh" role="1tU5fm">
          <ref role="2I9WkF" to="tpee:fz3vP1H" resolve="Type" />
        </node>
      </node>
    </node>
    <node concept="1bwezc" id="hXZAkSl" role="1bwxVq">
      <property role="TrG5h" value="arguments" />
      <node concept="3cqZAl" id="hXZAkSm" role="3clF45" />
      <node concept="3clFbS" id="hXZAkSn" role="3clF47">
        <node concept="lc7rE" id="i0uAwnH" role="3cqZAp">
          <node concept="la8eA" id="i0uAwnJ" role="lcghm">
            <property role="lacIc" value="(" />
          </node>
          <node concept="l9S2W" id="i0uAwnK" role="lcghm">
            <property role="XA4eZ" value="true" />
            <property role="lbP0B" value=", " />
            <node concept="2OqwBi" id="hZmruiX" role="lbANJ">
              <node concept="37vLTw" id="2BHiRxgmI9y" role="2Oq$k0">
                <ref role="3cqZAo" node="hXZAqQb" resolve="methodCall" />
              </node>
              <node concept="3Tsc0h" id="hZmruRX" role="2OqNvi">
                <ref role="3TtcxE" to="tpee:fz7wK6I" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwnL" role="lcghm">
            <property role="lacIc" value=")" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="hXZAqQb" role="3clF46">
        <property role="TrG5h" value="methodCall" />
        <node concept="3Tqbb2" id="hXZAqQc" role="1tU5fm">
          <ref role="ehGHo" to="tpee:hxndl_i" resolve="IMethodCall" />
        </node>
      </node>
    </node>
    <node concept="1bwezc" id="75$7FyD$hyP" role="1bwxVq">
      <property role="TrG5h" value="newLine" />
      <node concept="3cqZAl" id="75$7FyD$hyQ" role="3clF45" />
      <node concept="3clFbS" id="75$7FyD$hyR" role="3clF47">
        <node concept="3clFbJ" id="75$7FyD$hyU" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxgm8gK" role="3clFbw">
            <ref role="3cqZAo" node="75$7FyD$hyS" resolve="need" />
          </node>
          <node concept="3clFbS" id="75$7FyD$hyW" role="3clFbx">
            <node concept="lc7rE" id="75$7FyD$hyY" role="3cqZAp">
              <node concept="l8MVK" id="75$7FyD$hz0" role="lcghm" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="75$7FyD$hyS" role="3clF46">
        <property role="TrG5h" value="need" />
        <node concept="10P_77" id="75$7FyD$hyT" role="1tU5fm" />
      </node>
    </node>
    <node concept="1bwezc" id="hXZOC0K" role="1bwxVq">
      <property role="TrG5h" value="annotations" />
      <node concept="3cqZAl" id="hXZOC0L" role="3clF45" />
      <node concept="3clFbS" id="hXZOC0M" role="3clF47">
        <node concept="lc7rE" id="i0uAwD8" role="3cqZAp">
          <node concept="l9S2W" id="i0uAwDa" role="lcghm">
            <property role="XA4eZ" value="false" />
            <node concept="2OqwBi" id="hZmrn6U" role="lbANJ">
              <node concept="37vLTw" id="2BHiRxgllnF" role="2Oq$k0">
                <ref role="3cqZAo" node="hXZOG4z" resolve="annotable" />
              </node>
              <node concept="3Tsc0h" id="hZmro8x" role="2OqNvi">
                <ref role="3TtcxE" to="tpee:hiAJF2X" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3NZLVEQ_MD8" role="3cqZAp">
          <node concept="3clFbS" id="3NZLVEQ_MD9" role="3clFbx">
            <node concept="3cpWs8" id="4jPNs0z9pyN" role="3cqZAp">
              <node concept="3cpWsn" id="4jPNs0z9pyO" role="3cpWs9">
                <property role="TrG5h" value="containsDeprecated" />
                <node concept="10P_77" id="4jPNs0z9pyP" role="1tU5fm" />
                <node concept="3clFbT" id="3vwMa5aADsZ" role="33vP2m">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="3vwMa5aADt1" role="3cqZAp">
              <node concept="3clFbS" id="3vwMa5aADt2" role="2LFqv$">
                <node concept="3clFbJ" id="3vwMa5aAHTI" role="3cqZAp">
                  <node concept="3clFbS" id="3vwMa5aAHTJ" role="3clFbx">
                    <node concept="3clFbF" id="3vwMa5aAIcr" role="3cqZAp">
                      <node concept="37vLTI" id="3vwMa5aAIct" role="3clFbG">
                        <node concept="3clFbT" id="3vwMa5aAIcw" role="37vLTx">
                          <property role="3clFbU" value="true" />
                        </node>
                        <node concept="37vLTw" id="3GM_nagTy1k" role="37vLTJ">
                          <ref role="3cqZAo" node="4jPNs0z9pyO" resolve="containsDeprecated" />
                        </node>
                      </node>
                    </node>
                    <node concept="3zACq4" id="3vwMa5aAIcy" role="3cqZAp" />
                  </node>
                  <node concept="3clFbC" id="3vwMa5aAHU0" role="3clFbw">
                    <node concept="3B5_sB" id="3vwMa5aAHU3" role="3uHU7w">
                      <ref role="3B5MYn" to="e2lb:~Deprecated" resolve="Deprecated" />
                    </node>
                    <node concept="2OqwBi" id="3vwMa5aAHTN" role="3uHU7B">
                      <node concept="37vLTw" id="3GM_nagTtw7" role="2Oq$k0">
                        <ref role="3cqZAo" node="3vwMa5aADt5" resolve="annotationInstance" />
                      </node>
                      <node concept="3TrEf2" id="3vwMa5aAHTR" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:hiAI5P0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3vwMa5aAHT$" role="1DdaDG">
                <node concept="37vLTw" id="2BHiRxgmaZK" role="2Oq$k0">
                  <ref role="3cqZAo" node="hXZOG4z" resolve="annotable" />
                </node>
                <node concept="3Tsc0h" id="3vwMa5aAHTE" role="2OqNvi">
                  <ref role="3TtcxE" to="tpee:hiAJF2X" />
                </node>
              </node>
              <node concept="3cpWsn" id="3vwMa5aADt5" role="1Duv9x">
                <property role="TrG5h" value="annotationInstance" />
                <node concept="3Tqbb2" id="3vwMa5aAHTu" role="1tU5fm">
                  <ref role="ehGHo" to="tpee:hiAHcMF" resolve="AnnotationInstance" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3vwMa5aAIcE" role="3cqZAp">
              <node concept="3clFbS" id="3vwMa5aAIcF" role="3clFbx">
                <node concept="3cpWs8" id="3NZLVEQ_QrN" role="3cqZAp">
                  <node concept="3cpWsn" id="3NZLVEQ_QrO" role="3cpWs9">
                    <property role="TrG5h" value="deprecated" />
                    <node concept="3Tqbb2" id="3NZLVEQ_QrP" role="1tU5fm">
                      <ref role="ehGHo" to="tpee:hiAHcMF" resolve="AnnotationInstance" />
                    </node>
                    <node concept="2ShNRf" id="3NZLVEQ_QrS" role="33vP2m">
                      <node concept="3zrR0B" id="3NZLVEQ_QrT" role="2ShVmc">
                        <node concept="3Tqbb2" id="3NZLVEQ_QrU" role="3zrR0E">
                          <ref role="ehGHo" to="tpee:hiAHcMF" resolve="AnnotationInstance" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3NZLVEQ_QrW" role="3cqZAp">
                  <node concept="2OqwBi" id="3NZLVEQ_Qs3" role="3clFbG">
                    <node concept="2OqwBi" id="3NZLVEQ_QrY" role="2Oq$k0">
                      <node concept="37vLTw" id="3GM_nagTBnT" role="2Oq$k0">
                        <ref role="3cqZAo" node="3NZLVEQ_QrO" resolve="deprecated" />
                      </node>
                      <node concept="3TrEf2" id="3NZLVEQ_Qs2" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:hiAI5P0" />
                      </node>
                    </node>
                    <node concept="2oxUTD" id="3NZLVEQ_Qs7" role="2OqNvi">
                      <node concept="3B5_sB" id="3NZLVEQ_Qsa" role="2oxUTC">
                        <ref role="3B5MYn" to="e2lb:~Deprecated" resolve="Deprecated" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="lc7rE" id="3NZLVEQ_QIA" role="3cqZAp">
                  <node concept="l9hG8" id="3NZLVEQ_QIC" role="lcghm">
                    <node concept="37vLTw" id="3GM_nagT_zA" role="lb14g">
                      <ref role="3cqZAo" node="3NZLVEQ_QrO" resolve="deprecated" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="3vwMa5aAIcI" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagT$dM" role="3fr31v">
                  <ref role="3cqZAo" node="4jPNs0z9pyO" resolve="containsDeprecated" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="3NZLVEQ_Qr$" role="3clFbw">
            <node concept="2OqwBi" id="3NZLVEQ_Qrs" role="3uHU7B">
              <node concept="37vLTw" id="2BHiRxgmwus" role="2Oq$k0">
                <ref role="3cqZAo" node="hXZOG4z" resolve="annotable" />
              </node>
              <node concept="1mIQ4w" id="3NZLVEQ_Qrw" role="2OqNvi">
                <node concept="chp4Y" id="3NZLVEQ_Qry" role="cj9EA">
                  <ref role="cht4Q" to="tpck:hOwnYed" resolve="IDeprecatable" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3NZLVEQ_QrI" role="3uHU7w">
              <node concept="1PxgMI" id="3NZLVEQ_QrG" role="2Oq$k0">
                <ref role="1PxNhF" to="tpck:hOwnYed" resolve="IDeprecatable" />
                <node concept="37vLTw" id="2BHiRxgm9aV" role="1PxMeX">
                  <ref role="3cqZAo" node="hXZOG4z" resolve="annotable" />
                </node>
              </node>
              <node concept="2qgKlT" id="3NZLVEQ_QrM" role="2OqNvi">
                <ref role="37wK5l" to="tpcu:hOwoPtR" resolve="isDeprecated" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="hXZOG4z" role="3clF46">
        <property role="TrG5h" value="annotable" />
        <node concept="3Tqbb2" id="hXZOG4$" role="1tU5fm">
          <ref role="ehGHo" to="tpee:hiAJDhU" resolve="HasAnnotation" />
        </node>
      </node>
    </node>
    <node concept="1bwezc" id="hXZORcy" role="1bwxVq">
      <property role="TrG5h" value="visibility" />
      <node concept="3cqZAl" id="hXZORcz" role="3clF45" />
      <node concept="3clFbS" id="hXZORc$" role="3clF47">
        <node concept="3clFbJ" id="hXZOYF_" role="3cqZAp">
          <node concept="2OqwBi" id="hXZOZdO" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxgl0KW" role="2Oq$k0">
              <ref role="3cqZAo" node="hXZOVHR" resolve="v" />
            </node>
            <node concept="3w_OXm" id="hXZOZOG" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="hXZOYFB" role="3clFbx">
            <node concept="lc7rE" id="i0uAwGT" role="3cqZAp">
              <node concept="la8eA" id="i0uAwGV" role="lcghm">
                <property role="lacIc" value="/*package*/ " />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="hXZP3EA" role="9aQIa">
            <node concept="3clFbS" id="hXZP3EB" role="9aQI4">
              <node concept="lc7rE" id="i0uAwBl" role="3cqZAp">
                <node concept="l9hG8" id="i0uAwBn" role="lcghm">
                  <node concept="37vLTw" id="2BHiRxgmIay" role="lb14g">
                    <ref role="3cqZAo" node="hXZOVHR" resolve="v" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="hXZOVHR" role="3clF46">
        <property role="TrG5h" value="v" />
        <node concept="3Tqbb2" id="hXZOVHS" role="1tU5fm">
          <ref role="ehGHo" to="tpee:gFTlX_I" resolve="Visibility" />
        </node>
      </node>
    </node>
    <node concept="1bwezc" id="hXZP8nY" role="1bwxVq">
      <property role="TrG5h" value="visibilityWithIndent" />
      <node concept="3cqZAl" id="hXZP8nZ" role="3clF45" />
      <node concept="3clFbS" id="hXZP8o0" role="3clF47">
        <node concept="1bpajm" id="i0uZqTZ" role="3cqZAp" />
        <node concept="lc7rE" id="i0XtjHK" role="3cqZAp">
          <node concept="1bDJIP" id="i0Xtkvm" role="lcghm">
            <ref role="1rvKf6" node="hXZORcy" resolve="visibility" />
            <node concept="37vLTw" id="2BHiRxgmaor" role="1ryhcI">
              <ref role="3cqZAo" node="hXZPegt" resolve="v" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="hXZPegt" role="3clF46">
        <property role="TrG5h" value="v" />
        <node concept="3Tqbb2" id="hXZPegu" role="1tU5fm">
          <ref role="ehGHo" to="tpee:gFTlX_I" resolve="Visibility" />
        </node>
      </node>
    </node>
    <node concept="1bwezc" id="16OC$NDNpvB" role="1bwxVq">
      <property role="TrG5h" value="internalClassifierName" />
      <node concept="3cqZAl" id="16OC$NDNpvC" role="3clF45" />
      <node concept="3clFbS" id="16OC$NDNpvD" role="3clF47">
        <node concept="3clFbJ" id="7l1HRgzK5bu" role="3cqZAp">
          <node concept="3clFbS" id="7l1HRgzK5bv" role="3clFbx">
            <node concept="lc7rE" id="7l1HRgzK5bw" role="3cqZAp">
              <node concept="la8eA" id="7l1HRgzK5bx" role="lcghm">
                <property role="lacIc" value="???" />
              </node>
            </node>
            <node concept="1ZvZ2y" id="7l1HRgzK5by" role="3cqZAp">
              <node concept="Xl_RD" id="1OZiJnbgb0L" role="v0bCk">
                <property role="Xl_RC" value="classifier is null" />
              </node>
            </node>
            <node concept="3cpWs6" id="7l1HRgzK5bz" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="7l1HRgzK5b$" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxghfSO" role="2Oq$k0">
              <ref role="3cqZAo" node="16OC$NDNpvE" resolve="node" />
            </node>
            <node concept="3w_OXm" id="7l1HRgzK5bA" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="3su$jtv$B$C" role="3cqZAp">
          <node concept="1JECQ7" id="3su$jtv$B$D" role="3clFbG">
            <ref role="1JF1rN" node="3su$jtv$Bzs" resolve="appendClassName" />
            <node concept="1JECQ7" id="3ZMLpv22KQO" role="1JF4iq">
              <ref role="1JF1rN" node="hXZAS9u" resolve="getPackageName" />
              <node concept="37vLTw" id="2BHiRxghfDR" role="1JF4iq">
                <ref role="3cqZAo" node="16OC$NDNpvE" resolve="node" />
              </node>
            </node>
            <node concept="2YIFZM" id="3ZMLpv22KQQ" role="1JF4iq">
              <ref role="1Pybhc" to="msyo:~NameUtil" resolve="NameUtil" />
              <ref role="37wK5l" to="msyo:~NameUtil.longNameFromNamespaceAndShortName(java.lang.String,java.lang.String):java.lang.String" resolve="longNameFromNamespaceAndShortName" />
              <node concept="1JECQ7" id="3ZMLpv22KQR" role="37wK5m">
                <ref role="1JF1rN" node="hXZAS9u" resolve="getPackageName" />
                <node concept="37vLTw" id="2BHiRxgmyVw" role="1JF4iq">
                  <ref role="3cqZAo" node="16OC$NDNpvE" resolve="node" />
                </node>
              </node>
              <node concept="2OqwBi" id="3ZMLpv22KQT" role="37wK5m">
                <node concept="37vLTw" id="2BHiRxgm9MY" role="2Oq$k0">
                  <ref role="3cqZAo" node="16OC$NDNpvE" resolve="node" />
                </node>
                <node concept="3TrcHB" id="3ZMLpv22KQV" role="2OqNvi">
                  <ref role="3TsBF5" to="tpee:hCjj90d" resolve="nestedName" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxgmayg" role="1JF4iq">
              <ref role="3cqZAo" node="7QHNx0Boyn2" resolve="contextNode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="16OC$NDNpvE" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="16OC$NDNpvF" role="1tU5fm">
          <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
        </node>
      </node>
      <node concept="37vLTG" id="7QHNx0Boyn2" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="7QHNx0Boyn4" role="1tU5fm" />
      </node>
    </node>
    <node concept="1bwezc" id="i0ltU_0" role="1bwxVq">
      <property role="IEkAT" value="false" />
      <property role="TrG5h" value="internalClassName" />
      <node concept="3cqZAl" id="i0ltU_1" role="3clF45" />
      <node concept="3clFbS" id="i0ltU_2" role="3clF47">
        <node concept="3clFbF" id="3su$jtv$B$Q" role="3cqZAp">
          <node concept="1JECQ7" id="3su$jtv$B$R" role="3clFbG">
            <ref role="1JF1rN" node="3su$jtv$Bzs" resolve="appendClassName" />
            <node concept="37vLTw" id="2BHiRxghf4O" role="1JF4iq">
              <ref role="3cqZAo" node="i0ltZUe" resolve="packageName" />
            </node>
            <node concept="2YIFZM" id="3ZMLpv22KR9" role="1JF4iq">
              <ref role="1Pybhc" to="msyo:~NameUtil" resolve="NameUtil" />
              <ref role="37wK5l" to="msyo:~NameUtil.longNameFromNamespaceAndShortName(java.lang.String,java.lang.String):java.lang.String" resolve="longNameFromNamespaceAndShortName" />
              <node concept="37vLTw" id="2BHiRxgheRo" role="37wK5m">
                <ref role="3cqZAo" node="i0ltZUe" resolve="packageName" />
              </node>
              <node concept="37vLTw" id="2BHiRxgmv4t" role="37wK5m">
                <ref role="3cqZAo" node="i0lu0sc" resolve="className" />
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxgmKVX" role="1JF4iq">
              <ref role="3cqZAo" node="7QHNx0Boyn8" resolve="contextNode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="i0ltZUe" role="3clF46">
        <property role="TrG5h" value="packageName" />
        <node concept="17QB3L" id="4dKd5TsHqsM" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="i0lu0sc" role="3clF46">
        <property role="TrG5h" value="className" />
        <node concept="17QB3L" id="4dKd5TsHqsL" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7QHNx0Boyn8" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="7QHNx0Boyn9" role="1tU5fm" />
      </node>
    </node>
    <node concept="1bwezc" id="3L2UhfX3dev" role="1bwxVq">
      <property role="TrG5h" value="extendedInterface" />
      <property role="IEkAT" value="true" />
      <node concept="3cqZAl" id="3L2UhfX3dew" role="3clF45" />
      <node concept="3clFbS" id="3L2UhfX3dex" role="3clF47">
        <node concept="3cpWs8" id="6vYD9Ekajw8" role="3cqZAp">
          <node concept="3cpWsn" id="6vYD9Ekajw9" role="3cpWs9">
            <property role="TrG5h" value="dependencies" />
            <node concept="2hMVRd" id="6vYD9Ekajwa" role="1tU5fm">
              <node concept="17QB3L" id="6vYD9Ekajwb" role="2hN53Y" />
            </node>
            <node concept="1JECQ7" id="6vYD9Ekajwf" role="33vP2m">
              <ref role="1JF1rN" node="hXZMgFX" resolve="getUserObjects" />
              <node concept="10M0yZ" id="6IUGPS5N00r" role="1JF4iq">
                <ref role="1PxDUh" to="zrid:~TextGen" resolve="TextGen" />
                <ref role="3cqZAo" to="zrid:~TextGen.EXTENDS" resolve="EXTENDS" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6vYD9Ekajwh" role="3cqZAp">
          <node concept="2OqwBi" id="6vYD9Ekajwi" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTvIj" role="2Oq$k0">
              <ref role="3cqZAo" node="6vYD9Ekajw9" resolve="dependencies" />
            </node>
            <node concept="2l5eF5" id="6vYD9Ekajwk" role="2OqNvi">
              <node concept="2YIFZM" id="6vYD9Ekajwl" role="2l6Ag6">
                <ref role="1Pybhc" to="msyo:~NameUtil" resolve="NameUtil" />
                <ref role="37wK5l" to="msyo:~NameUtil.nodeFQName(org.jetbrains.mps.openapi.model.SNode):java.lang.String" resolve="nodeFQName" />
                <node concept="37vLTw" id="2BHiRxglRwl" role="37wK5m">
                  <ref role="3cqZAo" node="3L2UhfX3dey" resolve="interface1" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3L2UhfX3dey" role="3clF46">
        <property role="TrG5h" value="interface1" />
        <node concept="3Tqbb2" id="3L2UhfX3dez" role="1tU5fm">
          <ref role="ehGHo" to="tpee:g7HP654" resolve="Interface" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1aKcY0Lpr7O" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Deprecated" resolve="Deprecated" />
      </node>
      <node concept="P$JXv" id="4qFgCTNTaY1" role="lGtFl">
        <node concept="TZ5HA" id="4qFgCTNTaY2" role="TZ5H$">
          <node concept="1dT_AC" id="4qFgCTNTaY3" role="1dT_Ay" />
        </node>
        <node concept="TZ5HI" id="4qFgCTNTb5i" role="TZ5Hx">
          <node concept="TZ5HA" id="4qFgCTNTb5j" role="3HnX3l">
            <node concept="1dT_AC" id="4qFgCTNTbaf" role="1dT_Ay">
              <property role="1dT_AB" value="use registerExtendsRelation instead. @ToRemove(version = 3.1)" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1bwezc" id="3L2UhfX3eyS" role="1bwxVq">
      <property role="TrG5h" value="implementedInterface" />
      <property role="IEkAT" value="true" />
      <node concept="3cqZAl" id="3L2UhfX3eyT" role="3clF45" />
      <node concept="3clFbS" id="3L2UhfX3eyU" role="3clF47">
        <node concept="1DcWWT" id="3L2UhfX3mAf" role="3cqZAp">
          <node concept="3clFbS" id="3L2UhfX3mAg" role="2LFqv$">
            <node concept="3clFbJ" id="1zwRwJaPFvf" role="3cqZAp">
              <node concept="3clFbS" id="1zwRwJaPFvg" role="3clFbx">
                <node concept="lc7rE" id="3L2UhfX3mt1" role="3cqZAp">
                  <node concept="1bDJIP" id="3L2UhfX3mt3" role="lcghm">
                    <ref role="1rvKf6" node="3L2UhfX3dev" resolve="extendedInterface" />
                    <node concept="1PxgMI" id="3L2UhfX3mAL" role="1ryhcI">
                      <ref role="1PxNhF" to="tpee:g7HP654" resolve="Interface" />
                      <node concept="2OqwBi" id="3L2UhfX3mAG" role="1PxMeX">
                        <node concept="37vLTw" id="3GM_nagTsjg" role="2Oq$k0">
                          <ref role="3cqZAo" node="3L2UhfX3mAj" resolve="classifierType" />
                        </node>
                        <node concept="3TrEf2" id="3L2UhfX3mAK" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpee:g7uigIF" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="1zwRwJaPFvp" role="3clFbw">
                <node concept="2OqwBi" id="1zwRwJaPFvk" role="2Oq$k0">
                  <node concept="37vLTw" id="3GM_nagT$gy" role="2Oq$k0">
                    <ref role="3cqZAo" node="3L2UhfX3mAj" resolve="classifierType" />
                  </node>
                  <node concept="3TrEf2" id="1zwRwJaPFvo" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:g7uigIF" />
                  </node>
                </node>
                <node concept="1mIQ4w" id="1zwRwJaPFvt" role="2OqNvi">
                  <node concept="chp4Y" id="1zwRwJaPFvv" role="cj9EA">
                    <ref role="cht4Q" to="tpee:g7HP654" resolve="Interface" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3L2UhfX3mAx" role="1DdaDG">
            <node concept="37vLTw" id="2BHiRxgkW$3" role="2Oq$k0">
              <ref role="3cqZAo" node="3L2UhfX3eyV" resolve="classConcept" />
            </node>
            <node concept="3Tsc0h" id="3L2UhfX3mAB" role="2OqNvi">
              <ref role="3TtcxE" to="tpee:fWEKbgp" />
            </node>
          </node>
          <node concept="3cpWsn" id="3L2UhfX3mAj" role="1Duv9x">
            <property role="TrG5h" value="classifierType" />
            <node concept="3Tqbb2" id="3L2UhfX3mAn" role="1tU5fm">
              <ref role="ehGHo" to="tpee:g7uibYu" resolve="ClassifierType" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3L2UhfX3eyV" role="3clF46">
        <property role="TrG5h" value="classConcept" />
        <node concept="3Tqbb2" id="3L2UhfX3eyW" role="1tU5fm">
          <ref role="ehGHo" to="tpee:fz12cDA" resolve="ClassConcept" />
        </node>
      </node>
      <node concept="P$JXv" id="1aKcY0LpwNe" role="lGtFl">
        <node concept="TZ5HI" id="1aKcY0LpwNf" role="TZ5Hx">
          <node concept="TZ5HA" id="1aKcY0LpwNg" role="3HnX3l">
            <node concept="1dT_AC" id="1aKcY0LpwQm" role="1dT_Ay">
              <property role="1dT_AB" value="use registerExtendsRelation instead. @ToRemove(version = 3.1)" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1aKcY0LpwNh" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Deprecated" resolve="Deprecated" />
      </node>
    </node>
    <node concept="1bwezc" id="3L2UhfX3mta" role="1bwxVq">
      <property role="TrG5h" value="extendedClasses" />
      <property role="IEkAT" value="true" />
      <node concept="3cqZAl" id="3L2UhfX3mtb" role="3clF45" />
      <node concept="3clFbS" id="3L2UhfX3mtc" role="3clF47">
        <node concept="3cpWs8" id="6vYD9EkajvL" role="3cqZAp">
          <node concept="3cpWsn" id="6vYD9EkajvM" role="3cpWs9">
            <property role="TrG5h" value="dependencies" />
            <node concept="2hMVRd" id="6vYD9EkajvN" role="1tU5fm">
              <node concept="17QB3L" id="6vYD9EkajvO" role="2hN53Y" />
            </node>
            <node concept="1JECQ7" id="6vYD9EkajvS" role="33vP2m">
              <ref role="1JF1rN" node="hXZMgFX" resolve="getUserObjects" />
              <node concept="10M0yZ" id="6IUGPS5N00u" role="1JF4iq">
                <ref role="1PxDUh" to="zrid:~TextGen" resolve="TextGen" />
                <ref role="3cqZAo" to="zrid:~TextGen.EXTENDS" resolve="EXTENDS" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6vYD9EkajvU" role="3cqZAp">
          <node concept="2OqwBi" id="6vYD9EkajvV" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagT_wd" role="2Oq$k0">
              <ref role="3cqZAo" node="6vYD9EkajvM" resolve="dependencies" />
            </node>
            <node concept="2l5eF5" id="6vYD9EkajvX" role="2OqNvi">
              <node concept="2YIFZM" id="6vYD9Ekajw3" role="2l6Ag6">
                <ref role="1Pybhc" to="msyo:~NameUtil" resolve="NameUtil" />
                <ref role="37wK5l" to="msyo:~NameUtil.nodeFQName(org.jetbrains.mps.openapi.model.SNode):java.lang.String" resolve="nodeFQName" />
                <node concept="37vLTw" id="2BHiRxgmP6h" role="37wK5m">
                  <ref role="3cqZAo" node="3L2UhfX3mtd" resolve="classConcept" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3L2UhfX3mtd" role="3clF46">
        <property role="TrG5h" value="classConcept" />
        <node concept="3Tqbb2" id="3L2UhfX3mte" role="1tU5fm">
          <ref role="ehGHo" to="tpee:fz12cDA" resolve="ClassConcept" />
        </node>
      </node>
      <node concept="P$JXv" id="1aKcY0LpwQo" role="lGtFl">
        <node concept="TZ5HI" id="1aKcY0LpwQp" role="TZ5Hx">
          <node concept="TZ5HA" id="1aKcY0LpwQq" role="3HnX3l">
            <node concept="1dT_AC" id="1aKcY0LpwZw" role="1dT_Ay">
              <property role="1dT_AB" value="use registerExtendsRelation instead. @ToRemove(version = 3.1)" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1aKcY0LpwQr" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Deprecated" resolve="Deprecated" />
      </node>
    </node>
    <node concept="1bwezc" id="hYI$aNc" role="1bwxVq">
      <property role="TrG5h" value="variableDeclaration" />
      <node concept="3cqZAl" id="hYI$aNd" role="3clF45" />
      <node concept="3clFbS" id="hYI$aNe" role="3clF47">
        <node concept="3clFbJ" id="hYI$eMR" role="3cqZAp">
          <node concept="2OqwBi" id="hYI$eMS" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxglsqb" role="2Oq$k0">
              <ref role="3cqZAo" node="hYI$fZw" resolve="node" />
            </node>
            <node concept="3TrcHB" id="hYI$eMU" role="2OqNvi">
              <ref role="3TsBF5" to="tpee:h7TUv0c" resolve="isFinal" />
            </node>
          </node>
          <node concept="3clFbS" id="hYI$eMV" role="3clFbx">
            <node concept="lc7rE" id="i0uAwEj" role="3cqZAp">
              <node concept="la8eA" id="i0uAwEl" role="lcghm">
                <property role="lacIc" value="final " />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="i0uAwud" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwuf" role="lcghm">
            <node concept="2OqwBi" id="hYI$eMZ" role="lb14g">
              <node concept="37vLTw" id="2BHiRxgm6Rv" role="2Oq$k0">
                <ref role="3cqZAo" node="hYI$fZw" resolve="node" />
              </node>
              <node concept="3TrEf2" id="hYI$ljW" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwug" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
          <node concept="l9hG8" id="i0uAwuh" role="lcghm">
            <node concept="2OqwBi" id="hZieNQX" role="lb14g">
              <node concept="37vLTw" id="2BHiRxgmyrk" role="2Oq$k0">
                <ref role="3cqZAo" node="hYI$fZw" resolve="node" />
              </node>
              <node concept="3TrcHB" id="hZieOdv" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="i0$hBPZ" role="3cqZAp">
          <node concept="3clFbS" id="i0$hBQ0" role="3clFbx">
            <node concept="lc7rE" id="i0$hE0E" role="3cqZAp">
              <node concept="la8eA" id="i0$hGlo" role="lcghm">
                <property role="lacIc" value=" = " />
              </node>
              <node concept="l9hG8" id="i0$hGlp" role="lcghm">
                <node concept="2OqwBi" id="i0$hGlq" role="lb14g">
                  <node concept="37vLTw" id="2BHiRxgm6kM" role="2Oq$k0">
                    <ref role="3cqZAo" node="hYI$fZw" resolve="node" />
                  </node>
                  <node concept="3TrEf2" id="i0$hGls" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:fz3vP1I" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="i0$hCSk" role="3clFbw">
            <node concept="2OqwBi" id="i0$hCci" role="2Oq$k0">
              <node concept="37vLTw" id="2BHiRxgm9D1" role="2Oq$k0">
                <ref role="3cqZAo" node="hYI$fZw" resolve="node" />
              </node>
              <node concept="3TrEf2" id="i0$hCJK" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fz3vP1I" />
              </node>
            </node>
            <node concept="3x8VRR" id="i0$hDri" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="hYI$fZw" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="hYI$fZx" role="1tU5fm">
          <ref role="ehGHo" to="tpee:fz3uBXI" resolve="VariableDeclaration" />
        </node>
      </node>
    </node>
    <node concept="1bwezc" id="hXZO4aM" role="1bwxVq">
      <property role="TrG5h" value="fileHeader" />
      <node concept="3cqZAl" id="hXZO4aN" role="3clF45" />
      <node concept="3clFbS" id="hXZO4aO" role="3clF47">
        <node concept="3cpWs8" id="1aKcY0Lrrea" role="3cqZAp">
          <node concept="3cpWsn" id="1aKcY0Lrred" role="3cpWs9">
            <property role="TrG5h" value="topClassifier" />
            <node concept="10P_77" id="1aKcY0Lrre8" role="1tU5fm" />
            <node concept="3fqX7Q" id="1aKcY0LrskX" role="33vP2m">
              <node concept="2OqwBi" id="1aKcY0LrskZ" role="3fr31v">
                <node concept="37vLTw" id="1aKcY0Lrsl0" role="2Oq$k0">
                  <ref role="3cqZAo" node="hXZO6WO" resolve="cls" />
                </node>
                <node concept="2qgKlT" id="1aKcY0Lrsl1" role="2OqNvi">
                  <ref role="37wK5l" to="tpek:sWroEc0xXl" resolve="isInner" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="hXZX2lK" role="3cqZAp">
          <node concept="37vLTw" id="1aKcY0Lrssi" role="3clFbw">
            <ref role="3cqZAo" node="1aKcY0Lrred" resolve="topClassifier" />
          </node>
          <node concept="3clFbS" id="hXZX2lL" role="3clFbx">
            <node concept="3cpWs8" id="hXZXdKT" role="3cqZAp">
              <node concept="3cpWsn" id="hXZXdKU" role="3cpWs9">
                <property role="TrG5h" value="wasPart" />
                <node concept="10Oyi0" id="hXZXdKV" role="1tU5fm" />
                <node concept="2OqwBi" id="hXZXg0i" role="33vP2m">
                  <node concept="1_6nNH" id="hXZXfR0" role="2Oq$k0" />
                  <node concept="liA8E" id="hXZXgNC" role="2OqNvi">
                    <ref role="37wK5l" to="zrid:~TextGenBuffer.selectPart(int):int" resolve="selectPart" />
                    <node concept="10M0yZ" id="hXZXi3I" role="37wK5m">
                      <ref role="3cqZAo" to="zrid:~TextGenBuffer.TOP" resolve="TOP" />
                      <ref role="1PxDUh" to="zrid:~TextGenBuffer" resolve="TextGenBuffer" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="i0uAwxl" role="3cqZAp">
              <node concept="l9hG8" id="i0uAwxn" role="lcghm">
                <node concept="3cpWs3" id="hXZXtBa" role="lb14g">
                  <node concept="Xl_RD" id="hXZXtOa" role="3uHU7w">
                    <property role="Xl_RC" value=";" />
                  </node>
                  <node concept="3cpWs3" id="hXZXqvR" role="3uHU7B">
                    <node concept="Xl_RD" id="hXZXoDF" role="3uHU7B">
                      <property role="Xl_RC" value="package " />
                    </node>
                    <node concept="1JECQ7" id="hXZXsvn" role="3uHU7w">
                      <ref role="1JF1rN" node="hXZAS9u" resolve="getPackageName" />
                      <node concept="37vLTw" id="2BHiRxgm88Y" role="1JF4iq">
                        <ref role="3cqZAo" node="hXZO6WO" resolve="cls" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="l8MVK" id="i0uAwxo" role="lcghm" />
              <node concept="l8MVK" id="i0uAwxC" role="lcghm" />
              <node concept="la8eA" id="i0uAwxD" role="lcghm">
                <property role="lacIc" value="/*Generated by MPS */" />
              </node>
              <node concept="l8MVK" id="i0uAwxE" role="lcghm" />
            </node>
            <node concept="3clFbF" id="hXZXJCi" role="3cqZAp">
              <node concept="2OqwBi" id="hXZXJN3" role="3clFbG">
                <node concept="1_6nNH" id="hXZXJCj" role="2Oq$k0" />
                <node concept="liA8E" id="hXZXKfs" role="2OqNvi">
                  <ref role="37wK5l" to="zrid:~TextGenBuffer.selectPart(int):int" resolve="selectPart" />
                  <node concept="37vLTw" id="3GM_nagTtYb" role="37wK5m">
                    <ref role="3cqZAo" node="hXZXdKU" resolve="wasPart" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3L2UhfX3mtI" role="3cqZAp">
          <node concept="3clFbS" id="3L2UhfX3mtJ" role="3clFbx">
            <node concept="3clFbF" id="1aKcY0LpxBK" role="3cqZAp">
              <node concept="1JECQ7" id="1aKcY0LpxBI" role="3clFbG">
                <ref role="1JF1rN" node="1aKcY0LpgjQ" resolve="registerExtendsRelation" />
                <node concept="2OqwBi" id="1aKcY0Lpy39" role="1JF4iq">
                  <node concept="1PxgMI" id="1aKcY0Lpy3a" role="2Oq$k0">
                    <ref role="1PxNhF" to="tpee:g7HP654" resolve="Interface" />
                    <node concept="37vLTw" id="1aKcY0Lpy3b" role="1PxMeX">
                      <ref role="3cqZAo" node="hXZO6WO" resolve="cls" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="1aKcY0Lpy3c" role="2OqNvi">
                    <ref role="3TtcxE" to="tpee:g7HQHFn" />
                  </node>
                </node>
                <node concept="37vLTw" id="1aKcY0Lr$6J" role="1JF4iq">
                  <ref role="3cqZAo" node="1aKcY0Lrred" resolve="topClassifier" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3L2UhfX3mtN" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxglWRO" role="2Oq$k0">
              <ref role="3cqZAo" node="hXZO6WO" resolve="cls" />
            </node>
            <node concept="1mIQ4w" id="3L2UhfX3mtR" role="2OqNvi">
              <node concept="chp4Y" id="3L2UhfX3mtT" role="cj9EA">
                <ref role="cht4Q" to="tpee:g7HP654" resolve="Interface" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="3L2UhfX3mB2" role="3eNLev">
            <node concept="2OqwBi" id="3L2UhfX3mB6" role="3eO9$A">
              <node concept="37vLTw" id="2BHiRxgll8Q" role="2Oq$k0">
                <ref role="3cqZAo" node="hXZO6WO" resolve="cls" />
              </node>
              <node concept="1mIQ4w" id="3L2UhfX3mBa" role="2OqNvi">
                <node concept="chp4Y" id="3L2UhfX3mBc" role="cj9EA">
                  <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="3L2UhfX3mB4" role="3eOfB_">
              <node concept="3clFbF" id="1aKcY0LpygZ" role="3cqZAp">
                <node concept="1JECQ7" id="1aKcY0LpygX" role="3clFbG">
                  <ref role="1JF1rN" node="1aKcY0LpgjQ" resolve="registerExtendsRelation" />
                  <node concept="2OqwBi" id="1aKcY0Lpz50" role="1JF4iq">
                    <node concept="1PxgMI" id="1aKcY0LpyQI" role="2Oq$k0">
                      <ref role="1PxNhF" to="tpee:fz12cDA" resolve="ClassConcept" />
                      <node concept="37vLTw" id="1aKcY0LpyLa" role="1PxMeX">
                        <ref role="3cqZAo" node="hXZO6WO" resolve="cls" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="1aKcY0LpIt7" role="2OqNvi">
                      <ref role="3TtcxE" to="tpee:fWEKbgp" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="1aKcY0Lr$7m" role="1JF4iq">
                    <ref role="3cqZAo" node="1aKcY0Lrred" resolve="topClassifier" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1aKcY0LpJVN" role="3cqZAp">
                <node concept="1JECQ7" id="1aKcY0LpJVL" role="3clFbG">
                  <ref role="1JF1rN" node="1aKcY0LpgjQ" resolve="registerExtendsRelation" />
                  <node concept="2OqwBi" id="1aKcY0LqL_e" role="1JF4iq">
                    <node concept="2ShNRf" id="1aKcY0LqCVZ" role="2Oq$k0">
                      <node concept="2HTt$P" id="1aKcY0LqI6v" role="2ShVmc">
                        <node concept="3Tqbb2" id="1aKcY0LqI7z" role="2HTBi0">
                          <ref role="ehGHo" to="tpee:g7uibYu" resolve="ClassifierType" />
                        </node>
                        <node concept="2OqwBi" id="1aKcY0LpKJU" role="2HTEbv">
                          <node concept="1PxgMI" id="1aKcY0LpKxC" role="2Oq$k0">
                            <ref role="1PxNhF" to="tpee:fz12cDA" resolve="ClassConcept" />
                            <node concept="37vLTw" id="1aKcY0LpKs4" role="1PxMeX">
                              <ref role="3cqZAo" node="hXZO6WO" resolve="cls" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="1aKcY0LpM8q" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpee:gXzkM_H" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="ANE8D" id="1aKcY0LqMpb" role="2OqNvi" />
                  </node>
                  <node concept="37vLTw" id="1aKcY0Lr$7V" role="1JF4iq">
                    <ref role="3cqZAo" node="1aKcY0Lrred" resolve="topClassifier" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="hXZO6WO" role="3clF46">
        <property role="TrG5h" value="cls" />
        <node concept="3Tqbb2" id="hXZO6WP" role="1tU5fm">
          <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
        </node>
      </node>
    </node>
    <node concept="1bwezc" id="hYHLMDp" role="1bwxVq">
      <property role="TrG5h" value="methodCall" />
      <node concept="37vLTG" id="hYHLUBJ" role="3clF46">
        <property role="TrG5h" value="methodCall" />
        <node concept="3Tqbb2" id="hYHLWkE" role="1tU5fm">
          <ref role="ehGHo" to="tpee:hxndl_i" resolve="IMethodCall" />
        </node>
      </node>
      <node concept="3cqZAl" id="hYHLMDq" role="3clF45" />
      <node concept="3clFbS" id="hYHLMDr" role="3clF47">
        <node concept="lc7rE" id="7rT5wTB_P01" role="3cqZAp">
          <node concept="1bDJIP" id="943hH903hl" role="lcghm">
            <ref role="1rvKf6" node="943hH902GU" resolve="methodTypeArguments" />
            <node concept="37vLTw" id="2BHiRxgm_65" role="1ryhcI">
              <ref role="3cqZAo" node="hYHLUBJ" resolve="methodCall" />
            </node>
          </node>
          <node concept="2yR1zb" id="7rT5wTB_P02" role="lcghm">
            <node concept="2OqwBi" id="7rT5wTB_P03" role="2yR1z8">
              <node concept="37vLTw" id="2BHiRxgmyxy" role="2Oq$k0">
                <ref role="3cqZAo" node="hYHLUBJ" resolve="methodCall" />
              </node>
              <node concept="37Cfm0" id="7rT5wTB_P05" role="2OqNvi">
                <node concept="1aIX9F" id="7rT5wTB_P06" role="37CeNk">
                  <node concept="26LbJo" id="7rT5wTB_P07" role="1aIX9E">
                    <ref role="26LbJp" to="tpee:fz7wK6H" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1bDJIP" id="7rT5wTB_P08" role="lcghm">
            <ref role="1rvKf6" node="hXZAkSl" resolve="arguments" />
            <node concept="37vLTw" id="2BHiRxgkWGK" role="1ryhcI">
              <ref role="3cqZAo" node="hYHLUBJ" resolve="methodCall" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1bwezc" id="943hH902GU" role="1bwxVq">
      <property role="TrG5h" value="methodTypeArguments" />
      <node concept="37vLTG" id="943hH902GX" role="3clF46">
        <property role="TrG5h" value="methodCall" />
        <node concept="3Tqbb2" id="943hH902GY" role="1tU5fm">
          <ref role="ehGHo" to="tpee:hxndl_i" resolve="IMethodCall" />
        </node>
      </node>
      <node concept="3cqZAl" id="943hH902GV" role="3clF45" />
      <node concept="3clFbS" id="943hH902GW" role="3clF47">
        <node concept="3clFbJ" id="943hH903gN" role="3cqZAp">
          <node concept="3clFbS" id="943hH903gO" role="3clFbx">
            <node concept="lc7rE" id="943hH903gP" role="3cqZAp">
              <node concept="la8eA" id="943hH903gQ" role="lcghm">
                <property role="lacIc" value="&lt;" />
              </node>
              <node concept="l9S2W" id="943hH903gR" role="lcghm">
                <property role="XA4eZ" value="true" />
                <property role="lbP0B" value="," />
                <node concept="2OqwBi" id="943hH903gS" role="lbANJ">
                  <node concept="37vLTw" id="2BHiRxgm7dx" role="2Oq$k0">
                    <ref role="3cqZAo" node="943hH902GX" resolve="methodCall" />
                  </node>
                  <node concept="3Tsc0h" id="943hH903gU" role="2OqNvi">
                    <ref role="3TtcxE" to="tpee:4k0WLUKaBu8" />
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="943hH903gV" role="lcghm">
                <property role="lacIc" value="&gt;" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="943hH903h4" role="3clFbw">
            <node concept="2OqwBi" id="943hH903h5" role="2Oq$k0">
              <node concept="37vLTw" id="2BHiRxgheZb" role="2Oq$k0">
                <ref role="3cqZAo" node="943hH902GX" resolve="methodCall" />
              </node>
              <node concept="3Tsc0h" id="943hH903h7" role="2OqNvi">
                <ref role="3TtcxE" to="tpee:4k0WLUKaBu8" />
              </node>
            </node>
            <node concept="3GX2aA" id="943hH903h8" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1bwezc" id="6fUw26UhtdA" role="1bwxVq">
      <property role="TrG5h" value="blClassifierRef" />
      <node concept="3cqZAl" id="6fUw26UhtdB" role="3clF45" />
      <node concept="3clFbS" id="6fUw26UhtdC" role="3clF47">
        <node concept="3clFbJ" id="6fUw26UkOjo" role="3cqZAp">
          <node concept="3clFbC" id="6fUw26UkOjp" role="3clFbw">
            <node concept="10Nm6u" id="6fUw26UkOjq" role="3uHU7w" />
            <node concept="37vLTw" id="2BHiRxgmkku" role="3uHU7B">
              <ref role="3cqZAo" node="6fUw26UhtdD" resolve="classifierRef" />
            </node>
          </node>
          <node concept="3clFbS" id="6fUw26UkOjs" role="3clFbx">
            <node concept="1ZvZ2y" id="6fUw26UkOjT" role="3cqZAp">
              <node concept="Xl_RD" id="6fUw26UkOjU" role="v0bCk">
                <property role="Xl_RC" value="null classifier ref" />
              </node>
            </node>
            <node concept="3cpWs6" id="6fUw26UkOjt" role="3cqZAp" />
          </node>
        </node>
        <node concept="3cpWs8" id="6fUw26UhPf6" role="3cqZAp">
          <node concept="3cpWsn" id="6fUw26UhPf7" role="3cpWs9">
            <property role="TrG5h" value="packageAndShortName" />
            <node concept="1LlUBW" id="6fUw26UhPf8" role="1tU5fm">
              <node concept="17QB3L" id="6fUw26UhPfa" role="1Lm7xW" />
              <node concept="17QB3L" id="6fUw26UhPfc" role="1Lm7xW" />
            </node>
            <node concept="1JECQ7" id="6fUw26UhPfe" role="33vP2m">
              <ref role="1JF1rN" node="6fUw26UhHEr" resolve="getPackageAndShortName" />
              <node concept="37vLTw" id="2BHiRxglazz" role="1JF4iq">
                <ref role="3cqZAo" node="6fUw26UhtdD" resolve="classifierRef" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6fUw26UkOj_" role="3cqZAp">
          <node concept="3clFbS" id="6fUw26UkOjA" role="3clFbx">
            <node concept="3cpWs6" id="6fUw26UkOjD" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="6fUw26UkOjE" role="3clFbw">
            <node concept="10Nm6u" id="6fUw26UkOjF" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTtog" role="3uHU7B">
              <ref role="3cqZAo" node="6fUw26UhPf7" resolve="packageAndShortName" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="58GMDmany6z" role="3cqZAp">
          <node concept="3cpWsn" id="58GMDmany6$" role="3cpWs9">
            <property role="TrG5h" value="longName" />
            <node concept="17QB3L" id="58GMDmany6_" role="1tU5fm" />
            <node concept="2YIFZM" id="58GMDmany6r" role="33vP2m">
              <ref role="37wK5l" to="msyo:~NameUtil.longNameFromNamespaceAndShortName(java.lang.String,java.lang.String):java.lang.String" resolve="longNameFromNamespaceAndShortName" />
              <ref role="1Pybhc" to="msyo:~NameUtil" resolve="NameUtil" />
              <node concept="1LFfDK" id="58GMDmany6t" role="37wK5m">
                <node concept="37vLTw" id="3GM_nagTzje" role="1LFl5Q">
                  <ref role="3cqZAo" node="6fUw26UhPf7" resolve="packageAndShortName" />
                </node>
                <node concept="3cmrfG" id="58GMDmany6w" role="1LF_Uc">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="1LFfDK" id="6fUw26UkOjM" role="37wK5m">
                <node concept="37vLTw" id="3GM_nagTrpU" role="1LFl5Q">
                  <ref role="3cqZAo" node="6fUw26UhPf7" resolve="packageAndShortName" />
                </node>
                <node concept="3cmrfG" id="6fUw26UkOjO" role="1LF_Uc">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3su$jtv$BzZ" role="3cqZAp">
          <node concept="1JECQ7" id="3su$jtv$B$0" role="3clFbG">
            <ref role="1JF1rN" node="3su$jtv$Bzs" resolve="appendClassName" />
            <node concept="1LFfDK" id="3su$jtv$B$m" role="1JF4iq">
              <node concept="3cmrfG" id="3su$jtv$B$p" role="1LF_Uc">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="3GM_nagTxSd" role="1LFl5Q">
                <ref role="3cqZAo" node="6fUw26UhPf7" resolve="packageAndShortName" />
              </node>
            </node>
            <node concept="37vLTw" id="3GM_nagT$4e" role="1JF4iq">
              <ref role="3cqZAo" node="58GMDmany6$" resolve="longName" />
            </node>
            <node concept="2OqwBi" id="7QHNx0BoymG" role="1JF4iq">
              <node concept="37vLTw" id="2BHiRxgmGV8" role="2Oq$k0">
                <ref role="3cqZAo" node="6fUw26UhtdD" resolve="classifierRef" />
              </node>
              <node concept="liA8E" id="7QHNx0BoymN" role="2OqNvi">
                <ref role="37wK5l" to="ec5l:~SReference.getSourceNode():org.jetbrains.mps.openapi.model.SNode" resolve="getSourceNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6fUw26UhtdD" role="3clF46">
        <property role="TrG5h" value="classifierRef" />
        <node concept="2z4iKi" id="6fUw26UhtdE" role="1tU5fm" />
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hY01WVR">
    <property role="3GE5qa" value="expressions" />
    <ref role="WuzLi" to="tpee:fHWc73I" resolve="AndExpression" />
    <node concept="11bSqf" id="hY01WVS" role="11c4hB">
      <node concept="3clFbS" id="hY01WVT" role="2VODD2">
        <node concept="lc7rE" id="i0uAwJ2" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwJ4" role="lcghm">
            <node concept="2OqwBi" id="hY02523" role="lb14g">
              <node concept="117lpO" id="hY024G3" role="2Oq$k0" />
              <node concept="3TrEf2" id="hY025wq" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4s" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwJ5" role="lcghm">
            <property role="lacIc" value=" &amp;&amp; " />
          </node>
          <node concept="l9hG8" id="i0uAwJ6" role="lcghm">
            <node concept="2OqwBi" id="hZietvz" role="lb14g">
              <node concept="117lpO" id="hZietoG" role="2Oq$k0" />
              <node concept="3TrEf2" id="hZietQk" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4r" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hY4Y$w5">
    <property role="3GE5qa" value="classifiers.classifiers" />
    <ref role="WuzLi" to="tpee:hiABswc" resolve="Annotation" />
    <node concept="11bSqf" id="hY4Y$w6" role="11c4hB">
      <node concept="3clFbS" id="hY4Y$w7" role="2VODD2">
        <node concept="3clFbJ" id="21Iif$agJJ3" role="3cqZAp">
          <node concept="3clFbS" id="21Iif$agJJ4" role="3clFbx">
            <node concept="lc7rE" id="21Iif$agJJ5" role="3cqZAp">
              <node concept="l9hG8" id="21Iif$agJJ6" role="lcghm">
                <node concept="2OqwBi" id="21Iif$agJJ7" role="lb14g">
                  <node concept="117lpO" id="21Iif$agJJ8" role="2Oq$k0" />
                  <node concept="3CFZ6_" id="21Iif$agJJ9" role="2OqNvi">
                    <node concept="3CFYIy" id="21Iif$agJJa" role="3CFYIz">
                      <ref role="3CFYIx" to="m373:1MQnpZAqBpc" resolve="ClassifierDocComment" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="21Iif$agJJb" role="3clFbw">
            <node concept="2OqwBi" id="21Iif$agJJc" role="2Oq$k0">
              <node concept="117lpO" id="21Iif$agJJd" role="2Oq$k0" />
              <node concept="3CFZ6_" id="21Iif$agJJe" role="2OqNvi">
                <node concept="3CFYIy" id="21Iif$agJJf" role="3CFYIz">
                  <ref role="3CFYIx" to="m373:1MQnpZAqBpc" resolve="ClassifierDocComment" />
                </node>
              </node>
            </node>
            <node concept="3x8VRR" id="21Iif$agJJg" role="2OqNvi" />
          </node>
        </node>
        <node concept="lc7rE" id="21Iif$agJJh" role="3cqZAp">
          <node concept="1bDJIP" id="21Iif$agJJi" role="lcghm">
            <ref role="1rvKf6" node="hXZO4aM" resolve="fileHeader" />
            <node concept="117lpO" id="21Iif$agJJj" role="1ryhcI" />
          </node>
          <node concept="1bDJIP" id="21Iif$agJJk" role="lcghm">
            <ref role="1rvKf6" node="hXZOC0K" resolve="annotations" />
            <node concept="117lpO" id="21Iif$agJJl" role="1ryhcI" />
          </node>
          <node concept="1bDJIP" id="21Iif$agJJm" role="lcghm">
            <ref role="1rvKf6" node="hXZP8nY" resolve="visibilityWithIndent" />
            <node concept="2OqwBi" id="21Iif$agJJn" role="1ryhcI">
              <node concept="117lpO" id="21Iif$agJJo" role="2Oq$k0" />
              <node concept="3TrEf2" id="21Iif$agJJp" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:h9B3oxE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="21Iif$agJJN" role="3cqZAp">
          <node concept="la8eA" id="21Iif$agJJO" role="lcghm">
            <property role="lacIc" value="@interface " />
          </node>
          <node concept="l9hG8" id="21Iif$agJJP" role="lcghm">
            <node concept="2OqwBi" id="21Iif$agJJQ" role="lb14g">
              <node concept="117lpO" id="21Iif$agJJR" role="2Oq$k0" />
              <node concept="3TrcHB" id="21Iif$agJJS" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="21Iif$agJKl" role="3cqZAp">
          <node concept="la8eA" id="21Iif$agJKm" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
          <node concept="1bDJIP" id="21Iif$agJKn" role="lcghm">
            <ref role="1rvKf6" node="4PrERHsEdKS" resolve="membersWithBrackets" />
            <node concept="117lpO" id="21Iif$agJKo" role="1ryhcI" />
            <node concept="3clFbT" id="21Iif$agJKp" role="1ryhcI">
              <property role="3clFbU" value="true" />
            </node>
          </node>
          <node concept="l8MVK" id="21Iif$agJKq" role="lcghm" />
        </node>
        <node concept="3clFbH" id="21Iif$agJ3R" role="3cqZAp" />
      </node>
    </node>
    <node concept="9MYSb" id="21YnEOmbk4M" role="33IsuW">
      <node concept="3clFbS" id="21YnEOmbk4N" role="2VODD2">
        <node concept="3clFbF" id="21YnEOmbk4O" role="3cqZAp">
          <node concept="Xl_RD" id="21YnEOmbk4P" role="3clFbG">
            <property role="Xl_RC" value="java" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hY4ZJoR">
    <property role="3GE5qa" value="classifiers" />
    <ref role="WuzLi" to="tpee:hiAHcMF" resolve="AnnotationInstance" />
    <node concept="11bSqf" id="hY4ZJoS" role="11c4hB">
      <node concept="3clFbS" id="hY4ZJoT" role="2VODD2">
        <node concept="3cpWs8" id="hY4ZZbV" role="3cqZAp">
          <node concept="3cpWsn" id="hY4ZZbW" role="3cpWs9">
            <property role="TrG5h" value="oneLine" />
            <node concept="10P_77" id="hY4ZZbX" role="1tU5fm" />
            <node concept="22lmx$" id="hY505Zl" role="33vP2m">
              <node concept="2OqwBi" id="hY507z$" role="3uHU7w">
                <node concept="2OqwBi" id="hY506yN" role="2Oq$k0">
                  <node concept="117lpO" id="hY506sc" role="2Oq$k0" />
                  <node concept="1mfA1w" id="hY507p4" role="2OqNvi" />
                </node>
                <node concept="1mIQ4w" id="hY507YY" role="2OqNvi">
                  <node concept="chp4Y" id="hY509o8" role="cj9EA">
                    <ref role="cht4Q" to="tpee:fzcpWvJ" resolve="LocalVariableDeclaration" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="hY503V9" role="3uHU7B">
                <node concept="2OqwBi" id="hY502A6" role="2Oq$k0">
                  <node concept="117lpO" id="hY5010t" role="2Oq$k0" />
                  <node concept="1mfA1w" id="hY502L9" role="2OqNvi" />
                </node>
                <node concept="1mIQ4w" id="hY504FM" role="2OqNvi">
                  <node concept="chp4Y" id="hY505y1" role="cj9EA">
                    <ref role="cht4Q" to="tpee:fz7vLUk" resolve="ParameterDeclaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="hY50ieo" role="3cqZAp">
          <node concept="3clFbS" id="hY50iep" role="3clFbx">
            <node concept="lc7rE" id="i0uAwD1" role="3cqZAp">
              <node concept="la8eA" id="i0uAwD3" role="lcghm">
                <property role="lacIc" value="@" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="3GM_nagTv0Z" role="3clFbw">
            <ref role="3cqZAo" node="hY4ZZbW" resolve="oneLine" />
          </node>
          <node concept="9aQIb" id="hY50kUS" role="9aQIa">
            <node concept="3clFbS" id="hY50kUT" role="9aQI4">
              <node concept="lc7rE" id="i0uDoVb" role="3cqZAp">
                <node concept="la8eA" id="i0uDpCo" role="lcghm">
                  <property role="ldcpH" value="true" />
                  <property role="lacIc" value="@" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="i0uAwx3" role="3cqZAp">
          <node concept="1bDJIP" id="6fUw26UkGG5" role="lcghm">
            <ref role="1rvKf6" node="6fUw26UhtdA" resolve="blClassifierRef" />
            <node concept="2OqwBi" id="6fUw26UkGG6" role="1ryhcI">
              <node concept="117lpO" id="6fUw26UkGG7" role="2Oq$k0" />
              <node concept="37Cfm0" id="6fUw26UkGG8" role="2OqNvi">
                <node concept="1aIX9F" id="6fUw26UkGG9" role="37CeNk">
                  <node concept="26LbJo" id="6fUw26UkGGa" role="1aIX9E">
                    <ref role="26LbJp" to="tpee:hiAI5P0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2XeM6943vIa" role="3cqZAp">
          <node concept="3clFbS" id="2XeM6943vIb" role="3clFbx">
            <node concept="lc7rE" id="2XeM6943vIp" role="3cqZAp">
              <node concept="la8eA" id="2XeM6943vIr" role="lcghm">
                <property role="lacIc" value="(" />
              </node>
              <node concept="l9S2W" id="2XeM6943vIs" role="lcghm">
                <property role="XA4eZ" value="true" />
                <property role="lbP0B" value=", " />
                <node concept="2OqwBi" id="2XeM6943vIt" role="lbANJ">
                  <node concept="117lpO" id="2XeM6943vIu" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="2XeM6943vIv" role="2OqNvi">
                    <ref role="3TtcxE" to="tpee:hiB76_Z" />
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="2XeM6943vIw" role="lcghm">
                <property role="lacIc" value=")" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2XeM6943vIk" role="3clFbw">
            <node concept="2OqwBi" id="2XeM6943vIf" role="2Oq$k0">
              <node concept="117lpO" id="2XeM6943vIe" role="2Oq$k0" />
              <node concept="3Tsc0h" id="2XeM6943vIj" role="2OqNvi">
                <ref role="3TtcxE" to="tpee:hiB76_Z" />
              </node>
            </node>
            <node concept="3GX2aA" id="2XeM6943vIo" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbJ" id="hY5194X" role="3cqZAp">
          <node concept="3clFbS" id="hY5194Y" role="3clFbx">
            <node concept="lc7rE" id="i0uAwB0" role="3cqZAp">
              <node concept="la8eA" id="i0uAwB2" role="lcghm">
                <property role="lacIc" value=" " />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="3GM_nagTxra" role="3clFbw">
            <ref role="3cqZAo" node="hY4ZZbW" resolve="oneLine" />
          </node>
          <node concept="9aQIb" id="hY51c4Z" role="9aQIa">
            <node concept="3clFbS" id="hY51c50" role="9aQI4">
              <node concept="lc7rE" id="i0uAwq_" role="3cqZAp">
                <node concept="l8MVK" id="i0uAwqB" role="lcghm" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hY51wGT">
    <property role="3GE5qa" value="to_remove" />
    <ref role="WuzLi" to="tpee:hiB6ytK" resolve="AnnotationInstanceExpression" />
    <node concept="11bSqf" id="hY51wGU" role="11c4hB">
      <node concept="3clFbS" id="hY51wGV" role="2VODD2">
        <node concept="lc7rE" id="i0uAwye" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwyg" role="lcghm">
            <node concept="2OqwBi" id="hY51C8m" role="lb14g">
              <node concept="117lpO" id="hY51BEz" role="2Oq$k0" />
              <node concept="3TrEf2" id="hY51D8R" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:hiB6CkA" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hY51EqU">
    <property role="3GE5qa" value="classifiers" />
    <ref role="WuzLi" to="tpee:hiB6LFO" resolve="AnnotationInstanceValue" />
    <node concept="11bSqf" id="hY51EqV" role="11c4hB">
      <node concept="3clFbS" id="hY51EqW" role="2VODD2">
        <node concept="lc7rE" id="i0uAwmi" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwmk" role="lcghm">
            <node concept="2OqwBi" id="hY51Q1W" role="lb14g">
              <node concept="2OqwBi" id="hY51Q1X" role="2Oq$k0">
                <node concept="117lpO" id="hY51Q1Y" role="2Oq$k0" />
                <node concept="3TrEf2" id="hY51Q1Z" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:hiB6Ojz" />
                </node>
              </node>
              <node concept="3TrcHB" id="hY51Q20" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwml" role="lcghm">
            <property role="lacIc" value=" = " />
          </node>
          <node concept="l9hG8" id="i0uAwmm" role="lcghm">
            <node concept="2OqwBi" id="hZiexSP" role="lb14g">
              <node concept="117lpO" id="hZiexMX" role="2Oq$k0" />
              <node concept="3TrEf2" id="hZieyZt" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:hiB70Z4" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hY51Vn3">
    <property role="3GE5qa" value="classifiers.members" />
    <ref role="WuzLi" to="tpee:hiACnCB" resolve="AnnotationMethodDeclaration" />
    <node concept="11bSqf" id="hY51Vn4" role="11c4hB">
      <node concept="3clFbS" id="hY51Vn5" role="2VODD2">
        <node concept="3clFbJ" id="3veQ_zQwBpj" role="3cqZAp">
          <node concept="3clFbS" id="3veQ_zQwBpk" role="3clFbx">
            <node concept="lc7rE" id="3veQ_zQwBpl" role="3cqZAp">
              <node concept="l9hG8" id="3veQ_zQwBpm" role="lcghm">
                <node concept="2OqwBi" id="3veQ_zQwBpn" role="lb14g">
                  <node concept="117lpO" id="3veQ_zQwBpo" role="2Oq$k0" />
                  <node concept="3CFZ6_" id="2EuZkDRzIm_" role="2OqNvi">
                    <node concept="3CFYIy" id="2EuZkDRzImA" role="3CFYIz">
                      <ref role="3CFYIx" to="m373:4CW56HZFIGO" resolve="MethodDocComment" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3veQ_zQwBpr" role="3clFbw">
            <node concept="2OqwBi" id="3veQ_zQwBps" role="2Oq$k0">
              <node concept="117lpO" id="3veQ_zQwBpt" role="2Oq$k0" />
              <node concept="3CFZ6_" id="2EuZkDRzIpO" role="2OqNvi">
                <node concept="3CFYIy" id="2EuZkDRzIpP" role="3CFYIz">
                  <ref role="3CFYIx" to="m373:4CW56HZFIGO" resolve="MethodDocComment" />
                </node>
              </node>
            </node>
            <node concept="3x8VRR" id="3veQ_zQwBpw" role="2OqNvi" />
          </node>
        </node>
        <node concept="1bpajm" id="i0uDuDW" role="3cqZAp" />
        <node concept="lc7rE" id="i0$6Gmt" role="3cqZAp">
          <node concept="l9hG8" id="i0$6Gu4" role="lcghm">
            <node concept="2OqwBi" id="i0$6Gu5" role="lb14g">
              <node concept="117lpO" id="i0$6Gu6" role="2Oq$k0" />
              <node concept="3TrEf2" id="i0$6Gu7" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fzclF7X" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0$6Gu8" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
          <node concept="l9hG8" id="i0$6Gu9" role="lcghm">
            <node concept="2OqwBi" id="i0$6Gua" role="lb14g">
              <node concept="117lpO" id="i0$6Gub" role="2Oq$k0" />
              <node concept="3TrcHB" id="i0$6Guc" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0$6Gud" role="lcghm">
            <property role="lacIc" value="()" />
          </node>
        </node>
        <node concept="3clFbJ" id="2ffuO1reeWN" role="3cqZAp">
          <node concept="3clFbS" id="2ffuO1reeWO" role="3clFbx">
            <node concept="lc7rE" id="2ffuO1reeX2" role="3cqZAp">
              <node concept="la8eA" id="2ffuO1reeX4" role="lcghm">
                <property role="lacIc" value=" default " />
              </node>
            </node>
            <node concept="lc7rE" id="2ffuO1reeX6" role="3cqZAp">
              <node concept="l9hG8" id="2ffuO1reeX8" role="lcghm">
                <node concept="2OqwBi" id="2ffuO1reeXb" role="lb14g">
                  <node concept="117lpO" id="2ffuO1reeXa" role="2Oq$k0" />
                  <node concept="3TrEf2" id="2ffuO1reeXf" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:51quZkY4UX8" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2ffuO1reeWX" role="3clFbw">
            <node concept="2OqwBi" id="2ffuO1reeWS" role="2Oq$k0">
              <node concept="117lpO" id="2ffuO1reeWR" role="2Oq$k0" />
              <node concept="3TrEf2" id="2ffuO1reeWW" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:51quZkY4UX8" />
              </node>
            </node>
            <node concept="3x8VRR" id="2ffuO1reeX1" role="2OqNvi" />
          </node>
        </node>
        <node concept="lc7rE" id="2ffuO1reeXh" role="3cqZAp">
          <node concept="la8eA" id="2ffuO1reeXj" role="lcghm">
            <property role="lacIc" value=";" />
          </node>
        </node>
        <node concept="lc7rE" id="i0$6JF$" role="3cqZAp">
          <node concept="l8MVK" id="i0$6K7F" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hY52bG5">
    <property role="3GE5qa" value="classifiers.classifiers" />
    <ref role="WuzLi" to="tpee:h1Y3b43" resolve="AnonymousClass" />
    <node concept="11bSqf" id="hY52bG6" role="11c4hB">
      <node concept="3clFbS" id="hY52bG7" role="2VODD2">
        <node concept="lc7rE" id="i0Xtd_g" role="3cqZAp">
          <node concept="1bDJIP" id="6fUw26UkGGm" role="lcghm">
            <ref role="1rvKf6" node="6fUw26UhtdA" resolve="blClassifierRef" />
            <node concept="2OqwBi" id="6fUw26UkGGn" role="1ryhcI">
              <node concept="117lpO" id="6fUw26UkGGo" role="2Oq$k0" />
              <node concept="37Cfm0" id="6fUw26UkGGp" role="2OqNvi">
                <node concept="1aIX9F" id="6fUw26UkGGq" role="37CeNk">
                  <node concept="26LbJo" id="6fUw26UkGGr" role="1aIX9E">
                    <ref role="26LbJp" to="tpee:h1Y3Xaw" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="hY53Clc" role="3cqZAp">
          <node concept="3clFbS" id="hY53Cld" role="3clFbx">
            <node concept="lc7rE" id="i0uAwBa" role="3cqZAp">
              <node concept="la8eA" id="i0uAwBc" role="lcghm">
                <property role="lacIc" value="&lt;" />
              </node>
              <node concept="l9S2W" id="i0uAwBd" role="lcghm">
                <property role="XA4eZ" value="true" />
                <property role="lbP0B" value=", " />
                <node concept="2OqwBi" id="hZmqdvj" role="lbANJ">
                  <node concept="117lpO" id="hZmqd6v" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="hZmqe3G" role="2OqNvi">
                    <ref role="3TtcxE" to="tpee:huGhqqj" />
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="i0uAwBe" role="lcghm">
                <property role="lacIc" value="&gt;" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="hY53Ewh" role="3clFbw">
            <node concept="2OqwBi" id="hY53Dpp" role="2Oq$k0">
              <node concept="117lpO" id="hY53CPY" role="2Oq$k0" />
              <node concept="3Tsc0h" id="hY53E1Z" role="2OqNvi">
                <ref role="3TtcxE" to="tpee:huGhqqj" />
              </node>
            </node>
            <node concept="3GX2aA" id="hY53GA1" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbJ" id="2yoSzAaLce9" role="3cqZAp">
          <node concept="3clFbS" id="2yoSzAaLcea" role="3clFbx">
            <node concept="lc7rE" id="i0uAwrX" role="3cqZAp">
              <node concept="la8eA" id="i0uAwrZ" role="lcghm">
                <property role="lacIc" value="(" />
              </node>
              <node concept="l9S2W" id="i0uAws0" role="lcghm">
                <property role="XA4eZ" value="true" />
                <property role="lbP0B" value=", " />
                <node concept="2OqwBi" id="hZiQwic" role="lbANJ">
                  <node concept="117lpO" id="hZiQwb_" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="hZiQwCX" role="2OqNvi">
                    <ref role="3TtcxE" to="tpee:h1Y44E9" />
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="i0uAws1" role="lcghm">
                <property role="lacIc" value=")" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2yoSzAaLcej" role="3clFbw">
            <node concept="2OqwBi" id="2yoSzAaLcee" role="2Oq$k0">
              <node concept="117lpO" id="2yoSzAaLced" role="2Oq$k0" />
              <node concept="3Tsc0h" id="2yoSzAaLcei" role="2OqNvi">
                <ref role="3TtcxE" to="tpee:h1Y44E9" />
              </node>
            </node>
            <node concept="3GX2aA" id="2yoSzAaLcen" role="2OqNvi" />
          </node>
          <node concept="9aQIb" id="2yoSzAaLceo" role="9aQIa">
            <node concept="3clFbS" id="2yoSzAaLcep" role="9aQI4">
              <node concept="lc7rE" id="2yoSzAaLceq" role="3cqZAp">
                <node concept="la8eA" id="2yoSzAaLcer" role="lcghm">
                  <property role="lacIc" value="(" />
                </node>
                <node concept="l9S2W" id="2yoSzAaLces" role="lcghm">
                  <property role="XA4eZ" value="true" />
                  <property role="lbP0B" value=", " />
                  <node concept="2OqwBi" id="2yoSzAaLcet" role="lbANJ">
                    <node concept="117lpO" id="2yoSzAaLceu" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="2yoSzAaLcex" role="2OqNvi">
                      <ref role="3TtcxE" to="tpee:2yoSzAaKW1u" />
                    </node>
                  </node>
                </node>
                <node concept="la8eA" id="2yoSzAaLcew" role="lcghm">
                  <property role="lacIc" value=")" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="4PrERHsEwBh" role="3cqZAp">
          <node concept="la8eA" id="4PrERHsEzrQ" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
          <node concept="1bDJIP" id="4PrERHsEzs7" role="lcghm">
            <ref role="1rvKf6" node="4PrERHsEdKS" resolve="membersWithBrackets" />
            <node concept="117lpO" id="4PrERHsEzse" role="1ryhcI" />
            <node concept="3clFbT" id="4PrERHts49g" role="1ryhcI" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hY56Snp">
    <property role="3GE5qa" value="classifiers" />
    <ref role="WuzLi" to="tpee:hcYeOiq" resolve="AnonymousClassCreator" />
    <node concept="11bSqf" id="hY56Snq" role="11c4hB">
      <node concept="3clFbS" id="hY56Snr" role="2VODD2">
        <node concept="lc7rE" id="i0uAwmn" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwmp" role="lcghm">
            <node concept="2OqwBi" id="hY56WSN" role="lb14g">
              <node concept="117lpO" id="hY56WKv" role="2Oq$k0" />
              <node concept="3TrEf2" id="hY56X9X" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:hcYeSH9" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hY572B_">
    <property role="3GE5qa" value="array" />
    <ref role="WuzLi" to="tpee:h4AH0K_" resolve="ArrayAccessExpression" />
    <node concept="11bSqf" id="hY572BA" role="11c4hB">
      <node concept="3clFbS" id="hY572BB" role="2VODD2">
        <node concept="lc7rE" id="i0uAwEO" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwEQ" role="lcghm">
            <node concept="2OqwBi" id="hY575M5" role="lb14g">
              <node concept="117lpO" id="hY575CM" role="2Oq$k0" />
              <node concept="3TrEf2" id="hY57696" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:h4AHHTq" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwER" role="lcghm">
            <property role="lacIc" value="[" />
          </node>
          <node concept="l9hG8" id="i0uAwES" role="lcghm">
            <node concept="2OqwBi" id="hZifpuL" role="lb14g">
              <node concept="117lpO" id="hZifpoT" role="2Oq$k0" />
              <node concept="3TrEf2" id="hZifr1K" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:h4AHEM9" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwET" role="lcghm">
            <property role="lacIc" value="]" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hY57cL0">
    <property role="3GE5qa" value="array" />
    <ref role="WuzLi" to="tpee:hf$_iWi" resolve="ArrayCreator" />
    <node concept="11bSqf" id="hY57cL1" role="11c4hB">
      <node concept="3clFbS" id="hY57cL2" role="2VODD2">
        <node concept="lc7rE" id="i0uAwnx" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwnz" role="lcghm">
            <node concept="2OqwBi" id="hY57fLY" role="lb14g">
              <node concept="117lpO" id="hY57fDT" role="2Oq$k0" />
              <node concept="3TrEf2" id="hY57g9I" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:hf$_nzH" />
              </node>
            </node>
          </node>
          <node concept="l9S2W" id="i0uAwn$" role="lcghm">
            <property role="XA4eZ" value="false" />
            <node concept="2OqwBi" id="hZmr4K$" role="lbANJ">
              <node concept="117lpO" id="hZmr4Ec" role="2Oq$k0" />
              <node concept="3Tsc0h" id="hZmr58A" role="2OqNvi">
                <ref role="3TtcxE" to="tpee:hf$GQt2" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hY57nLz">
    <property role="3GE5qa" value="array" />
    <ref role="WuzLi" to="tpee:gNg6Rvt" resolve="ArrayCreatorWithInitializer" />
    <node concept="11bSqf" id="hY57nL$" role="11c4hB">
      <node concept="3clFbS" id="hY57nL_" role="2VODD2">
        <node concept="lc7rE" id="i0uAw$2" role="3cqZAp">
          <node concept="l9hG8" id="i0uAw$4" role="lcghm">
            <node concept="2OqwBi" id="hY57rKg" role="lb14g">
              <node concept="117lpO" id="hY57rjV" role="2Oq$k0" />
              <node concept="3TrEf2" id="hY57s3Q" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:gNg7ff4" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAw$5" role="lcghm">
            <property role="lacIc" value="[]{" />
          </node>
          <node concept="l9S2W" id="i0uAw$6" role="lcghm">
            <property role="XA4eZ" value="true" />
            <property role="lbP0B" value=", " />
            <node concept="2OqwBi" id="hZmqTQ5" role="lbANJ">
              <node concept="117lpO" id="hZmqTKG" role="2Oq$k0" />
              <node concept="3Tsc0h" id="hZmqVDA" role="2OqNvi">
                <ref role="3TtcxE" to="tpee:gNg7hAG" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAw$7" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hY57Koy">
    <property role="3GE5qa" value="array" />
    <ref role="WuzLi" to="tpee:h_Rwk4t" resolve="ArrayLengthOperation" />
    <node concept="11bSqf" id="hY57Koz" role="11c4hB">
      <node concept="3clFbS" id="hY57Ko$" role="2VODD2">
        <node concept="lc7rE" id="i0uAwIr" role="3cqZAp">
          <node concept="la8eA" id="i0uAwIt" role="lcghm">
            <property role="lacIc" value="length" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hY57PxW">
    <property role="3GE5qa" value="array" />
    <ref role="WuzLi" to="tpee:hiBsdKd" resolve="ArrayLiteral" />
    <node concept="11bSqf" id="hY57PxX" role="11c4hB">
      <node concept="3clFbS" id="hY57PxY" role="2VODD2">
        <node concept="lc7rE" id="i0uAwGb" role="3cqZAp">
          <node concept="la8eA" id="i0uAwGd" role="lcghm">
            <property role="lacIc" value="{" />
          </node>
          <node concept="l9S2W" id="i0uAwGe" role="lcghm">
            <property role="XA4eZ" value="true" />
            <property role="lbP0B" value=", " />
            <node concept="2OqwBi" id="hZmr8nV" role="lbANJ">
              <node concept="117lpO" id="hZmr8iy" role="2Oq$k0" />
              <node concept="3Tsc0h" id="hZmr94o" role="2OqNvi">
                <ref role="3TtcxE" to="tpee:hiBsfQZ" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwGf" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hY5cr3l">
    <property role="3GE5qa" value="array" />
    <ref role="WuzLi" to="tpee:f_0Q1BR" resolve="ArrayType" />
    <node concept="11bSqf" id="hY5cr3m" role="11c4hB">
      <node concept="3clFbS" id="hY5cr3n" role="2VODD2">
        <node concept="lc7rE" id="i0uAw_g" role="3cqZAp">
          <node concept="l9hG8" id="i0uAw_i" role="lcghm">
            <node concept="2OqwBi" id="hY5ctJM" role="lb14g">
              <node concept="117lpO" id="hY5ctCt" role="2Oq$k0" />
              <node concept="3TrEf2" id="hY5culG" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:f_0Q1BS" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAw_j" role="lcghm">
            <property role="lacIc" value="[]" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hY5cwfQ">
    <property role="3GE5qa" value="control_flow" />
    <ref role="WuzLi" to="tpee:gTgVbCX" resolve="AssertStatement" />
    <node concept="11bSqf" id="hY5cwfR" role="11c4hB">
      <node concept="3clFbS" id="hY5cwfS" role="2VODD2">
        <node concept="lc7rE" id="i0$80PV" role="3cqZAp">
          <node concept="l8MVK" id="i0$81lW" role="lcghm" />
        </node>
        <node concept="1bpajm" id="i0$82Xw" role="3cqZAp" />
        <node concept="lc7rE" id="i0uAwKe" role="3cqZAp">
          <node concept="la8eA" id="i0uAwKh" role="lcghm">
            <property role="lacIc" value="assert " />
          </node>
          <node concept="l9hG8" id="i0uAwKi" role="lcghm">
            <node concept="2OqwBi" id="hZifA5I" role="lb14g">
              <node concept="117lpO" id="hZifA0l" role="2Oq$k0" />
              <node concept="3TrEf2" id="hZifAAK" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:gTgVkje" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="i0$8drY" role="3cqZAp">
          <node concept="3clFbS" id="i0$8drZ" role="3clFbx">
            <node concept="lc7rE" id="i0$8fpG" role="3cqZAp">
              <node concept="la8eA" id="i0$8fvl" role="lcghm">
                <property role="lacIc" value=" : " />
              </node>
              <node concept="l9hG8" id="i0$8fvm" role="lcghm">
                <node concept="2OqwBi" id="i0$8fvn" role="lb14g">
                  <node concept="117lpO" id="i0$8fvo" role="2Oq$k0" />
                  <node concept="3TrEf2" id="i0$8fvp" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:gTgVpbw" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="i0$8ejj" role="3clFbw">
            <node concept="2OqwBi" id="i0$8dOd" role="2Oq$k0">
              <node concept="117lpO" id="i0$8dIl" role="2Oq$k0" />
              <node concept="3TrEf2" id="i0$8ebe" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:gTgVpbw" />
              </node>
            </node>
            <node concept="3x8VRR" id="i0$8eHf" role="2OqNvi" />
          </node>
        </node>
        <node concept="lc7rE" id="i0$hbNW" role="3cqZAp">
          <node concept="la8eA" id="i0$hc9d" role="lcghm">
            <property role="lacIc" value=";" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hY5d0j8">
    <property role="3GE5qa" value="expressions" />
    <ref role="WuzLi" to="tpee:hOpVHS1" resolve="BitwiseAndExpression" />
    <node concept="11bSqf" id="hY5d0j9" role="11c4hB">
      <node concept="3clFbS" id="hY5d0ja" role="2VODD2">
        <node concept="lc7rE" id="i0uAwrj" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwrl" role="lcghm">
            <node concept="2OqwBi" id="hY5d3og" role="lb14g">
              <node concept="117lpO" id="hY5d3gF" role="2Oq$k0" />
              <node concept="3TrEf2" id="hY5d3ES" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4s" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwrm" role="lcghm">
            <property role="lacIc" value=" &amp; " />
          </node>
          <node concept="l9hG8" id="i0uAwrn" role="lcghm">
            <node concept="2OqwBi" id="hZifLLc" role="lb14g">
              <node concept="117lpO" id="hZifL_d" role="2Oq$k0" />
              <node concept="3TrEf2" id="hZifMbR" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4r" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hY5d9Zq">
    <property role="3GE5qa" value="expressions" />
    <ref role="WuzLi" to="tpee:hPH0AXv" resolve="BitwiseNotExpression" />
    <node concept="11bSqf" id="hY5d9Zr" role="11c4hB">
      <node concept="3clFbS" id="hY5d9Zs" role="2VODD2">
        <node concept="lc7rE" id="i0uAwt_" role="3cqZAp">
          <node concept="la8eA" id="i0uAwtB" role="lcghm">
            <property role="lacIc" value="~(" />
          </node>
          <node concept="l9hG8" id="i0uAwtC" role="lcghm">
            <node concept="2OqwBi" id="hZifOR6" role="lb14g">
              <node concept="117lpO" id="hZifOhG" role="2Oq$k0" />
              <node concept="3TrEf2" id="hZifP7L" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:hPH0AXy" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwtD" role="lcghm">
            <property role="lacIc" value=")" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hY5djxy">
    <property role="3GE5qa" value="expressions" />
    <ref role="WuzLi" to="tpee:hOpVOpi" resolve="BitwiseOrExpression" />
    <node concept="11bSqf" id="hY5djxz" role="11c4hB">
      <node concept="3clFbS" id="hY5djx$" role="2VODD2">
        <node concept="lc7rE" id="i0uAwIR" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwIT" role="lcghm">
            <node concept="2OqwBi" id="hY5dmLT" role="lb14g">
              <node concept="117lpO" id="hY5dmEz" role="2Oq$k0" />
              <node concept="3TrEf2" id="hY5dn2k" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4s" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwIU" role="lcghm">
            <property role="lacIc" value=" | " />
          </node>
          <node concept="l9hG8" id="i0uAwIV" role="lcghm">
            <node concept="2OqwBi" id="hZifTri" role="lb14g">
              <node concept="117lpO" id="hZifTkF" role="2Oq$k0" />
              <node concept="3TrEf2" id="hZifU2E" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4r" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hY5dqV5">
    <property role="3GE5qa" value="expressions" />
    <ref role="WuzLi" to="tpee:hOpVQAF" resolve="BitwiseXorExpression" />
    <node concept="11bSqf" id="hY5dqV6" role="11c4hB">
      <node concept="3clFbS" id="hY5dqV7" role="2VODD2">
        <node concept="lc7rE" id="i0uAwId" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwIf" role="lcghm">
            <node concept="2OqwBi" id="hY5dyyJ" role="lb14g">
              <node concept="117lpO" id="hY5dyrD" role="2Oq$k0" />
              <node concept="3TrEf2" id="hY5dz7r" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4s" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwIg" role="lcghm">
            <property role="lacIc" value=" ^ " />
          </node>
          <node concept="l9hG8" id="i0uAwIh" role="lcghm">
            <node concept="2OqwBi" id="hZifX_j" role="lb14g">
              <node concept="117lpO" id="hZifXvE" role="2Oq$k0" />
              <node concept="3TrEf2" id="hZifY7j" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4r" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hY5dCCG">
    <property role="3GE5qa" value="control_flow" />
    <ref role="WuzLi" to="tpee:fK9aQHR" resolve="BlockStatement" />
    <node concept="11bSqf" id="hY5dCCH" role="11c4hB">
      <node concept="3clFbS" id="hY5dCCI" role="2VODD2">
        <node concept="3cpWs8" id="hY5dKCe" role="3cqZAp">
          <node concept="3cpWsn" id="hY5dKCf" role="3cpWs9">
            <property role="TrG5h" value="needBrackets" />
            <node concept="10P_77" id="hY5dKCg" role="1tU5fm" />
            <node concept="3clFbT" id="hY5dMEU" role="33vP2m">
              <property role="3clFbU" value="false" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="hY5dNq4" role="3cqZAp">
          <node concept="3clFbS" id="hY5dNq5" role="3clFbx">
            <node concept="3clFbJ" id="hY5dWz4" role="3cqZAp">
              <node concept="3clFbS" id="hY5dWz5" role="3clFbx">
                <node concept="1DcWWT" id="hY5dZTr" role="3cqZAp">
                  <node concept="3clFbS" id="hY5dZTs" role="2LFqv$">
                    <node concept="3clFbJ" id="hY5e6kc" role="3cqZAp">
                      <node concept="3clFbS" id="hY5e6kd" role="3clFbx">
                        <node concept="3clFbF" id="hY5ea9x" role="3cqZAp">
                          <node concept="37vLTI" id="hY5eaFv" role="3clFbG">
                            <node concept="3clFbT" id="hY5eb2v" role="37vLTx">
                              <property role="3clFbU" value="true" />
                            </node>
                            <node concept="37vLTw" id="3GM_nagTuXd" role="37vLTJ">
                              <ref role="3cqZAo" node="hY5dKCf" resolve="needBrackets" />
                            </node>
                          </node>
                        </node>
                        <node concept="3zACq4" id="hY5ebUF" role="3cqZAp" />
                      </node>
                      <node concept="2OqwBi" id="hY5e71s" role="3clFbw">
                        <node concept="37vLTw" id="3GM_nagTyYu" role="2Oq$k0">
                          <ref role="3cqZAo" node="hY5dZTv" resolve="statement" />
                        </node>
                        <node concept="1mIQ4w" id="hY5e8gC" role="2OqNvi">
                          <node concept="chp4Y" id="hY5e9u3" role="cj9EA">
                            <ref role="cht4Q" to="tpee:fzcpWvK" resolve="LocalVariableDeclarationStatement" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="hY5e4Lq" role="1DdaDG">
                    <node concept="2OqwBi" id="hY5e1Vm" role="2Oq$k0">
                      <node concept="117lpO" id="hY5e1Q9" role="2Oq$k0" />
                      <node concept="3TrEf2" id="hY5e2cx" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:fK9aQHS" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="hY5e543" role="2OqNvi">
                      <ref role="3TtcxE" to="tpee:fzcqZ_x" />
                    </node>
                  </node>
                  <node concept="3cpWsn" id="hY5dZTv" role="1Duv9x">
                    <property role="TrG5h" value="statement" />
                    <node concept="3Tqbb2" id="hY5e0oz" role="1tU5fm">
                      <ref role="ehGHo" to="tpee:fzclF8l" resolve="Statement" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="hY5dYcG" role="3clFbw">
                <node concept="2OqwBi" id="hY5dXvG" role="2Oq$k0">
                  <node concept="117lpO" id="hY5dXpO" role="2Oq$k0" />
                  <node concept="3TrEf2" id="hY5dXY2" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:fK9aQHS" />
                  </node>
                </node>
                <node concept="3x8VRR" id="hY5dYA9" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="hY5dQN8" role="3clFbw">
            <node concept="2OqwBi" id="hY5dTqK" role="3uHU7w">
              <node concept="2OqwBi" id="hY5dSeK" role="2Oq$k0">
                <node concept="117lpO" id="hY5dS6F" role="2Oq$k0" />
                <node concept="1mfA1w" id="hY5dT8F" role="2OqNvi" />
              </node>
              <node concept="1mIQ4w" id="hY5dTHB" role="2OqNvi">
                <node concept="chp4Y" id="hY5dVbT" role="cj9EA">
                  <ref role="cht4Q" to="tpee:fzclF80" resolve="StatementList" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="hY5dOKp" role="3uHU7B">
              <node concept="2OqwBi" id="hY5dO0u" role="2Oq$k0">
                <node concept="117lpO" id="hY5dNUA" role="2Oq$k0" />
                <node concept="1mfA1w" id="hY5dOi7" role="2OqNvi" />
              </node>
              <node concept="1mIQ4w" id="hY5dP89" role="2OqNvi">
                <node concept="chp4Y" id="hY5dQoZ" role="cj9EA">
                  <ref role="cht4Q" to="tpee:fK9aQHR" resolve="BlockStatement" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="hY5edHG" role="9aQIa">
            <node concept="3clFbS" id="hY5edHH" role="9aQI4">
              <node concept="3clFbF" id="hY5egih" role="3cqZAp">
                <node concept="37vLTI" id="hY5egNK" role="3clFbG">
                  <node concept="3clFbT" id="hY5eheE" role="37vLTx">
                    <property role="3clFbU" value="true" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagTrq3" role="37vLTJ">
                    <ref role="3cqZAo" node="hY5dKCf" resolve="needBrackets" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="hY5ei_7" role="3cqZAp">
          <node concept="3clFbS" id="hY5ei_8" role="3clFbx">
            <node concept="3clFbJ" id="75$7FyDzHrC" role="3cqZAp">
              <node concept="3clFbS" id="75$7FyDzHrD" role="3clFbx">
                <node concept="lc7rE" id="i0uAwFo" role="3cqZAp">
                  <node concept="la8eA" id="i0uEtkq" role="lcghm">
                    <property role="ldcpH" value="false" />
                    <property role="lacIc" value=" {" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="75$7FyDzHrU" role="3clFbw">
                <node concept="2OqwBi" id="75$7FyDzHrV" role="2Oq$k0">
                  <node concept="117lpO" id="75$7FyDzHrW" role="2Oq$k0" />
                  <node concept="1mfA1w" id="75$7FyDzHrX" role="2OqNvi" />
                </node>
                <node concept="1mIQ4w" id="75$7FyDzHrY" role="2OqNvi">
                  <node concept="chp4Y" id="75$7FyDzHrZ" role="cj9EA">
                    <ref role="cht4Q" to="tpee:fzclF8n" resolve="IfStatement" />
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="75$7FyD$4FO" role="9aQIa">
                <node concept="3clFbS" id="75$7FyD$4FP" role="9aQI4">
                  <node concept="lc7rE" id="75$7FyDzHs0" role="3cqZAp">
                    <node concept="l8MVK" id="75$7FyDzHs2" role="lcghm" />
                    <node concept="la8eA" id="75$7FyD$4FH" role="lcghm">
                      <property role="ldcpH" value="true" />
                      <property role="lacIc" value="{" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="11p84A" id="hY5eoNi" role="3cqZAp" />
          </node>
          <node concept="37vLTw" id="3GM_nagTzSr" role="3clFbw">
            <ref role="3cqZAo" node="hY5dKCf" resolve="needBrackets" />
          </node>
        </node>
        <node concept="3clFbJ" id="i0$8qIw" role="3cqZAp">
          <node concept="3clFbS" id="i0$8qIx" role="3clFbx">
            <node concept="lc7rE" id="i0uAwts" role="3cqZAp">
              <node concept="l9hG8" id="i0uAwtu" role="lcghm">
                <node concept="2OqwBi" id="hY5etOT" role="lb14g">
                  <node concept="117lpO" id="hY5etJg" role="2Oq$k0" />
                  <node concept="3TrEf2" id="hY5eu6i" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:fK9aQHS" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="i0$8s5O" role="3clFbw">
            <node concept="2OqwBi" id="i0$8rgK" role="2Oq$k0">
              <node concept="117lpO" id="i0$8r9U" role="2Oq$k0" />
              <node concept="3TrEf2" id="i0$8rWx" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fK9aQHS" />
              </node>
            </node>
            <node concept="3x8VRR" id="i0$8sGG" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbJ" id="hY5euDY" role="3cqZAp">
          <node concept="3clFbS" id="hY5euDZ" role="3clFbx">
            <node concept="11pn5k" id="hY5evW$" role="3cqZAp" />
            <node concept="lc7rE" id="i0uAwtv" role="3cqZAp">
              <node concept="l8MVK" id="i0uAwtx" role="lcghm" />
              <node concept="la8eA" id="i0uEoSG" role="lcghm">
                <property role="ldcpH" value="true" />
                <property role="lacIc" value="}" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="3GM_nagTBeH" role="3clFbw">
            <ref role="3cqZAo" node="hY5dKCf" resolve="needBrackets" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hY5e$eB">
    <ref role="WuzLi" to="tpee:fzclF81" resolve="BooleanConstant" />
    <node concept="11bSqf" id="hY5e$eC" role="11c4hB">
      <node concept="3clFbS" id="hY5e$eD" role="2VODD2">
        <node concept="lc7rE" id="i0uAwH$" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwHA" role="lcghm">
            <node concept="3cpWs3" id="i0zZfND" role="lb14g">
              <node concept="Xl_RD" id="i0zZg60" role="3uHU7B">
                <property role="Xl_RC" value="" />
              </node>
              <node concept="2OqwBi" id="hY5eCg6" role="3uHU7w">
                <node concept="117lpO" id="hY5eCau" role="2Oq$k0" />
                <node concept="3TrcHB" id="hY5eC_T" role="2OqNvi">
                  <ref role="3TsBF5" to="tpee:fzclF82" resolve="value" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hY5eE7O">
    <property role="3GE5qa" value="primitive" />
    <ref role="WuzLi" to="tpee:f_0P_4Y" resolve="BooleanType" />
    <node concept="11bSqf" id="hY5eE7P" role="11c4hB">
      <node concept="3clFbS" id="hY5eE7Q" role="2VODD2">
        <node concept="lc7rE" id="i0uAwty" role="3cqZAp">
          <node concept="la8eA" id="i0uAwt$" role="lcghm">
            <property role="lacIc" value="boolean" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hY5eHML">
    <property role="3GE5qa" value="control_flow" />
    <ref role="WuzLi" to="tpee:fJzACpZ" resolve="BreakStatement" />
    <node concept="11bSqf" id="hY5eHMM" role="11c4hB">
      <node concept="3clFbS" id="hY5eHMN" role="2VODD2">
        <node concept="lc7rE" id="i0uAw_F" role="3cqZAp">
          <node concept="l8MVK" id="i0uAw_H" role="lcghm" />
        </node>
        <node concept="3clFbJ" id="7QIxtrFhCHf" role="3cqZAp">
          <node concept="3clFbS" id="7QIxtrFhCHg" role="3clFbx">
            <node concept="lc7rE" id="7QIxtrFhCHu" role="3cqZAp">
              <node concept="la8eA" id="7QIxtrFhCHv" role="lcghm">
                <property role="ldcpH" value="true" />
                <property role="lacIc" value="break " />
              </node>
              <node concept="l9hG8" id="7QIxtrFhCHw" role="lcghm">
                <property role="ld1Su" value="false" />
                <node concept="2OqwBi" id="7QIxtrFhCI0" role="lb14g">
                  <node concept="2OqwBi" id="7QIxtrFhCHV" role="2Oq$k0">
                    <node concept="2OqwBi" id="7QIxtrFhCHx" role="2Oq$k0">
                      <node concept="117lpO" id="7QIxtrFhCHy" role="2Oq$k0" />
                      <node concept="3TrEf2" id="7QIxtrFhCHU" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:7QIxtrFgJz4" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="7QIxtrFhCHZ" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:kcijJTll4E" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="7QIxtrFhCI4" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="7QIxtrFhCH$" role="lcghm">
                <property role="lacIc" value=";" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7QIxtrFhCHp" role="3clFbw">
            <node concept="2OqwBi" id="7QIxtrFhCHk" role="2Oq$k0">
              <node concept="117lpO" id="7QIxtrFhCHj" role="2Oq$k0" />
              <node concept="3TrEf2" id="7QIxtrFhCHo" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:7QIxtrFgJz4" />
              </node>
            </node>
            <node concept="3x8VRR" id="7QIxtrFhCHt" role="2OqNvi" />
          </node>
          <node concept="3eNFk2" id="7QIxtrFhCHB" role="3eNLev">
            <node concept="3clFbS" id="7QIxtrFhCHD" role="3eOfB_">
              <node concept="lc7rE" id="7QIxtrFhCHE" role="3cqZAp">
                <node concept="la8eA" id="7QIxtrFhCHF" role="lcghm">
                  <property role="ldcpH" value="true" />
                  <property role="lacIc" value="break " />
                </node>
                <node concept="l9hG8" id="7QIxtrFhCHG" role="lcghm">
                  <property role="ld1Su" value="false" />
                  <node concept="2OqwBi" id="7QIxtrFhCHH" role="lb14g">
                    <node concept="117lpO" id="7QIxtrFhCHI" role="2Oq$k0" />
                    <node concept="3TrcHB" id="7QIxtrFhCHJ" role="2OqNvi">
                      <ref role="3TsBF5" to="tpee:ht5JVbo" resolve="label" />
                    </node>
                  </node>
                </node>
                <node concept="la8eA" id="7QIxtrFhCHK" role="lcghm">
                  <property role="lacIc" value=";" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7QIxtrFhCHP" role="3eO9$A">
              <node concept="2OqwBi" id="7QIxtrFhCHQ" role="2Oq$k0">
                <node concept="117lpO" id="7QIxtrFhCHR" role="2Oq$k0" />
                <node concept="3TrcHB" id="7QIxtrFhCHS" role="2OqNvi">
                  <ref role="3TsBF5" to="tpee:ht5JVbo" resolve="label" />
                </node>
              </node>
              <node concept="17RvpY" id="7QIxtrFhCHT" role="2OqNvi" />
            </node>
          </node>
          <node concept="9aQIb" id="7QIxtrFhCHL" role="9aQIa">
            <node concept="3clFbS" id="7QIxtrFhCHM" role="9aQI4">
              <node concept="lc7rE" id="7QIxtrFhCHN" role="3cqZAp">
                <node concept="la8eA" id="7QIxtrFhCHO" role="lcghm">
                  <property role="ldcpH" value="true" />
                  <property role="lacIc" value="break;" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hY5f29e">
    <property role="3GE5qa" value="primitive" />
    <ref role="WuzLi" to="tpee:f_0Pron" resolve="ByteType" />
    <node concept="11bSqf" id="hY5f29f" role="11c4hB">
      <node concept="3clFbS" id="hY5f29g" role="2VODD2">
        <node concept="lc7rE" id="i0uAwwp" role="3cqZAp">
          <node concept="la8eA" id="i0uAwwr" role="lcghm">
            <property role="lacIc" value="byte" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hY5f67I">
    <ref role="WuzLi" to="tpee:f_0QFTa" resolve="CastExpression" />
    <node concept="11bSqf" id="hY5f67J" role="11c4hB">
      <node concept="3clFbS" id="hY5f67K" role="2VODD2">
        <node concept="lc7rE" id="i0uAwzx" role="3cqZAp">
          <node concept="la8eA" id="i0uAwzz" role="lcghm">
            <property role="lacIc" value="(" />
          </node>
          <node concept="l9hG8" id="i0uAwzO" role="lcghm">
            <node concept="2OqwBi" id="hZig2kb" role="lb14g">
              <node concept="117lpO" id="hZig2ej" role="2Oq$k0" />
              <node concept="3TrEf2" id="hZig390" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:f_0QFTb" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwzP" role="lcghm">
            <property role="lacIc" value=") " />
          </node>
        </node>
        <node concept="3cpWs8" id="qIwpvPbiHx" role="3cqZAp">
          <node concept="3cpWsn" id="qIwpvPbiHy" role="3cpWs9">
            <property role="TrG5h" value="needsParensAroundCastExpression" />
            <node concept="10P_77" id="qIwpvPbiHv" role="1tU5fm" />
            <node concept="2YIFZM" id="qIwpvPbiHz" role="33vP2m">
              <ref role="37wK5l" to="tpcz:qIwpvNWfTr" resolve="needsParensAroundCastExpression" />
              <ref role="1Pybhc" to="tpcz:18ik2d67g12" resolve="PrecedenceUtil" />
              <node concept="117lpO" id="qIwpvPbiH$" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="qIwpvPbi_H" role="3cqZAp">
          <node concept="3clFbS" id="qIwpvPbi_K" role="3clFbx">
            <node concept="lc7rE" id="qIwpvPbiGM" role="3cqZAp">
              <node concept="la8eA" id="qIwpvPbiGY" role="lcghm">
                <property role="lacIc" value="(" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="qIwpvPbiH_" role="3clFbw">
            <ref role="3cqZAo" node="qIwpvPbiHy" resolve="needsParensAroundCastExpression" />
          </node>
        </node>
        <node concept="lc7rE" id="qIwpvPbiv1" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwzQ" role="lcghm">
            <node concept="2OqwBi" id="hZig4Eu" role="lb14g">
              <node concept="117lpO" id="hZig4o9" role="2Oq$k0" />
              <node concept="3TrEf2" id="hZig4UE" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:f_0QFTc" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="qIwpvPbiNn" role="3cqZAp">
          <node concept="3clFbS" id="qIwpvPbiNo" role="3clFbx">
            <node concept="lc7rE" id="qIwpvPbiNp" role="3cqZAp">
              <node concept="la8eA" id="qIwpvPbiNq" role="lcghm">
                <property role="lacIc" value=")" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="qIwpvPbiNr" role="3clFbw">
            <ref role="3cqZAo" node="qIwpvPbiHy" resolve="needsParensAroundCastExpression" />
          </node>
        </node>
        <node concept="3clFbH" id="qIwpvPbiLy" role="3cqZAp" />
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hY5fjY6">
    <property role="3GE5qa" value="control_flow.try_catch" />
    <ref role="WuzLi" to="tpee:gWTDmSJ" resolve="CatchClause" />
    <node concept="11bSqf" id="hY5fjY7" role="11c4hB">
      <node concept="3clFbS" id="hY5fjY8" role="2VODD2">
        <node concept="lc7rE" id="i0uAwtH" role="3cqZAp">
          <node concept="la8eA" id="i0uEUlw" role="lcghm">
            <property role="ldcpH" value="true" />
            <property role="lacIc" value="} catch (" />
          </node>
          <node concept="l9hG8" id="i0uAwtJ" role="lcghm">
            <node concept="2OqwBi" id="hY5ft27" role="lb14g">
              <node concept="117lpO" id="hY5fsU2" role="2Oq$k0" />
              <node concept="3TrEf2" id="hY5ftyp" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:gWTDEbL" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwtK" role="lcghm">
            <property role="lacIc" value=") {" />
          </node>
        </node>
        <node concept="3izx1p" id="hZKazbP" role="3cqZAp">
          <node concept="3clFbS" id="hZKazbQ" role="3izTki">
            <node concept="lc7rE" id="i0uAwCu" role="3cqZAp">
              <node concept="l9hG8" id="i0uAwCw" role="lcghm">
                <node concept="2OqwBi" id="hY5fysM" role="lb14g">
                  <node concept="117lpO" id="hY5fymF" role="2Oq$k0" />
                  <node concept="3TrEf2" id="hY5fz4T" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:gWTDEbM" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hY5f$Tp">
    <ref role="WuzLi" to="tpee:htXhb8r" resolve="CharConstant" />
    <node concept="11bSqf" id="hY5f$Tq" role="11c4hB">
      <node concept="3clFbS" id="hY5f$Tr" role="2VODD2">
        <node concept="lc7rE" id="i0uAwvI" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwvK" role="lcghm">
            <node concept="3cpWs3" id="hY5fNX2" role="lb14g">
              <node concept="Xl_RD" id="hY5fOcu" role="3uHU7w">
                <property role="Xl_RC" value="'" />
              </node>
              <node concept="3cpWs3" id="hY5fLVK" role="3uHU7B">
                <node concept="Xl_RD" id="hY5fLek" role="3uHU7B">
                  <property role="Xl_RC" value="'" />
                </node>
                <node concept="2OqwBi" id="hY5fMwc" role="3uHU7w">
                  <node concept="117lpO" id="hY5fMoA" role="2Oq$k0" />
                  <node concept="3TrcHB" id="hY5fN0Y" role="2OqNvi">
                    <ref role="3TsBF5" to="tpee:htXhdRJ" resolve="charConstant" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hY5fSXF">
    <property role="3GE5qa" value="primitive" />
    <ref role="WuzLi" to="tpee:f_0PfwA" resolve="CharType" />
    <node concept="11bSqf" id="hY5fSXG" role="11c4hB">
      <node concept="3clFbS" id="hY5fSXH" role="2VODD2">
        <node concept="lc7rE" id="i0uAwIo" role="3cqZAp">
          <node concept="la8eA" id="i0uAwIq" role="lcghm">
            <property role="lacIc" value="char" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hY5g05P">
    <property role="3GE5qa" value="classifiers.classifiers" />
    <ref role="WuzLi" to="tpee:fz12cDA" resolve="ClassConcept" />
    <node concept="11bSqf" id="hY5g05Q" role="11c4hB">
      <node concept="3clFbS" id="hY5g05R" role="2VODD2">
        <node concept="3clFbJ" id="3pXDj_D6erA" role="3cqZAp">
          <node concept="3clFbS" id="3pXDj_D6erB" role="3clFbx">
            <node concept="lc7rE" id="3pXDj_D6erC" role="3cqZAp">
              <node concept="l9hG8" id="3pXDj_D6erD" role="lcghm">
                <node concept="2OqwBi" id="3pXDj_D6erE" role="lb14g">
                  <node concept="117lpO" id="3pXDj_D6erF" role="2Oq$k0" />
                  <node concept="3CFZ6_" id="3pXDj_D6erG" role="2OqNvi">
                    <node concept="3CFYIy" id="3pXDj_D6erP" role="3CFYIz">
                      <ref role="3CFYIx" to="m373:1MQnpZAqBpc" resolve="ClassifierDocComment" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3pXDj_D6erI" role="3clFbw">
            <node concept="2OqwBi" id="3pXDj_D6erJ" role="2Oq$k0">
              <node concept="117lpO" id="3pXDj_D6erK" role="2Oq$k0" />
              <node concept="3CFZ6_" id="3pXDj_D6erL" role="2OqNvi">
                <node concept="3CFYIy" id="3pXDj_D6erO" role="3CFYIz">
                  <ref role="3CFYIx" to="m373:1MQnpZAqBpc" resolve="ClassifierDocComment" />
                </node>
              </node>
            </node>
            <node concept="3x8VRR" id="3pXDj_D6erN" role="2OqNvi" />
          </node>
        </node>
        <node concept="lc7rE" id="i0XtnxY" role="3cqZAp">
          <node concept="1bDJIP" id="i0Xtob1" role="lcghm">
            <ref role="1rvKf6" node="hXZO4aM" resolve="fileHeader" />
            <node concept="117lpO" id="i0Xtob2" role="1ryhcI" />
          </node>
          <node concept="1bDJIP" id="i0XtpVR" role="lcghm">
            <ref role="1rvKf6" node="hXZOC0K" resolve="annotations" />
            <node concept="117lpO" id="i0XtpVS" role="1ryhcI" />
          </node>
          <node concept="1bDJIP" id="i0Xtr77" role="lcghm">
            <ref role="1rvKf6" node="hXZP8nY" resolve="visibilityWithIndent" />
            <node concept="2OqwBi" id="i0Xtr78" role="1ryhcI">
              <node concept="117lpO" id="i0Xtr79" role="2Oq$k0" />
              <node concept="3TrEf2" id="i0Xtr7a" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:h9B3oxE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="hY5gcll" role="3cqZAp">
          <node concept="3clFbS" id="hY5gclm" role="3clFbx">
            <node concept="lc7rE" id="i0uAwzi" role="3cqZAp">
              <node concept="la8eA" id="i0uAwzk" role="lcghm">
                <property role="lacIc" value="static " />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="5lZEeU_CfIS" role="3clFbw">
            <node concept="2OqwBi" id="5lZEeU_Cgyx" role="3uHU7w">
              <node concept="117lpO" id="5lZEeU_Cgyw" role="2Oq$k0" />
              <node concept="2qgKlT" id="7yNwqlo2Rs5" role="2OqNvi">
                <ref role="37wK5l" to="tpek:6r77ob2USS8" resolve="isStatic" />
              </node>
            </node>
            <node concept="2OqwBi" id="wlIhh0LHo5" role="3uHU7B">
              <node concept="117lpO" id="wlIhh0LHo2" role="2Oq$k0" />
              <node concept="2qgKlT" id="5lZEeU_CfIR" role="2OqNvi">
                <ref role="37wK5l" to="tpek:sWroEc0xXl" resolve="isInner" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="hY5gkXq" role="3cqZAp">
          <node concept="3clFbS" id="hY5gkXr" role="3clFbx">
            <node concept="lc7rE" id="i0uAwB7" role="3cqZAp">
              <node concept="la8eA" id="i0uAwB9" role="lcghm">
                <property role="lacIc" value="abstract " />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="hY5gnb_" role="3clFbw">
            <node concept="117lpO" id="hY5gm08" role="2Oq$k0" />
            <node concept="3TrcHB" id="hY5gnIN" role="2OqNvi">
              <ref role="3TsBF5" to="tpee:fDsVARU" resolve="abstractClass" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1AYGCIBJN9O" role="3cqZAp">
          <node concept="3clFbS" id="1AYGCIBJN9P" role="3clFbx">
            <node concept="lc7rE" id="1AYGCIBJN9Y" role="3cqZAp">
              <node concept="la8eA" id="1AYGCIBJNa0" role="lcghm">
                <property role="lacIc" value="final " />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1AYGCIBJN9T" role="3clFbw">
            <node concept="117lpO" id="1AYGCIBJN9S" role="2Oq$k0" />
            <node concept="3TrcHB" id="1AYGCIBJN9X" role="2OqNvi">
              <ref role="3TsBF5" to="tpee:hLEXba4" resolve="isFinal" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="i0uAwmt" role="3cqZAp">
          <node concept="la8eA" id="i0uAwmv" role="lcghm">
            <property role="lacIc" value="class " />
          </node>
          <node concept="l9hG8" id="i0uAwmw" role="lcghm">
            <node concept="2OqwBi" id="hZigbWM" role="lb14g">
              <node concept="117lpO" id="hZigbPG" role="2Oq$k0" />
              <node concept="3TrcHB" id="hZigc_o" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="1bDJIP" id="i0XvUeT" role="lcghm">
            <ref role="1rvKf6" node="hY5gGyc" resolve="typeDeclarations" />
            <node concept="117lpO" id="i0XvUeU" role="1ryhcI" />
          </node>
        </node>
        <node concept="3clFbJ" id="hY5hkre" role="3cqZAp">
          <node concept="3clFbS" id="hY5hkrf" role="3clFbx">
            <node concept="lc7rE" id="i0uAwpF" role="3cqZAp">
              <node concept="la8eA" id="i0uAwpH" role="lcghm">
                <property role="lacIc" value=" extends " />
              </node>
              <node concept="l9hG8" id="i0uAwpI" role="lcghm">
                <node concept="2OqwBi" id="hZigf2q" role="lb14g">
                  <node concept="117lpO" id="hZigeVk" role="2Oq$k0" />
                  <node concept="3TrEf2" id="hZigfrR" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:gXzkM_H" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="hY5hlrm" role="3clFbw">
            <node concept="2OqwBi" id="hY5hkSn" role="2Oq$k0">
              <node concept="117lpO" id="hY5hkJN" role="2Oq$k0" />
              <node concept="3TrEf2" id="hY5hlep" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:gXzkM_H" />
              </node>
            </node>
            <node concept="3x8VRR" id="hY5hlQK" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbJ" id="hY5hsou" role="3cqZAp">
          <node concept="3clFbS" id="hY5hsov" role="3clFbx">
            <node concept="lc7rE" id="i0uAwAp" role="3cqZAp">
              <node concept="la8eA" id="i0uAwAr" role="lcghm">
                <property role="lacIc" value=" implements " />
              </node>
              <node concept="l9S2W" id="i0uAwAs" role="lcghm">
                <property role="XA4eZ" value="true" />
                <property role="lbP0B" value=", " />
                <node concept="2OqwBi" id="hZmrHGS" role="lbANJ">
                  <node concept="117lpO" id="hZmrH$z" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="hZmrI4r" role="2OqNvi">
                    <ref role="3TtcxE" to="tpee:fWEKbgp" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="hY5htG8" role="3clFbw">
            <node concept="2OqwBi" id="hY5htew" role="2Oq$k0">
              <node concept="117lpO" id="hY5hsWb" role="2Oq$k0" />
              <node concept="3Tsc0h" id="hY5htwS" role="2OqNvi">
                <ref role="3TtcxE" to="tpee:fWEKbgp" />
              </node>
            </node>
            <node concept="3GX2aA" id="hY5hu3o" role="2OqNvi" />
          </node>
        </node>
        <node concept="lc7rE" id="i0$9NW4" role="3cqZAp">
          <node concept="la8eA" id="i0$9OkK" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
          <node concept="1bDJIP" id="4PrERHsI$sh" role="lcghm">
            <ref role="1rvKf6" node="4PrERHsEdKS" resolve="membersWithBrackets" />
            <node concept="117lpO" id="4PrERHsI$vv" role="1ryhcI" />
            <node concept="3clFbT" id="4PrERHts2AW" role="1ryhcI">
              <property role="3clFbU" value="true" />
            </node>
          </node>
          <node concept="l8MVK" id="1hodSy9qkcG" role="lcghm" />
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="21YnEOmbk4A" role="33IsuW">
      <node concept="3clFbS" id="21YnEOmbk4B" role="2VODD2">
        <node concept="3clFbF" id="21YnEOmbk4C" role="3cqZAp">
          <node concept="Xl_RD" id="21YnEOmbk4D" role="3clFbG">
            <property role="Xl_RC" value="java" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1bsvg0" id="hY5gBe$">
    <property role="TrG5h" value="GenericDeclarationTextGen2" />
    <property role="3GE5qa" value="lang" />
    <ref role="1YGkfN" node="hXZ_k_W" resolve="BaseLanguageTextGen" />
    <node concept="1bwezc" id="hY5gGyc" role="1bwxVq">
      <property role="TrG5h" value="typeDeclarations" />
      <node concept="3cqZAl" id="hY5gGyd" role="3clF45" />
      <node concept="3clFbS" id="hY5gGye" role="3clF47">
        <node concept="3clFbJ" id="hY5gMMc" role="3cqZAp">
          <node concept="2OqwBi" id="hY5gPno" role="3clFbw">
            <node concept="2OqwBi" id="hY5gOdk" role="2Oq$k0">
              <node concept="37vLTw" id="2BHiRxgm_yi" role="2Oq$k0">
                <ref role="3cqZAo" node="hY5gJeQ" resolve="generic" />
              </node>
              <node concept="3Tsc0h" id="hY5gORo" role="2OqNvi">
                <ref role="3TtcxE" to="tpee:g96eVAe" />
              </node>
            </node>
            <node concept="3GX2aA" id="hY5gQ_A" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="hY5gMMe" role="3clFbx">
            <node concept="lc7rE" id="i0uAwyG" role="3cqZAp">
              <node concept="la8eA" id="i0uAwyI" role="lcghm">
                <property role="lacIc" value="&lt;" />
              </node>
              <node concept="l9S2W" id="i0uAwyJ" role="lcghm">
                <property role="XA4eZ" value="true" />
                <property role="lbP0B" value=", " />
                <node concept="2OqwBi" id="hZmsWVz" role="lbANJ">
                  <node concept="37vLTw" id="2BHiRxgm2sh" role="2Oq$k0">
                    <ref role="3cqZAo" node="hY5gJeQ" resolve="generic" />
                  </node>
                  <node concept="3Tsc0h" id="hZmsXIU" role="2OqNvi">
                    <ref role="3TtcxE" to="tpee:g96eVAe" />
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="i0uAwyK" role="lcghm">
                <property role="lacIc" value="&gt;" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="hY5gJeQ" role="3clF46">
        <property role="TrG5h" value="generic" />
        <node concept="3Tqbb2" id="hY5gJeR" role="1tU5fm">
          <ref role="ehGHo" to="tpee:g96eOhU" resolve="GenericDeclaration" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hY5kr7o">
    <property role="3GE5qa" value="classifiers" />
    <ref role="WuzLi" to="tpee:hDpGfJe" resolve="ClassCreator" />
    <node concept="11bSqf" id="hY5kr7p" role="11c4hB">
      <node concept="3clFbS" id="hY5kr7q" role="2VODD2">
        <node concept="lc7rE" id="i0Xtvda" role="3cqZAp">
          <node concept="1bDJIP" id="943hH907tQ" role="lcghm">
            <ref role="1rvKf6" node="943hH902GU" resolve="methodTypeArguments" />
            <node concept="117lpO" id="943hH907tR" role="1ryhcI" />
          </node>
          <node concept="1bDJIP" id="3DT4rh9VqoX" role="lcghm">
            <ref role="1rvKf6" node="6fUw26UhtdA" resolve="blClassifierRef" />
            <node concept="2OqwBi" id="7gfzJJb5$Nv" role="1ryhcI">
              <node concept="117lpO" id="7gfzJJb5$Ne" role="2Oq$k0" />
              <node concept="37Cfm0" id="7gfzJJb5C_x" role="2OqNvi">
                <node concept="1aIX9F" id="7gfzJJb5C_y" role="37CeNk">
                  <node concept="26LbJo" id="7gfzJJb5C__" role="1aIX9E">
                    <ref role="26LbJp" to="tpee:hDpISCB" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1bDJIP" id="i0XtKVq" role="lcghm">
            <ref role="1rvKf6" node="hXZ_zy0" resolve="typeParameters" />
            <node concept="2OqwBi" id="i0XtKVr" role="1ryhcI">
              <node concept="117lpO" id="i0XtKVs" role="2Oq$k0" />
              <node concept="3Tsc0h" id="i0XtKVt" role="2OqNvi">
                <ref role="3TtcxE" to="tpee:hDpMfZw" />
              </node>
            </node>
          </node>
          <node concept="1bDJIP" id="i0XtMzZ" role="lcghm">
            <ref role="1rvKf6" node="hXZAkSl" resolve="arguments" />
            <node concept="117lpO" id="i0XtM$0" role="1ryhcI" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hY5kJlH">
    <property role="3GE5qa" value="classifiers" />
    <ref role="WuzLi" to="tpee:gfVsKKk" resolve="ClassifierClassExpression" />
    <node concept="11bSqf" id="hY5kJlI" role="11c4hB">
      <node concept="3clFbS" id="hY5kJlJ" role="2VODD2">
        <node concept="lc7rE" id="i0uAwAm" role="3cqZAp">
          <node concept="1bDJIP" id="6fUw26UkGGN" role="lcghm">
            <ref role="1rvKf6" node="6fUw26UhtdA" resolve="blClassifierRef" />
            <node concept="2OqwBi" id="3KWRMGjwaiI" role="1ryhcI">
              <node concept="117lpO" id="3KWRMGjwaiH" role="2Oq$k0" />
              <node concept="37Cfm0" id="3KWRMGjwaiM" role="2OqNvi">
                <node concept="1aIX9F" id="3KWRMGjwaiN" role="37CeNk">
                  <node concept="26LbJo" id="3KWRMGjwaiP" role="1aIX9E">
                    <ref role="26LbJp" to="tpee:gfVsUgY" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwAo" role="lcghm">
            <property role="lacIc" value=".class" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hY5kPPS">
    <property role="3GE5qa" value="type" />
    <ref role="WuzLi" to="tpee:g7uibYu" resolve="ClassifierType" />
    <node concept="11bSqf" id="hY5kPPT" role="11c4hB">
      <node concept="3clFbS" id="hY5kPPU" role="2VODD2">
        <node concept="lc7rE" id="i0XtTAl" role="3cqZAp">
          <node concept="1bDJIP" id="6fUw26Uijy5" role="lcghm">
            <ref role="1rvKf6" node="6fUw26UhtdA" resolve="blClassifierRef" />
            <node concept="2OqwBi" id="6fUw26Uijyn" role="1ryhcI">
              <node concept="117lpO" id="6fUw26Uijy6" role="2Oq$k0" />
              <node concept="37Cfm0" id="6fUw26Uirep" role="2OqNvi">
                <node concept="1aIX9F" id="6fUw26Uireq" role="37CeNk">
                  <node concept="26LbJo" id="6fUw26Uiret" role="1aIX9E">
                    <ref role="26LbJp" to="tpee:g7uigIF" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="hY5kUE$" role="3cqZAp">
          <node concept="3clFbS" id="hY5kUE_" role="3clFbx">
            <node concept="lc7rE" id="i0uAwpm" role="3cqZAp">
              <node concept="la8eA" id="i0uAwpo" role="lcghm">
                <property role="lacIc" value="&lt;" />
              </node>
              <node concept="l9S2W" id="i0uAwpp" role="lcghm">
                <property role="XA4eZ" value="true" />
                <property role="lbP0B" value=", " />
                <node concept="2OqwBi" id="hZms2Nz" role="lbANJ">
                  <node concept="117lpO" id="hZms2DL" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="hZms3b4" role="2OqNvi">
                    <ref role="3TtcxE" to="tpee:g91_B6F" />
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="i0uAwpq" role="lcghm">
                <property role="lacIc" value="&gt;" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="hY5kWI$" role="3clFbw">
            <node concept="2OqwBi" id="hY5kVMr" role="2Oq$k0">
              <node concept="117lpO" id="hY5kVw_" role="2Oq$k0" />
              <node concept="3Tsc0h" id="hY5kWn7" role="2OqNvi">
                <ref role="3TtcxE" to="tpee:g91_B6F" />
              </node>
            </node>
            <node concept="3GX2aA" id="hY5kX3R" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hY5leQc">
    <property role="3GE5qa" value="comments" />
    <ref role="WuzLi" to="tpee:h8u8gbX" resolve="CommentedStatementsBlock" />
    <node concept="11bSqf" id="hY5leQd" role="11c4hB">
      <node concept="3clFbS" id="hY5leQe" role="2VODD2">
        <node concept="lc7rE" id="i0uAwp3" role="3cqZAp">
          <node concept="l8MVK" id="i0uAwp6" role="lcghm" />
          <node concept="la8eA" id="i0uFwZl" role="lcghm">
            <property role="ldcpH" value="true" />
            <property role="lacIc" value="/*" />
          </node>
        </node>
        <node concept="3izx1p" id="hZKaTsn" role="3cqZAp">
          <node concept="3clFbS" id="hZKaTso" role="3izTki">
            <node concept="lc7rE" id="i0uAwvb" role="3cqZAp">
              <node concept="l9S2W" id="i0uAwvd" role="lcghm">
                <property role="XA4eZ" value="false" />
                <node concept="2OqwBi" id="hZms71E" role="lbANJ">
                  <node concept="117lpO" id="hZms6VL" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="hZms7mu" role="2OqNvi">
                    <ref role="3TtcxE" to="tpee:h8u8lv$" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="i0uFqoD" role="3cqZAp">
          <node concept="l8MVK" id="i0$i7Bc" role="lcghm" />
          <node concept="la8eA" id="i0uFrT7" role="lcghm">
            <property role="ldcpH" value="true" />
            <property role="lacIc" value="*/" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hY5m6BQ">
    <property role="3GE5qa" value="ext.conceptFunction" />
    <ref role="WuzLi" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
    <node concept="11bSqf" id="hY5m6BR" role="11c4hB">
      <node concept="3clFbS" id="hY5m6BS" role="2VODD2">
        <node concept="lc7rE" id="i0uAwxF" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwxH" role="lcghm">
            <node concept="2OqwBi" id="2wdLO7KhTmN" role="lb14g">
              <node concept="3TrcHB" id="2wdLO7KhTmO" role="2OqNvi">
                <ref role="3TsBF5" to="tpce:4qF2Hm2r7ja" resolve="conceptAlias" />
              </node>
              <node concept="2OqwBi" id="2wdLO7KhTmP" role="2Oq$k0">
                <node concept="3NT_Vc" id="2wdLO7KhTmQ" role="2OqNvi" />
                <node concept="117lpO" id="2wdLO7KhTmR" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hY5mgU0">
    <property role="3GE5qa" value="" />
    <ref role="WuzLi" to="tpee:gEShNN5" resolve="GenericNewExpression" />
    <node concept="11bSqf" id="hY5mgU1" role="11c4hB">
      <node concept="3clFbS" id="hY5mgU2" role="2VODD2">
        <node concept="lc7rE" id="i0uAwpO" role="3cqZAp">
          <node concept="la8eA" id="i0uAwpQ" role="lcghm">
            <property role="lacIc" value="new " />
          </node>
        </node>
        <node concept="3clFbJ" id="hYfKWm3" role="3cqZAp">
          <node concept="3clFbS" id="hYfKWm4" role="3clFbx">
            <node concept="1ZvZ2y" id="hYfKZsS" role="3cqZAp">
              <node concept="Xl_RD" id="1OZiJnbgb0S" role="v0bCk">
                <property role="Xl_RC" value="incomplete new expression" />
              </node>
            </node>
            <node concept="lc7rE" id="i0uAwDC" role="3cqZAp">
              <node concept="la8eA" id="i0uAwDE" role="lcghm">
                <property role="lacIc" value="???" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="hYfKY8l" role="3clFbw">
            <node concept="2OqwBi" id="hYfKXgi" role="2Oq$k0">
              <node concept="117lpO" id="hYfKWKf" role="2Oq$k0" />
              <node concept="3TrEf2" id="hYfKXOy" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:gEShVi6" />
              </node>
            </node>
            <node concept="3w_OXm" id="hYfKYu7" role="2OqNvi" />
          </node>
          <node concept="9aQIb" id="hYfL310" role="9aQIa">
            <node concept="3clFbS" id="hYfL311" role="9aQI4">
              <node concept="lc7rE" id="i0uAwxY" role="3cqZAp">
                <node concept="l9hG8" id="i0uAwy0" role="lcghm">
                  <node concept="2OqwBi" id="hYIrG83" role="lb14g">
                    <node concept="117lpO" id="hYfL4jQ" role="2Oq$k0" />
                    <node concept="3TrEf2" id="hYIrGye" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:gEShVi6" />
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
  <node concept="WtQ9Q" id="hYfL6kx">
    <property role="3GE5qa" value="expressions" />
    <ref role="WuzLi" to="tpee:fJeOSZf" resolve="GreaterThanExpression" />
    <node concept="11bSqf" id="hYfL6ky" role="11c4hB">
      <node concept="3clFbS" id="hYfL6kz" role="2VODD2">
        <node concept="lc7rE" id="i0uAwHB" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwHD" role="lcghm">
            <node concept="2OqwBi" id="hYfLaFc" role="lb14g">
              <node concept="117lpO" id="hYfLas2" role="2Oq$k0" />
              <node concept="3TrEf2" id="hYfLaWP" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4s" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwHE" role="lcghm">
            <property role="lacIc" value=" &gt; " />
          </node>
          <node concept="l9hG8" id="i0uAwHF" role="lcghm">
            <node concept="2OqwBi" id="hZihqoi" role="lb14g">
              <node concept="117lpO" id="hZihqia" role="2Oq$k0" />
              <node concept="3TrEf2" id="hZihqU2" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4r" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYfLgSW">
    <property role="3GE5qa" value="expressions" />
    <ref role="WuzLi" to="tpee:gMd3UKG" resolve="GreaterThanOrEqualsExpression" />
    <node concept="11bSqf" id="hYfLgSX" role="11c4hB">
      <node concept="3clFbS" id="hYfLgSY" role="2VODD2">
        <node concept="lc7rE" id="i0uAw$8" role="3cqZAp">
          <node concept="l9hG8" id="i0uAw$a" role="lcghm">
            <node concept="2OqwBi" id="hYfLlbW" role="lb14g">
              <node concept="117lpO" id="hYfLl2T" role="2Oq$k0" />
              <node concept="3TrEf2" id="hYfLlJq" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4s" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAw$b" role="lcghm">
            <property role="lacIc" value=" &gt;= " />
          </node>
          <node concept="l9hG8" id="i0uAw$r" role="lcghm">
            <node concept="2OqwBi" id="hZihusV" role="lb14g">
              <node concept="117lpO" id="hZihuj9" role="2Oq$k0" />
              <node concept="3TrEf2" id="hZihuV1" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4r" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYfLqMS">
    <ref role="WuzLi" to="tpee:hanou1N" resolve="HexIntegerLiteral" />
    <node concept="11bSqf" id="hYfLqMT" role="11c4hB">
      <node concept="3clFbS" id="hYfLqMU" role="2VODD2">
        <node concept="lc7rE" id="i0uAwlH" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwlJ" role="lcghm">
            <node concept="3cpWs3" id="hYfLvLh" role="lb14g">
              <node concept="2OqwBi" id="hYfLwBy" role="3uHU7w">
                <node concept="117lpO" id="hYfLwu0" role="2Oq$k0" />
                <node concept="3TrcHB" id="hYfLwWA" role="2OqNvi">
                  <ref role="3TsBF5" to="tpee:hanoCGW" resolve="value" />
                </node>
              </node>
              <node concept="Xl_RD" id="hYfLtvO" role="3uHU7B">
                <property role="Xl_RC" value="0x" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYfL$hw">
    <property role="3GE5qa" value="control_flow.if_switch" />
    <ref role="WuzLi" to="tpee:fzclF8n" resolve="IfStatement" />
    <node concept="11bSqf" id="hYfL$hx" role="11c4hB">
      <node concept="3clFbS" id="hYfL$hy" role="2VODD2">
        <node concept="lc7rE" id="i0$fboU" role="3cqZAp">
          <node concept="l8MVK" id="i0$fbP1" role="lcghm" />
        </node>
        <node concept="1bpajm" id="i0uGSuA" role="3cqZAp" />
        <node concept="lc7rE" id="i0uAwoT" role="3cqZAp">
          <node concept="la8eA" id="i0uAwoW" role="lcghm">
            <property role="lacIc" value="if (" />
          </node>
          <node concept="l9hG8" id="i0uAwoX" role="lcghm">
            <node concept="2OqwBi" id="hZihzQU" role="lb14g">
              <node concept="117lpO" id="hZihzLh" role="2Oq$k0" />
              <node concept="3TrEf2" id="hZih$pp" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fzclF8o" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwoY" role="lcghm">
            <property role="lacIc" value=") {" />
          </node>
        </node>
        <node concept="3izx1p" id="hZKbp0_" role="3cqZAp">
          <node concept="3clFbS" id="hZKbp0A" role="3izTki">
            <node concept="lc7rE" id="i0uAwDT" role="3cqZAp">
              <node concept="l9hG8" id="i0uAwDV" role="lcghm">
                <node concept="2OqwBi" id="hYfLOm8" role="lb14g">
                  <node concept="117lpO" id="hYfLOcm" role="2Oq$k0" />
                  <node concept="3TrEf2" id="hYfLPNt" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:fzclF8p" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="i0$fJzt" role="3cqZAp">
          <node concept="l8MVK" id="i0$fJDm" role="lcghm" />
          <node concept="la8eA" id="i0$gauA" role="lcghm">
            <property role="ldcpH" value="true" />
            <property role="lacIc" value="}" />
          </node>
          <node concept="l9S2W" id="i0$fJDn" role="lcghm">
            <property role="XA4eZ" value="false" />
            <node concept="2OqwBi" id="i0$fJDo" role="lbANJ">
              <node concept="117lpO" id="i0$fJDp" role="2Oq$k0" />
              <node concept="3Tsc0h" id="i0$fJDq" role="2OqNvi">
                <ref role="3TtcxE" to="tpee:hzeNLa7" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="i0$ge39" role="3cqZAp">
          <node concept="3clFbS" id="i0$ge3a" role="3clFbx">
            <node concept="lc7rE" id="i0$geuz" role="3cqZAp">
              <node concept="la8eA" id="i0$ge$V" role="lcghm">
                <property role="lacIc" value=" else" />
              </node>
              <node concept="l9hG8" id="i0$ge$W" role="lcghm">
                <node concept="2OqwBi" id="i0$ge$X" role="lb14g">
                  <node concept="117lpO" id="i0$ge$Y" role="2Oq$k0" />
                  <node concept="3TrEf2" id="i0$ge$Z" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:fK9aQHQ" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="i0$gtKR" role="3clFbw">
            <node concept="2OqwBi" id="i0$gftU" role="2Oq$k0">
              <node concept="117lpO" id="i0$gfo2" role="2Oq$k0" />
              <node concept="3TrEf2" id="i0$gg5i" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fK9aQHQ" />
              </node>
            </node>
            <node concept="3x8VRR" id="i0$gugc" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYfMBIJ">
    <property role="3GE5qa" value="classifiers.members" />
    <ref role="WuzLi" to="tpee:hzKIgBR" resolve="InstanceInitializer" />
    <node concept="11bSqf" id="hYfMBIK" role="11c4hB">
      <node concept="3clFbS" id="hYfMBIL" role="2VODD2">
        <node concept="lc7rE" id="i0uAwFj" role="3cqZAp">
          <node concept="la8eA" id="i0$gwD3" role="lcghm">
            <property role="ldcpH" value="true" />
            <property role="lacIc" value="{" />
          </node>
        </node>
        <node concept="3izx1p" id="hZKbt0g" role="3cqZAp">
          <node concept="3clFbS" id="hZKbt0h" role="3izTki">
            <node concept="lc7rE" id="i0uAwBJ" role="3cqZAp">
              <node concept="l9hG8" id="i0uAwBL" role="lcghm">
                <node concept="2OqwBi" id="hYfMJly" role="lb14g">
                  <node concept="117lpO" id="hYfMJdH" role="2Oq$k0" />
                  <node concept="3TrEf2" id="hYfMJD8" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:hzKIlCV" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="i0uGXmu" role="3cqZAp">
          <node concept="l8MVK" id="i0$gA2j" role="lcghm" />
          <node concept="la8eA" id="i0uGXRH" role="lcghm">
            <property role="ldcpH" value="true" />
            <property role="lacIc" value="}" />
          </node>
          <node concept="l8MVK" id="i0$gAGO" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYfMQ8A">
    <property role="3GE5qa" value="classifiers.refs" />
    <ref role="WuzLi" to="tpee:hwliAcM" resolve="InstanceMethodCallOperation" />
    <node concept="11bSqf" id="hYfMQ8B" role="11c4hB">
      <node concept="3clFbS" id="hYfMQ8C" role="2VODD2">
        <node concept="lc7rE" id="i0XutFa" role="3cqZAp">
          <node concept="1bDJIP" id="i0Xuukt" role="lcghm">
            <ref role="1rvKf6" node="hYHLMDp" resolve="methodCall" />
            <node concept="117lpO" id="i0Xuuku" role="1ryhcI" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYfMWjc">
    <property role="3GE5qa" value="classifiers.members" />
    <ref role="WuzLi" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
    <node concept="11bSqf" id="hYfMWjd" role="11c4hB">
      <node concept="3clFbS" id="hYfMWje" role="2VODD2">
        <node concept="3clFbJ" id="3veQ_zQoFFh" role="3cqZAp">
          <node concept="3clFbS" id="3veQ_zQoFFi" role="3clFbx">
            <node concept="lc7rE" id="3veQ_zQoSwP" role="3cqZAp">
              <node concept="l9hG8" id="3veQ_zQoSwR" role="lcghm">
                <node concept="2OqwBi" id="3veQ_zQoSwU" role="lb14g">
                  <node concept="117lpO" id="3veQ_zQoSwT" role="2Oq$k0" />
                  <node concept="3CFZ6_" id="2EuZkDRzIqN" role="2OqNvi">
                    <node concept="3CFYIy" id="2EuZkDRzIqO" role="3CFYIz">
                      <ref role="3CFYIx" to="m373:4CW56HZFIGO" resolve="MethodDocComment" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3veQ_zQoRQt" role="3clFbw">
            <node concept="2OqwBi" id="3veQ_zQoFFm" role="2Oq$k0">
              <node concept="117lpO" id="3veQ_zQoFFl" role="2Oq$k0" />
              <node concept="3CFZ6_" id="2EuZkDRzIjN" role="2OqNvi">
                <node concept="3CFYIy" id="2EuZkDRzIjO" role="3CFYIz">
                  <ref role="3CFYIx" to="m373:4CW56HZFIGO" resolve="MethodDocComment" />
                </node>
              </node>
            </node>
            <node concept="3x8VRR" id="3veQ_zQoRQx" role="2OqNvi" />
          </node>
        </node>
        <node concept="lc7rE" id="i0$m8Sn" role="3cqZAp">
          <node concept="1bDJIP" id="i0XuwHP" role="lcghm">
            <ref role="1rvKf6" node="hXZOC0K" resolve="annotations" />
            <node concept="117lpO" id="i0XuwHQ" role="1ryhcI" />
          </node>
          <node concept="1bDJIP" id="i0Xuyq2" role="lcghm">
            <ref role="1rvKf6" node="hXZP8nY" resolve="visibilityWithIndent" />
            <node concept="2OqwBi" id="i0Xuyq3" role="1ryhcI">
              <node concept="117lpO" id="i0Xuyq4" role="2Oq$k0" />
              <node concept="3TrEf2" id="i0Xuyq5" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:h9B3oxE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="i37Qrqt" role="3cqZAp">
          <node concept="3clFbS" id="i37Qrqu" role="3clFbx">
            <node concept="lc7rE" id="i37Qur1" role="3cqZAp">
              <node concept="la8eA" id="i37Qur2" role="lcghm">
                <property role="lacIc" value="final " />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="i37Qs48" role="3clFbw">
            <node concept="117lpO" id="i37QrXG" role="2Oq$k0" />
            <node concept="3TrcHB" id="i37QtuV" role="2OqNvi">
              <ref role="3TsBF5" to="tpee:hcDiZZi" resolve="isFinal" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="hYfNaNS" role="3cqZAp">
          <node concept="3clFbS" id="hYfNaNT" role="3clFbx">
            <node concept="lc7rE" id="i0uAwmq" role="3cqZAp">
              <node concept="la8eA" id="i0uAwms" role="lcghm">
                <property role="lacIc" value="abstract " />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="5pEYSQXOiGd" role="3clFbw">
            <node concept="3fqX7Q" id="5pEYSQXOiTi" role="3uHU7w">
              <node concept="2OqwBi" id="5pEYSQXOiTq" role="3fr31v">
                <node concept="2OqwBi" id="5pEYSQXOiTl" role="2Oq$k0">
                  <node concept="117lpO" id="5pEYSQXOiTk" role="2Oq$k0" />
                  <node concept="1mfA1w" id="5pEYSQXOiTp" role="2OqNvi" />
                </node>
                <node concept="1mIQ4w" id="5pEYSQXOiTu" role="2OqNvi">
                  <node concept="chp4Y" id="5pEYSQXOiTw" role="cj9EA">
                    <ref role="cht4Q" to="tpee:g7HP654" resolve="Interface" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="hYfNbo_" role="3uHU7B">
              <node concept="117lpO" id="hYfNbfi" role="2Oq$k0" />
              <node concept="3TrcHB" id="hYfNcrM" role="2OqNvi">
                <ref role="3TsBF5" to="tpee:h9EzhlX" resolve="isAbstract" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3HnrdCzojNq" role="3cqZAp">
          <node concept="3clFbS" id="3HnrdCzojNr" role="3clFbx">
            <node concept="lc7rE" id="3HnrdCzokxV" role="3cqZAp">
              <node concept="la8eA" id="3HnrdCzokxX" role="lcghm">
                <property role="lacIc" value="synchronized " />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3HnrdCzokxN" role="3clFbw">
            <node concept="117lpO" id="3HnrdCzokxM" role="2Oq$k0" />
            <node concept="3TrcHB" id="3HnrdCzokxR" role="2OqNvi">
              <ref role="3TsBF5" to="tpee:3HnrdCzoiLU" resolve="isSynchronized" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7fN3zRU$Y_u" role="3cqZAp">
          <node concept="3clFbS" id="7fN3zRU$Y_v" role="3clFbx">
            <node concept="lc7rE" id="7fN3zRU$Y_w" role="3cqZAp">
              <node concept="la8eA" id="7fN3zRU$Y_x" role="lcghm">
                <property role="lacIc" value="native " />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7fN3zRU$Y_y" role="3clFbw">
            <node concept="117lpO" id="7fN3zRU$Y_z" role="2Oq$k0" />
            <node concept="3TrcHB" id="7fN3zRU_0Q1" role="2OqNvi">
              <ref role="3TsBF5" to="tpee:7fN3zRTn0HN" resolve="isNative" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="1$0xMSdBzNH" role="3cqZAp">
          <node concept="1bDJIP" id="1$0xMSdBzNJ" role="lcghm">
            <ref role="1rvKf6" node="hY5gGyc" resolve="typeDeclarations" />
            <node concept="117lpO" id="1$0xMSdBzNK" role="1ryhcI" />
          </node>
        </node>
        <node concept="3clFbJ" id="1$0xMSdBzNM" role="3cqZAp">
          <node concept="3clFbS" id="1$0xMSdBzNN" role="3clFbx">
            <node concept="lc7rE" id="1$0xMSdBzO2" role="3cqZAp">
              <node concept="la8eA" id="1$0xMSdBzO4" role="lcghm">
                <property role="lacIc" value=" " />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1$0xMSdBzNW" role="3clFbw">
            <node concept="2OqwBi" id="1$0xMSdBzNR" role="2Oq$k0">
              <node concept="117lpO" id="1$0xMSdBzNQ" role="2Oq$k0" />
              <node concept="3Tsc0h" id="1$0xMSdBzNV" role="2OqNvi">
                <ref role="3TtcxE" to="tpee:g96eVAe" />
              </node>
            </node>
            <node concept="3GX2aA" id="1$0xMSdBzO1" role="2OqNvi" />
          </node>
        </node>
        <node concept="lc7rE" id="i0uAwro" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwrr" role="lcghm">
            <node concept="2OqwBi" id="hYfNkDQ" role="lb14g">
              <node concept="117lpO" id="hYfNkxL" role="2Oq$k0" />
              <node concept="3TrEf2" id="hYfNl1P" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fzclF7X" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwrs" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
          <node concept="l9hG8" id="i0uAwrt" role="lcghm">
            <node concept="2OqwBi" id="hZihEec" role="lb14g">
              <node concept="117lpO" id="hZihE3s" role="2Oq$k0" />
              <node concept="3TrcHB" id="hZihEyx" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwru" role="lcghm">
            <property role="lacIc" value="(" />
          </node>
          <node concept="l9S2W" id="i0uAwrv" role="lcghm">
            <property role="XA4eZ" value="true" />
            <property role="lbP0B" value=", " />
            <node concept="2OqwBi" id="hZmt4Za" role="lbANJ">
              <node concept="117lpO" id="hZmt4T2" role="2Oq$k0" />
              <node concept="3Tsc0h" id="hZmt65N" role="2OqNvi">
                <ref role="3TtcxE" to="tpee:fzclF7Y" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwrw" role="lcghm">
            <property role="lacIc" value=")" />
          </node>
        </node>
        <node concept="3clFbJ" id="hYfNHMo" role="3cqZAp">
          <node concept="3clFbS" id="hYfNHMp" role="3clFbx">
            <node concept="lc7rE" id="i0uAwDf" role="3cqZAp">
              <node concept="la8eA" id="i0uAwDh" role="lcghm">
                <property role="lacIc" value=" throws " />
              </node>
              <node concept="l9S2W" id="i0uAwDi" role="lcghm">
                <property role="XA4eZ" value="true" />
                <property role="lbP0B" value=", " />
                <node concept="2OqwBi" id="hZmt93_" role="lbANJ">
                  <node concept="117lpO" id="hZmt8Xu" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="hZmt9oT" role="2OqNvi">
                    <ref role="3TtcxE" to="tpee:gWSfm_9" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="hYfNJS$" role="3clFbw">
            <node concept="2OqwBi" id="hYfNJb5" role="2Oq$k0">
              <node concept="117lpO" id="hYfNJ22" role="2Oq$k0" />
              <node concept="3Tsc0h" id="hYfNJGm" role="2OqNvi">
                <ref role="3TtcxE" to="tpee:gWSfm_9" />
              </node>
            </node>
            <node concept="3GX2aA" id="hYfNKHn" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbJ" id="hYfOd0e" role="3cqZAp">
          <node concept="3clFbS" id="hYfOd0f" role="3clFbx">
            <node concept="lc7rE" id="i0uAwtE" role="3cqZAp">
              <node concept="la8eA" id="i0uAwtG" role="lcghm">
                <property role="lacIc" value=";" />
              </node>
              <node concept="l8MVK" id="1hodSy99NeZ" role="lcghm" />
            </node>
          </node>
          <node concept="22lmx$" id="hYfOfsw" role="3clFbw">
            <node concept="2OqwBi" id="hYfOdR5" role="3uHU7B">
              <node concept="2OqwBi" id="hYfOdqr" role="2Oq$k0">
                <node concept="117lpO" id="hYfOdin" role="2Oq$k0" />
                <node concept="1mfA1w" id="hYfOdF6" role="2OqNvi" />
              </node>
              <node concept="1mIQ4w" id="hYfOehw" role="2OqNvi">
                <node concept="chp4Y" id="hYfOeWZ" role="cj9EA">
                  <ref role="cht4Q" to="tpee:g7HP654" resolve="Interface" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="hYfOgmr" role="3uHU7w">
              <node concept="117lpO" id="hYfOgad" role="2Oq$k0" />
              <node concept="2qgKlT" id="7fnnP3fPplr" role="2OqNvi">
                <ref role="37wK5l" to="tpek:hWjv7RO" resolve="isAbstract" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="hYfOjs4" role="9aQIa">
            <node concept="3clFbS" id="hYfOjs5" role="9aQI4">
              <node concept="lc7rE" id="i0uAwEK" role="3cqZAp">
                <node concept="la8eA" id="i0uAwEM" role="lcghm">
                  <property role="lacIc" value=" {" />
                </node>
              </node>
              <node concept="3izx1p" id="hZKbvBz" role="3cqZAp">
                <node concept="3clFbS" id="hZKbvB$" role="3izTki">
                  <node concept="3clFbJ" id="hYfOmRV" role="3cqZAp">
                    <node concept="3clFbS" id="hYfOmRW" role="3clFbx">
                      <node concept="lc7rE" id="i0uAwrU" role="3cqZAp">
                        <node concept="l9hG8" id="i0uAwrW" role="lcghm">
                          <node concept="2OqwBi" id="hYfOr60" role="lb14g">
                            <node concept="117lpO" id="hYfOqZC" role="2Oq$k0" />
                            <node concept="3TrEf2" id="hYfOrue" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpee:fzclF7Z" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="hYfOp97" role="3clFbw">
                      <node concept="2OqwBi" id="hYfOniC" role="2Oq$k0">
                        <node concept="117lpO" id="hYfOnc1" role="2Oq$k0" />
                        <node concept="3TrEf2" id="hYfOoD7" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpee:fzclF7Z" />
                        </node>
                      </node>
                      <node concept="3x8VRR" id="hYfOpwB" role="2OqNvi" />
                    </node>
                    <node concept="9aQIb" id="hYfOsno" role="9aQIa">
                      <node concept="3clFbS" id="hYfOsnp" role="9aQI4">
                        <node concept="lc7rE" id="i0uAwoz" role="3cqZAp">
                          <node concept="l8MVK" id="i0uAwoP" role="lcghm" />
                          <node concept="la8eA" id="i0uH8aj" role="lcghm">
                            <property role="ldcpH" value="true" />
                            <property role="lacIc" value="throw new RuntimeException(\&quot;NOT IMPLEMENTED\&quot;);" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="lc7rE" id="i0uH4ox" role="3cqZAp">
                <node concept="l8MVK" id="i0$pQmG" role="lcghm" />
                <node concept="la8eA" id="i0uH4T2" role="lcghm">
                  <property role="ldcpH" value="true" />
                  <property role="lacIc" value="}" />
                </node>
                <node concept="l8MVK" id="1hodSy99OCf" role="lcghm" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYfOONq">
    <ref role="WuzLi" to="tpee:fIZW3s0" resolve="InstanceOfExpression" />
    <node concept="11bSqf" id="hYfOONr" role="11c4hB">
      <node concept="3clFbS" id="hYfOONs" role="2VODD2">
        <node concept="lc7rE" id="i0uAwBM" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwBO" role="lcghm">
            <node concept="2OqwBi" id="hYfOS7U" role="lb14g">
              <node concept="117lpO" id="hYfORWq" role="2Oq$k0" />
              <node concept="3TrEf2" id="hYfOSl9" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fIZW68o" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwBP" role="lcghm">
            <property role="lacIc" value=" instanceof " />
          </node>
          <node concept="l9hG8" id="i0uAwBQ" role="lcghm">
            <node concept="2OqwBi" id="hZihLOt" role="lb14g">
              <node concept="117lpO" id="hZihLI_" role="2Oq$k0" />
              <node concept="3TrEf2" id="hZihMdF" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fIZW68p" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYfOZ$h">
    <property role="3GE5qa" value="primitive" />
    <ref role="WuzLi" to="tpee:fzcmrck" resolve="IntegerConstant" />
    <node concept="11bSqf" id="hYfOZ$i" role="11c4hB">
      <node concept="3clFbS" id="hYfOZ$j" role="2VODD2">
        <node concept="lc7rE" id="i0uAwlv" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwlx" role="lcghm">
            <node concept="3cpWs3" id="hYfP31$" role="lb14g">
              <node concept="2OqwBi" id="hYfP3Cd" role="3uHU7w">
                <node concept="117lpO" id="hYfP3y_" role="2Oq$k0" />
                <node concept="3TrcHB" id="hYfP3Wy" role="2OqNvi">
                  <ref role="3TsBF5" to="tpee:fzcmrcl" resolve="value" />
                </node>
              </node>
              <node concept="Xl_RD" id="hYfP2gu" role="3uHU7B">
                <property role="Xl_RC" value="" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYfP5Eq">
    <property role="3GE5qa" value="primitive" />
    <ref role="WuzLi" to="tpee:f_0OyhT" resolve="IntegerType" />
    <node concept="11bSqf" id="hYfP5Er" role="11c4hB">
      <node concept="3clFbS" id="hYfP5Es" role="2VODD2">
        <node concept="lc7rE" id="i0uAwow" role="3cqZAp">
          <node concept="la8eA" id="i0uAwoy" role="lcghm">
            <property role="lacIc" value="int" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYfP8Dc">
    <property role="3GE5qa" value="classifiers.classifiers" />
    <ref role="WuzLi" to="tpee:g7HP654" resolve="Interface" />
    <node concept="11bSqf" id="hYfP8Dd" role="11c4hB">
      <node concept="3clFbS" id="hYfP8De" role="2VODD2">
        <node concept="3clFbJ" id="3pXDj_D6es4" role="3cqZAp">
          <node concept="3clFbS" id="3pXDj_D6es5" role="3clFbx">
            <node concept="lc7rE" id="3pXDj_D6es6" role="3cqZAp">
              <node concept="l9hG8" id="3pXDj_D6es7" role="lcghm">
                <node concept="2OqwBi" id="3pXDj_D6es8" role="lb14g">
                  <node concept="117lpO" id="3pXDj_D6es9" role="2Oq$k0" />
                  <node concept="3CFZ6_" id="3pXDj_D6esa" role="2OqNvi">
                    <node concept="3CFYIy" id="3pXDj_D6esb" role="3CFYIz">
                      <ref role="3CFYIx" to="m373:1MQnpZAqBpc" resolve="ClassifierDocComment" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3pXDj_D6esc" role="3clFbw">
            <node concept="2OqwBi" id="3pXDj_D6esd" role="2Oq$k0">
              <node concept="117lpO" id="3pXDj_D6ese" role="2Oq$k0" />
              <node concept="3CFZ6_" id="3pXDj_D6esf" role="2OqNvi">
                <node concept="3CFYIy" id="3pXDj_D6esg" role="3CFYIz">
                  <ref role="3CFYIx" to="m373:1MQnpZAqBpc" resolve="ClassifierDocComment" />
                </node>
              </node>
            </node>
            <node concept="3x8VRR" id="3pXDj_D6esh" role="2OqNvi" />
          </node>
        </node>
        <node concept="lc7rE" id="i0XuFbH" role="3cqZAp">
          <node concept="1bDJIP" id="i0XuFK7" role="lcghm">
            <ref role="1rvKf6" node="hXZO4aM" resolve="fileHeader" />
            <node concept="117lpO" id="i0XuFK8" role="1ryhcI" />
          </node>
          <node concept="1bDJIP" id="i0XuGY2" role="lcghm">
            <ref role="1rvKf6" node="hXZOC0K" resolve="annotations" />
            <node concept="117lpO" id="i0XuGY3" role="1ryhcI" />
          </node>
          <node concept="1bDJIP" id="i0XuIzE" role="lcghm">
            <ref role="1rvKf6" node="hXZP8nY" resolve="visibilityWithIndent" />
            <node concept="2OqwBi" id="i0XuIzF" role="1ryhcI">
              <node concept="117lpO" id="i0XuIzG" role="2Oq$k0" />
              <node concept="3TrEf2" id="i0XuIzH" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:h9B3oxE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="hYjucxE" role="3cqZAp">
          <node concept="3clFbS" id="hYjucxF" role="3clFbx">
            <node concept="lc7rE" id="i0uAwJz" role="3cqZAp">
              <node concept="la8eA" id="i0uAwJ_" role="lcghm">
                <property role="lacIc" value="static " />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="hYjukOl" role="3clFbw">
            <node concept="2OqwBi" id="hYjukOm" role="3fr31v">
              <node concept="2OqwBi" id="hYjukOn" role="2Oq$k0">
                <node concept="2OqwBi" id="hYjukOo" role="2Oq$k0">
                  <node concept="117lpO" id="hYjukOp" role="2Oq$k0" />
                  <node concept="I4A8Y" id="hYjukOq" role="2OqNvi" />
                </node>
                <node concept="2RRcyG" id="hYjukOr" role="2OqNvi">
                  <ref role="2RRcyH" to="tpee:g7HP654" resolve="Interface" />
                </node>
              </node>
              <node concept="3JPx81" id="hYjukOs" role="2OqNvi">
                <node concept="117lpO" id="hYjukOt" role="25WWJ7" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="i0uAwHJ" role="3cqZAp">
          <node concept="la8eA" id="i0uHdn_" role="lcghm">
            <property role="ldcpH" value="false" />
            <property role="lacIc" value="interface " />
          </node>
          <node concept="l9hG8" id="i0uAwHL" role="lcghm">
            <node concept="2YIFZM" id="umZuBMPeBM" role="lb14g">
              <ref role="37wK5l" to="msyo:~JavaNameUtil.shortName(java.lang.String):java.lang.String" resolve="shortName" />
              <ref role="1Pybhc" to="msyo:~JavaNameUtil" resolve="JavaNameUtil" />
              <node concept="2OqwBi" id="umZuBMPeBN" role="37wK5m">
                <node concept="117lpO" id="umZuBMPeBO" role="2Oq$k0" />
                <node concept="3TrcHB" id="umZuBMPeBP" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1bDJIP" id="i0XuLdE" role="lcghm">
            <ref role="1rvKf6" node="hY5gGyc" resolve="typeDeclarations" />
            <node concept="117lpO" id="i0XuLdF" role="1ryhcI" />
          </node>
        </node>
        <node concept="3clFbJ" id="hYju$Dp" role="3cqZAp">
          <node concept="3clFbS" id="hYju$Dq" role="3clFbx">
            <node concept="lc7rE" id="i0uAwGq" role="3cqZAp">
              <node concept="la8eA" id="i0uAwGs" role="lcghm">
                <property role="lacIc" value=" extends " />
              </node>
              <node concept="l9S2W" id="i0uAwGH" role="lcghm">
                <property role="XA4eZ" value="true" />
                <property role="lbP0B" value=", " />
                <node concept="2OqwBi" id="hZmtheT" role="lbANJ">
                  <node concept="117lpO" id="hZmth91" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="hZmthO4" role="2OqNvi">
                    <ref role="3TtcxE" to="tpee:g7HQHFn" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="hYju_Qe" role="3clFbw">
            <node concept="2OqwBi" id="hYju_l$" role="2Oq$k0">
              <node concept="117lpO" id="hYju_c2" role="2Oq$k0" />
              <node concept="3Tsc0h" id="hYju_EF" role="2OqNvi">
                <ref role="3TtcxE" to="tpee:g7HQHFn" />
              </node>
            </node>
            <node concept="3GX2aA" id="hYjuAmA" role="2OqNvi" />
          </node>
        </node>
        <node concept="lc7rE" id="4PrERHsK$wR" role="3cqZAp">
          <node concept="la8eA" id="4PrERHsK$wS" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
          <node concept="1bDJIP" id="4PrERHsK$wT" role="lcghm">
            <ref role="1rvKf6" node="4PrERHsEdKS" resolve="membersWithBrackets" />
            <node concept="117lpO" id="4PrERHsK$wU" role="1ryhcI" />
            <node concept="3clFbT" id="4PrERHts0Zj" role="1ryhcI">
              <property role="3clFbU" value="true" />
            </node>
          </node>
          <node concept="l8MVK" id="4PrERHsK$wV" role="lcghm" />
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="21YnEOmbk4I" role="33IsuW">
      <node concept="3clFbS" id="21YnEOmbk4J" role="2VODD2">
        <node concept="3clFbF" id="21YnEOmbk4K" role="3cqZAp">
          <node concept="Xl_RD" id="21YnEOmbk4L" role="3clFbG">
            <property role="Xl_RC" value="java" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYjvtD$">
    <property role="3GE5qa" value="expressions" />
    <ref role="WuzLi" to="tpee:fJeOVwE" resolve="LessThanExpression" />
    <node concept="11bSqf" id="hYjvtD_" role="11c4hB">
      <node concept="3clFbS" id="hYjvtDA" role="2VODD2">
        <node concept="lc7rE" id="i0uAwuV" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwuX" role="lcghm">
            <node concept="2OqwBi" id="hYjvx8V" role="lb14g">
              <node concept="117lpO" id="hYjvx1h" role="2Oq$k0" />
              <node concept="3TrEf2" id="hYjvxHR" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4s" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwuY" role="lcghm">
            <property role="lacIc" value=" &lt; " />
          </node>
          <node concept="l9hG8" id="i0uAwuZ" role="lcghm">
            <node concept="2OqwBi" id="hZihOD1" role="lb14g">
              <node concept="117lpO" id="hZihOz9" role="2Oq$k0" />
              <node concept="3TrEf2" id="hZihP5E" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4r" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYjvAGI">
    <property role="3GE5qa" value="expressions" />
    <ref role="WuzLi" to="tpee:gMdkU$l" resolve="LessThanOrEqualsExpression" />
    <node concept="11bSqf" id="hYjvAGJ" role="11c4hB">
      <node concept="3clFbS" id="hYjvAGK" role="2VODD2">
        <node concept="lc7rE" id="i0uAwIu" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwIw" role="lcghm">
            <node concept="2OqwBi" id="hYjvDKv" role="lb14g">
              <node concept="117lpO" id="hYjvDDl" role="2Oq$k0" />
              <node concept="3TrEf2" id="hYjvDZ_" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4s" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwIx" role="lcghm">
            <property role="lacIc" value=" &lt;= " />
          </node>
          <node concept="l9hG8" id="i0uAwIL" role="lcghm">
            <node concept="2OqwBi" id="hZihSzX" role="lb14g">
              <node concept="117lpO" id="hZihRVB" role="2Oq$k0" />
              <node concept="3TrEf2" id="hZihSSi" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4r" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYjvYwN">
    <property role="3GE5qa" value="variables" />
    <ref role="WuzLi" to="tpee:fzcpWvK" resolve="LocalVariableDeclarationStatement" />
    <node concept="11bSqf" id="hYjvYwO" role="11c4hB">
      <node concept="3clFbS" id="hYjvYwP" role="2VODD2">
        <node concept="lc7rE" id="i0$mIdN" role="3cqZAp">
          <node concept="l8MVK" id="i0$mIuF" role="lcghm" />
        </node>
        <node concept="1bpajm" id="i0uHkU3" role="3cqZAp" />
        <node concept="lc7rE" id="i0uAwpX" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwq0" role="lcghm">
            <node concept="2OqwBi" id="hYjwgmy" role="lb14g">
              <node concept="117lpO" id="hYjwggp" role="2Oq$k0" />
              <node concept="3TrEf2" id="hYjwgVT" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fzcpWvL" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwq1" role="lcghm">
            <property role="lacIc" value=";" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYjwkVR">
    <property role="3GE5qa" value="primitive" />
    <ref role="WuzLi" to="tpee:fzcpWvN" resolve="LongType" />
    <node concept="11bSqf" id="hYjwkVS" role="11c4hB">
      <node concept="3clFbS" id="hYjwkVT" role="2VODD2">
        <node concept="lc7rE" id="i0uAwyL" role="3cqZAp">
          <node concept="la8eA" id="i0uAwyN" role="lcghm">
            <property role="lacIc" value="long" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYjwoOf">
    <property role="3GE5qa" value="generics" />
    <ref role="WuzLi" to="tpee:h3qUtkX" resolve="LowerBoundType" />
    <node concept="11bSqf" id="hYjwoOg" role="11c4hB">
      <node concept="3clFbS" id="hYjwoOh" role="2VODD2">
        <node concept="lc7rE" id="i0uAwD4" role="3cqZAp">
          <node concept="la8eA" id="i0uAwD6" role="lcghm">
            <property role="lacIc" value="? super " />
          </node>
          <node concept="l9hG8" id="i0uAwD7" role="lcghm">
            <node concept="2OqwBi" id="hZihXs7" role="lb14g">
              <node concept="117lpO" id="hZihWMm" role="2Oq$k0" />
              <node concept="3TrEf2" id="hZihXUG" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:h3qUv9r" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYjwF_j">
    <property role="3GE5qa" value="expressions" />
    <ref role="WuzLi" to="tpee:fzcpWvP" resolve="MinusExpression" />
    <node concept="11bSqf" id="hYjwF_k" role="11c4hB">
      <node concept="3clFbS" id="hYjwF_l" role="2VODD2">
        <node concept="lc7rE" id="i0uAwor" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwot" role="lcghm">
            <node concept="2OqwBi" id="hYjwI65" role="lb14g">
              <node concept="117lpO" id="hYjwHYH" role="2Oq$k0" />
              <node concept="3TrEf2" id="hYjwIpL" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4s" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwou" role="lcghm">
            <property role="lacIc" value=" - " />
          </node>
          <node concept="l9hG8" id="i0uAwov" role="lcghm">
            <node concept="2OqwBi" id="hZii62L" role="lb14g">
              <node concept="117lpO" id="hZii5Wp" role="2Oq$k0" />
              <node concept="3TrEf2" id="hZii6uU" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4r" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYjwOcW">
    <property role="3GE5qa" value="expressions" />
    <ref role="WuzLi" to="tpee:fT7qRmf" resolve="MulExpression" />
    <node concept="11bSqf" id="hYjwOcX" role="11c4hB">
      <node concept="3clFbS" id="hYjwOcY" role="2VODD2">
        <node concept="lc7rE" id="i0uAwn5" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwn7" role="lcghm">
            <node concept="2OqwBi" id="hYjwQYa" role="lb14g">
              <node concept="117lpO" id="hYjwQO6" role="2Oq$k0" />
              <node concept="3TrEf2" id="hYjwRpt" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4s" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwn8" role="lcghm">
            <property role="lacIc" value=" * " />
          </node>
          <node concept="l9hG8" id="i0uAwn9" role="lcghm">
            <node concept="2OqwBi" id="hZii9pw" role="lb14g">
              <node concept="117lpO" id="hZii9jC" role="2Oq$k0" />
              <node concept="3TrEf2" id="hZii9KL" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4r" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYjwWoB">
    <property role="3GE5qa" value="expressions" />
    <ref role="WuzLi" to="tpee:fBy3z0Z" resolve="NotEqualsExpression" />
    <node concept="11bSqf" id="hYjwWoC" role="11c4hB">
      <node concept="3clFbS" id="hYjwWoD" role="2VODD2">
        <node concept="lc7rE" id="i0uAwCx" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwCz" role="lcghm">
            <node concept="2OqwBi" id="hYjwZ79" role="lb14g">
              <node concept="117lpO" id="hYjwYQs" role="2Oq$k0" />
              <node concept="3TrEf2" id="hYjwZlV" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4s" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwC$" role="lcghm">
            <property role="lacIc" value=" != " />
          </node>
          <node concept="l9hG8" id="i0uAwC_" role="lcghm">
            <node concept="2OqwBi" id="hZiicy6" role="lb14g">
              <node concept="117lpO" id="hZiicsH" role="2Oq$k0" />
              <node concept="3TrEf2" id="hZiicUl" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4r" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYjx8ac">
    <property role="3GE5qa" value="expressions" />
    <ref role="WuzLi" to="tpee:fJfqX4d" resolve="NotExpression" />
    <node concept="11bSqf" id="hYjx8ad" role="11c4hB">
      <node concept="3clFbS" id="hYjx8ae" role="2VODD2">
        <node concept="lc7rE" id="i0uAwGI" role="3cqZAp">
          <node concept="la8eA" id="i0uAwGK" role="lcghm">
            <property role="lacIc" value="!(" />
          </node>
          <node concept="l9hG8" id="i0uAwGL" role="lcghm">
            <node concept="2OqwBi" id="hZiifwd" role="lb14g">
              <node concept="117lpO" id="hZiifqP" role="2Oq$k0" />
              <node concept="3TrEf2" id="hZiifX5" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJfr32$" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwGM" role="lcghm">
            <property role="lacIc" value=")" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYjxjWG">
    <ref role="WuzLi" to="tpee:f_0Nm5B" resolve="NullLiteral" />
    <node concept="11bSqf" id="hYjxjWH" role="11c4hB">
      <node concept="3clFbS" id="hYjxjWI" role="2VODD2">
        <node concept="lc7rE" id="i0uAwvF" role="3cqZAp">
          <node concept="la8eA" id="i0uAwvH" role="lcghm">
            <property role="lacIc" value="null" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYjxomf">
    <property role="3GE5qa" value="expressions" />
    <ref role="WuzLi" to="tpee:fI2lmyv" resolve="OrExpression" />
    <node concept="11bSqf" id="hYjxomg" role="11c4hB">
      <node concept="3clFbS" id="hYjxomh" role="2VODD2">
        <node concept="lc7rE" id="i0uAwrP" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwrR" role="lcghm">
            <node concept="2OqwBi" id="hYjxr03" role="lb14g">
              <node concept="117lpO" id="hYjxqTU" role="2Oq$k0" />
              <node concept="3TrEf2" id="hYjxrjr" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4s" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwrS" role="lcghm">
            <property role="lacIc" value=" || " />
          </node>
          <node concept="l9hG8" id="i0uAwrT" role="lcghm">
            <node concept="2OqwBi" id="hZiij4E" role="lb14g">
              <node concept="117lpO" id="hZiiiYj" role="2Oq$k0" />
              <node concept="3TrEf2" id="hZiijog" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4r" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYjxvT5">
    <property role="3GE5qa" value="variables" />
    <ref role="WuzLi" to="tpee:fz7vLUk" resolve="ParameterDeclaration" />
    <node concept="11bSqf" id="hYjxvT6" role="11c4hB">
      <node concept="3clFbS" id="hYjxvT7" role="2VODD2">
        <node concept="lc7rE" id="i0Xv5wx" role="3cqZAp">
          <node concept="1bDJIP" id="i0Xv6sn" role="lcghm">
            <ref role="1rvKf6" node="hXZOC0K" resolve="annotations" />
            <node concept="117lpO" id="i0Xv6so" role="1ryhcI" />
          </node>
          <node concept="1bDJIP" id="i0Xv77o" role="lcghm">
            <ref role="1rvKf6" node="hYI$aNc" resolve="variableDeclaration" />
            <node concept="117lpO" id="i0Xv77p" role="1ryhcI" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYjxGVN">
    <ref role="WuzLi" to="tpee:fHeOMHZ" resolve="ParenthesizedExpression" />
    <node concept="11bSqf" id="hYjxGVO" role="11c4hB">
      <node concept="3clFbS" id="hYjxGVP" role="2VODD2">
        <node concept="lc7rE" id="i0uAw$I" role="3cqZAp">
          <node concept="la8eA" id="i0uAw$K" role="lcghm">
            <property role="lacIc" value="(" />
          </node>
          <node concept="l9hG8" id="i0uAw$L" role="lcghm">
            <node concept="2OqwBi" id="hZiim4J" role="lb14g">
              <node concept="117lpO" id="hZiilZm" role="2Oq$k0" />
              <node concept="3TrEf2" id="hZiimq2" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fHeOMI0" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAw$M" role="lcghm">
            <property role="lacIc" value=")" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYjy0k2">
    <property role="3GE5qa" value="expressions" />
    <ref role="WuzLi" to="tpee:fzcpWvV" resolve="PlusExpression" />
    <node concept="11bSqf" id="hYjy0k3" role="11c4hB">
      <node concept="3clFbS" id="hYjy0k4" role="2VODD2">
        <node concept="lc7rE" id="i0uAwnM" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwnO" role="lcghm">
            <node concept="2OqwBi" id="hYjy2P2" role="lb14g">
              <node concept="117lpO" id="hYjy2Gt" role="2Oq$k0" />
              <node concept="3TrEf2" id="hYjy3jb" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4s" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwnP" role="lcghm">
            <property role="lacIc" value=" + " />
          </node>
          <node concept="l9hG8" id="i0uAwnQ" role="lcghm">
            <node concept="2OqwBi" id="hZiis5_" role="lb14g">
              <node concept="117lpO" id="hZiis0F" role="2Oq$k0" />
              <node concept="3TrEf2" id="hZiisXz" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4r" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYjy96Q">
    <property role="3GE5qa" value="expressions.prefix/postfix" />
    <ref role="WuzLi" to="tpee:hFuO5ZA" resolve="PostfixDecrementExpression" />
    <node concept="11bSqf" id="hYjy96R" role="11c4hB">
      <node concept="3clFbS" id="hYjy96S" role="2VODD2">
        <node concept="lc7rE" id="i0uAwun" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwup" role="lcghm">
            <node concept="2OqwBi" id="hYjycHC" role="lb14g">
              <node concept="117lpO" id="hYjyc_4" role="2Oq$k0" />
              <node concept="3TrEf2" id="i2_Hfad" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:i2$L3eA" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwuq" role="lcghm">
            <property role="lacIc" value="--" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYjyg$d">
    <property role="3GE5qa" value="expressions.prefix/postfix" />
    <ref role="WuzLi" to="tpee:hFuNrjK" resolve="PostfixIncrementExpression" />
    <node concept="11bSqf" id="hYjyg$e" role="11c4hB">
      <node concept="3clFbS" id="hYjyg$f" role="2VODD2">
        <node concept="lc7rE" id="i0uAwq2" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwq4" role="lcghm">
            <node concept="2OqwBi" id="hYjykXI" role="lb14g">
              <node concept="117lpO" id="hYjykNV" role="2Oq$k0" />
              <node concept="3TrEf2" id="i2_HgqP" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:i2$L3eA" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwq5" role="lcghm">
            <property role="lacIc" value="++" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYjypQZ">
    <property role="3GE5qa" value="to_remove" />
    <ref role="WuzLi" to="tpee:h0nlWzU" resolve="RemarkStatement" />
    <node concept="11bSqf" id="hYjypR0" role="11c4hB">
      <node concept="3clFbS" id="hYjypR1" role="2VODD2">
        <node concept="3clFbJ" id="i0uHzw7" role="3cqZAp">
          <node concept="3clFbS" id="i0uHzw8" role="3clFbx">
            <node concept="lc7rE" id="i0uAwBR" role="3cqZAp">
              <node concept="l8MVK" id="i0uAwBT" role="lcghm" />
              <node concept="la8eA" id="i0uHnc$" role="lcghm">
                <property role="ldcpH" value="true" />
                <property role="lacIc" value="// " />
              </node>
              <node concept="l9hG8" id="i0uHCmp" role="lcghm">
                <property role="ld1Su" value="false" />
                <node concept="2OqwBi" id="i0uHCOu" role="lb14g">
                  <node concept="117lpO" id="i0uHCJl" role="2Oq$k0" />
                  <node concept="3TrcHB" id="i0uHD8N" role="2OqNvi">
                    <ref role="3TsBF5" to="tpee:h0nndGF" resolve="value" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="i0uH_wG" role="3clFbw">
            <node concept="10Nm6u" id="i0uH_U8" role="3uHU7w" />
            <node concept="2OqwBi" id="i0uH$Fp" role="3uHU7B">
              <node concept="117lpO" id="i0uH$sI" role="2Oq$k0" />
              <node concept="3TrcHB" id="i0uH_j0" role="2OqNvi">
                <ref role="3TsBF5" to="tpee:h0nndGF" resolve="value" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="i0uHEtM" role="9aQIa">
            <node concept="3clFbS" id="i0uHEtN" role="9aQI4">
              <node concept="lc7rE" id="i0uHGMZ" role="3cqZAp">
                <node concept="l8MVK" id="i0uHGN0" role="lcghm" />
                <node concept="la8eA" id="i0uHGN1" role="lcghm">
                  <property role="ldcpH" value="true" />
                  <property role="lacIc" value="// " />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYjyE9h">
    <ref role="WuzLi" to="tpee:gMdk9FO" resolve="RemExpression" />
    <node concept="11bSqf" id="hYjyE9i" role="11c4hB">
      <node concept="3clFbS" id="hYjyE9j" role="2VODD2">
        <node concept="lc7rE" id="i0uAwnp" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwnr" role="lcghm">
            <node concept="2OqwBi" id="hYjyHc1" role="lb14g">
              <node concept="117lpO" id="hYjyH4c" role="2Oq$k0" />
              <node concept="3TrEf2" id="hYjyHz3" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4s" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwns" role="lcghm">
            <property role="lacIc" value=" % " />
          </node>
          <node concept="l9hG8" id="i0uAwnt" role="lcghm">
            <node concept="2OqwBi" id="hZiiAo0" role="lb14g">
              <node concept="117lpO" id="hZiiAiB" role="2Oq$k0" />
              <node concept="3TrEf2" id="hZiiASy" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4r" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYjyN7o">
    <property role="3GE5qa" value="control_flow" />
    <ref role="WuzLi" to="tpee:fzcpWvY" resolve="ReturnStatement" />
    <node concept="11bSqf" id="hYjyN7p" role="11c4hB">
      <node concept="3clFbS" id="hYjyN7q" role="2VODD2">
        <node concept="lc7rE" id="i0uAwmP" role="3cqZAp">
          <node concept="l8MVK" id="i0uAwmR" role="lcghm" />
          <node concept="la8eA" id="i0uAwmS" role="lcghm">
            <property role="ldcpH" value="true" />
            <property role="lacIc" value="return" />
          </node>
        </node>
        <node concept="3clFbJ" id="i0$n0v4" role="3cqZAp">
          <node concept="3clFbS" id="i0$n0v5" role="3clFbx">
            <node concept="lc7rE" id="i0$n20u" role="3cqZAp">
              <node concept="la8eA" id="i0$n32r" role="lcghm">
                <property role="lacIc" value=" " />
              </node>
              <node concept="l9hG8" id="i0$n3ST" role="lcghm">
                <node concept="2OqwBi" id="i0$n4fT" role="lb14g">
                  <node concept="117lpO" id="i0$n4a1" role="2Oq$k0" />
                  <node concept="3TrEf2" id="i0$n4un" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:fzcqZ_G" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="i0$n1hx" role="3clFbw">
            <node concept="2OqwBi" id="i0$n0MV" role="2Oq$k0">
              <node concept="117lpO" id="i0$n0Hy" role="2Oq$k0" />
              <node concept="3TrEf2" id="i0$n1ar" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fzcqZ_G" />
              </node>
            </node>
            <node concept="3x8VRR" id="i0$n1$o" role="2OqNvi" />
          </node>
        </node>
        <node concept="lc7rE" id="i0$n8RT" role="3cqZAp">
          <node concept="la8eA" id="i0$n991" role="lcghm">
            <property role="lacIc" value=";" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYjz7Ge">
    <ref role="WuzLi" to="tpee:hPGRDYT" resolve="ShiftLeftExpression" />
    <node concept="11bSqf" id="hYjz7Gf" role="11c4hB">
      <node concept="3clFbS" id="hYjz7Gg" role="2VODD2">
        <node concept="lc7rE" id="i0uAwyB" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwyD" role="lcghm">
            <node concept="2OqwBi" id="hYjzaH2" role="lb14g">
              <node concept="117lpO" id="hYjza$e" role="2Oq$k0" />
              <node concept="3TrEf2" id="hYjzbhY" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4s" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwyE" role="lcghm">
            <property role="lacIc" value=" &lt;&lt; " />
          </node>
          <node concept="l9hG8" id="i0uAwyF" role="lcghm">
            <node concept="2OqwBi" id="hZiiF8H" role="lb14g">
              <node concept="117lpO" id="hZiiF3$" role="2Oq$k0" />
              <node concept="3TrEf2" id="hZiiFZt" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4r" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYjzgZA">
    <ref role="WuzLi" to="tpee:hPGS57v" resolve="ShiftRightExpression" />
    <node concept="11bSqf" id="hYjzgZB" role="11c4hB">
      <node concept="3clFbS" id="hYjzgZC" role="2VODD2">
        <node concept="lc7rE" id="i0uAwDJ" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwDL" role="lcghm">
            <node concept="2OqwBi" id="hYjzjrx" role="lb14g">
              <node concept="117lpO" id="hYjzjiH" role="2Oq$k0" />
              <node concept="3TrEf2" id="hYjzjK_" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4s" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwDM" role="lcghm">
            <property role="lacIc" value=" &gt;&gt; " />
          </node>
          <node concept="l9hG8" id="i0uAwDN" role="lcghm">
            <node concept="2OqwBi" id="hZiiKa9" role="lb14g">
              <node concept="117lpO" id="hZiiK4h" role="2Oq$k0" />
              <node concept="3TrEf2" id="hZiiOni" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4r" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYjzr4m">
    <property role="3GE5qa" value="primitive" />
    <ref role="WuzLi" to="tpee:f_0N3wd" resolve="ShortType" />
    <node concept="11bSqf" id="hYjzr4n" role="11c4hB">
      <node concept="3clFbS" id="hYjzr4o" role="2VODD2">
        <node concept="lc7rE" id="i0uAwm9" role="3cqZAp">
          <node concept="la8eA" id="i0uAwmb" role="lcghm">
            <property role="lacIc" value="short" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYjzAOi">
    <ref role="WuzLi" to="tpee:fzclF80" resolve="StatementList" />
    <node concept="11bSqf" id="hYjzAOj" role="11c4hB">
      <node concept="3clFbS" id="hYjzAOk" role="2VODD2">
        <node concept="2Gpval" id="3bCcjDBySoE" role="3cqZAp">
          <node concept="2GrKxI" id="3bCcjDBySoG" role="2Gsz3X">
            <property role="TrG5h" value="stmt" />
          </node>
          <node concept="2OqwBi" id="3bCcjDBySAL" role="2GsD0m">
            <node concept="117lpO" id="3bCcjDBySwB" role="2Oq$k0" />
            <node concept="3Tsc0h" id="3bCcjDBz2F0" role="2OqNvi">
              <ref role="3TtcxE" to="tpee:fzcqZ_x" />
            </node>
          </node>
          <node concept="3clFbS" id="3bCcjDBySoK" role="2LFqv$">
            <node concept="lc7rE" id="i0uAwxb" role="3cqZAp">
              <node concept="l9hG8" id="i0uAwxd" role="lcghm">
                <node concept="2GrUjf" id="3bCcjDBz5fc" role="lb14g">
                  <ref role="2Gs0qQ" node="3bCcjDBySoG" resolve="stmt" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYj_8t9">
    <property role="3GE5qa" value="classifiers.members" />
    <ref role="WuzLi" to="tpee:f$Wx3kv" resolve="StaticFieldDeclaration" />
    <node concept="11bSqf" id="hYj_8ta" role="11c4hB">
      <node concept="3clFbS" id="hYj_8tb" role="2VODD2">
        <node concept="3clFbJ" id="3veQ_zQyf3t" role="3cqZAp">
          <node concept="3clFbS" id="3veQ_zQyf3u" role="3clFbx">
            <node concept="lc7rE" id="3veQ_zQyf3v" role="3cqZAp">
              <node concept="l9hG8" id="3veQ_zQyf3w" role="lcghm">
                <node concept="2OqwBi" id="3veQ_zQyf3x" role="lb14g">
                  <node concept="117lpO" id="3veQ_zQyf3y" role="2Oq$k0" />
                  <node concept="3CFZ6_" id="2EuZkDRzIs7" role="2OqNvi">
                    <node concept="3CFYIy" id="2EuZkDRzIs8" role="3CFYIz">
                      <ref role="3CFYIx" to="m373:5VgPTPXL4JM" resolve="FieldDocComment" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3veQ_zQyf3_" role="3clFbw">
            <node concept="2OqwBi" id="3veQ_zQyf3A" role="2Oq$k0">
              <node concept="117lpO" id="3veQ_zQyf3B" role="2Oq$k0" />
              <node concept="3CFZ6_" id="2EuZkDRzIlw" role="2OqNvi">
                <node concept="3CFYIy" id="2EuZkDRzIlx" role="3CFYIz">
                  <ref role="3CFYIx" to="m373:5VgPTPXL4JM" resolve="FieldDocComment" />
                </node>
              </node>
            </node>
            <node concept="3x8VRR" id="3veQ_zQyf3E" role="2OqNvi" />
          </node>
        </node>
        <node concept="lc7rE" id="i0$nmUq" role="3cqZAp">
          <node concept="1bDJIP" id="i0Xvaq9" role="lcghm">
            <ref role="1rvKf6" node="hXZOC0K" resolve="annotations" />
            <node concept="117lpO" id="i0Xvaqa" role="1ryhcI" />
          </node>
          <node concept="1bDJIP" id="i0XvbgC" role="lcghm">
            <ref role="1rvKf6" node="hXZP8nY" resolve="visibilityWithIndent" />
            <node concept="2OqwBi" id="i0XvbgD" role="1ryhcI">
              <node concept="117lpO" id="i0XvbgE" role="2Oq$k0" />
              <node concept="3TrEf2" id="i0XvbgF" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:h9B3oxE" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0XvcQ2" role="lcghm">
            <property role="lacIc" value="static " />
          </node>
        </node>
        <node concept="3clFbJ" id="hYInXr3" role="3cqZAp">
          <node concept="2OqwBi" id="hYInXr4" role="3clFbw">
            <node concept="117lpO" id="hYInXr5" role="2Oq$k0" />
            <node concept="3TrcHB" id="hYInXr6" role="2OqNvi">
              <ref role="3TsBF5" to="tpee:h7TUv0c" resolve="isFinal" />
            </node>
          </node>
          <node concept="3clFbS" id="hYInXr7" role="3clFbx">
            <node concept="lc7rE" id="i0uAwAt" role="3cqZAp">
              <node concept="la8eA" id="i0uAwAv" role="lcghm">
                <property role="lacIc" value="final " />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5B5vMVk_JQ8" role="3cqZAp">
          <node concept="3clFbS" id="5B5vMVk_JQb" role="3clFbx">
            <node concept="lc7rE" id="5B5vMVk_N4n" role="3cqZAp">
              <node concept="la8eA" id="5B5vMVk_N4o" role="lcghm">
                <property role="lacIc" value="transient " />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5B5vMVk_KCv" role="3clFbw">
            <node concept="117lpO" id="5B5vMVk_KoD" role="2Oq$k0" />
            <node concept="3TrcHB" id="5B5vMVk_MZs" role="2OqNvi">
              <ref role="3TsBF5" to="tpee:5B5vMVk$qSq" resolve="isTransient" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5B5vMVk_PKx" role="3cqZAp">
          <node concept="3clFbS" id="5B5vMVk_PKy" role="3clFbx">
            <node concept="lc7rE" id="5B5vMVk_PKz" role="3cqZAp">
              <node concept="la8eA" id="5B5vMVk_PK$" role="lcghm">
                <property role="lacIc" value="volatile " />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5B5vMVk_PK_" role="3clFbw">
            <node concept="117lpO" id="5B5vMVk_PKA" role="2Oq$k0" />
            <node concept="3TrcHB" id="5B5vMVk_Xut" role="2OqNvi">
              <ref role="3TsBF5" to="tpee:5B5vMVk$r4J" resolve="isVolatile" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="i0uAw_6" role="3cqZAp">
          <node concept="l9hG8" id="i0uAw_a" role="lcghm">
            <node concept="2OqwBi" id="hYInXrb" role="lb14g">
              <node concept="117lpO" id="hYInXrc" role="2Oq$k0" />
              <node concept="3TrEf2" id="hYInXrd" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAw_b" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
          <node concept="l9hG8" id="i0uAw_c" role="lcghm">
            <node concept="2OqwBi" id="hZiiU0N" role="lb14g">
              <node concept="117lpO" id="hZiiTTX" role="2Oq$k0" />
              <node concept="3TrcHB" id="hZiiUd$" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="i0$nVFn" role="3cqZAp">
          <node concept="3clFbS" id="i0$nVFo" role="3clFbx">
            <node concept="lc7rE" id="i0$nWks" role="3cqZAp">
              <node concept="la8eA" id="i0$nWoo" role="lcghm">
                <property role="lacIc" value=" = " />
              </node>
              <node concept="l9hG8" id="i0$nWop" role="lcghm">
                <node concept="2OqwBi" id="i0$nWoq" role="lb14g">
                  <node concept="117lpO" id="i0$nWor" role="2Oq$k0" />
                  <node concept="3TrEf2" id="i0$nWos" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:fz3vP1I" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="i0$nXoh" role="3clFbw">
            <node concept="2OqwBi" id="i0$nX2t" role="2Oq$k0">
              <node concept="117lpO" id="i0$nWWm" role="2Oq$k0" />
              <node concept="3TrEf2" id="i0$nXgV" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fz3vP1I" />
              </node>
            </node>
            <node concept="3x8VRR" id="i0$nXSz" role="2OqNvi" />
          </node>
        </node>
        <node concept="lc7rE" id="i0$o005" role="3cqZAp">
          <node concept="la8eA" id="i0$o0fw" role="lcghm">
            <property role="lacIc" value=";" />
          </node>
          <node concept="l8MVK" id="1hodSy9rPLV" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYj_uuP">
    <property role="3GE5qa" value="classifiers.refs" />
    <ref role="WuzLi" to="tpee:f_0M0x6" resolve="StaticFieldReference" />
    <node concept="11bSqf" id="hYj_uuQ" role="11c4hB">
      <node concept="3clFbS" id="hYj_uuR" role="2VODD2">
        <node concept="lc7rE" id="i0uAwwx" role="3cqZAp">
          <node concept="1bDJIP" id="6fUw26UkGHq" role="lcghm">
            <ref role="1rvKf6" node="6fUw26UhtdA" resolve="blClassifierRef" />
            <node concept="2OqwBi" id="6fUw26UkGHr" role="1ryhcI">
              <node concept="117lpO" id="6fUw26UkGHs" role="2Oq$k0" />
              <node concept="37Cfm0" id="6fUw26UkGHt" role="2OqNvi">
                <node concept="1aIX9F" id="6fUw26UkGHu" role="37CeNk">
                  <node concept="26LbJo" id="6fUw26UkGHv" role="1aIX9E">
                    <ref role="26LbJp" to="tpee:gDPxDYr" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwwz" role="lcghm">
            <property role="lacIc" value="." />
          </node>
          <node concept="2yR1zb" id="6yrM7PCIIS8" role="lcghm">
            <node concept="2OqwBi" id="6yrM7PCIISb" role="2yR1z8">
              <node concept="1PxgMI" id="6yrM7PCIISi" role="2Oq$k0">
                <ref role="1PxNhF" to="tpee:fz7vLUo" resolve="VariableReference" />
                <node concept="117lpO" id="6yrM7PCIISa" role="1PxMeX" />
              </node>
              <node concept="37Cfm0" id="6yrM7PCIISf" role="2OqNvi">
                <node concept="1aIX9F" id="6yrM7PCIISg" role="37CeNk">
                  <node concept="26LbJo" id="6yrM7PCIISk" role="1aIX9E">
                    <ref role="26LbJp" to="tpee:fzcqZ_w" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYj_Jpb">
    <property role="3GE5qa" value="classifiers.refs" />
    <ref role="WuzLi" to="tpee:fIYIFW9" resolve="StaticMethodCall" />
    <node concept="11bSqf" id="hYj_Jpc" role="11c4hB">
      <node concept="3clFbS" id="hYj_Jpd" role="2VODD2">
        <node concept="lc7rE" id="i0uAwD_" role="3cqZAp">
          <node concept="1bDJIP" id="6fUw26UkGH$" role="lcghm">
            <ref role="1rvKf6" node="6fUw26UhtdA" resolve="blClassifierRef" />
            <node concept="2OqwBi" id="6fUw26UkGHF" role="1ryhcI">
              <node concept="117lpO" id="6fUw26UkGHG" role="2Oq$k0" />
              <node concept="37Cfm0" id="6fUw26UkGHH" role="2OqNvi">
                <node concept="1aIX9F" id="6fUw26UkGHI" role="37CeNk">
                  <node concept="26LbJo" id="6fUw26UkGHJ" role="1aIX9E">
                    <ref role="26LbJp" to="tpee:gDPybl6" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwDB" role="lcghm">
            <property role="lacIc" value="." />
          </node>
          <node concept="1bDJIP" id="i0XvmMd" role="lcghm">
            <ref role="1rvKf6" node="hYHLMDp" resolve="methodCall" />
            <node concept="117lpO" id="i0XvmMe" role="1ryhcI" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYj_U80">
    <property role="3GE5qa" value="classifiers.members" />
    <ref role="WuzLi" to="tpee:fIYIFWa" resolve="StaticMethodDeclaration" />
    <node concept="11bSqf" id="hYj_U81" role="11c4hB">
      <node concept="3clFbS" id="hYj_U82" role="2VODD2">
        <node concept="3clFbJ" id="3veQ_zQwBp4" role="3cqZAp">
          <node concept="3clFbS" id="3veQ_zQwBp5" role="3clFbx">
            <node concept="lc7rE" id="3veQ_zQwBp6" role="3cqZAp">
              <node concept="l9hG8" id="3veQ_zQwBp7" role="lcghm">
                <node concept="2OqwBi" id="3veQ_zQwBp8" role="lb14g">
                  <node concept="117lpO" id="3veQ_zQwBp9" role="2Oq$k0" />
                  <node concept="3CFZ6_" id="2EuZkDRzIly" role="2OqNvi">
                    <node concept="3CFYIy" id="2EuZkDRzIlz" role="3CFYIz">
                      <ref role="3CFYIx" to="m373:4CW56HZFIGO" resolve="MethodDocComment" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3veQ_zQwBpc" role="3clFbw">
            <node concept="2OqwBi" id="3veQ_zQwBpd" role="2Oq$k0">
              <node concept="117lpO" id="3veQ_zQwBpe" role="2Oq$k0" />
              <node concept="3CFZ6_" id="2EuZkDRzIjP" role="2OqNvi">
                <node concept="3CFYIy" id="2EuZkDRzIjQ" role="3CFYIz">
                  <ref role="3CFYIx" to="m373:4CW56HZFIGO" resolve="MethodDocComment" />
                </node>
              </node>
            </node>
            <node concept="3x8VRR" id="3veQ_zQwBph" role="2OqNvi" />
          </node>
        </node>
        <node concept="lc7rE" id="i0$qtwX" role="3cqZAp">
          <node concept="1bDJIP" id="i0Xvppg" role="lcghm">
            <ref role="1rvKf6" node="hXZOC0K" resolve="annotations" />
            <node concept="117lpO" id="i0Xvpph" role="1ryhcI" />
          </node>
          <node concept="1bDJIP" id="i0Xvq7V" role="lcghm">
            <ref role="1rvKf6" node="hXZP8nY" resolve="visibilityWithIndent" />
            <node concept="2OqwBi" id="i0Xvq7W" role="1ryhcI">
              <node concept="117lpO" id="i0Xvq7X" role="2Oq$k0" />
              <node concept="3TrEf2" id="i0Xvq7Y" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:h9B3oxE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="hYjA2Cu" role="3cqZAp">
          <node concept="3clFbS" id="hYjA2Cv" role="3clFbx">
            <node concept="lc7rE" id="i0uAwIl" role="3cqZAp">
              <node concept="la8eA" id="i0uAwIn" role="lcghm">
                <property role="lacIc" value="static " />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="hYjA7zr" role="3clFbw">
            <node concept="2OqwBi" id="hYjA36B" role="2Oq$k0">
              <node concept="117lpO" id="hYjA2XN" role="2Oq$k0" />
              <node concept="1mfA1w" id="hYjA3rW" role="2OqNvi" />
            </node>
            <node concept="1mIQ4w" id="hYjA7Wb" role="2OqNvi">
              <node concept="chp4Y" id="hYjA9xp" role="cj9EA">
                <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1oZTOGFvDg4" role="3cqZAp">
          <node concept="3clFbS" id="1oZTOGFvDg5" role="3clFbx">
            <node concept="lc7rE" id="1oZTOGFvH5x" role="3cqZAp">
              <node concept="la8eA" id="1oZTOGFvH5z" role="lcghm">
                <property role="lacIc" value="synchronized " />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1oZTOGFvH5s" role="3clFbw">
            <node concept="117lpO" id="1oZTOGFvH5r" role="2Oq$k0" />
            <node concept="3TrcHB" id="1oZTOGFvH5w" role="2OqNvi">
              <ref role="3TsBF5" to="tpee:3HnrdCzoiLU" resolve="isSynchronized" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7fN3zRU_1lA" role="3cqZAp">
          <node concept="3clFbS" id="7fN3zRU_1lB" role="3clFbx">
            <node concept="lc7rE" id="7fN3zRU_1lC" role="3cqZAp">
              <node concept="la8eA" id="7fN3zRU_1lD" role="lcghm">
                <property role="lacIc" value="native " />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7fN3zRU_1lE" role="3clFbw">
            <node concept="117lpO" id="7fN3zRU_1lF" role="2Oq$k0" />
            <node concept="3TrcHB" id="7fN3zRU_2ip" role="2OqNvi">
              <ref role="3TsBF5" to="tpee:7fN3zRTn0HN" resolve="isNative" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="1$0xMSdBzO6" role="3cqZAp">
          <node concept="1bDJIP" id="1$0xMSdBzO8" role="lcghm">
            <ref role="1rvKf6" node="hY5gGyc" resolve="typeDeclarations" />
            <node concept="117lpO" id="1$0xMSdBzO9" role="1ryhcI" />
          </node>
        </node>
        <node concept="3clFbJ" id="1$0xMSdBzOc" role="3cqZAp">
          <node concept="3clFbS" id="1$0xMSdBzOd" role="3clFbx">
            <node concept="lc7rE" id="1$0xMSdBzOr" role="3cqZAp">
              <node concept="la8eA" id="1$0xMSdBzOt" role="lcghm">
                <property role="lacIc" value=" " />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1$0xMSdBzOm" role="3clFbw">
            <node concept="2OqwBi" id="1$0xMSdBzOh" role="2Oq$k0">
              <node concept="117lpO" id="1$0xMSdBzOg" role="2Oq$k0" />
              <node concept="3Tsc0h" id="1$0xMSdBzOl" role="2OqNvi">
                <ref role="3TtcxE" to="tpee:g96eVAe" />
              </node>
            </node>
            <node concept="3GX2aA" id="1$0xMSdBzOq" role="2OqNvi" />
          </node>
        </node>
        <node concept="lc7rE" id="i0uAwzl" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwzo" role="lcghm">
            <node concept="2OqwBi" id="hYjAig2" role="lb14g">
              <node concept="117lpO" id="hYjAi2P" role="2Oq$k0" />
              <node concept="3TrEf2" id="hYjAiCh" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fzclF7X" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwzp" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
          <node concept="l9hG8" id="i0uAwzq" role="lcghm">
            <node concept="2OqwBi" id="hZiiWOx" role="lb14g">
              <node concept="117lpO" id="hZiiWGW" role="2Oq$k0" />
              <node concept="3TrcHB" id="hZiiXfV" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwzr" role="lcghm">
            <property role="lacIc" value="(" />
          </node>
          <node concept="l9S2W" id="i0uAwzs" role="lcghm">
            <property role="XA4eZ" value="true" />
            <property role="lbP0B" value=", " />
            <node concept="2OqwBi" id="hZmtpD9" role="lbANJ">
              <node concept="117lpO" id="hZmtpz1" role="2Oq$k0" />
              <node concept="3Tsc0h" id="hZmtq0T" role="2OqNvi">
                <ref role="3TtcxE" to="tpee:fzclF7Y" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwzt" role="lcghm">
            <property role="lacIc" value=")" />
          </node>
        </node>
        <node concept="3clFbJ" id="hYjDr7D" role="3cqZAp">
          <node concept="3clFbS" id="hYjDr7E" role="3clFbx">
            <node concept="lc7rE" id="i0uAwwE" role="3cqZAp">
              <node concept="la8eA" id="i0uAwwG" role="lcghm">
                <property role="lacIc" value=" throws " />
              </node>
              <node concept="l9S2W" id="i0uAwwH" role="lcghm">
                <property role="XA4eZ" value="true" />
                <property role="lbP0B" value=", " />
                <node concept="2OqwBi" id="hZmtmrd" role="lbANJ">
                  <node concept="117lpO" id="hZmtml5" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="hZmtmG7" role="2OqNvi">
                    <ref role="3TtcxE" to="tpee:gWSfm_9" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="hYjDstg" role="3clFbw">
            <node concept="2OqwBi" id="hYjDr_K" role="2Oq$k0">
              <node concept="117lpO" id="hYjDrtc" role="2Oq$k0" />
              <node concept="3Tsc0h" id="hYjDsgz" role="2OqNvi">
                <ref role="3TtcxE" to="tpee:gWSfm_9" />
              </node>
            </node>
            <node concept="3GX2aA" id="hYjDsSU" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbJ" id="7fN3zRU_3M0" role="3cqZAp">
          <node concept="3clFbS" id="7fN3zRU_3M1" role="3clFbx">
            <node concept="lc7rE" id="7fN3zRU_3M2" role="3cqZAp">
              <node concept="la8eA" id="7fN3zRU_3M3" role="lcghm">
                <property role="lacIc" value=";" />
              </node>
              <node concept="l8MVK" id="7fN3zRU_3M4" role="lcghm" />
            </node>
          </node>
          <node concept="2OqwBi" id="7fN3zRU_3M6" role="3clFbw">
            <node concept="117lpO" id="7fN3zRU_3M7" role="2Oq$k0" />
            <node concept="2qgKlT" id="7fnnP3fPtW_" role="2OqNvi">
              <ref role="37wK5l" to="tpek:hWjv7RO" resolve="isAbstract" />
            </node>
          </node>
          <node concept="9aQIb" id="7fN3zRU_3Mf" role="9aQIa">
            <node concept="3clFbS" id="7fN3zRU_3Mg" role="9aQI4">
              <node concept="lc7rE" id="i0$qGAA" role="3cqZAp">
                <node concept="la8eA" id="i0$qGSt" role="lcghm">
                  <property role="lacIc" value=" {" />
                </node>
              </node>
              <node concept="3izx1p" id="hZKbB1L" role="3cqZAp">
                <node concept="3clFbS" id="hZKbB1M" role="3izTki">
                  <node concept="3clFbJ" id="hYjDH8d" role="3cqZAp">
                    <node concept="3clFbS" id="hYjDH8e" role="3clFbx">
                      <node concept="lc7rE" id="i0uAwKD" role="3cqZAp">
                        <node concept="l9hG8" id="i0uAwKF" role="lcghm">
                          <node concept="2OqwBi" id="hYjDL5V" role="lb14g">
                            <node concept="117lpO" id="hYjDKXQ" role="2Oq$k0" />
                            <node concept="3TrEf2" id="hYjDLtr" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpee:fzclF7Z" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="hYjDJ7$" role="3clFbw">
                      <node concept="2OqwBi" id="hYjDIjY" role="2Oq$k0">
                        <node concept="117lpO" id="hYjDIaF" role="2Oq$k0" />
                        <node concept="3TrEf2" id="hYjDIHU" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpee:fzclF7Z" />
                        </node>
                      </node>
                      <node concept="3x8VRR" id="hYjDJBB" role="2OqNvi" />
                    </node>
                    <node concept="9aQIb" id="hYjDMNR" role="9aQIa">
                      <node concept="3clFbS" id="hYjDMNS" role="9aQI4">
                        <node concept="lc7rE" id="i0uAwwj" role="3cqZAp">
                          <node concept="l8MVK" id="i0uAwwl" role="lcghm" />
                          <node concept="la8eA" id="i0uHZxt" role="lcghm">
                            <property role="ldcpH" value="true" />
                            <property role="lacIc" value="throw new RuntimeException(\&quot;NOT IMPLEMENTED\&quot;);" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="lc7rE" id="i0uHVJt" role="3cqZAp">
                <node concept="l8MVK" id="i0$qNeg" role="lcghm" />
                <node concept="la8eA" id="i0uHWgs" role="lcghm">
                  <property role="ldcpH" value="true" />
                  <property role="lacIc" value="}" />
                </node>
                <node concept="l8MVK" id="i0$qNSh" role="lcghm" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYjE6A_">
    <property role="3GE5qa" value="" />
    <ref role="WuzLi" to="tpee:f$Xl_Og" resolve="StringLiteral" />
    <node concept="11bSqf" id="hYjE6AA" role="11c4hB">
      <node concept="3clFbS" id="hYjE6AB" role="2VODD2">
        <node concept="lc7rE" id="i0uAw_B" role="3cqZAp">
          <node concept="la8eA" id="i0uAw_D" role="lcghm">
            <property role="lacIc" value="\&quot;" />
          </node>
          <node concept="1bDJIP" id="i0XvxHb" role="lcghm">
            <ref role="1rvKf6" node="hZ8ag$N" resolve="compilableString" />
            <node concept="3K4zz7" id="i0XvxHc" role="1ryhcI">
              <node concept="3clFbC" id="i0XvxHd" role="3K4Cdx">
                <node concept="10Nm6u" id="i0XvxHe" role="3uHU7w" />
                <node concept="2OqwBi" id="i0XvxHf" role="3uHU7B">
                  <node concept="117lpO" id="i0XvxHg" role="2Oq$k0" />
                  <node concept="3TrcHB" id="i0XvxHh" role="2OqNvi">
                    <ref role="3TsBF5" to="tpee:f$Xl_Oh" resolve="value" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="i0XvxHi" role="3K4E3e">
                <property role="Xl_RC" value="" />
              </node>
              <node concept="2OqwBi" id="i0XvxHj" role="3K4GZi">
                <node concept="117lpO" id="i0XvxHk" role="2Oq$k0" />
                <node concept="3TrcHB" id="i0XvxHl" role="2OqNvi">
                  <ref role="3TsBF5" to="tpee:f$Xl_Oh" resolve="value" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0XvzE7" role="lcghm">
            <property role="lacIc" value="\&quot;" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYjEvjA">
    <property role="3GE5qa" value="ext.string" />
    <ref role="WuzLi" to="tpee:hP7QB7G" resolve="StringType" />
    <node concept="11bSqf" id="hYjEvjB" role="11c4hB">
      <node concept="3clFbS" id="hYjEvjC" role="2VODD2">
        <node concept="lc7rE" id="i0uAwy4" role="3cqZAp">
          <node concept="la8eA" id="i0uAwy6" role="lcghm">
            <property role="lacIc" value="String" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYjECx$">
    <property role="3GE5qa" value="classifiers.refs" />
    <ref role="WuzLi" to="tpee:f$XkiSu" resolve="SuperConstructorInvocation" />
    <node concept="11bSqf" id="hYjECx_" role="11c4hB">
      <node concept="3clFbS" id="hYjECxA" role="2VODD2">
        <node concept="lc7rE" id="i0$ongL" role="3cqZAp">
          <node concept="l8MVK" id="i0$onBh" role="lcghm" />
        </node>
        <node concept="1bpajm" id="i0uI45J" role="3cqZAp" />
        <node concept="lc7rE" id="i0uAwK5" role="3cqZAp">
          <node concept="la8eA" id="i0uAwK8" role="lcghm">
            <property role="lacIc" value="super(" />
          </node>
          <node concept="l9S2W" id="i0uAwK9" role="lcghm">
            <property role="XA4eZ" value="true" />
            <property role="lbP0B" value=", " />
            <node concept="2OqwBi" id="hZmtt55" role="lbANJ">
              <node concept="117lpO" id="hZmtsZW" role="2Oq$k0" />
              <node concept="3Tsc0h" id="i4hydeo" role="2OqNvi">
                <ref role="3TtcxE" to="tpee:fz7wK6I" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwKa" role="lcghm">
            <property role="lacIc" value=");" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYjF2FU">
    <property role="3GE5qa" value="classifiers.refs" />
    <ref role="WuzLi" to="tpee:fBnyPmE" resolve="SuperMethodCall" />
    <node concept="11bSqf" id="hYjF2FV" role="11c4hB">
      <node concept="3clFbS" id="hYjF2FW" role="2VODD2">
        <node concept="lc7rE" id="i0uAwmc" role="3cqZAp">
          <node concept="la8eA" id="i0uAwme" role="lcghm">
            <property role="lacIc" value="super." />
          </node>
          <node concept="1bDJIP" id="i0XvBsP" role="lcghm">
            <ref role="1rvKf6" node="hYHLMDp" resolve="methodCall" />
            <node concept="117lpO" id="i0XvBsQ" role="1ryhcI" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYjF6sW">
    <property role="3GE5qa" value="control_flow.if_switch" />
    <ref role="WuzLi" to="tpee:gVKaCLE" resolve="SwitchStatement" />
    <node concept="11bSqf" id="hYjF6sX" role="11c4hB">
      <node concept="3clFbS" id="hYjF6sY" role="2VODD2">
        <node concept="3clFbJ" id="42hlkH_p89m" role="3cqZAp">
          <node concept="3clFbS" id="42hlkH_p89n" role="3clFbx">
            <node concept="lc7rE" id="42hlkH_p89_" role="3cqZAp">
              <node concept="l8MVK" id="42hlkH_p89A" role="lcghm" />
              <node concept="l9hG8" id="42hlkH_p89B" role="lcghm">
                <node concept="2OqwBi" id="42hlkH_p89H" role="lb14g">
                  <node concept="2OqwBi" id="42hlkH_p89C" role="2Oq$k0">
                    <node concept="117lpO" id="42hlkH_p89D" role="2Oq$k0" />
                    <node concept="3TrEf2" id="42hlkH_p89G" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:42hlkH_myce" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="42hlkH_p89L" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="42hlkH_p89F" role="lcghm">
                <property role="lacIc" value=":" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="42hlkH_p89w" role="3clFbw">
            <node concept="2OqwBi" id="42hlkH_p89r" role="2Oq$k0">
              <node concept="117lpO" id="42hlkH_p89q" role="2Oq$k0" />
              <node concept="3TrEf2" id="42hlkH_p89v" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:42hlkH_myce" />
              </node>
            </node>
            <node concept="3x8VRR" id="42hlkH_p89$" role="2OqNvi" />
          </node>
          <node concept="3eNFk2" id="42hlkH_p89M" role="3eNLev">
            <node concept="3clFbS" id="42hlkH_p89O" role="3eOfB_">
              <node concept="lc7rE" id="42hlkH_p89P" role="3cqZAp">
                <node concept="l8MVK" id="42hlkH_p89Q" role="lcghm" />
                <node concept="l9hG8" id="42hlkH_p89R" role="lcghm">
                  <node concept="2OqwBi" id="42hlkH_p89S" role="lb14g">
                    <node concept="117lpO" id="42hlkH_p89T" role="2Oq$k0" />
                    <node concept="3TrcHB" id="42hlkH_p89U" role="2OqNvi">
                      <ref role="3TsBF5" to="tpee:huRUkIr" resolve="label" />
                    </node>
                  </node>
                </node>
                <node concept="la8eA" id="42hlkH_p89V" role="lcghm">
                  <property role="lacIc" value=":" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="42hlkH_p89W" role="3eO9$A">
              <node concept="10Nm6u" id="42hlkH_p89X" role="3uHU7w" />
              <node concept="2OqwBi" id="42hlkH_p89Y" role="3uHU7B">
                <node concept="117lpO" id="42hlkH_p89Z" role="2Oq$k0" />
                <node concept="3TrcHB" id="42hlkH_p8a0" role="2OqNvi">
                  <ref role="3TsBF5" to="tpee:huRUkIr" resolve="label" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="i0uAwL7" role="3cqZAp">
          <node concept="l8MVK" id="i0uAwL9" role="lcghm" />
          <node concept="la8eA" id="i0$riwH" role="lcghm">
            <property role="ldcpH" value="true" />
            <property role="lacIc" value="switch (" />
          </node>
          <node concept="l9hG8" id="i0uAwLa" role="lcghm">
            <node concept="2OqwBi" id="hYjFrIf" role="lb14g">
              <node concept="117lpO" id="hYjFrB8" role="2Oq$k0" />
              <node concept="3TrEf2" id="hYjFs4h" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:gVKbG91" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwLb" role="lcghm">
            <property role="lacIc" value=") {" />
          </node>
        </node>
        <node concept="3izx1p" id="hZKbQ8P" role="3cqZAp">
          <node concept="3clFbS" id="hZKbQ8Q" role="3izTki">
            <node concept="1DcWWT" id="hYjFAlb" role="3cqZAp">
              <node concept="3clFbS" id="hYjFAlc" role="2LFqv$">
                <node concept="lc7rE" id="i0uAwFu" role="3cqZAp">
                  <node concept="l8MVK" id="i0uAwFw" role="lcghm" />
                  <node concept="la8eA" id="i0uIbwt" role="lcghm">
                    <property role="ldcpH" value="true" />
                    <property role="lacIc" value="case " />
                  </node>
                </node>
                <node concept="3clFbJ" id="hYjFM4t" role="3cqZAp">
                  <node concept="3clFbS" id="hYjFM4u" role="3clFbx">
                    <node concept="3cpWs8" id="hYjG0qU" role="3cqZAp">
                      <node concept="3cpWsn" id="hYjG0qV" role="3cpWs9">
                        <property role="TrG5h" value="enumConstant" />
                        <node concept="3Tqbb2" id="hYjG0qW" role="1tU5fm">
                          <ref role="ehGHo" to="tpee:fKRm8J8" resolve="EnumConstantReference" />
                        </node>
                        <node concept="10QFUN" id="hYjG65B" role="33vP2m">
                          <node concept="3Tqbb2" id="hYjG65C" role="10QFUM">
                            <ref role="ehGHo" to="tpee:fKRm8J8" resolve="EnumConstantReference" />
                          </node>
                          <node concept="2OqwBi" id="hYjG65D" role="10QFUP">
                            <node concept="37vLTw" id="3GM_nagTsQG" role="2Oq$k0">
                              <ref role="3cqZAo" node="hYjFAlf" resolve="sc" />
                            </node>
                            <node concept="3TrEf2" id="hYjG65F" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpee:gVKbmvf" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="lc7rE" id="i0uAw_W" role="3cqZAp">
                      <node concept="l9hG8" id="i0uAw_Y" role="lcghm">
                        <node concept="2OqwBi" id="hYjGnB9" role="lb14g">
                          <node concept="2OqwBi" id="hYjGnBa" role="2Oq$k0">
                            <node concept="37vLTw" id="3GM_nagT_SF" role="2Oq$k0">
                              <ref role="3cqZAo" node="hYjG0qV" resolve="enumConstant" />
                            </node>
                            <node concept="3TrEf2" id="hYjGnBc" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpee:fKRm8Ja" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="hYjGnBd" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="hYjFRbx" role="3clFbw">
                    <node concept="2OqwBi" id="hYjFQB4" role="2Oq$k0">
                      <node concept="37vLTw" id="3GM_nagTwBj" role="2Oq$k0">
                        <ref role="3cqZAo" node="hYjFAlf" resolve="sc" />
                      </node>
                      <node concept="3TrEf2" id="hYjFR01" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:gVKbmvf" />
                      </node>
                    </node>
                    <node concept="1mIQ4w" id="hYjFRRx" role="2OqNvi">
                      <node concept="chp4Y" id="hYjFTtA" role="cj9EA">
                        <ref role="cht4Q" to="tpee:fKRm8J8" resolve="EnumConstantReference" />
                      </node>
                    </node>
                  </node>
                  <node concept="9aQIb" id="hYjGoYC" role="9aQIa">
                    <node concept="3clFbS" id="hYjGoYD" role="9aQI4">
                      <node concept="lc7rE" id="i0uAwqC" role="3cqZAp">
                        <node concept="l9hG8" id="i0uAwqE" role="lcghm">
                          <node concept="2OqwBi" id="hYjGr31" role="lb14g">
                            <node concept="37vLTw" id="3GM_nagTySH" role="2Oq$k0">
                              <ref role="3cqZAo" node="hYjFAlf" resolve="sc" />
                            </node>
                            <node concept="3TrEf2" id="hYjGruU" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpee:gVKbmvf" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="lc7rE" id="i0$r7Fv" role="3cqZAp">
                  <node concept="la8eA" id="i0$r7Wo" role="lcghm">
                    <property role="lacIc" value=":" />
                  </node>
                </node>
                <node concept="3izx1p" id="hZKbMBR" role="3cqZAp">
                  <node concept="3clFbS" id="hZKbMBS" role="3izTki">
                    <node concept="lc7rE" id="i0uAwrM" role="3cqZAp">
                      <node concept="l9hG8" id="i0uAwrO" role="lcghm">
                        <node concept="2OqwBi" id="hYjGyFy" role="lb14g">
                          <node concept="37vLTw" id="3GM_nagTrHJ" role="2Oq$k0">
                            <ref role="3cqZAo" node="hYjFAlf" resolve="sc" />
                          </node>
                          <node concept="3TrEf2" id="hYjGzan" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpee:gVKbo18" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="hYjFDG$" role="1DdaDG">
                <node concept="117lpO" id="hYjFD_q" role="2Oq$k0" />
                <node concept="3Tsc0h" id="hYjFEAL" role="2OqNvi">
                  <ref role="3TtcxE" to="tpee:gVKbHMJ" />
                </node>
              </node>
              <node concept="3cpWsn" id="hYjFAlf" role="1Duv9x">
                <property role="TrG5h" value="sc" />
                <node concept="3Tqbb2" id="hYjFBO2" role="1tU5fm">
                  <ref role="ehGHo" to="tpee:gVKbdOr" resolve="SwitchCase" />
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="i0uAwFL" role="3cqZAp">
              <node concept="l8MVK" id="i0uAwFN" role="lcghm" />
              <node concept="la8eA" id="i0uIfO8" role="lcghm">
                <property role="ldcpH" value="true" />
                <property role="lacIc" value="default:" />
              </node>
            </node>
            <node concept="3izx1p" id="hZKbJ7t" role="3cqZAp">
              <node concept="3clFbS" id="hZKbJ7u" role="3izTki">
                <node concept="lc7rE" id="i0uAwGN" role="3cqZAp">
                  <node concept="l9hG8" id="i0uAwGP" role="lcghm">
                    <node concept="2OqwBi" id="hYjGLrb" role="lb14g">
                      <node concept="117lpO" id="hYjGLlj" role="2Oq$k0" />
                      <node concept="3TrEf2" id="hYjGMfv" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:gVKb1HI" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="i0uIjQt" role="3cqZAp">
          <node concept="l8MVK" id="i0$r05n" role="lcghm" />
          <node concept="la8eA" id="i0uIkoF" role="lcghm">
            <property role="ldcpH" value="true" />
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYjGWgj">
    <property role="3GE5qa" value="control_flow" />
    <ref role="WuzLi" to="tpee:h1HWtzo" resolve="SynchronizedStatement" />
    <node concept="11bSqf" id="hYjGWgk" role="11c4hB">
      <node concept="3clFbS" id="hYjGWgl" role="2VODD2">
        <node concept="lc7rE" id="i0$ruv7" role="3cqZAp">
          <node concept="l8MVK" id="i0$ruJZ" role="lcghm" />
        </node>
        <node concept="1bpajm" id="i0uOyGD" role="3cqZAp" />
        <node concept="lc7rE" id="i0uAw$y" role="3cqZAp">
          <node concept="la8eA" id="i0uAw$_" role="lcghm">
            <property role="lacIc" value="synchronized (" />
          </node>
          <node concept="l9hG8" id="i0uAw$A" role="lcghm">
            <node concept="2OqwBi" id="hZij2bi" role="lb14g">
              <node concept="117lpO" id="hZij268" role="2Oq$k0" />
              <node concept="3TrEf2" id="hZij2pg" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:h1HWF$g" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAw$B" role="lcghm">
            <property role="lacIc" value=") {" />
          </node>
        </node>
        <node concept="3izx1p" id="hZKbVfA" role="3cqZAp">
          <node concept="3clFbS" id="hZKbVfB" role="3izTki">
            <node concept="lc7rE" id="i0uAwvw" role="3cqZAp">
              <node concept="l9hG8" id="i0uAwvy" role="lcghm">
                <node concept="2OqwBi" id="hYjHklE" role="lb14g">
                  <node concept="117lpO" id="hYjHkdm" role="2Oq$k0" />
                  <node concept="3TrEf2" id="hYjHlMw" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:h1HWH_s" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="i0uNCra" role="3cqZAp">
          <node concept="l8MVK" id="i0$ry10" role="lcghm" />
          <node concept="la8eA" id="i0uNCUs" role="lcghm">
            <property role="ldcpH" value="true" />
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYjHsIw">
    <ref role="WuzLi" to="tpee:gVK4zB9" resolve="TernaryOperatorExpression" />
    <node concept="11bSqf" id="hYjHsIx" role="11c4hB">
      <node concept="3clFbS" id="hYjHsIy" role="2VODD2">
        <node concept="lc7rE" id="i0uAwH7" role="3cqZAp">
          <node concept="la8eA" id="i0uAwH9" role="lcghm">
            <property role="lacIc" value="(" />
          </node>
          <node concept="l9hG8" id="i0uAwHa" role="lcghm">
            <node concept="2OqwBi" id="hZij7fp" role="lb14g">
              <node concept="117lpO" id="hZij78N" role="2Oq$k0" />
              <node concept="3TrEf2" id="hZij8pZ" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:gVK4C9J" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwHq" role="lcghm">
            <property role="lacIc" value=" ? " />
          </node>
        </node>
        <node concept="lc7rE" id="i0uAwJI" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwJK" role="lcghm">
            <node concept="2OqwBi" id="hYjHCMM" role="lb14g">
              <node concept="117lpO" id="hYjHCA4" role="2Oq$k0" />
              <node concept="3TrEf2" id="hYjHEgQ" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:gVK4E70" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwJL" role="lcghm">
            <property role="lacIc" value=" : " />
          </node>
        </node>
        <node concept="lc7rE" id="i0$rPvC" role="3cqZAp">
          <node concept="l9hG8" id="i0$rPDF" role="lcghm">
            <node concept="2OqwBi" id="i0$rPDG" role="lb14g">
              <node concept="117lpO" id="i0$rPDH" role="2Oq$k0" />
              <node concept="3TrEf2" id="i0$rPDI" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:gVK4GVs" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="i0uOB8F" role="3cqZAp">
          <node concept="la8eA" id="i0uOBFR" role="lcghm">
            <property role="lacIc" value=")" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYjHXa$">
    <property role="3GE5qa" value="classifiers.refs" />
    <ref role="WuzLi" to="tpee:h9VxSy2" resolve="ThisConstructorInvocation" />
    <node concept="11bSqf" id="hYjHXa_" role="11c4hB">
      <node concept="3clFbS" id="hYjHXaA" role="2VODD2">
        <node concept="lc7rE" id="i0$s7y4" role="3cqZAp">
          <node concept="l8MVK" id="i0$s7MH" role="lcghm" />
        </node>
        <node concept="1bpajm" id="i0uOGRc" role="3cqZAp" />
        <node concept="lc7rE" id="i0uAwmV" role="3cqZAp">
          <node concept="la8eA" id="i0uAwmY" role="lcghm">
            <property role="lacIc" value="this(" />
          </node>
          <node concept="l9S2W" id="i0uAwmZ" role="lcghm">
            <property role="XA4eZ" value="true" />
            <property role="lbP0B" value=", " />
            <node concept="2OqwBi" id="hZmtzBk" role="lbANJ">
              <node concept="117lpO" id="hZmtzxV" role="2Oq$k0" />
              <node concept="3Tsc0h" id="i4hDykF" role="2OqNvi">
                <ref role="3TtcxE" to="tpee:fz7wK6I" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwn0" role="lcghm">
            <property role="lacIc" value=");" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYjImvF">
    <ref role="WuzLi" to="tpee:f$Xjq0c" resolve="ThisExpression" />
    <node concept="11bSqf" id="hYjImvG" role="11c4hB">
      <node concept="3clFbS" id="hYjImvH" role="2VODD2">
        <node concept="3clFbJ" id="hYjIo0D" role="3cqZAp">
          <node concept="2OqwBi" id="hYjIpax" role="3clFbw">
            <node concept="2OqwBi" id="hYjIoxF" role="2Oq$k0">
              <node concept="117lpO" id="hYjIopn" role="2Oq$k0" />
              <node concept="3TrEf2" id="hYjIoZi" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:hdHBi6N" />
              </node>
            </node>
            <node concept="3x8VRR" id="hYjIr69" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="hYjIo0F" role="3clFbx">
            <node concept="lc7rE" id="i0uAwnD" role="3cqZAp">
              <node concept="l9hG8" id="i0uAwnF" role="lcghm">
                <node concept="2OqwBi" id="hYjIxu3" role="lb14g">
                  <node concept="2OqwBi" id="hYjIxu4" role="2Oq$k0">
                    <node concept="117lpO" id="hYjIxu5" role="2Oq$k0" />
                    <node concept="3TrEf2" id="hYjIxu6" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:hdHBi6N" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="hYjIxu7" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="i0uAwnG" role="lcghm">
                <property role="lacIc" value=".this" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="hYjI$Qx" role="9aQIa">
            <node concept="3clFbS" id="hYjI$Qy" role="9aQI4">
              <node concept="lc7rE" id="i0uAw_L" role="3cqZAp">
                <node concept="la8eA" id="i0uAw_N" role="lcghm">
                  <property role="lacIc" value="this" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYjIIl$">
    <property role="3GE5qa" value="control_flow.try_catch" />
    <ref role="WuzLi" to="tpee:gWYS8bo" resolve="ThrowStatement" />
    <node concept="11bSqf" id="hYjIIl_" role="11c4hB">
      <node concept="3clFbS" id="hYjIIlA" role="2VODD2">
        <node concept="lc7rE" id="i0uAw$D" role="3cqZAp">
          <node concept="l8MVK" id="i0uAw$F" role="lcghm" />
          <node concept="la8eA" id="i0$sgkF" role="lcghm">
            <property role="ldcpH" value="true" />
            <property role="lacIc" value="throw " />
          </node>
          <node concept="l9hG8" id="i0uAw$G" role="lcghm">
            <node concept="2OqwBi" id="hYjIOyw" role="lb14g">
              <node concept="117lpO" id="hYjIOsS" role="2Oq$k0" />
              <node concept="3TrEf2" id="hYjIOXr" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:gWYScPJ" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAw$H" role="lcghm">
            <property role="lacIc" value=";" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYjISvP">
    <property role="3GE5qa" value="control_flow.try_catch" />
    <ref role="WuzLi" to="tpee:gWSfAtL" resolve="TryCatchStatement" />
    <node concept="11bSqf" id="hYjISvQ" role="11c4hB">
      <node concept="3clFbS" id="hYjISvR" role="2VODD2">
        <node concept="lc7rE" id="i0$snNM" role="3cqZAp">
          <node concept="l8MVK" id="i0$so6R" role="lcghm" />
        </node>
        <node concept="1bpajm" id="i0uONVd" role="3cqZAp" />
        <node concept="lc7rE" id="i0uAwIM" role="3cqZAp">
          <node concept="la8eA" id="i0uAwIP" role="lcghm">
            <property role="lacIc" value="try {" />
          </node>
        </node>
        <node concept="3izx1p" id="hZKc4x0" role="3cqZAp">
          <node concept="3clFbS" id="hZKc4x1" role="3izTki">
            <node concept="lc7rE" id="i0uAwCA" role="3cqZAp">
              <node concept="l9hG8" id="i0uAwCS" role="lcghm">
                <node concept="2OqwBi" id="hYjJ2tn" role="lb14g">
                  <node concept="117lpO" id="hYjJ2oe" role="2Oq$k0" />
                  <node concept="3TrEf2" id="hYjJ2VW" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:gWSfCfk" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="i0$swLm" role="3cqZAp">
          <node concept="l8MVK" id="i0$sx10" role="lcghm" />
        </node>
        <node concept="1DcWWT" id="hYjJ7yh" role="3cqZAp">
          <node concept="3clFbS" id="hYjJ7yi" role="2LFqv$">
            <node concept="lc7rE" id="i0uAwvL" role="3cqZAp">
              <node concept="l9hG8" id="i0uAwvN" role="lcghm">
                <node concept="37vLTw" id="3GM_nagTs4n" role="lb14g">
                  <ref role="3cqZAo" node="hYjJ7yl" resolve="clause" />
                </node>
              </node>
              <node concept="l8MVK" id="i0uAwvO" role="lcghm" />
            </node>
          </node>
          <node concept="2OqwBi" id="hYjJi8$" role="1DdaDG">
            <node concept="117lpO" id="hYjJhZH" role="2Oq$k0" />
            <node concept="3Tsc0h" id="hYjJiAW" role="2OqNvi">
              <ref role="3TtcxE" to="tpee:gWTEbCv" />
            </node>
          </node>
          <node concept="3cpWsn" id="hYjJ7yl" role="1Duv9x">
            <property role="TrG5h" value="clause" />
            <node concept="3Tqbb2" id="hYjJ7NI" role="1tU5fm">
              <ref role="ehGHo" to="tpee:gWTDmSJ" resolve="CatchClause" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="i0uOOUI" role="3cqZAp">
          <node concept="la8eA" id="i0uOPm_" role="lcghm">
            <property role="ldcpH" value="true" />
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYjJqfH">
    <property role="3GE5qa" value="control_flow.try_catch" />
    <ref role="WuzLi" to="tpee:gMGUZlm" resolve="TryStatement" />
    <node concept="11bSqf" id="hYjJqfI" role="11c4hB">
      <node concept="3clFbS" id="hYjJqfJ" role="2VODD2">
        <node concept="lc7rE" id="i0$sFzV" role="3cqZAp">
          <node concept="l8MVK" id="i0$sFPi" role="lcghm" />
        </node>
        <node concept="1bpajm" id="i0uP64R" role="3cqZAp" />
        <node concept="lc7rE" id="i0uAwAw" role="3cqZAp">
          <node concept="la8eA" id="i0uAwAz" role="lcghm">
            <property role="lacIc" value="try {" />
          </node>
        </node>
        <node concept="3izx1p" id="hZKcaPd" role="3cqZAp">
          <node concept="3clFbS" id="hZKcaPe" role="3izTki">
            <node concept="lc7rE" id="i0uAw$s" role="3cqZAp">
              <node concept="l9hG8" id="i0uAw$u" role="lcghm">
                <node concept="2OqwBi" id="hYjJzGw" role="lb14g">
                  <node concept="117lpO" id="hYjJzAS" role="2Oq$k0" />
                  <node concept="3TrEf2" id="hYjJzYS" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:gMGV8eI" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="i0$sOfd" role="3cqZAp">
          <node concept="l8MVK" id="i0$sOw5" role="lcghm" />
        </node>
        <node concept="1DcWWT" id="hYjJCrQ" role="3cqZAp">
          <node concept="3clFbS" id="hYjJCrR" role="2LFqv$">
            <node concept="lc7rE" id="i0uAwCT" role="3cqZAp">
              <node concept="l9hG8" id="i0uAwCV" role="lcghm">
                <node concept="37vLTw" id="3GM_nagTy5x" role="lb14g">
                  <ref role="3cqZAo" node="hYjJCrU" resolve="clause" />
                </node>
              </node>
              <node concept="l8MVK" id="i0uAwCW" role="lcghm" />
            </node>
          </node>
          <node concept="2OqwBi" id="hYjJEOW" role="1DdaDG">
            <node concept="117lpO" id="hYjJEDp" role="2Oq$k0" />
            <node concept="3Tsc0h" id="hYjJFeU" role="2OqNvi">
              <ref role="3TtcxE" to="tpee:gWTEX_W" />
            </node>
          </node>
          <node concept="3cpWsn" id="hYjJCrU" role="1Duv9x">
            <property role="TrG5h" value="clause" />
            <node concept="3Tqbb2" id="hYjJCKf" role="1tU5fm">
              <ref role="ehGHo" to="tpee:gWTDmSJ" resolve="CatchClause" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="i0uOUpU" role="3cqZAp">
          <node concept="la8eA" id="i0uOVil" role="lcghm">
            <property role="ldcpH" value="true" />
            <property role="lacIc" value="} finally {" />
          </node>
        </node>
        <node concept="3izx1p" id="hZKc8kh" role="3cqZAp">
          <node concept="3clFbS" id="hZKc8ki" role="3izTki">
            <node concept="lc7rE" id="i0uAwnu" role="3cqZAp">
              <node concept="l9hG8" id="i0uAwnw" role="lcghm">
                <node concept="2OqwBi" id="hYjJNNY" role="lb14g">
                  <node concept="117lpO" id="hYjJNEG" role="2Oq$k0" />
                  <node concept="3TrEf2" id="hYjJOcd" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:gMGVbsj" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="i0uP26T" role="3cqZAp">
          <node concept="l8MVK" id="i0$sJX0" role="lcghm" />
          <node concept="la8eA" id="i0uP2Ab" role="lcghm">
            <property role="ldcpH" value="true" />
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYkAQIC">
    <property role="3GE5qa" value="generics" />
    <ref role="WuzLi" to="tpee:g96euPO" resolve="TypeVariableDeclaration" />
    <node concept="11bSqf" id="hYkAQID" role="11c4hB">
      <node concept="3clFbS" id="hYkAQIE" role="2VODD2">
        <node concept="lc7rE" id="i0uAwGn" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwGp" role="lcghm">
            <node concept="2OqwBi" id="hYkATVz" role="lb14g">
              <node concept="117lpO" id="hYkATLL" role="2Oq$k0" />
              <node concept="3TrcHB" id="hYkAUcH" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="hYkAUYi" role="3cqZAp">
          <node concept="3clFbS" id="hYkAUYj" role="3clFbx">
            <node concept="lc7rE" id="i0uAwI9" role="3cqZAp">
              <node concept="la8eA" id="i0uAwIb" role="lcghm">
                <property role="lacIc" value=" extends " />
              </node>
              <node concept="l9hG8" id="i0uAwIc" role="lcghm">
                <node concept="2OqwBi" id="hZijjHR" role="lb14g">
                  <node concept="117lpO" id="hZijjBJ" role="2Oq$k0" />
                  <node concept="3TrEf2" id="hZijkkZ" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:hFztrQw" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="hYkBHll" role="3cqZAp">
              <node concept="3clFbS" id="hYkBHlm" role="2LFqv$">
                <node concept="lc7rE" id="i0uAwKK" role="3cqZAp">
                  <node concept="la8eA" id="i0uAwL2" role="lcghm">
                    <property role="lacIc" value=" &amp; " />
                  </node>
                  <node concept="l9hG8" id="3Me0PKp5hNJ" role="lcghm">
                    <node concept="37vLTw" id="3GM_nagTBed" role="lb14g">
                      <ref role="3cqZAo" node="hYkBHlp" resolve="clsType" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="hYkBLoa" role="1DdaDG">
                <node concept="117lpO" id="hYkBLfL" role="2Oq$k0" />
                <node concept="3Tsc0h" id="hYkBMb2" role="2OqNvi">
                  <ref role="3TtcxE" to="tpee:hFD4UhQ" />
                </node>
              </node>
              <node concept="3cpWsn" id="hYkBHlp" role="1Duv9x">
                <property role="TrG5h" value="clsType" />
                <node concept="3Tqbb2" id="hYkBHXv" role="1tU5fm">
                  <ref role="ehGHo" to="tpee:g7uibYu" resolve="ClassifierType" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="hYkBAHH" role="3clFbw">
            <node concept="2OqwBi" id="hYkB$N4" role="2Oq$k0">
              <node concept="117lpO" id="hYkB$EZ" role="2Oq$k0" />
              <node concept="3TrEf2" id="hYkBA6R" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:hFztrQw" />
              </node>
            </node>
            <node concept="3x8VRR" id="hYkBB9A" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYkC6xY">
    <property role="3GE5qa" value="generics" />
    <ref role="WuzLi" to="tpee:g96syBo" resolve="TypeVariableReference" />
    <node concept="11bSqf" id="hYkC6xZ" role="11c4hB">
      <node concept="3clFbS" id="hYkC6y0" role="2VODD2">
        <node concept="lc7rE" id="i0uAwEU" role="3cqZAp">
          <node concept="2yR1zb" id="3KWRMGjwarL" role="lcghm">
            <node concept="2OqwBi" id="3KWRMGjwarO" role="2yR1z8">
              <node concept="117lpO" id="3KWRMGjwarN" role="2Oq$k0" />
              <node concept="37Cfm0" id="3KWRMGjwarS" role="2OqNvi">
                <node concept="1aIX9F" id="3KWRMGjwarT" role="37CeNk">
                  <node concept="26LbJo" id="3KWRMGjwarV" role="1aIX9E">
                    <ref role="26LbJp" to="tpee:g96sUm1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYkCc6x">
    <property role="3GE5qa" value="generics" />
    <ref role="WuzLi" to="tpee:h3qUExa" resolve="UpperBoundType" />
    <node concept="11bSqf" id="hYkCc6y" role="11c4hB">
      <node concept="3clFbS" id="hYkCc6z" role="2VODD2">
        <node concept="lc7rE" id="i0uAwKG" role="3cqZAp">
          <node concept="la8eA" id="i0uAwKI" role="lcghm">
            <property role="lacIc" value="? extends " />
          </node>
          <node concept="l9hG8" id="i0uAwKJ" role="lcghm">
            <node concept="2OqwBi" id="hZijncC" role="lb14g">
              <node concept="117lpO" id="hZijn61" role="2Oq$k0" />
              <node concept="3TrEf2" id="hZijn_Q" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:h3qUExb" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYkCkUu">
    <property role="3GE5qa" value="type" />
    <ref role="WuzLi" to="tpee:hK8X2TV" resolve="VariableArityType" />
    <node concept="11bSqf" id="hYkCkUv" role="11c4hB">
      <node concept="3clFbS" id="hYkCkUw" role="2VODD2">
        <node concept="lc7rE" id="i0uAwuF" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwuH" role="lcghm">
            <node concept="2OqwBi" id="hYkCosq" role="lb14g">
              <node concept="117lpO" id="hYkCohD" role="2Oq$k0" />
              <node concept="3TrEf2" id="hYkCoVu" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:hK8Xvec" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i3HPVXp" role="lcghm">
            <property role="lacIc" value="..." />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYkCxWe">
    <ref role="WuzLi" to="tpee:fz3uBXI" resolve="VariableDeclaration" />
    <node concept="11bSqf" id="hYkCxWf" role="11c4hB">
      <node concept="3clFbS" id="hYkCxWg" role="2VODD2">
        <node concept="lc7rE" id="i0XvGDv" role="3cqZAp">
          <node concept="1bDJIP" id="i0XvHtx" role="lcghm">
            <ref role="1rvKf6" node="hYI$aNc" resolve="variableDeclaration" />
            <node concept="117lpO" id="i0XvHty" role="1ryhcI" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYkCT2U">
    <property role="3GE5qa" value="to_remove" />
    <ref role="WuzLi" to="tpee:h8PeGkH" resolve="VarType" />
    <node concept="11bSqf" id="hYkCT2V" role="11c4hB">
      <node concept="3clFbS" id="hYkCT2W" role="2VODD2">
        <node concept="3cpWs8" id="hYkDaKO" role="3cqZAp">
          <node concept="3cpWsn" id="hYkDaKP" role="3cpWs9">
            <property role="TrG5h" value="type" />
            <node concept="3Tqbb2" id="hYkDaKQ" role="1tU5fm" />
            <node concept="10Nm6u" id="hYkDeGs" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbJ" id="hYkCVlG" role="3cqZAp">
          <node concept="2OqwBi" id="hYkCWy0" role="3clFbw">
            <node concept="2OqwBi" id="hYkCVKQ" role="2Oq$k0">
              <node concept="117lpO" id="hYkCVDK" role="2Oq$k0" />
              <node concept="1mfA1w" id="hYkCW5b" role="2OqNvi" />
            </node>
            <node concept="1mIQ4w" id="hYkCWUI" role="2OqNvi">
              <node concept="chp4Y" id="hYkCYe0" role="cj9EA">
                <ref role="cht4Q" to="tpee:fz3uBXI" resolve="VariableDeclaration" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="hYkCVlI" role="3clFbx">
            <node concept="3cpWs8" id="hYkD1LQ" role="3cqZAp">
              <node concept="3cpWsn" id="hYkD1LR" role="3cpWs9">
                <property role="TrG5h" value="parent" />
                <node concept="3Tqbb2" id="hYkD1LS" role="1tU5fm">
                  <ref role="ehGHo" to="tpee:fz3uBXI" resolve="VariableDeclaration" />
                </node>
                <node concept="1PxgMI" id="i2npJvX" role="33vP2m">
                  <ref role="1PxNhF" to="tpee:fz3uBXI" resolve="VariableDeclaration" />
                  <node concept="2OqwBi" id="hYkD6b2" role="1PxMeX">
                    <node concept="117lpO" id="hYkD6b3" role="2Oq$k0" />
                    <node concept="1mfA1w" id="hYkD6b4" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="hYkDgiw" role="3cqZAp">
              <node concept="37vLTI" id="hYkDgDv" role="3clFbG">
                <node concept="2OqwBi" id="hYkDphs" role="37vLTx">
                  <node concept="2YIFZM" id="hYkDp2y" role="2Oq$k0">
                    <ref role="37wK5l" to="ua2a:~TypeChecker.getInstance():jetbrains.mps.typesystem.inference.TypeChecker" resolve="getInstance" />
                    <ref role="1Pybhc" to="ua2a:~TypeChecker" resolve="TypeChecker" />
                  </node>
                  <node concept="liA8E" id="hYkDqbl" role="2OqNvi">
                    <ref role="37wK5l" to="ua2a:~TypeChecker.getTypeOf(org.jetbrains.mps.openapi.model.SNode):org.jetbrains.mps.openapi.model.SNode" resolve="getTypeOf" />
                    <node concept="2OqwBi" id="hYkDrR2" role="37wK5m">
                      <node concept="37vLTw" id="3GM_nagTsT7" role="2Oq$k0">
                        <ref role="3cqZAo" node="hYkD1LR" resolve="parent" />
                      </node>
                      <node concept="3TrEf2" id="hYkDsqJ" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:fz3vP1I" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="3GM_nagTuwB" role="37vLTJ">
                  <ref role="3cqZAo" node="hYkDaKP" resolve="type" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="hYkDtXp" role="3cqZAp">
          <node concept="3clFbS" id="hYkDtXq" role="3clFbx">
            <node concept="lc7rE" id="i0uAwyO" role="3cqZAp">
              <node concept="la8eA" id="i0uAwyQ" role="lcghm">
                <property role="lacIc" value="???" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="hYkDu$M" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTAXi" role="2Oq$k0">
              <ref role="3cqZAo" node="hYkDaKP" resolve="type" />
            </node>
            <node concept="3w_OXm" id="hYkDv9X" role="2OqNvi" />
          </node>
          <node concept="9aQIb" id="hYkDwU$" role="9aQIa">
            <node concept="3clFbS" id="hYkDwU_" role="9aQI4">
              <node concept="lc7rE" id="i0uAwIW" role="3cqZAp">
                <node concept="l9hG8" id="i0uAwIY" role="lcghm">
                  <node concept="37vLTw" id="3GM_nagTtAJ" role="lb14g">
                    <ref role="3cqZAo" node="hYkDaKP" resolve="type" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYkDB0o">
    <property role="3GE5qa" value="classifiers.visibility" />
    <ref role="WuzLi" to="tpee:gFTlX_I" resolve="Visibility" />
    <node concept="11bSqf" id="hYkDB0p" role="11c4hB">
      <node concept="3clFbS" id="hYkDB0q" role="2VODD2">
        <node concept="3clFbJ" id="hYkDEkA" role="3cqZAp">
          <node concept="2OqwBi" id="hYkDFDR" role="3clFbw">
            <node concept="117lpO" id="hYkDFw$" role="2Oq$k0" />
            <node concept="1mIQ4w" id="hYkDG9U" role="2OqNvi">
              <node concept="chp4Y" id="hYkDH3N" role="cj9EA">
                <ref role="cht4Q" to="tpee:gFTm6Wc" resolve="PrivateVisibility" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="hYkDEkC" role="3clFbx">
            <node concept="lc7rE" id="i0uAw_k" role="3cqZAp">
              <node concept="la8eA" id="i0uAw_m" role="lcghm">
                <property role="lacIc" value="private " />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="hYkDNW5" role="3cqZAp">
          <node concept="3clFbS" id="hYkDNW6" role="3clFbx">
            <node concept="lc7rE" id="i0uAwFr" role="3cqZAp">
              <node concept="la8eA" id="i0uAwFt" role="lcghm">
                <property role="lacIc" value="protected " />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="hYkDOKD" role="3clFbw">
            <node concept="117lpO" id="hYkDOD4" role="2Oq$k0" />
            <node concept="1mIQ4w" id="hYkDPeZ" role="2OqNvi">
              <node concept="chp4Y" id="hYkDQ7b" role="cj9EA">
                <ref role="cht4Q" to="tpee:gFTmbq6" resolve="ProtectedVisibility" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="hYkDShs" role="3cqZAp">
          <node concept="3clFbS" id="hYkDSht" role="3clFbx">
            <node concept="lc7rE" id="i0uAwIZ" role="3cqZAp">
              <node concept="la8eA" id="i0uAwJ1" role="lcghm">
                <property role="lacIc" value="public " />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="hYkDSXW" role="3clFbw">
            <node concept="117lpO" id="hYkDSQB" role="2Oq$k0" />
            <node concept="1mIQ4w" id="hYkDTr4" role="2OqNvi">
              <node concept="chp4Y" id="hYkDU5_" role="cj9EA">
                <ref role="cht4Q" to="tpee:gFTm1ZL" resolve="PublicVisibility" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYkDWDX">
    <property role="3GE5qa" value="primitive" />
    <ref role="WuzLi" to="tpee:fzcqZ_H" resolve="VoidType" />
    <node concept="11bSqf" id="hYkDWDY" role="11c4hB">
      <node concept="3clFbS" id="hYkDWDZ" role="2VODD2">
        <node concept="lc7rE" id="i0uAwpU" role="3cqZAp">
          <node concept="la8eA" id="i0uAwpW" role="lcghm">
            <property role="lacIc" value="void" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYkE0iu">
    <property role="3GE5qa" value="control_flow.loops" />
    <ref role="WuzLi" to="tpee:fE$JKWJ" resolve="WhileStatement" />
    <node concept="11bSqf" id="hYkE0iv" role="11c4hB">
      <node concept="3clFbS" id="hYkE0iw" role="2VODD2">
        <node concept="3clFbJ" id="7QIxtrFgeWn" role="3cqZAp">
          <node concept="3clFbS" id="7QIxtrFgeWo" role="3clFbx">
            <node concept="lc7rE" id="7QIxtrFgeWp" role="3cqZAp">
              <node concept="l8MVK" id="7QIxtrFgeWq" role="lcghm" />
              <node concept="l9hG8" id="7QIxtrFgeWr" role="lcghm">
                <node concept="2OqwBi" id="7QIxtrFgeWs" role="lb14g">
                  <node concept="2OqwBi" id="7QIxtrFgeWt" role="2Oq$k0">
                    <node concept="117lpO" id="7QIxtrFgeWu" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7QIxtrFgeWv" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:kcijJTll4L" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="7QIxtrFgeWw" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="7QIxtrFgeWx" role="lcghm">
                <property role="lacIc" value=":" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7QIxtrFgeWy" role="3clFbw">
            <node concept="10Nm6u" id="7QIxtrFgeWz" role="3uHU7w" />
            <node concept="2OqwBi" id="7QIxtrFgeW$" role="3uHU7B">
              <node concept="117lpO" id="7QIxtrFgeW_" role="2Oq$k0" />
              <node concept="3TrEf2" id="7QIxtrFgeWA" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:kcijJTll4L" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="7QIxtrFgeWB" role="3eNLev">
            <node concept="3clFbS" id="7QIxtrFgeWC" role="3eOfB_">
              <node concept="lc7rE" id="7QIxtrFgeWD" role="3cqZAp">
                <node concept="l8MVK" id="7QIxtrFgeWE" role="lcghm" />
                <node concept="l9hG8" id="7QIxtrFgeWF" role="lcghm">
                  <node concept="2OqwBi" id="7QIxtrFgeWG" role="lb14g">
                    <node concept="117lpO" id="7QIxtrFgeWH" role="2Oq$k0" />
                    <node concept="3TrcHB" id="7QIxtrFgeWI" role="2OqNvi">
                      <ref role="3TsBF5" to="tpee:ht5Hjst" resolve="label" />
                    </node>
                  </node>
                </node>
                <node concept="la8eA" id="7QIxtrFgeWJ" role="lcghm">
                  <property role="lacIc" value=":" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="7QIxtrFgeWK" role="3eO9$A">
              <node concept="10Nm6u" id="7QIxtrFgeWL" role="3uHU7w" />
              <node concept="2OqwBi" id="7QIxtrFgeWM" role="3uHU7B">
                <node concept="117lpO" id="7QIxtrFgeWN" role="2Oq$k0" />
                <node concept="3TrcHB" id="7QIxtrFgeWO" role="2OqNvi">
                  <ref role="3TsBF5" to="tpee:ht5Hjst" resolve="label" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="i0$oOzb" role="3cqZAp">
          <node concept="l8MVK" id="i0$oOOM" role="lcghm" />
        </node>
        <node concept="1bpajm" id="i0$oQ9k" role="3cqZAp" />
        <node concept="lc7rE" id="i0uAwqq" role="3cqZAp">
          <node concept="la8eA" id="i0uAwqt" role="lcghm">
            <property role="lacIc" value="while (" />
          </node>
          <node concept="l9hG8" id="i0uAwqu" role="lcghm">
            <node concept="2OqwBi" id="hZijsaX" role="lb14g">
              <node concept="117lpO" id="hZijs5l" role="2Oq$k0" />
              <node concept="3TrEf2" id="hZijsAQ" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fE$JKWK" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwqv" role="lcghm">
            <property role="lacIc" value=") {" />
          </node>
        </node>
        <node concept="3izx1p" id="hZKcdy7" role="3cqZAp">
          <node concept="3clFbS" id="hZKcdy8" role="3izTki">
            <node concept="lc7rE" id="i0uAwBi" role="3cqZAp">
              <node concept="l9hG8" id="i0uAwBk" role="lcghm">
                <node concept="2OqwBi" id="hYkEseN" role="lb14g">
                  <node concept="117lpO" id="hYkEs7W" role="2Oq$k0" />
                  <node concept="3TrEf2" id="hYkEu9t" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:gMLFqrC" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="i0uP7RT" role="3cqZAp">
          <node concept="l8MVK" id="i0$oFM_" role="lcghm" />
          <node concept="la8eA" id="i0uP8hN" role="lcghm">
            <property role="ldcpH" value="true" />
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYkE$Sw">
    <property role="3GE5qa" value="generics" />
    <ref role="WuzLi" to="tpee:h3qTviz" resolve="WildCardType" />
    <node concept="11bSqf" id="hYkE$Sx" role="11c4hB">
      <node concept="3clFbS" id="hYkE$Sy" role="2VODD2">
        <node concept="lc7rE" id="i0uAwof" role="3cqZAp">
          <node concept="la8eA" id="i0uAwoh" role="lcghm">
            <property role="lacIc" value="?" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYH_853">
    <property role="3GE5qa" value="classifiers" />
    <ref role="WuzLi" to="tpee:fKRm8J8" resolve="EnumConstantReference" />
    <node concept="11bSqf" id="hYH_854" role="11c4hB">
      <node concept="3clFbS" id="hYH_855" role="2VODD2">
        <node concept="3clFbJ" id="15ZIlddgzKr" role="3cqZAp">
          <node concept="3clFbS" id="15ZIlddgzKs" role="3clFbx">
            <node concept="lc7rE" id="15ZIlddgzKI" role="3cqZAp">
              <node concept="2yR1zb" id="15ZIlddgzKK" role="lcghm">
                <node concept="2OqwBi" id="15ZIlddgzKL" role="2yR1z8">
                  <node concept="117lpO" id="15ZIlddgzKM" role="2Oq$k0" />
                  <node concept="37Cfm0" id="15ZIlddgzKN" role="2OqNvi">
                    <node concept="1aIX9F" id="15ZIlddgzKO" role="37CeNk">
                      <node concept="26LbJo" id="15ZIlddgzKP" role="1aIX9E">
                        <ref role="26LbJp" to="tpee:fKRm8Ja" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="15ZIlddgzK_" role="3clFbw">
            <node concept="2OqwBi" id="15ZIlddgzKw" role="2Oq$k0">
              <node concept="117lpO" id="15ZIlddgzKv" role="2Oq$k0" />
              <node concept="1mfA1w" id="15ZIlddgzK$" role="2OqNvi" />
            </node>
            <node concept="1mIQ4w" id="15ZIlddgzKD" role="2OqNvi">
              <node concept="chp4Y" id="15ZIlddgzKF" role="cj9EA">
                <ref role="cht4Q" to="tpee:gVKbdOr" resolve="SwitchCase" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="15ZIlddgzKG" role="9aQIa">
            <node concept="3clFbS" id="15ZIlddgzKH" role="9aQI4">
              <node concept="lc7rE" id="i0uAwqx" role="3cqZAp">
                <node concept="1bDJIP" id="6fUw26UkGGR" role="lcghm">
                  <ref role="1rvKf6" node="6fUw26UhtdA" resolve="blClassifierRef" />
                  <node concept="2OqwBi" id="6fUw26UkGGS" role="1ryhcI">
                    <node concept="117lpO" id="6fUw26UkGGT" role="2Oq$k0" />
                    <node concept="37Cfm0" id="6fUw26UkGGU" role="2OqNvi">
                      <node concept="1aIX9F" id="6fUw26UkGGV" role="37CeNk">
                        <node concept="26LbJo" id="6fUw26UkGGW" role="1aIX9E">
                          <ref role="26LbJp" to="tpee:gDPx2zY" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="la8eA" id="i0uAwqz" role="lcghm">
                  <property role="lacIc" value="." />
                </node>
                <node concept="2yR1zb" id="3KWRMGjwaqR" role="lcghm">
                  <node concept="2OqwBi" id="3KWRMGjwaqU" role="2yR1z8">
                    <node concept="117lpO" id="3KWRMGjwaqT" role="2Oq$k0" />
                    <node concept="37Cfm0" id="3KWRMGjwaqY" role="2OqNvi">
                      <node concept="1aIX9F" id="3KWRMGjwaqZ" role="37CeNk">
                        <node concept="26LbJo" id="3KWRMGjwar1" role="1aIX9E">
                          <ref role="26LbJp" to="tpee:fKRm8Ja" />
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
    </node>
  </node>
  <node concept="WtQ9Q" id="hYH_Gbb">
    <property role="3GE5qa" value="classifiers.refs" />
    <ref role="WuzLi" to="tpee:hqOwXtU" resolve="FieldReferenceOperation" />
    <node concept="11bSqf" id="hYH_Gbc" role="11c4hB">
      <node concept="3clFbS" id="hYH_Gbd" role="2VODD2">
        <node concept="lc7rE" id="i0uAwFI" role="3cqZAp">
          <node concept="2yR1zb" id="3KWRMGjwarr" role="lcghm">
            <node concept="2OqwBi" id="3KWRMGjwaru" role="2yR1z8">
              <node concept="117lpO" id="3KWRMGjwart" role="2Oq$k0" />
              <node concept="37Cfm0" id="3KWRMGjwdT0" role="2OqNvi">
                <node concept="1aIX9F" id="3KWRMGjwdT1" role="37CeNk">
                  <node concept="26LbJo" id="3KWRMGjwdT3" role="1aIX9E">
                    <ref role="26LbJp" to="tpee:hqOxapj" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYHJyBt">
    <property role="3GE5qa" value="classifiers" />
    <ref role="WuzLi" to="tpee:hOunr5m" resolve="EnumValueOfExpression" />
    <node concept="11bSqf" id="hYHJyBu" role="11c4hB">
      <node concept="3clFbS" id="hYHJyBv" role="2VODD2">
        <node concept="lc7rE" id="i0uAwyh" role="3cqZAp">
          <node concept="1bDJIP" id="6fUw26UkGH8" role="lcghm">
            <ref role="1rvKf6" node="6fUw26UhtdA" resolve="blClassifierRef" />
            <node concept="2OqwBi" id="6fUw26UkGH9" role="1ryhcI">
              <node concept="117lpO" id="6fUw26UkGHa" role="2Oq$k0" />
              <node concept="37Cfm0" id="6fUw26UkGHb" role="2OqNvi">
                <node concept="1aIX9F" id="6fUw26UkGHc" role="37CeNk">
                  <node concept="26LbJo" id="6fUw26UkGHd" role="1aIX9E">
                    <ref role="26LbJp" to="tpee:hOun$nC" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwyj" role="lcghm">
            <property role="lacIc" value="." />
          </node>
          <node concept="la8eA" id="i0uAwyk" role="lcghm">
            <property role="lacIc" value="valueOf(" />
          </node>
          <node concept="l9hG8" id="i0uAwyl" role="lcghm">
            <node concept="2OqwBi" id="hZigRDQ" role="lb14g">
              <node concept="117lpO" id="hZigRzY" role="2Oq$k0" />
              <node concept="3TrEf2" id="hZigS16" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:hOunwpt" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwym" role="lcghm">
            <property role="lacIc" value=")" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYHJKVW">
    <property role="3GE5qa" value="classifiers" />
    <ref role="WuzLi" to="tpee:hOuiWTm" resolve="EnumValuesExpression" />
    <node concept="11bSqf" id="hYHJKVX" role="11c4hB">
      <node concept="3clFbS" id="hYHJKVY" role="2VODD2">
        <node concept="lc7rE" id="i0uAw_I" role="3cqZAp">
          <node concept="1bDJIP" id="6fUw26UkGHh" role="lcghm">
            <ref role="1rvKf6" node="6fUw26UhtdA" resolve="blClassifierRef" />
            <node concept="2OqwBi" id="6fUw26UkGHi" role="1ryhcI">
              <node concept="117lpO" id="6fUw26UkGHj" role="2Oq$k0" />
              <node concept="37Cfm0" id="6fUw26UkGHk" role="2OqNvi">
                <node concept="1aIX9F" id="6fUw26UkGHl" role="37CeNk">
                  <node concept="26LbJo" id="6fUw26UkGHm" role="1aIX9E">
                    <ref role="26LbJp" to="tpee:hOuiZqJ" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAw_K" role="lcghm">
            <property role="lacIc" value=".values()" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYIN$rU">
    <ref role="WuzLi" to="tpee:fzclF8j" resolve="ExpressionStatement" />
    <node concept="11bSqf" id="hYIN$rV" role="11c4hB">
      <node concept="3clFbS" id="hYIN$rW" role="2VODD2">
        <node concept="lc7rE" id="i0$dgy7" role="3cqZAp">
          <node concept="l8MVK" id="i0$dgTl" role="lcghm" />
        </node>
        <node concept="1bpajm" id="i0uGznh" role="3cqZAp" />
        <node concept="lc7rE" id="i0uAwvS" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwvV" role="lcghm">
            <node concept="2OqwBi" id="hYINNNn" role="lb14g">
              <node concept="117lpO" id="hYINNG1" role="2Oq$k0" />
              <node concept="3TrEf2" id="hYINOaB" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fzclF8k" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwvW" role="lcghm">
            <property role="lacIc" value=";" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYIU2T1">
    <property role="3GE5qa" value="classifiers" />
    <ref role="WuzLi" to="tpee:hqOqwz4" resolve="DotExpression" />
    <node concept="11bSqf" id="hYIU2T2" role="11c4hB">
      <node concept="3clFbS" id="hYIU2T3" role="2VODD2">
        <node concept="lc7rE" id="i0uAwr9" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwrb" role="lcghm">
            <node concept="2OqwBi" id="hYIUbpT" role="lb14g">
              <node concept="117lpO" id="hYIUbfS" role="2Oq$k0" />
              <node concept="3TrEf2" id="hYIUc7Y" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:hqOq$gm" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwrc" role="lcghm">
            <property role="lacIc" value="." />
          </node>
          <node concept="l9hG8" id="i0uAwrd" role="lcghm">
            <node concept="2OqwBi" id="hZigAQ8" role="lb14g">
              <node concept="117lpO" id="hZigAK0" role="2Oq$k0" />
              <node concept="3TrEf2" id="hZigBiZ" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:hqOqNr4" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYRNL76">
    <property role="3GE5qa" value="classifiers.members" />
    <ref role="WuzLi" to="tpee:fzclF84" resolve="ConstructorDeclaration" />
    <node concept="11bSqf" id="hYRNL77" role="11c4hB">
      <node concept="3clFbS" id="hYRNL78" role="2VODD2">
        <node concept="3clFbJ" id="3veQ_zQwBpy" role="3cqZAp">
          <node concept="3clFbS" id="3veQ_zQwBpz" role="3clFbx">
            <node concept="lc7rE" id="3veQ_zQwBp$" role="3cqZAp">
              <node concept="l9hG8" id="3veQ_zQwBp_" role="lcghm">
                <node concept="2OqwBi" id="3veQ_zQwBpA" role="lb14g">
                  <node concept="117lpO" id="3veQ_zQwBpB" role="2Oq$k0" />
                  <node concept="3CFZ6_" id="2EuZkDRzIsd" role="2OqNvi">
                    <node concept="3CFYIy" id="2EuZkDRzIse" role="3CFYIz">
                      <ref role="3CFYIx" to="m373:4CW56HZFIGO" resolve="MethodDocComment" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3veQ_zQwBpE" role="3clFbw">
            <node concept="2OqwBi" id="3veQ_zQwBpF" role="2Oq$k0">
              <node concept="117lpO" id="3veQ_zQwBpG" role="2Oq$k0" />
              <node concept="3CFZ6_" id="2EuZkDRzIlo" role="2OqNvi">
                <node concept="3CFYIy" id="2EuZkDRzIlp" role="3CFYIz">
                  <ref role="3CFYIx" to="m373:4CW56HZFIGO" resolve="MethodDocComment" />
                </node>
              </node>
            </node>
            <node concept="3x8VRR" id="3veQ_zQwBpJ" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs8" id="hYRNWee" role="3cqZAp">
          <node concept="3cpWsn" id="hYRNWef" role="3cpWs9">
            <property role="TrG5h" value="declaringClass" />
            <node concept="3Tqbb2" id="hYRNWeg" role="1tU5fm">
              <ref role="ehGHo" to="tpee:fz12cDA" resolve="ClassConcept" />
            </node>
            <node concept="1PxgMI" id="i2npJ_2" role="33vP2m">
              <ref role="1PxNhF" to="tpee:fz12cDA" resolve="ClassConcept" />
              <node concept="2OqwBi" id="hYRO42g" role="1PxMeX">
                <node concept="117lpO" id="hYRO42h" role="2Oq$k0" />
                <node concept="1mfA1w" id="hYRO42i" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="i0$im6X" role="3cqZAp">
          <node concept="1bDJIP" id="i0XtYBf" role="lcghm">
            <ref role="1rvKf6" node="hXZOC0K" resolve="annotations" />
            <node concept="117lpO" id="i0XtYBg" role="1ryhcI" />
          </node>
        </node>
        <node concept="3clFbJ" id="i0$isnt" role="3cqZAp">
          <node concept="3clFbS" id="i0$isnu" role="3clFbx">
            <node concept="lc7rE" id="i0Xu0pj" role="3cqZAp">
              <node concept="1bDJIP" id="i0Xu1gx" role="lcghm">
                <ref role="1rvKf6" node="hXZP8nY" resolve="visibilityWithIndent" />
                <node concept="2OqwBi" id="i0Xu1gy" role="1ryhcI">
                  <node concept="117lpO" id="i0Xu1gz" role="2Oq$k0" />
                  <node concept="3TrEf2" id="i0Xu1g$" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:h9B3oxE" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="i0$ivXo" role="3clFbw">
            <node concept="2OqwBi" id="i0$isKV" role="3fr31v">
              <node concept="37vLTw" id="3GM_nagT$aj" role="2Oq$k0">
                <ref role="3cqZAo" node="hYRNWef" resolve="declaringClass" />
              </node>
              <node concept="1mIQ4w" id="i0$itE7" role="2OqNvi">
                <node concept="chp4Y" id="i0$iu8r" role="cj9EA">
                  <ref role="cht4Q" to="tpee:fKQs72_" resolve="EnumClass" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="i0$iBeb" role="9aQIa">
            <node concept="3clFbS" id="i0$iBec" role="9aQI4">
              <node concept="1bpajm" id="i0$iBOL" role="3cqZAp" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="3tQYMG_ZaXn" role="3cqZAp">
          <node concept="1bDJIP" id="3tQYMG_ZaXo" role="lcghm">
            <ref role="1rvKf6" node="hY5gGyc" resolve="typeDeclarations" />
            <node concept="117lpO" id="3tQYMG_ZaXp" role="1ryhcI" />
          </node>
        </node>
        <node concept="3clFbJ" id="3tQYMG_ZaXq" role="3cqZAp">
          <node concept="3clFbS" id="3tQYMG_ZaXr" role="3clFbx">
            <node concept="lc7rE" id="3tQYMG_ZaXs" role="3cqZAp">
              <node concept="la8eA" id="3tQYMG_ZaXt" role="lcghm">
                <property role="lacIc" value=" " />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3tQYMG_ZaXu" role="3clFbw">
            <node concept="2OqwBi" id="3tQYMG_ZaXv" role="2Oq$k0">
              <node concept="117lpO" id="3tQYMG_ZaXw" role="2Oq$k0" />
              <node concept="3Tsc0h" id="3tQYMG_ZaXx" role="2OqNvi">
                <ref role="3TtcxE" to="tpee:g96eVAe" />
              </node>
            </node>
            <node concept="3GX2aA" id="3tQYMG_ZaXy" role="2OqNvi" />
          </node>
        </node>
        <node concept="1gVbGN" id="i0$iTaU" role="3cqZAp">
          <node concept="3y3z36" id="i0$iTW2" role="1gVkn0">
            <node concept="10Nm6u" id="i0$iUcc" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTx2n" role="3uHU7B">
              <ref role="3cqZAo" node="hYRNWef" resolve="declaringClass" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="i0uAwoi" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwol" role="lcghm">
            <node concept="2OqwBi" id="hYROt7x" role="lb14g">
              <node concept="37vLTw" id="3GM_nagTBmf" role="2Oq$k0">
                <ref role="3cqZAo" node="hYRNWef" resolve="declaringClass" />
              </node>
              <node concept="3TrcHB" id="hYROtqR" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwom" role="lcghm">
            <property role="lacIc" value="(" />
          </node>
          <node concept="l9S2W" id="i0uAwon" role="lcghm">
            <property role="XA4eZ" value="true" />
            <property role="lbP0B" value=", " />
            <node concept="2OqwBi" id="hZmsczJ" role="lbANJ">
              <node concept="117lpO" id="hZmsct8" role="2Oq$k0" />
              <node concept="3Tsc0h" id="hZmsd9l" role="2OqNvi">
                <ref role="3TtcxE" to="tpee:fzclF7Y" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwoo" role="lcghm">
            <property role="lacIc" value=")" />
          </node>
        </node>
        <node concept="3clFbJ" id="hYROMQQ" role="3cqZAp">
          <node concept="3clFbS" id="hYROMQR" role="3clFbx">
            <node concept="lc7rE" id="i0uAwGj" role="3cqZAp">
              <node concept="la8eA" id="i0uAwGl" role="lcghm">
                <property role="lacIc" value=" throws " />
              </node>
              <node concept="l9S2W" id="i0uAwGm" role="lcghm">
                <property role="XA4eZ" value="true" />
                <property role="lbP0B" value=", " />
                <node concept="2OqwBi" id="hZmsgNr" role="lbANJ">
                  <node concept="117lpO" id="hZmsgHj" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="hZmshaG" role="2OqNvi">
                    <ref role="3TtcxE" to="tpee:gWSfm_9" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="hYROP9v" role="3clFbw">
            <node concept="2OqwBi" id="hYROOy7" role="2Oq$k0">
              <node concept="117lpO" id="hYROOhf" role="2Oq$k0" />
              <node concept="3Tsc0h" id="hYROOUm" role="2OqNvi">
                <ref role="3TtcxE" to="tpee:gWSfm_9" />
              </node>
            </node>
            <node concept="3GX2aA" id="hYROP$T" role="2OqNvi" />
          </node>
        </node>
        <node concept="lc7rE" id="i0$j6aR" role="3cqZAp">
          <node concept="la8eA" id="i0$j6ur" role="lcghm">
            <property role="lacIc" value=" {" />
          </node>
        </node>
        <node concept="3izx1p" id="hZKaYPU" role="3cqZAp">
          <node concept="3clFbS" id="hZKaYPV" role="3izTki">
            <node concept="3clFbJ" id="i0$ax5l" role="3cqZAp">
              <node concept="3clFbS" id="i0$ax5m" role="3clFbx">
                <node concept="lc7rE" id="i0uAwt3" role="3cqZAp">
                  <node concept="l9hG8" id="i0uAwt5" role="lcghm">
                    <node concept="2OqwBi" id="hYRPiyE" role="lb14g">
                      <node concept="117lpO" id="hYRPinU" role="2Oq$k0" />
                      <node concept="3TrEf2" id="hYRPj0x" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:fzclF7Z" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="i0$ayor" role="3clFbw">
                <node concept="2OqwBi" id="i0$axK9" role="2Oq$k0">
                  <node concept="117lpO" id="i0$axq9" role="2Oq$k0" />
                  <node concept="3TrEf2" id="i0$aydU" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:fzclF7Z" />
                  </node>
                </node>
                <node concept="3x8VRR" id="i0$ayKE" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="i0uF_nE" role="3cqZAp">
          <node concept="l8MVK" id="i0$j4U1" role="lcghm" />
          <node concept="la8eA" id="i0uFAbd" role="lcghm">
            <property role="ldcpH" value="true" />
            <property role="lacIc" value="}" />
          </node>
          <node concept="l8MVK" id="1hodSy9mcO_" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYRPrvF">
    <property role="3GE5qa" value="control_flow" />
    <ref role="WuzLi" to="tpee:fJN13sA" resolve="ContinueStatement" />
    <node concept="11bSqf" id="hYRPrvG" role="11c4hB">
      <node concept="3clFbS" id="hYRPrvH" role="2VODD2">
        <node concept="lc7rE" id="i0uAwst" role="3cqZAp">
          <node concept="l8MVK" id="i0uAwsv" role="lcghm" />
        </node>
        <node concept="3clFbJ" id="7QIxtrFhCGq" role="3cqZAp">
          <node concept="3clFbS" id="7QIxtrFhCGr" role="3clFbx">
            <node concept="lc7rE" id="7QIxtrFhCGW" role="3cqZAp">
              <node concept="la8eA" id="7QIxtrFhCGX" role="lcghm">
                <property role="ldcpH" value="true" />
                <property role="lacIc" value="continue " />
              </node>
              <node concept="l9hG8" id="7QIxtrFhCGY" role="lcghm">
                <node concept="2OqwBi" id="7QIxtrFhCH9" role="lb14g">
                  <node concept="2OqwBi" id="7QIxtrFhCH4" role="2Oq$k0">
                    <node concept="2OqwBi" id="7QIxtrFhCGZ" role="2Oq$k0">
                      <node concept="117lpO" id="7QIxtrFhCH0" role="2Oq$k0" />
                      <node concept="3TrEf2" id="7QIxtrFhCH3" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:7QIxtrFgVIX" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="7QIxtrFhCH8" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:kcijJTll4E" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="7QIxtrFhCHd" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="7QIxtrFhCH2" role="lcghm">
                <property role="lacIc" value=";" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7QIxtrFhCG$" role="3clFbw">
            <node concept="2OqwBi" id="7QIxtrFhCGv" role="2Oq$k0">
              <node concept="117lpO" id="7QIxtrFhCGu" role="2Oq$k0" />
              <node concept="3TrEf2" id="7QIxtrFhCGz" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:7QIxtrFgVIX" />
              </node>
            </node>
            <node concept="3x8VRR" id="7QIxtrFhCGC" role="2OqNvi" />
          </node>
          <node concept="3eNFk2" id="7QIxtrFhCGD" role="3eNLev">
            <node concept="3clFbS" id="7QIxtrFhCGF" role="3eOfB_">
              <node concept="lc7rE" id="7QIxtrFhCGP" role="3cqZAp">
                <node concept="la8eA" id="7QIxtrFhCGQ" role="lcghm">
                  <property role="ldcpH" value="true" />
                  <property role="lacIc" value="continue " />
                </node>
                <node concept="l9hG8" id="7QIxtrFhCGR" role="lcghm">
                  <node concept="2OqwBi" id="7QIxtrFhCGS" role="lb14g">
                    <node concept="117lpO" id="7QIxtrFhCGT" role="2Oq$k0" />
                    <node concept="3TrcHB" id="7QIxtrFhCGU" role="2OqNvi">
                      <ref role="3TsBF5" to="tpee:ht5Zame" resolve="label" />
                    </node>
                  </node>
                </node>
                <node concept="la8eA" id="7QIxtrFhCGV" role="lcghm">
                  <property role="lacIc" value=";" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="7QIxtrFhCGG" role="3eO9$A">
              <node concept="10Nm6u" id="7QIxtrFhCGH" role="3uHU7w" />
              <node concept="2OqwBi" id="7QIxtrFhCGI" role="3uHU7B">
                <node concept="117lpO" id="7QIxtrFhCGJ" role="2Oq$k0" />
                <node concept="3TrcHB" id="7QIxtrFhCGK" role="2OqNvi">
                  <ref role="3TsBF5" to="tpee:ht5Zame" resolve="label" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="7QIxtrFhCGL" role="9aQIa">
            <node concept="3clFbS" id="7QIxtrFhCGM" role="9aQI4">
              <node concept="lc7rE" id="7QIxtrFhCGN" role="3cqZAp">
                <node concept="la8eA" id="7QIxtrFhCGO" role="lcghm">
                  <property role="ldcpH" value="true" />
                  <property role="lacIc" value="continue;" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYRQ9hs">
    <property role="3GE5qa" value="array" />
    <ref role="WuzLi" to="tpee:hf$GHZq" resolve="DimensionExpression" />
    <node concept="11bSqf" id="hYRQ9ht" role="11c4hB">
      <node concept="3clFbS" id="hYRQ9hu" role="2VODD2">
        <node concept="3clFbJ" id="4lzf$wIiNvq" role="3cqZAp">
          <node concept="3clFbS" id="4lzf$wIiNvr" role="3clFbx">
            <node concept="lc7rE" id="i0uAww_" role="3cqZAp">
              <node concept="la8eA" id="i0uAwwB" role="lcghm">
                <property role="lacIc" value="[" />
              </node>
            </node>
            <node concept="3clFbJ" id="X70sDC2pt1" role="3cqZAp">
              <node concept="3clFbS" id="X70sDC2pt2" role="3clFbx">
                <node concept="lc7rE" id="X70sDC2pdX" role="3cqZAp">
                  <node concept="l9hG8" id="X70sDC2pfi" role="lcghm">
                    <node concept="2OqwBi" id="X70sDC2pi1" role="lb14g">
                      <node concept="117lpO" id="X70sDC2pgw" role="2Oq$k0" />
                      <node concept="3TrEf2" id="X70sDC2pqO" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:hf$I4rk" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="X70sDC2pNX" role="3clFbw">
                <node concept="10Nm6u" id="X70sDC2pPh" role="3uHU7w" />
                <node concept="2OqwBi" id="X70sDC2pxx" role="3uHU7B">
                  <node concept="117lpO" id="X70sDC2pv_" role="2Oq$k0" />
                  <node concept="3TrEf2" id="X70sDC2pDH" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:hf$I4rk" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="X70sDC2pc6" role="3cqZAp">
              <node concept="la8eA" id="X70sDC2pdp" role="lcghm">
                <property role="lacIc" value="]" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4lzf$wIiNv$" role="3clFbw">
            <node concept="2OqwBi" id="4lzf$wIiNvv" role="2Oq$k0">
              <node concept="117lpO" id="4lzf$wIiNvu" role="2Oq$k0" />
              <node concept="3TrEf2" id="4lzf$wIiNvz" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:hf$I4rk" />
              </node>
            </node>
            <node concept="3x8VRR" id="4lzf$wIiNN0" role="2OqNvi" />
          </node>
          <node concept="9aQIb" id="4lzf$wIiNN1" role="9aQIa">
            <node concept="3clFbS" id="4lzf$wIiNN2" role="9aQI4">
              <node concept="lc7rE" id="4lzf$wIiNN3" role="3cqZAp">
                <node concept="la8eA" id="4lzf$wIiNN5" role="lcghm">
                  <property role="lacIc" value="[]" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYRQiNU">
    <property role="3GE5qa" value="expressions" />
    <ref role="WuzLi" to="tpee:fWFJ1fq" resolve="DivExpression" />
    <node concept="11bSqf" id="hYRQiNV" role="11c4hB">
      <node concept="3clFbS" id="hYRQiNW" role="2VODD2">
        <node concept="lc7rE" id="i0uAwq6" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwq8" role="lcghm">
            <node concept="2OqwBi" id="hYRQlZS" role="lb14g">
              <node concept="117lpO" id="hYRQlQ_" role="2Oq$k0" />
              <node concept="3TrEf2" id="hYRQnmR" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4s" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwqo" role="lcghm">
            <property role="lacIc" value=" / " />
          </node>
          <node concept="l9hG8" id="i0uAwqp" role="lcghm">
            <node concept="2OqwBi" id="hZigtix" role="lb14g">
              <node concept="117lpO" id="hZigtbE" role="2Oq$k0" />
              <node concept="3TrEf2" id="hZigtHV" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4r" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYRQwBb">
    <property role="3GE5qa" value="primitive" />
    <ref role="WuzLi" to="tpee:f_0P56A" resolve="DoubleType" />
    <node concept="11bSqf" id="hYRQwBc" role="11c4hB">
      <node concept="3clFbS" id="hYRQwBd" role="2VODD2">
        <node concept="lc7rE" id="i0uAwt9" role="3cqZAp">
          <node concept="la8eA" id="i0uAwtb" role="lcghm">
            <property role="lacIc" value="double" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYRQ_tP">
    <property role="3GE5qa" value="control_flow.loops" />
    <ref role="WuzLi" to="tpee:h8MpOA8" resolve="DoWhileStatement" />
    <node concept="11bSqf" id="hYRQ_tQ" role="11c4hB">
      <node concept="3clFbS" id="hYRQ_tR" role="2VODD2">
        <node concept="3clFbJ" id="7QIxtrFgeVS" role="3cqZAp">
          <node concept="3clFbS" id="7QIxtrFgeVT" role="3clFbx">
            <node concept="lc7rE" id="7QIxtrFgeVU" role="3cqZAp">
              <node concept="l8MVK" id="7QIxtrFgeVV" role="lcghm" />
              <node concept="l9hG8" id="7QIxtrFgeVW" role="lcghm">
                <node concept="2OqwBi" id="7QIxtrFgeVX" role="lb14g">
                  <node concept="2OqwBi" id="7QIxtrFgeVY" role="2Oq$k0">
                    <node concept="117lpO" id="7QIxtrFgeVZ" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7QIxtrFgeW0" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:kcijJTll4L" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="7QIxtrFgeW1" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="7QIxtrFgeW2" role="lcghm">
                <property role="lacIc" value=":" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7QIxtrFgeW3" role="3clFbw">
            <node concept="10Nm6u" id="7QIxtrFgeW4" role="3uHU7w" />
            <node concept="2OqwBi" id="7QIxtrFgeW5" role="3uHU7B">
              <node concept="117lpO" id="7QIxtrFgeW6" role="2Oq$k0" />
              <node concept="3TrEf2" id="7QIxtrFgeW7" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:kcijJTll4L" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="7QIxtrFgeW8" role="3eNLev">
            <node concept="3clFbS" id="7QIxtrFgeW9" role="3eOfB_">
              <node concept="lc7rE" id="7QIxtrFgeWa" role="3cqZAp">
                <node concept="l8MVK" id="7QIxtrFgeWb" role="lcghm" />
                <node concept="l9hG8" id="7QIxtrFgeWc" role="lcghm">
                  <node concept="2OqwBi" id="7QIxtrFgeWd" role="lb14g">
                    <node concept="117lpO" id="7QIxtrFgeWe" role="2Oq$k0" />
                    <node concept="3TrcHB" id="7QIxtrFgeWf" role="2OqNvi">
                      <ref role="3TsBF5" to="tpee:ht5Hjst" resolve="label" />
                    </node>
                  </node>
                </node>
                <node concept="la8eA" id="7QIxtrFgeWg" role="lcghm">
                  <property role="lacIc" value=":" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="7QIxtrFgeWh" role="3eO9$A">
              <node concept="10Nm6u" id="7QIxtrFgeWi" role="3uHU7w" />
              <node concept="2OqwBi" id="7QIxtrFgeWj" role="3uHU7B">
                <node concept="117lpO" id="7QIxtrFgeWk" role="2Oq$k0" />
                <node concept="3TrcHB" id="7QIxtrFgeWl" role="2OqNvi">
                  <ref role="3TsBF5" to="tpee:ht5Hjst" resolve="label" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="i0$bfMl" role="3cqZAp">
          <node concept="l8MVK" id="i0$bg8_" role="lcghm" />
        </node>
        <node concept="1bpajm" id="i0uFV$Q" role="3cqZAp" />
        <node concept="lc7rE" id="i0uAwxe" role="3cqZAp">
          <node concept="la8eA" id="i0uAwxh" role="lcghm">
            <property role="lacIc" value="do {" />
          </node>
        </node>
        <node concept="3izx1p" id="hZKb3Qz" role="3cqZAp">
          <node concept="3clFbS" id="hZKb3Q$" role="3izTki">
            <node concept="lc7rE" id="i0uAwG4" role="3cqZAp">
              <node concept="l9hG8" id="i0uAwG6" role="lcghm">
                <node concept="2OqwBi" id="hYRQQJp" role="lb14g">
                  <node concept="117lpO" id="hYRQQDK" role="2Oq$k0" />
                  <node concept="3TrEf2" id="hYRQR5r" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:gMLFqrC" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="i0$btzh" role="3cqZAp">
          <node concept="l8MVK" id="i0$btFB" role="lcghm" />
          <node concept="la8eA" id="i0$bN67" role="lcghm">
            <property role="ldcpH" value="true" />
            <property role="lacIc" value="} while (" />
          </node>
          <node concept="l9hG8" id="i0$btFC" role="lcghm">
            <node concept="2OqwBi" id="i0$btFD" role="lb14g">
              <node concept="117lpO" id="i0$btFE" role="2Oq$k0" />
              <node concept="3TrEf2" id="i0$btFF" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:h8MpTgy" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0$btFG" role="lcghm">
            <property role="lacIc" value=");" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYRRDWw">
    <property role="3GE5qa" value="control_flow.if_switch" />
    <ref role="WuzLi" to="tpee:hzeNFgq" resolve="ElsifClause" />
    <node concept="11bSqf" id="hYRRDWx" role="11c4hB">
      <node concept="3clFbS" id="hYRRDWy" role="2VODD2">
        <node concept="lc7rE" id="i0uAwFy" role="3cqZAp">
          <node concept="la8eA" id="i0uAwF$" role="lcghm">
            <property role="lacIc" value=" else if (" />
          </node>
          <node concept="l9hG8" id="i0uAwF_" role="lcghm">
            <node concept="2OqwBi" id="hZigDp$" role="lb14g">
              <node concept="117lpO" id="hZigDjG" role="2Oq$k0" />
              <node concept="3TrEf2" id="hZigDTB" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:hzeO9wY" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwFA" role="lcghm">
            <property role="lacIc" value=") {" />
          </node>
        </node>
        <node concept="3izx1p" id="hZKb6UT" role="3cqZAp">
          <node concept="3clFbS" id="hZKb6UU" role="3izTki">
            <node concept="lc7rE" id="i0uAwHG" role="3cqZAp">
              <node concept="l9hG8" id="i0uAwHI" role="lcghm">
                <node concept="2OqwBi" id="hYRRSmU" role="lb14g">
                  <node concept="117lpO" id="hYRRSeA" role="2Oq$k0" />
                  <node concept="3TrEf2" id="hYRRTgO" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:hzeOfzX" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="i0uG42f" role="3cqZAp">
          <node concept="l8MVK" id="i0$cgbx" role="lcghm" />
          <node concept="la8eA" id="i0uG4zu" role="lcghm">
            <property role="ldcpH" value="true" />
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYRRZUW">
    <property role="3GE5qa" value="classifiers.classifiers" />
    <ref role="WuzLi" to="tpee:fKQs72_" resolve="EnumClass" />
    <node concept="11bSqf" id="hYRRZUX" role="11c4hB">
      <node concept="3clFbS" id="hYRRZUY" role="2VODD2">
        <node concept="lc7rE" id="i0Xu4kp" role="3cqZAp">
          <node concept="1bDJIP" id="i0Xu4YU" role="lcghm">
            <ref role="1rvKf6" node="hXZO4aM" resolve="fileHeader" />
            <node concept="117lpO" id="i0Xu4YV" role="1ryhcI" />
          </node>
          <node concept="1bDJIP" id="i0Xu6pi" role="lcghm">
            <ref role="1rvKf6" node="hXZOC0K" resolve="annotations" />
            <node concept="117lpO" id="i0Xu6pj" role="1ryhcI" />
          </node>
          <node concept="1bDJIP" id="i0Xu8tE" role="lcghm">
            <ref role="1rvKf6" node="hXZP8nY" resolve="visibilityWithIndent" />
            <node concept="2OqwBi" id="i0Xu8tF" role="1ryhcI">
              <node concept="117lpO" id="i0Xu8tG" role="2Oq$k0" />
              <node concept="3TrEf2" id="i0Xu8tH" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:h9B3oxE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3pXDj_D6erQ" role="3cqZAp">
          <node concept="3clFbS" id="3pXDj_D6erR" role="3clFbx">
            <node concept="lc7rE" id="3pXDj_D6erS" role="3cqZAp">
              <node concept="l9hG8" id="3pXDj_D6erT" role="lcghm">
                <node concept="2OqwBi" id="3pXDj_D6erU" role="lb14g">
                  <node concept="117lpO" id="3pXDj_D6erV" role="2Oq$k0" />
                  <node concept="3CFZ6_" id="3pXDj_D6erW" role="2OqNvi">
                    <node concept="3CFYIy" id="3pXDj_D6erX" role="3CFYIz">
                      <ref role="3CFYIx" to="m373:1MQnpZAqBpc" resolve="ClassifierDocComment" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3pXDj_D6erY" role="3clFbw">
            <node concept="2OqwBi" id="3pXDj_D6erZ" role="2Oq$k0">
              <node concept="117lpO" id="3pXDj_D6es0" role="2Oq$k0" />
              <node concept="3CFZ6_" id="3pXDj_D6es1" role="2OqNvi">
                <node concept="3CFYIy" id="3pXDj_D6es2" role="3CFYIz">
                  <ref role="3CFYIx" to="m373:1MQnpZAqBpc" resolve="ClassifierDocComment" />
                </node>
              </node>
            </node>
            <node concept="3x8VRR" id="3pXDj_D6es3" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbJ" id="i0MK5EC" role="3cqZAp">
          <node concept="3clFbS" id="i0MK5ED" role="3clFbx">
            <node concept="lc7rE" id="i0uAwo7" role="3cqZAp">
              <node concept="la8eA" id="i0uAwo9" role="lcghm">
                <property role="lacIc" value="static " />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="i0NbGk$" role="3clFbw">
            <node concept="2YIFZM" id="2k9fL4dT0$N" role="3fr31v">
              <ref role="37wK5l" to="unno:2k9fL4dNTIq" resolve="isRoot" />
              <ref role="1Pybhc" to="unno:1NYD3hytmTa" resolve="SNodeOperations" />
              <node concept="2JrnkZ" id="2k9fL4dT0$O" role="37wK5m">
                <node concept="117lpO" id="2k9fL4dT0$P" role="2JrQYb" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="i0uAwBU" role="3cqZAp">
          <node concept="la8eA" id="i0uGaKw" role="lcghm">
            <property role="ldcpH" value="true" />
            <property role="lacIc" value="enum " />
          </node>
          <node concept="l9hG8" id="i0uAwBW" role="lcghm">
            <node concept="2YIFZM" id="umZuBMPeBI" role="lb14g">
              <ref role="37wK5l" to="msyo:~JavaNameUtil.shortName(java.lang.String):java.lang.String" resolve="shortName" />
              <ref role="1Pybhc" to="msyo:~JavaNameUtil" resolve="JavaNameUtil" />
              <node concept="2OqwBi" id="umZuBMPeBJ" role="37wK5m">
                <node concept="117lpO" id="umZuBMPeBK" role="2Oq$k0" />
                <node concept="3TrcHB" id="umZuBMPeBL" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="hYRSIm$" role="3cqZAp">
          <node concept="3clFbS" id="hYRSIm_" role="3clFbx">
            <node concept="lc7rE" id="i0uAwEm" role="3cqZAp">
              <node concept="la8eA" id="i0uAwEo" role="lcghm">
                <property role="lacIc" value=" implements " />
              </node>
              <node concept="l9S2W" id="i0uAwEp" role="lcghm">
                <property role="XA4eZ" value="true" />
                <property role="lbP0B" value=", " />
                <node concept="2OqwBi" id="hZmsAg0" role="lbANJ">
                  <node concept="117lpO" id="hZmsAa7" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="hZmsAz7" role="2OqNvi">
                    <ref role="3TtcxE" to="tpee:fWEKbgp" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="hYRSImW" role="3clFbw">
            <node concept="2OqwBi" id="hYRSImX" role="2Oq$k0">
              <node concept="117lpO" id="hYRSImY" role="2Oq$k0" />
              <node concept="3Tsc0h" id="hYRSImZ" role="2OqNvi">
                <ref role="3TtcxE" to="tpee:fWEKbgp" />
              </node>
            </node>
            <node concept="3GX2aA" id="hYRSIn0" role="2OqNvi" />
          </node>
        </node>
        <node concept="lc7rE" id="i0$cLhb" role="3cqZAp">
          <node concept="la8eA" id="i0$cLua" role="lcghm">
            <property role="lacIc" value=" {" />
          </node>
        </node>
        <node concept="3izx1p" id="hZKbbe_" role="3cqZAp">
          <node concept="3clFbS" id="hZKbbeA" role="3izTki">
            <node concept="lc7rE" id="i0uAw_O" role="3cqZAp">
              <node concept="l9S2W" id="i0uAw_Q" role="lcghm">
                <property role="XA4eZ" value="true" />
                <property role="lbP0B" value="," />
                <node concept="2OqwBi" id="hZmsI1M" role="lbANJ">
                  <node concept="117lpO" id="hZmsHQi" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="hZmsInm" role="2OqNvi">
                    <ref role="3TtcxE" to="tpee:fKQtgeG" />
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="i0uAw_R" role="lcghm">
                <property role="lacIc" value=";" />
              </node>
              <node concept="l8MVK" id="1hodSy9BodT" role="lcghm" />
              <node concept="l8MVK" id="43cbvH6yNUu" role="lcghm" />
              <node concept="1bDJIP" id="4Roo_uJX7vs" role="lcghm">
                <ref role="1rvKf6" node="1hodSy8D0cp" resolve="members" />
                <node concept="117lpO" id="4Roo_uJX7vt" role="1ryhcI" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="4Roo_uJXucZ" role="3cqZAp">
          <node concept="la8eA" id="4Roo_uJXud0" role="lcghm">
            <property role="ldcpH" value="true" />
            <property role="lacIc" value="}" />
          </node>
          <node concept="l8MVK" id="4PrERHsNTgT" role="lcghm" />
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="21YnEOmbk4E" role="33IsuW">
      <node concept="3clFbS" id="21YnEOmbk4F" role="2VODD2">
        <node concept="3clFbF" id="21YnEOmbk4G" role="3cqZAp">
          <node concept="Xl_RD" id="21YnEOmbk4H" role="3clFbG">
            <property role="Xl_RC" value="java" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYRTqPm">
    <property role="3GE5qa" value="classifiers.members" />
    <ref role="WuzLi" to="tpee:fKQsSyN" resolve="EnumConstantDeclaration" />
    <node concept="11bSqf" id="hYRTqPn" role="11c4hB">
      <node concept="3clFbS" id="hYRTqPo" role="2VODD2">
        <node concept="lc7rE" id="i0$jEo$" role="3cqZAp">
          <node concept="l8MVK" id="i0$jEJz" role="lcghm" />
        </node>
        <node concept="3clFbJ" id="hYRT_nZ" role="3cqZAp">
          <node concept="2OqwBi" id="1OZiJnbgb0j" role="3clFbw">
            <node concept="2OqwBi" id="hYRT_UY" role="2Oq$k0">
              <node concept="117lpO" id="hYRT_NC" role="2Oq$k0" />
              <node concept="3TrcHB" id="hYRTAmR" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="17RlXB" id="1OZiJnbgb0p" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="hYRT_o0" role="3clFbx">
            <node concept="1ZvZ2y" id="hYRTEBY" role="3cqZAp">
              <node concept="Xl_RD" id="1OZiJnbg2Cy" role="v0bCk">
                <property role="Xl_RC" value="enum constant without name" />
              </node>
            </node>
            <node concept="lc7rE" id="i0uGnAO" role="3cqZAp">
              <node concept="la8eA" id="i0uGovv" role="lcghm">
                <property role="ldcpH" value="true" />
                <property role="lacIc" value="???" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="hYRTHXs" role="9aQIa">
            <node concept="3clFbS" id="hYRTHXt" role="9aQI4">
              <node concept="lc7rE" id="i0uGtHx" role="3cqZAp">
                <node concept="l9hG8" id="i0uGueK" role="lcghm">
                  <property role="ld1Su" value="true" />
                  <node concept="2OqwBi" id="i0uGvjq" role="lb14g">
                    <node concept="117lpO" id="i0uGvcz" role="2Oq$k0" />
                    <node concept="3TrcHB" id="i0uGvG8" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="i0uAwzR" role="3cqZAp">
          <node concept="la8eA" id="i0uAwzU" role="lcghm">
            <property role="lacIc" value="(" />
          </node>
          <node concept="l9S2W" id="i0uAwzV" role="lcghm">
            <property role="XA4eZ" value="true" />
            <property role="lbP0B" value=", " />
            <node concept="2OqwBi" id="hZmsQbS" role="lbANJ">
              <node concept="117lpO" id="hZmsQ6g" role="2Oq$k0" />
              <node concept="3Tsc0h" id="hZVW6lS" role="2OqNvi">
                <ref role="3TtcxE" to="tpee:fz7wK6I" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwzW" role="lcghm">
            <property role="lacIc" value=")" />
          </node>
        </node>
        <node concept="3clFbJ" id="7kg0HaCTonE" role="3cqZAp">
          <node concept="3clFbS" id="7kg0HaCTonF" role="3clFbx">
            <node concept="lc7rE" id="7kg0HaCTq9j" role="3cqZAp">
              <node concept="la8eA" id="7kg0HaCTq9l" role="lcghm">
                <property role="lacIc" value=" {" />
              </node>
              <node concept="l8MVK" id="7kg0HaCTq9n" role="lcghm" />
            </node>
            <node concept="3izx1p" id="7kg0HaCTq9p" role="3cqZAp">
              <node concept="3clFbS" id="7kg0HaCTq9q" role="3izTki">
                <node concept="1DcWWT" id="7kg0HaCTq9t" role="3cqZAp">
                  <node concept="3clFbS" id="7kg0HaCTq9u" role="2LFqv$">
                    <node concept="lc7rE" id="7kg0HaCTq9v" role="3cqZAp">
                      <node concept="l9hG8" id="7kg0HaCTq9Q" role="lcghm">
                        <node concept="37vLTw" id="3GM_nagTt_M" role="lb14g">
                          <ref role="3cqZAo" node="7kg0HaCTq9y" resolve="imd" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7kg0HaCTq9G" role="1DdaDG">
                    <node concept="117lpO" id="7kg0HaCTq9F" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="7kg0HaCTq9M" role="2OqNvi">
                      <ref role="3TtcxE" to="tpee:rm01AF5nsO" />
                    </node>
                  </node>
                  <node concept="3cpWsn" id="7kg0HaCTq9y" role="1Duv9x">
                    <property role="TrG5h" value="imd" />
                    <node concept="3Tqbb2" id="7kg0HaCTq9A" role="1tU5fm">
                      <ref role="ehGHo" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="7kg0HaCTq9Y" role="3cqZAp">
              <node concept="l8MVK" id="7kg0HaCTqrA" role="lcghm" />
              <node concept="la8eA" id="7kg0HaCTqa0" role="lcghm">
                <property role="ldcpH" value="true" />
                <property role="lacIc" value="}" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7kg0HaCTq9e" role="3clFbw">
            <node concept="2OqwBi" id="7kg0HaCTonJ" role="2Oq$k0">
              <node concept="117lpO" id="7kg0HaCTonI" role="2Oq$k0" />
              <node concept="3Tsc0h" id="7kg0HaCTq9d" role="2OqNvi">
                <ref role="3TtcxE" to="tpee:rm01AF5nsO" />
              </node>
            </node>
            <node concept="3GX2aA" id="7kg0HaCTq9i" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYRU3oN">
    <property role="3GE5qa" value="expressions" />
    <ref role="WuzLi" to="tpee:fzclF8g" resolve="EqualsExpression" />
    <node concept="11bSqf" id="hYRU3oO" role="11c4hB">
      <node concept="3clFbS" id="hYRU3oP" role="2VODD2">
        <node concept="lc7rE" id="i0uAwCi" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwCk" role="lcghm">
            <node concept="2OqwBi" id="hYRU5VJ" role="lb14g">
              <node concept="117lpO" id="hYRU5Oa" role="2Oq$k0" />
              <node concept="3TrEf2" id="hYRU6gk" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4s" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwCl" role="lcghm">
            <property role="lacIc" value=" == " />
          </node>
          <node concept="l9hG8" id="i0uAwCm" role="lcghm">
            <node concept="2OqwBi" id="hZigXj7" role="lb14g">
              <node concept="117lpO" id="hZigXdf" role="2Oq$k0" />
              <node concept="3TrEf2" id="hZigXHj" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4r" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYRUIbs">
    <property role="3GE5qa" value="classifiers.members" />
    <ref role="WuzLi" to="tpee:fz12cDC" resolve="FieldDeclaration" />
    <node concept="11bSqf" id="hYRUIbt" role="11c4hB">
      <node concept="3clFbS" id="hYRUIbu" role="2VODD2">
        <node concept="3clFbJ" id="3veQ_zQyf3c" role="3cqZAp">
          <node concept="3clFbS" id="3veQ_zQyf3d" role="3clFbx">
            <node concept="lc7rE" id="3veQ_zQyf3e" role="3cqZAp">
              <node concept="l9hG8" id="3veQ_zQyf3f" role="lcghm">
                <node concept="2OqwBi" id="3veQ_zQyf3g" role="lb14g">
                  <node concept="117lpO" id="3veQ_zQyf3h" role="2Oq$k0" />
                  <node concept="3CFZ6_" id="2EuZkDRzImH" role="2OqNvi">
                    <node concept="3CFYIy" id="2EuZkDRzImI" role="3CFYIz">
                      <ref role="3CFYIx" to="m373:5VgPTPXL4JM" resolve="FieldDocComment" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3veQ_zQyf3k" role="3clFbw">
            <node concept="2OqwBi" id="3veQ_zQyf3l" role="2Oq$k0">
              <node concept="117lpO" id="3veQ_zQyf3m" role="2Oq$k0" />
              <node concept="3CFZ6_" id="2EuZkDRzImR" role="2OqNvi">
                <node concept="3CFYIy" id="2EuZkDRzImS" role="3CFYIz">
                  <ref role="3CFYIx" to="m373:5VgPTPXL4JM" resolve="FieldDocComment" />
                </node>
              </node>
            </node>
            <node concept="3x8VRR" id="3veQ_zQyf3p" role="2OqNvi" />
          </node>
        </node>
        <node concept="lc7rE" id="i0$jJmZ" role="3cqZAp">
          <node concept="1bDJIP" id="i0Xullu" role="lcghm">
            <ref role="1rvKf6" node="hXZOC0K" resolve="annotations" />
            <node concept="117lpO" id="i0Xullv" role="1ryhcI" />
          </node>
          <node concept="1bDJIP" id="i37XPDG" role="lcghm">
            <ref role="1rvKf6" node="hXZP8nY" resolve="visibilityWithIndent" />
            <node concept="2OqwBi" id="i37XPDH" role="1ryhcI">
              <node concept="117lpO" id="i37XPDI" role="2Oq$k0" />
              <node concept="3TrEf2" id="i37XPDJ" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:h9B3oxE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7tJT$hTc6EF" role="3cqZAp">
          <node concept="3clFbS" id="7tJT$hTc6EG" role="3clFbx">
            <node concept="lc7rE" id="7tJT$hTc6EH" role="3cqZAp">
              <node concept="la8eA" id="7tJT$hTc6EI" role="lcghm">
                <property role="lacIc" value="transient " />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7tJT$hTc6EJ" role="3clFbw">
            <node concept="117lpO" id="7tJT$hTc6EK" role="2Oq$k0" />
            <node concept="3TrcHB" id="7tJT$hTc6EM" role="2OqNvi">
              <ref role="3TsBF5" to="tpee:7tJT$hTbT2H" resolve="isTransient" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="i37XR6F" role="3cqZAp">
          <node concept="3clFbS" id="i37XR6G" role="3clFbx">
            <node concept="lc7rE" id="i37XUL4" role="3cqZAp">
              <node concept="la8eA" id="i37XYcu" role="lcghm">
                <property role="lacIc" value="volatile " />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="i37XRYc" role="3clFbw">
            <node concept="117lpO" id="i37XRRV" role="2Oq$k0" />
            <node concept="3TrcHB" id="i37XS_n" role="2OqNvi">
              <ref role="3TsBF5" to="tpee:i34Cwyx" resolve="isVolatile" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5B5vMVl2pl$" role="3cqZAp">
          <node concept="2OqwBi" id="5B5vMVl2pl_" role="3clFbw">
            <node concept="117lpO" id="5B5vMVl2q3t" role="2Oq$k0" />
            <node concept="3TrcHB" id="5B5vMVl2plB" role="2OqNvi">
              <ref role="3TsBF5" to="tpee:h7TUv0c" resolve="isFinal" />
            </node>
          </node>
          <node concept="3clFbS" id="5B5vMVl2plC" role="3clFbx">
            <node concept="lc7rE" id="5B5vMVl2plD" role="3cqZAp">
              <node concept="la8eA" id="5B5vMVl2plE" role="lcghm">
                <property role="lacIc" value="final " />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5B5vMVl2plF" role="3cqZAp">
          <node concept="l9hG8" id="5B5vMVl2plG" role="lcghm">
            <node concept="2OqwBi" id="5B5vMVl2plH" role="lb14g">
              <node concept="117lpO" id="5B5vMVl2q8g" role="2Oq$k0" />
              <node concept="3TrEf2" id="5B5vMVl2plJ" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="5B5vMVl2plK" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
          <node concept="l9hG8" id="5B5vMVl2plL" role="lcghm">
            <node concept="2OqwBi" id="5B5vMVl2plM" role="lb14g">
              <node concept="117lpO" id="5B5vMVl2v2A" role="2Oq$k0" />
              <node concept="3TrcHB" id="5B5vMVl2plO" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5B5vMVl2plP" role="3cqZAp">
          <node concept="3clFbS" id="5B5vMVl2plQ" role="3clFbx">
            <node concept="lc7rE" id="5B5vMVl2plR" role="3cqZAp">
              <node concept="la8eA" id="5B5vMVl2plS" role="lcghm">
                <property role="lacIc" value=" = " />
              </node>
              <node concept="l9hG8" id="5B5vMVl2plT" role="lcghm">
                <node concept="2OqwBi" id="5B5vMVl2plU" role="lb14g">
                  <node concept="117lpO" id="5B5vMVl2vdo" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5B5vMVl2plW" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:fz3vP1I" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5B5vMVl2plX" role="3clFbw">
            <node concept="2OqwBi" id="5B5vMVl2plY" role="2Oq$k0">
              <node concept="117lpO" id="5B5vMVl2v7N" role="2Oq$k0" />
              <node concept="3TrEf2" id="5B5vMVl2pm0" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fz3vP1I" />
              </node>
            </node>
            <node concept="3x8VRR" id="5B5vMVl2pm1" role="2OqNvi" />
          </node>
        </node>
        <node concept="lc7rE" id="i37X_Ga" role="3cqZAp">
          <node concept="la8eA" id="i37XFqB" role="lcghm">
            <property role="lacIc" value=";" />
          </node>
          <node concept="l8MVK" id="1hodSy9ohmo" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYRUZxu">
    <ref role="WuzLi" to="tpee:gbb6qgO" resolve="FloatingPointConstant" />
    <node concept="11bSqf" id="hYRUZxv" role="11c4hB">
      <node concept="3clFbS" id="hYRUZxw" role="2VODD2">
        <node concept="3clFbJ" id="hYRV5Sx" role="3cqZAp">
          <node concept="3clFbC" id="hYRV8Cl" role="3clFbw">
            <node concept="10Nm6u" id="hYRV8RK" role="3uHU7w" />
            <node concept="2OqwBi" id="hYRV6vE" role="3uHU7B">
              <node concept="117lpO" id="hYRV6o$" role="2Oq$k0" />
              <node concept="3TrcHB" id="hYRV6QU" role="2OqNvi">
                <ref role="3TsBF5" to="tpee:gc$nh$Z" resolve="value" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="hYRV5Sz" role="3clFbx">
            <node concept="3clFbF" id="hYRVcnb" role="3cqZAp">
              <node concept="2OqwBi" id="hYRVcYA" role="3clFbG">
                <node concept="2OqwBi" id="hYRVcu3" role="2Oq$k0">
                  <node concept="117lpO" id="hYRVcnc" role="2Oq$k0" />
                  <node concept="3TrcHB" id="hYRVcSf" role="2OqNvi">
                    <ref role="3TsBF5" to="tpee:gc$nh$Z" resolve="value" />
                  </node>
                </node>
                <node concept="tyxLq" id="hYRVd_I" role="2OqNvi">
                  <node concept="Xl_RD" id="hYRVdWe" role="tz02z">
                    <property role="Xl_RC" value="?.?f" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="i0uAw$v" role="3cqZAp">
          <node concept="l9hG8" id="i0uAw$x" role="lcghm">
            <node concept="2OqwBi" id="hYRVgre" role="lb14g">
              <node concept="117lpO" id="hYRVglA" role="2Oq$k0" />
              <node concept="3TrcHB" id="hYRVgJz" role="2OqNvi">
                <ref role="3TsBF5" to="tpee:gc$nh$Z" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYRVjd2">
    <property role="3GE5qa" value="primitive" />
    <ref role="WuzLi" to="tpee:f_0OMvX" resolve="FloatType" />
    <node concept="11bSqf" id="hYRVjd3" role="11c4hB">
      <node concept="3clFbS" id="hYRVjd4" role="2VODD2">
        <node concept="lc7rE" id="i0uAwy1" role="3cqZAp">
          <node concept="la8eA" id="i0uAwy3" role="lcghm">
            <property role="lacIc" value="float" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYRVoLj">
    <property role="3GE5qa" value="control_flow.loops" />
    <ref role="WuzLi" to="tpee:gDDcWSN" resolve="ForeachStatement" />
    <node concept="11bSqf" id="hYRVoLk" role="11c4hB">
      <node concept="3clFbS" id="hYRVoLl" role="2VODD2">
        <node concept="3clFbJ" id="7QIxtrFgeVp" role="3cqZAp">
          <node concept="3clFbS" id="7QIxtrFgeVq" role="3clFbx">
            <node concept="lc7rE" id="7QIxtrFgeVr" role="3cqZAp">
              <node concept="l8MVK" id="7QIxtrFgeVs" role="lcghm" />
              <node concept="l9hG8" id="7QIxtrFgeVt" role="lcghm">
                <node concept="2OqwBi" id="7QIxtrFgeVu" role="lb14g">
                  <node concept="2OqwBi" id="7QIxtrFgeVv" role="2Oq$k0">
                    <node concept="117lpO" id="7QIxtrFgeVw" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7QIxtrFgeVx" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:kcijJTll4L" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="7QIxtrFgeVy" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="7QIxtrFgeVz" role="lcghm">
                <property role="lacIc" value=":" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7QIxtrFgeV$" role="3clFbw">
            <node concept="10Nm6u" id="7QIxtrFgeV_" role="3uHU7w" />
            <node concept="2OqwBi" id="7QIxtrFgeVA" role="3uHU7B">
              <node concept="117lpO" id="7QIxtrFgeVB" role="2Oq$k0" />
              <node concept="3TrEf2" id="7QIxtrFgeVC" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:kcijJTll4L" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="7QIxtrFgeVD" role="3eNLev">
            <node concept="3clFbS" id="7QIxtrFgeVE" role="3eOfB_">
              <node concept="lc7rE" id="7QIxtrFgeVF" role="3cqZAp">
                <node concept="l8MVK" id="7QIxtrFgeVG" role="lcghm" />
                <node concept="l9hG8" id="7QIxtrFgeVH" role="lcghm">
                  <node concept="2OqwBi" id="7QIxtrFgeVI" role="lb14g">
                    <node concept="117lpO" id="7QIxtrFgeVJ" role="2Oq$k0" />
                    <node concept="3TrcHB" id="7QIxtrFgeVK" role="2OqNvi">
                      <ref role="3TsBF5" to="tpee:ht5Hjst" resolve="label" />
                    </node>
                  </node>
                </node>
                <node concept="la8eA" id="7QIxtrFgeVL" role="lcghm">
                  <property role="lacIc" value=":" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="7QIxtrFgeVM" role="3eO9$A">
              <node concept="10Nm6u" id="7QIxtrFgeVN" role="3uHU7w" />
              <node concept="2OqwBi" id="7QIxtrFgeVO" role="3uHU7B">
                <node concept="117lpO" id="7QIxtrFgeVP" role="2Oq$k0" />
                <node concept="3TrcHB" id="7QIxtrFgeVQ" role="2OqNvi">
                  <ref role="3TsBF5" to="tpee:ht5Hjst" resolve="label" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="i0$dD5J" role="3cqZAp">
          <node concept="l8MVK" id="i0$dDqx" role="lcghm" />
        </node>
        <node concept="1bpajm" id="i0uGH$J" role="3cqZAp" />
        <node concept="lc7rE" id="i0uAwlK" role="3cqZAp">
          <node concept="la8eA" id="i0uAwlN" role="lcghm">
            <property role="lacIc" value="for (" />
          </node>
          <node concept="l9hG8" id="i0uAwlO" role="lcghm">
            <node concept="2OqwBi" id="hZihcbu" role="lb14g">
              <node concept="117lpO" id="hZihc5Q" role="2Oq$k0" />
              <node concept="3TrEf2" id="hZihct7" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:gDDuvdF" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwlP" role="lcghm">
            <property role="lacIc" value=" : " />
          </node>
          <node concept="l9hG8" id="i0uAwm6" role="lcghm">
            <node concept="2OqwBi" id="hZihdUe" role="lb14g">
              <node concept="117lpO" id="hZihdOm" role="2Oq$k0" />
              <node concept="3TrEf2" id="hZihebn" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:gDDdaHA" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="i0uAwm7" role="lcghm">
            <property role="lacIc" value=") {" />
          </node>
        </node>
        <node concept="3izx1p" id="hZKbm8s" role="3cqZAp">
          <node concept="3clFbS" id="hZKbm8t" role="3izTki">
            <node concept="lc7rE" id="i0uAwzf" role="3cqZAp">
              <node concept="l9hG8" id="i0uAwzh" role="lcghm">
                <node concept="2OqwBi" id="hYRVOk0" role="lb14g">
                  <node concept="117lpO" id="hYRVOdS" role="2Oq$k0" />
                  <node concept="3TrEf2" id="hYRVOIr" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:gMLFqrC" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="i0uGMCg" role="3cqZAp">
          <node concept="l8MVK" id="i0$dN2i" role="lcghm" />
          <node concept="la8eA" id="i0uGNiy" role="lcghm">
            <property role="ldcpH" value="true" />
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYRVYk3">
    <property role="3GE5qa" value="control_flow.loops" />
    <ref role="WuzLi" to="tpee:gDDw8bY" resolve="ForStatement" />
    <node concept="11bSqf" id="hYRVYk4" role="11c4hB">
      <node concept="3clFbS" id="hYRVYk5" role="2VODD2">
        <node concept="3clFbJ" id="7QIxtrFgeUI" role="3cqZAp">
          <node concept="3clFbS" id="7QIxtrFgeUJ" role="3clFbx">
            <node concept="lc7rE" id="7QIxtrFgeUK" role="3cqZAp">
              <node concept="l8MVK" id="7QIxtrFgeVn" role="lcghm" />
              <node concept="l9hG8" id="7QIxtrFgeUL" role="lcghm">
                <node concept="2OqwBi" id="7QIxtrFgeUM" role="lb14g">
                  <node concept="2OqwBi" id="7QIxtrFgeUN" role="2Oq$k0">
                    <node concept="117lpO" id="7QIxtrFgeUO" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7QIxtrFgeUP" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:kcijJTll4L" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="7QIxtrFgeUQ" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="7QIxtrFgeVl" role="lcghm">
                <property role="lacIc" value=":" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7QIxtrFgeUR" role="3clFbw">
            <node concept="10Nm6u" id="7QIxtrFgeUS" role="3uHU7w" />
            <node concept="2OqwBi" id="7QIxtrFgeUT" role="3uHU7B">
              <node concept="117lpO" id="7QIxtrFgeUU" role="2Oq$k0" />
              <node concept="3TrEf2" id="7QIxtrFgeUV" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:kcijJTll4L" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="7QIxtrFgeV5" role="3eNLev">
            <node concept="3clFbS" id="7QIxtrFgeV7" role="3eOfB_">
              <node concept="lc7rE" id="7QIxtrFgeV8" role="3cqZAp">
                <node concept="l8MVK" id="7QIxtrFgeV9" role="lcghm" />
                <node concept="l9hG8" id="7QIxtrFgeVa" role="lcghm">
                  <node concept="2OqwBi" id="7QIxtrFgeVb" role="lb14g">
                    <node concept="117lpO" id="7QIxtrFgeVc" role="2Oq$k0" />
                    <node concept="3TrcHB" id="7QIxtrFgeVd" role="2OqNvi">
                      <ref role="3TsBF5" to="tpee:ht5Hjst" resolve="label" />
                    </node>
                  </node>
                </node>
                <node concept="la8eA" id="7QIxtrFgeVe" role="lcghm">
                  <property role="lacIc" value=":" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="7QIxtrFgeVf" role="3eO9$A">
              <node concept="10Nm6u" id="7QIxtrFgeVg" role="3uHU7w" />
              <node concept="2OqwBi" id="7QIxtrFgeVh" role="3uHU7B">
                <node concept="117lpO" id="7QIxtrFgeVi" role="2Oq$k0" />
                <node concept="3TrcHB" id="7QIxtrFgeVj" role="2OqNvi">
                  <ref role="3TsBF5" to="tpee:ht5Hjst" resolve="label" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="i0$e2km" role="3cqZAp">
          <node concept="l8MVK" id="i0$e2DR" role="lcghm" />
        </node>
        <node concept="1bpajm" id="i0uG_NN" role="3cqZAp" />
        <node concept="lc7rE" id="i0uAws_" role="3cqZAp">
          <node concept="la8eA" id="i0uAwsC" role="lcghm">
            <property role="lacIc" value="for (" />
          </node>
        </node>
        <node concept="3clFbJ" id="i0$e9YT" role="3cqZAp">
          <node concept="3clFbS" id="i0$e9YU" role="3clFbx">
            <node concept="lc7rE" id="i0$ecb1" role="3cqZAp">
              <node concept="l9hG8" id="i0$edxI" role="lcghm">
                <node concept="2OqwBi" id="i0$edxJ" role="lb14g">
                  <node concept="117lpO" id="i0$edxK" role="2Oq$k0" />
                  <node concept="3TrEf2" id="i0$edxL" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:gDDuvdF" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="i0$eaHV" role="3clFbw">
            <node concept="2OqwBi" id="i0$ealF" role="2Oq$k0">
              <node concept="117lpO" id="i0$eafk" role="2Oq$k0" />
              <node concept="3TrEf2" id="i0$eaCj" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:gDDuvdF" />
              </node>
            </node>
            <node concept="3x8VRR" id="i0$ebtn" role="2OqNvi" />
          </node>
        </node>
        <node concept="1DcWWT" id="Tj67gFBjx7" role="3cqZAp">
          <node concept="3clFbS" id="Tj67gFBjx8" role="2LFqv$">
            <node concept="lc7rE" id="Tj67gFBjxA" role="3cqZAp">
              <node concept="la8eA" id="Tj67gFBjxB" role="lcghm">
                <property role="lacIc" value=", " />
              </node>
            </node>
            <node concept="lc7rE" id="Tj67gFBjxw" role="3cqZAp">
              <node concept="l9hG8" id="Tj67gFBjxy" role="lcghm">
                <node concept="37vLTw" id="3GM_nagTAQp" role="lb14g">
                  <ref role="3cqZAo" node="Tj67gFBjxb" resolve="additionalVar" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="Tj67gFBjxj" role="1DdaDG">
            <node concept="117lpO" id="Tj67gFBjxi" role="2Oq$k0" />
            <node concept="3Tsc0h" id="Tj67gFBjxp" role="2OqNvi">
              <ref role="3TtcxE" to="tpee:Tj67gFBhgh" />
            </node>
          </node>
          <node concept="3cpWsn" id="Tj67gFBjxb" role="1Duv9x">
            <property role="TrG5h" value="additionalVar" />
            <node concept="3Tqbb2" id="Tj67gFBjxf" role="1tU5fm">
              <ref role="ehGHo" to="tpee:fzcpWvJ" resolve="LocalVariableDeclaration" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="i0$eiCH" role="3cqZAp">
          <node concept="la8eA" id="i0$eiV3" role="lcghm">
            <property role="lacIc" value="; " />
          </node>
        </node>
        <node concept="3clFbJ" id="i0$ekVL" role="3cqZAp">
          <node concept="3clFbS" id="i0$ekVM" role="3clFbx">
            <node concept="lc7rE" id="i0$ex$p" role="3cqZAp">
              <node concept="l9hG8" id="i0$e_UK" role="lcghm">
                <node concept="2OqwBi" id="i0$e_UL" role="lb14g">
                  <node concept="117lpO" id="i0$e_UM" role="2Oq$k0" />
                  <node concept="3TrEf2" id="i0$e_UN" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:gDDwp4M" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="i0$ew$7" role="3clFbw">
            <node concept="2OqwBi" id="i0$elmd" role="2Oq$k0">
              <node concept="117lpO" id="i0$elg6" role="2Oq$k0" />
              <node concept="3TrEf2" id="i0$ewi2" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:gDDwp4M" />
              </node>
            </node>
            <node concept="3x8VRR" id="i0$ex0J" role="2OqNvi" />
          </node>
        </node>
        <node concept="lc7rE" id="i0$eBgi" role="3cqZAp">
          <node concept="la8eA" id="i0$eBB1" role="lcghm">
            <property role="lacIc" value=";" />
          </node>
        </node>
        <node concept="3clFbJ" id="7B1GOVmMsbq" role="3cqZAp">
          <node concept="3clFbS" id="7B1GOVmMsbr" role="3clFbx">
            <node concept="lc7rE" id="7B1GOVmMUKE" role="3cqZAp">
              <node concept="la8eA" id="7B1GOVmMUKG" role="lcghm">
                <property role="lacIc" value=" " />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7B1GOVmMUKz" role="3clFbw">
            <node concept="2OqwBi" id="7B1GOVmMFny" role="2Oq$k0">
              <node concept="117lpO" id="7B1GOVmMFnx" role="2Oq$k0" />
              <node concept="3Tsc0h" id="7B1GOVmMFnA" role="2OqNvi">
                <ref role="3TtcxE" to="tpee:gDDwrb5" />
              </node>
            </node>
            <node concept="3GX2aA" id="7B1GOVmMUKB" role="2OqNvi" />
          </node>
        </node>
        <node concept="lc7rE" id="36lU$7it$55" role="3cqZAp">
          <node concept="l9S2W" id="36lU$7it$57" role="lcghm">
            <property role="XA4eZ" value="true" />
            <property role="lbP0B" value=", " />
            <node concept="2OqwBi" id="36lU$7it$5a" role="lbANJ">
              <node concept="117lpO" id="36lU$7it$59" role="2Oq$k0" />
              <node concept="3Tsc0h" id="36lU$7it$5f" role="2OqNvi">
                <ref role="3TtcxE" to="tpee:gDDwrb5" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="i0$ePri" role="3cqZAp">
          <node concept="la8eA" id="i0$eQCH" role="lcghm">
            <property role="lacIc" value=") {" />
          </node>
        </node>
        <node concept="3izx1p" id="hZKbh4U" role="3cqZAp">
          <node concept="3clFbS" id="hZKbh4V" role="3izTki">
            <node concept="lc7rE" id="i0uAw$N" role="3cqZAp">
              <node concept="l9hG8" id="i0uAw$P" role="lcghm">
                <node concept="2OqwBi" id="hYS0Mcl" role="lb14g">
                  <node concept="117lpO" id="hYS0M6t" role="2Oq$k0" />
                  <node concept="3TrEf2" id="hYS0MDG" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:gMLFqrC" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="i0uGCqm" role="3cqZAp">
          <node concept="l8MVK" id="i0$eUlz" role="lcghm" />
          <node concept="la8eA" id="i0uGDmF" role="lcghm">
            <property role="ldcpH" value="true" />
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hYS3Ao0">
    <property role="3GE5qa" value="variables" />
    <ref role="WuzLi" to="tpee:fzcpWvJ" resolve="LocalVariableDeclaration" />
    <node concept="11bSqf" id="hYS3Ao1" role="11c4hB">
      <node concept="3clFbS" id="hYS3Ao2" role="2VODD2">
        <node concept="lc7rE" id="i0XuQvs" role="3cqZAp">
          <node concept="1bDJIP" id="i0XuR9I" role="lcghm">
            <ref role="1rvKf6" node="hXZOC0K" resolve="annotations" />
            <node concept="117lpO" id="i0XuR9J" role="1ryhcI" />
          </node>
          <node concept="1bDJIP" id="i0XuShM" role="lcghm">
            <ref role="1rvKf6" node="hYI$aNc" resolve="variableDeclaration" />
            <node concept="117lpO" id="i0XuShN" role="1ryhcI" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1bsvg0" id="hZ8aeLz">
    <property role="TrG5h" value="StringTextGen" />
    <property role="3GE5qa" value="lang" />
    <node concept="1JqxBV" id="hZ8b4ok" role="1Jy66y">
      <property role="TrG5h" value="isBadDoubleQuote" />
      <node concept="10P_77" id="hZ8b51S" role="3clF45" />
      <node concept="3clFbS" id="hZ8b4om" role="3clF47">
        <node concept="3cpWs6" id="hZ8bal_" role="3cqZAp">
          <node concept="1Wc70l" id="hZ8beiJ" role="3cqZAk">
            <node concept="1eOMI4" id="hZ8bfuX" role="3uHU7w">
              <node concept="22lmx$" id="hZ8bgYx" role="1eOMHV">
                <node concept="3y3z36" id="hZ8bjGm" role="3uHU7w">
                  <node concept="1Xhbcc" id="hZ8bkdQ" role="3uHU7w">
                    <property role="1XhdNS" value="\\" />
                  </node>
                  <node concept="2OqwBi" id="hZ8bhnv" role="3uHU7B">
                    <node concept="37vLTw" id="2BHiRxgm_D9" role="2Oq$k0">
                      <ref role="3cqZAo" node="hZ8b88C" resolve="s" />
                    </node>
                    <node concept="liA8E" id="hZ8bhLr" role="2OqNvi">
                      <ref role="37wK5l" to="e2lb:~String.charAt(int):char" resolve="charAt" />
                      <node concept="3cpWsd" id="hZ8bjb$" role="37wK5m">
                        <node concept="3cmrfG" id="hZ8bjcA" role="3uHU7w">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="37vLTw" id="2BHiRxglYCY" role="3uHU7B">
                          <ref role="3cqZAo" node="hZ8b8nM" resolve="i" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="hZ8bgoo" role="3uHU7B">
                  <node concept="37vLTw" id="2BHiRxgmHTL" role="3uHU7B">
                    <ref role="3cqZAo" node="hZ8b8nM" resolve="i" />
                  </node>
                  <node concept="3cmrfG" id="hZ8bgAP" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="hZ8bcqz" role="3uHU7B">
              <node concept="2OqwBi" id="hZ8bbf1" role="3uHU7B">
                <node concept="37vLTw" id="2BHiRxgm7Ub" role="2Oq$k0">
                  <ref role="3cqZAo" node="hZ8b88C" resolve="s" />
                </node>
                <node concept="liA8E" id="hZ8bbzl" role="2OqNvi">
                  <ref role="37wK5l" to="e2lb:~String.charAt(int):char" resolve="charAt" />
                  <node concept="37vLTw" id="2BHiRxglD7L" role="37wK5m">
                    <ref role="3cqZAo" node="hZ8b8nM" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="1Xhbcc" id="hZ8bcxV" role="3uHU7w">
                <property role="1XhdNS" value="&quot;" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="hZ8b88C" role="3clF46">
        <property role="TrG5h" value="s" />
        <node concept="17QB3L" id="hZ8cuK3" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="hZ8b8nM" role="3clF46">
        <property role="TrG5h" value="i" />
        <node concept="10Oyi0" id="hZ8b8IL" role="1tU5fm" />
      </node>
    </node>
    <node concept="1JqxBV" id="hZ8coNQ" role="1Jy66y">
      <property role="TrG5h" value="replaceNonAsciiSymbolsWithUnicodeSymbols" />
      <node concept="17QB3L" id="hZ8cpwO" role="3clF45" />
      <node concept="3clFbS" id="hZ8coNS" role="3clF47">
        <node concept="3cpWs8" id="hZ8cxy2" role="3cqZAp">
          <node concept="3cpWsn" id="hZ8cxy3" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="hZ8cxy4" role="1tU5fm">
              <ref role="3uigEE" to="e2lb:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="hZ8czEk" role="33vP2m">
              <node concept="1pGfFk" id="hZ8czEl" role="2ShVmc">
                <ref role="37wK5l" to="e2lb:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="hZ8c$HZ" role="3cqZAp">
          <node concept="3clFbS" id="hZ8c$I0" role="2LFqv$">
            <node concept="3clFbJ" id="hZ8cDk0" role="3cqZAp">
              <node concept="3clFbS" id="hZ8cDk1" role="3clFbx">
                <node concept="3clFbF" id="hZ8cIlj" role="3cqZAp">
                  <node concept="2OqwBi" id="hZ8cIrc" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagT_eG" role="2Oq$k0">
                      <ref role="3cqZAo" node="hZ8cxy3" resolve="result" />
                    </node>
                    <node concept="liA8E" id="hZ8cJ50" role="2OqNvi">
                      <ref role="37wK5l" to="e2lb:~StringBuilder.append(char):java.lang.StringBuilder" resolve="append" />
                      <node concept="2OqwBi" id="hZ8cJBW" role="37wK5m">
                        <node concept="37vLTw" id="2BHiRxghfDV" role="2Oq$k0">
                          <ref role="3cqZAo" node="hZ8ct_4" resolve="s" />
                        </node>
                        <node concept="liA8E" id="hZ8cK5j" role="2OqNvi">
                          <ref role="37wK5l" to="e2lb:~String.charAt(int):char" resolve="charAt" />
                          <node concept="37vLTw" id="3GM_nagTuMz" role="37wK5m">
                            <ref role="3cqZAo" node="hZ8c$I2" resolve="i" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eOVzh" id="hZ8cFmy" role="3clFbw">
                <node concept="3cmrfG" id="hZ8cF_u" role="3uHU7w">
                  <property role="3cmrfH" value="128" />
                </node>
                <node concept="2OqwBi" id="hZ8cDPi" role="3uHU7B">
                  <node concept="37vLTw" id="2BHiRxgmaA3" role="2Oq$k0">
                    <ref role="3cqZAo" node="hZ8ct_4" resolve="s" />
                  </node>
                  <node concept="liA8E" id="hZ8cEhE" role="2OqNvi">
                    <ref role="37wK5l" to="e2lb:~String.charAt(int):char" resolve="charAt" />
                    <node concept="37vLTw" id="3GM_nagTxlN" role="37wK5m">
                      <ref role="3cqZAo" node="hZ8c$I2" resolve="i" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="hZ8cLo_" role="9aQIa">
                <node concept="3clFbS" id="hZ8cLoA" role="9aQI4">
                  <node concept="3clFbF" id="hZ8cLXY" role="3cqZAp">
                    <node concept="2OqwBi" id="hZ8cOae" role="3clFbG">
                      <node concept="2OqwBi" id="hZ8cM3Q" role="2Oq$k0">
                        <node concept="37vLTw" id="3GM_nagTrwe" role="2Oq$k0">
                          <ref role="3cqZAo" node="hZ8cxy3" resolve="result" />
                        </node>
                        <node concept="liA8E" id="hZ8cMmu" role="2OqNvi">
                          <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                          <node concept="Xl_RD" id="hZ8cN1t" role="37wK5m">
                            <property role="Xl_RC" value="\\u" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="hZ8cOzr" role="2OqNvi">
                        <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                        <node concept="1JECQ7" id="hZ8da1R" role="37wK5m">
                          <ref role="1JF1rN" node="hZ8cPqR" resolve="paddedHex" />
                          <node concept="2OqwBi" id="hZ8daV1" role="1JF4iq">
                            <node concept="37vLTw" id="2BHiRxglK3n" role="2Oq$k0">
                              <ref role="3cqZAo" node="hZ8ct_4" resolve="s" />
                            </node>
                            <node concept="liA8E" id="hZ8dben" role="2OqNvi">
                              <ref role="37wK5l" to="e2lb:~String.charAt(int):char" resolve="charAt" />
                              <node concept="37vLTw" id="3GM_nagTtaK" role="37wK5m">
                                <ref role="3cqZAo" node="hZ8c$I2" resolve="i" />
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
          </node>
          <node concept="3cpWsn" id="hZ8c$I2" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="hZ8c_2O" role="1tU5fm" />
            <node concept="3cmrfG" id="hZ8cA3y" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="hZ8cATL" role="1Dwp0S">
            <node concept="2OqwBi" id="hZ8cBDs" role="3uHU7w">
              <node concept="37vLTw" id="2BHiRxgmaQh" role="2Oq$k0">
                <ref role="3cqZAo" node="hZ8ct_4" resolve="s" />
              </node>
              <node concept="liA8E" id="hZ8cBYg" role="2OqNvi">
                <ref role="37wK5l" to="e2lb:~String.length():int" resolve="length" />
              </node>
            </node>
            <node concept="37vLTw" id="3GM_nagT_mw" role="3uHU7B">
              <ref role="3cqZAo" node="hZ8c$I2" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="hZ8cCtL" role="1Dwrff">
            <node concept="37vLTw" id="3GM_nagTv6e" role="2$L3a6">
              <ref role="3cqZAo" node="hZ8c$I2" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="hZ8dcy9" role="3cqZAp">
          <node concept="2OqwBi" id="hZ8ddg6" role="3cqZAk">
            <node concept="37vLTw" id="3GM_nagT_BG" role="2Oq$k0">
              <ref role="3cqZAo" node="hZ8cxy3" resolve="result" />
            </node>
            <node concept="liA8E" id="hZ8ddZx" role="2OqNvi">
              <ref role="37wK5l" to="e2lb:~StringBuilder.toString():java.lang.String" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="hZ8ct_4" role="3clF46">
        <property role="TrG5h" value="s" />
        <node concept="17QB3L" id="hZ8ct_5" role="1tU5fm" />
      </node>
    </node>
    <node concept="1JqxBV" id="hZ8cPqR" role="1Jy66y">
      <property role="TrG5h" value="paddedHex" />
      <node concept="17QB3L" id="hZ8cQ7_" role="3clF45" />
      <node concept="3clFbS" id="hZ8cPqT" role="3clF47">
        <node concept="3cpWs8" id="hZ8cTp5" role="3cqZAp">
          <node concept="3cpWsn" id="hZ8cTp6" role="3cpWs9">
            <property role="TrG5h" value="value" />
            <node concept="17QB3L" id="hZ8cTp7" role="1tU5fm" />
            <node concept="2YIFZM" id="hZ8cXJy" role="33vP2m">
              <ref role="37wK5l" to="e2lb:~Integer.toString(int,int):java.lang.String" resolve="toString" />
              <ref role="1Pybhc" to="e2lb:~Integer" resolve="Integer" />
              <node concept="37vLTw" id="2BHiRxglJWn" role="37wK5m">
                <ref role="3cqZAo" node="hZ8cSmE" resolve="c" />
              </node>
              <node concept="3cmrfG" id="hZ8cXJ$" role="37wK5m">
                <property role="3cmrfH" value="16" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="hZ8cZz4" role="3cqZAp">
          <node concept="3eOVzh" id="hZ8d1tK" role="2$JKZa">
            <node concept="3cmrfG" id="hZ8d1GW" role="3uHU7w">
              <property role="3cmrfH" value="4" />
            </node>
            <node concept="2OqwBi" id="hZ8d0kc" role="3uHU7B">
              <node concept="37vLTw" id="3GM_nagTByT" role="2Oq$k0">
                <ref role="3cqZAo" node="hZ8cTp6" resolve="value" />
              </node>
              <node concept="liA8E" id="hZ8d0UP" role="2OqNvi">
                <ref role="37wK5l" to="e2lb:~String.length():int" resolve="length" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="hZ8cZz6" role="2LFqv$">
            <node concept="3clFbF" id="hZ8d2ns" role="3cqZAp">
              <node concept="37vLTI" id="hZ8d2Y2" role="3clFbG">
                <node concept="3cpWs3" id="hZ8d4$p" role="37vLTx">
                  <node concept="37vLTw" id="3GM_nagTwUZ" role="3uHU7w">
                    <ref role="3cqZAo" node="hZ8cTp6" resolve="value" />
                  </node>
                  <node concept="Xl_RD" id="hZ8d3B6" role="3uHU7B">
                    <property role="Xl_RC" value="0" />
                  </node>
                </node>
                <node concept="37vLTw" id="3GM_nagTvre" role="37vLTJ">
                  <ref role="3cqZAo" node="hZ8cTp6" resolve="value" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="hZ8d5Tb" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTzz9" role="3cqZAk">
            <ref role="3cqZAo" node="hZ8cTp6" resolve="value" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="hZ8cSmE" role="3clF46">
        <property role="TrG5h" value="c" />
        <node concept="10Pfzv" id="hZ8cSmF" role="1tU5fm" />
      </node>
    </node>
    <node concept="1bwezc" id="hZ8ag$N" role="1bwxVq">
      <property role="TrG5h" value="compilableString" />
      <node concept="3cqZAl" id="hZ8ag$O" role="3clF45" />
      <node concept="3clFbS" id="hZ8ag$P" role="3clF47">
        <node concept="3cpWs8" id="hZ8ar_Y" role="3cqZAp">
          <node concept="3cpWsn" id="hZ8ar_Z" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="17QB3L" id="4dKd5TsHqt9" role="1tU5fm" />
            <node concept="37vLTw" id="2BHiRxgmDz$" role="33vP2m">
              <ref role="3cqZAo" node="hZ8am9j" resolve="s" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="hZ8axgW" role="3cqZAp">
          <node concept="3clFbS" id="hZ8axgX" role="3clFbx">
            <node concept="3cpWs8" id="hZ8aRBT" role="3cqZAp">
              <node concept="3cpWsn" id="hZ8aRBU" role="3cpWs9">
                <property role="TrG5h" value="needsEscaping" />
                <node concept="10P_77" id="hZ8aRBV" role="1tU5fm" />
                <node concept="3clFbT" id="hZ8aUtA" role="33vP2m">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="1Dw8fO" id="hZ8aW5D" role="3cqZAp">
              <node concept="3clFbS" id="hZ8aW5E" role="2LFqv$">
                <node concept="3clFbJ" id="hZ8b1Ce" role="3cqZAp">
                  <node concept="3clFbS" id="hZ8b1Cf" role="3clFbx">
                    <node concept="3clFbF" id="hZ8b$J2" role="3cqZAp">
                      <node concept="37vLTI" id="hZ8b_lp" role="3clFbG">
                        <node concept="3clFbT" id="hZ8b_G9" role="37vLTx">
                          <property role="3clFbU" value="true" />
                        </node>
                        <node concept="37vLTw" id="3GM_nagTv72" role="37vLTJ">
                          <ref role="3cqZAo" node="hZ8aRBU" resolve="needsEscaping" />
                        </node>
                      </node>
                    </node>
                    <node concept="3zACq4" id="hZ8bArz" role="3cqZAp" />
                  </node>
                  <node concept="22lmx$" id="hZ8bx86" role="3clFbw">
                    <node concept="3clFbC" id="hZ8bzmm" role="3uHU7w">
                      <node concept="1Xhbcc" id="hZ8bzF9" role="3uHU7w">
                        <property role="1XhdNS" value="\n" />
                      </node>
                      <node concept="2OqwBi" id="hZ8bxVF" role="3uHU7B">
                        <node concept="37vLTw" id="3GM_nagTygy" role="2Oq$k0">
                          <ref role="3cqZAo" node="hZ8ar_Z" resolve="result" />
                        </node>
                        <node concept="liA8E" id="hZ8bysW" role="2OqNvi">
                          <ref role="37wK5l" to="e2lb:~String.charAt(int):char" resolve="charAt" />
                          <node concept="37vLTw" id="3GM_nagTr1A" role="37wK5m">
                            <ref role="3cqZAo" node="hZ8aW5G" resolve="i" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="22lmx$" id="hZ8bt3n" role="3uHU7B">
                      <node concept="1JECQ7" id="hZ8bnGi" role="3uHU7B">
                        <ref role="1JF1rN" node="hZ8b4ok" resolve="isBadDoubleQuote" />
                        <node concept="37vLTw" id="2BHiRxgkW_o" role="1JF4iq">
                          <ref role="3cqZAo" node="hZ8am9j" resolve="s" />
                        </node>
                        <node concept="37vLTw" id="3GM_nagTt5R" role="1JF4iq">
                          <ref role="3cqZAo" node="hZ8aW5G" resolve="i" />
                        </node>
                      </node>
                      <node concept="3clFbC" id="hZ8bvRH" role="3uHU7w">
                        <node concept="2OqwBi" id="hZ8buHS" role="3uHU7B">
                          <node concept="37vLTw" id="3GM_nagTBiY" role="2Oq$k0">
                            <ref role="3cqZAo" node="hZ8ar_Z" resolve="result" />
                          </node>
                          <node concept="liA8E" id="hZ8bv2W" role="2OqNvi">
                            <ref role="37wK5l" to="e2lb:~String.charAt(int):char" resolve="charAt" />
                            <node concept="37vLTw" id="3GM_nagTw8U" role="37wK5m">
                              <ref role="3cqZAo" node="hZ8aW5G" resolve="i" />
                            </node>
                          </node>
                        </node>
                        <node concept="1Xhbcc" id="hZ8bvXn" role="3uHU7w">
                          <property role="1XhdNS" value="\r" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="hZ8aW5G" role="1Duv9x">
                <property role="TrG5h" value="i" />
                <node concept="10Oyi0" id="hZ8aWxj" role="1tU5fm" />
                <node concept="3cmrfG" id="hZ8aXSw" role="33vP2m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="3eOVzh" id="hZ8aYY7" role="1Dwp0S">
                <node concept="2OqwBi" id="hZ8aZtr" role="3uHU7w">
                  <node concept="37vLTw" id="2BHiRxglHKJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="hZ8am9j" resolve="s" />
                  </node>
                  <node concept="liA8E" id="hZ8aZWv" role="2OqNvi">
                    <ref role="37wK5l" to="e2lb:~String.length():int" resolve="length" />
                  </node>
                </node>
                <node concept="37vLTw" id="3GM_nagTtJ8" role="3uHU7B">
                  <ref role="3cqZAo" node="hZ8aW5G" resolve="i" />
                </node>
              </node>
              <node concept="3uNrnE" id="hZ8b0AL" role="1Dwrff">
                <node concept="37vLTw" id="3GM_nagTBZp" role="2$L3a6">
                  <ref role="3cqZAo" node="hZ8aW5G" resolve="i" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="hZ8bBzn" role="3cqZAp">
              <node concept="3clFbS" id="hZ8bBzo" role="3clFbx">
                <node concept="3cpWs8" id="hZ8bDdS" role="3cqZAp">
                  <node concept="3cpWsn" id="hZ8bDdT" role="3cpWs9">
                    <property role="TrG5h" value="stringBuilder" />
                    <node concept="3uibUv" id="hZ8bDdU" role="1tU5fm">
                      <ref role="3uigEE" to="e2lb:~StringBuilder" resolve="StringBuilder" />
                    </node>
                    <node concept="2ShNRf" id="hZ8bFcr" role="33vP2m">
                      <node concept="1pGfFk" id="hZ8bFcs" role="2ShVmc">
                        <ref role="37wK5l" to="e2lb:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Dw8fO" id="hZ8bHC0" role="3cqZAp">
                  <node concept="3clFbS" id="hZ8bHC1" role="2LFqv$">
                    <node concept="3clFbJ" id="hZ8bM5v" role="3cqZAp">
                      <node concept="3clFbS" id="hZ8bM5w" role="3clFbx">
                        <node concept="3clFbF" id="hZ8bPtG" role="3cqZAp">
                          <node concept="2OqwBi" id="hZ8bPIk" role="3clFbG">
                            <node concept="37vLTw" id="3GM_nagTwld" role="2Oq$k0">
                              <ref role="3cqZAo" node="hZ8bDdT" resolve="stringBuilder" />
                            </node>
                            <node concept="liA8E" id="hZ8bQuY" role="2OqNvi">
                              <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                              <node concept="Xl_RD" id="hZ8bQDI" role="37wK5m">
                                <property role="Xl_RC" value="\\\&quot;" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1JECQ7" id="hZ8bN52" role="3clFbw">
                        <ref role="1JF1rN" node="hZ8b4ok" resolve="isBadDoubleQuote" />
                        <node concept="37vLTw" id="2BHiRxgmf4d" role="1JF4iq">
                          <ref role="3cqZAo" node="hZ8am9j" resolve="s" />
                        </node>
                        <node concept="37vLTw" id="3GM_nagTxB3" role="1JF4iq">
                          <ref role="3cqZAo" node="hZ8bHC3" resolve="i" />
                        </node>
                      </node>
                      <node concept="3eNFk2" id="hZ8bUFP" role="3eNLev">
                        <node concept="3clFbC" id="hZ8bY4_" role="3eO9$A">
                          <node concept="1Xhbcc" id="hZ8bYcG" role="3uHU7w">
                            <property role="1XhdNS" value="\r" />
                          </node>
                          <node concept="2OqwBi" id="hZ8bWbD" role="3uHU7B">
                            <node concept="37vLTw" id="3GM_nagTtx_" role="2Oq$k0">
                              <ref role="3cqZAo" node="hZ8ar_Z" resolve="result" />
                            </node>
                            <node concept="liA8E" id="hZ8bWwt" role="2OqNvi">
                              <ref role="37wK5l" to="e2lb:~String.charAt(int):char" resolve="charAt" />
                              <node concept="37vLTw" id="3GM_nagTuCg" role="37wK5m">
                                <ref role="3cqZAo" node="hZ8bHC3" resolve="i" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="hZ8bUFR" role="3eOfB_">
                          <node concept="3clFbF" id="hZ8c4ch" role="3cqZAp">
                            <node concept="2OqwBi" id="hZ8c4xi" role="3clFbG">
                              <node concept="37vLTw" id="3GM_nagTvBb" role="2Oq$k0">
                                <ref role="3cqZAo" node="hZ8bDdT" resolve="stringBuilder" />
                              </node>
                              <node concept="liA8E" id="hZ8c4WH" role="2OqNvi">
                                <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                                <node concept="Xl_RD" id="hZ8c58V" role="37wK5m">
                                  <property role="Xl_RC" value="\\r" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3eNFk2" id="hZ8c6_u" role="3eNLev">
                        <node concept="3clFbC" id="hZ8c8Nu" role="3eO9$A">
                          <node concept="1Xhbcc" id="hZ8c948" role="3uHU7w">
                            <property role="1XhdNS" value="\n" />
                          </node>
                          <node concept="2OqwBi" id="hZ8c7b8" role="3uHU7B">
                            <node concept="37vLTw" id="3GM_nagT$6f" role="2Oq$k0">
                              <ref role="3cqZAo" node="hZ8ar_Z" resolve="result" />
                            </node>
                            <node concept="liA8E" id="hZ8c7uI" role="2OqNvi">
                              <ref role="37wK5l" to="e2lb:~String.charAt(int):char" resolve="charAt" />
                              <node concept="37vLTw" id="3GM_nagTrIQ" role="37wK5m">
                                <ref role="3cqZAo" node="hZ8bHC3" resolve="i" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="hZ8c6_w" role="3eOfB_">
                          <node concept="3clFbF" id="hZ8casL" role="3cqZAp">
                            <node concept="2OqwBi" id="hZ8cayT" role="3clFbG">
                              <node concept="37vLTw" id="3GM_nagTxET" role="2Oq$k0">
                                <ref role="3cqZAo" node="hZ8bDdT" resolve="stringBuilder" />
                              </node>
                              <node concept="liA8E" id="hZ8cbjN" role="2OqNvi">
                                <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                                <node concept="Xl_RD" id="hZ8cb_p" role="37wK5m">
                                  <property role="Xl_RC" value="\\n" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="9aQIb" id="hZ8cfEp" role="9aQIa">
                        <node concept="3clFbS" id="hZ8cfEq" role="9aQI4">
                          <node concept="3clFbF" id="hZ8cge5" role="3cqZAp">
                            <node concept="2OqwBi" id="hZ8cgkt" role="3clFbG">
                              <node concept="37vLTw" id="3GM_nagTAyZ" role="2Oq$k0">
                                <ref role="3cqZAo" node="hZ8bDdT" resolve="stringBuilder" />
                              </node>
                              <node concept="liA8E" id="hZ8cgBN" role="2OqNvi">
                                <ref role="37wK5l" to="e2lb:~StringBuilder.append(char):java.lang.StringBuilder" resolve="append" />
                                <node concept="2OqwBi" id="hZ8chwu" role="37wK5m">
                                  <node concept="37vLTw" id="2BHiRxgmqgY" role="2Oq$k0">
                                    <ref role="3cqZAo" node="hZ8am9j" resolve="s" />
                                  </node>
                                  <node concept="liA8E" id="hZ8ci5r" role="2OqNvi">
                                    <ref role="37wK5l" to="e2lb:~String.charAt(int):char" resolve="charAt" />
                                    <node concept="37vLTw" id="3GM_nagTyvr" role="37wK5m">
                                      <ref role="3cqZAo" node="hZ8bHC3" resolve="i" />
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
                  <node concept="3cpWsn" id="hZ8bHC3" role="1Duv9x">
                    <property role="TrG5h" value="i" />
                    <node concept="10Oyi0" id="hZ8bI2W" role="1tU5fm" />
                    <node concept="3cmrfG" id="hZ8bIO2" role="33vP2m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                  <node concept="3eOVzh" id="hZ8bJRG" role="1Dwp0S">
                    <node concept="2OqwBi" id="hZ8bKjm" role="3uHU7w">
                      <node concept="37vLTw" id="2BHiRxgm80A" role="2Oq$k0">
                        <ref role="3cqZAo" node="hZ8am9j" resolve="s" />
                      </node>
                      <node concept="liA8E" id="hZ8bKLc" role="2OqNvi">
                        <ref role="37wK5l" to="e2lb:~String.length():int" resolve="length" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="3GM_nagTBqC" role="3uHU7B">
                      <ref role="3cqZAo" node="hZ8bHC3" resolve="i" />
                    </node>
                  </node>
                  <node concept="3uNrnE" id="hZ8bLic" role="1Dwrff">
                    <node concept="37vLTw" id="3GM_nagTzlh" role="2$L3a6">
                      <ref role="3cqZAo" node="hZ8bHC3" resolve="i" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="hZ8cjHY" role="3cqZAp">
                  <node concept="37vLTI" id="hZ8ck87" role="3clFbG">
                    <node concept="2OqwBi" id="hZ8ckFO" role="37vLTx">
                      <node concept="37vLTw" id="3GM_nagTyoo" role="2Oq$k0">
                        <ref role="3cqZAo" node="hZ8bDdT" resolve="stringBuilder" />
                      </node>
                      <node concept="liA8E" id="hZ8cl9U" role="2OqNvi">
                        <ref role="37wK5l" to="e2lb:~StringBuilder.toString():java.lang.String" resolve="toString" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="3GM_nagT$wE" role="37vLTJ">
                      <ref role="3cqZAo" node="hZ8ar_Z" resolve="result" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="3GM_nagT_vd" role="3clFbw">
                <ref role="3cqZAo" node="hZ8aRBU" resolve="needsEscaping" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="hZ8aNKA" role="3clFbw">
            <node concept="2d3UOw" id="hZ8aQpd" role="3uHU7w">
              <node concept="3cmrfG" id="hZ8aQJf" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="2OqwBi" id="hZ8aOt_" role="3uHU7B">
                <node concept="37vLTw" id="2BHiRxgm8JH" role="2Oq$k0">
                  <ref role="3cqZAo" node="hZ8am9j" resolve="s" />
                </node>
                <node concept="liA8E" id="hZ8aOTI" role="2OqNvi">
                  <ref role="37wK5l" to="e2lb:~String.indexOf(int):int" resolve="indexOf" />
                  <node concept="1Xhbcc" id="hZ8aPjB" role="37wK5m">
                    <property role="1XhdNS" value="\r" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="22lmx$" id="hZ8aJYU" role="3uHU7B">
              <node concept="2d3UOw" id="hZ8aDlg" role="3uHU7B">
                <node concept="2OqwBi" id="hZ8aDlh" role="3uHU7B">
                  <node concept="37vLTw" id="2BHiRxgmaZO" role="2Oq$k0">
                    <ref role="3cqZAo" node="hZ8am9j" resolve="s" />
                  </node>
                  <node concept="liA8E" id="hZ8aDlj" role="2OqNvi">
                    <ref role="37wK5l" to="e2lb:~String.indexOf(int):int" resolve="indexOf" />
                    <node concept="1Xhbcc" id="hZ8aDlk" role="37wK5m">
                      <property role="1XhdNS" value="&quot;" />
                    </node>
                  </node>
                </node>
                <node concept="3cmrfG" id="hZ8aDDQ" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="2d3UOw" id="hZ8aMOu" role="3uHU7w">
                <node concept="2OqwBi" id="hZ8aKB1" role="3uHU7B">
                  <node concept="37vLTw" id="2BHiRxgm8jH" role="2Oq$k0">
                    <ref role="3cqZAo" node="hZ8am9j" resolve="s" />
                  </node>
                  <node concept="liA8E" id="hZ8aLnE" role="2OqNvi">
                    <ref role="37wK5l" to="e2lb:~String.indexOf(int):int" resolve="indexOf" />
                    <node concept="1Xhbcc" id="hZ8aLyr" role="37wK5m">
                      <property role="1XhdNS" value="\n" />
                    </node>
                  </node>
                </node>
                <node concept="3cmrfG" id="hZ8aNcd" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="i0uAwAj" role="3cqZAp">
          <node concept="l9hG8" id="i0uAwAl" role="lcghm">
            <node concept="1JECQ7" id="hZ8dkrd" role="lb14g">
              <ref role="1JF1rN" node="hZ8coNQ" resolve="replaceNonAsciiSymbolsWithUnicodeSymbols" />
              <node concept="37vLTw" id="3GM_nagTzrr" role="1JF4iq">
                <ref role="3cqZAo" node="hZ8ar_Z" resolve="result" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="hZ8am9j" role="3clF46">
        <property role="TrG5h" value="s" />
        <node concept="17QB3L" id="hZ8am9k" role="1tU5fm" />
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="i0N5LIK">
    <property role="3GE5qa" value="to_remove" />
    <ref role="WuzLi" to="tpee:hVOpPZc" resolve="CommentedStatement" />
    <node concept="11bSqf" id="i0N5LIL" role="11c4hB">
      <node concept="3clFbS" id="i0N5LIM" role="2VODD2">
        <node concept="lc7rE" id="i0N5QPI" role="3cqZAp">
          <node concept="l8MVK" id="i0N5RuL" role="lcghm" />
          <node concept="la8eA" id="i0N5SJC" role="lcghm">
            <property role="ldcpH" value="true" />
            <property role="lacIc" value="/*" />
          </node>
        </node>
        <node concept="11p84A" id="i0N5Uv1" role="3cqZAp" />
        <node concept="lc7rE" id="i0N5Vwu" role="3cqZAp">
          <node concept="l9hG8" id="i0N5YiY" role="lcghm">
            <node concept="2OqwBi" id="i0N5YV4" role="lb14g">
              <node concept="117lpO" id="i0N5YOt" role="2Oq$k0" />
              <node concept="3TrEf2" id="i0N5Zyc" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:hVOpThI" />
              </node>
            </node>
          </node>
          <node concept="l8MVK" id="i0N60pp" role="lcghm" />
        </node>
        <node concept="11pn5k" id="i0N61s5" role="3cqZAp" />
        <node concept="lc7rE" id="i0N66As" role="3cqZAp">
          <node concept="la8eA" id="i0N67y2" role="lcghm">
            <property role="ldcpH" value="true" />
            <property role="lacIc" value="*/" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="i2$w8aG">
    <property role="3GE5qa" value="expressions.prefix/postfix" />
    <ref role="WuzLi" to="tpee:i2$sJ3C" resolve="PrefixDecrementExpression" />
    <node concept="11bSqf" id="i2$w8aH" role="11c4hB">
      <node concept="3clFbS" id="i2$w8aI" role="2VODD2">
        <node concept="lc7rE" id="i2$wkxY" role="3cqZAp">
          <node concept="la8eA" id="i2$wmME" role="lcghm">
            <property role="lacIc" value="--" />
          </node>
          <node concept="l9hG8" id="i2$wr51" role="lcghm">
            <node concept="2OqwBi" id="i2$ws26" role="lb14g">
              <node concept="117lpO" id="i2$wrXq" role="2Oq$k0" />
              <node concept="3TrEf2" id="i2_Hh_P" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:i2$L3eA" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="i2$wuFL">
    <property role="3GE5qa" value="expressions.prefix/postfix" />
    <ref role="WuzLi" to="tpee:i2$rvm0" resolve="PrefixIncrementExpression" />
    <node concept="11bSqf" id="i2$wuFM" role="11c4hB">
      <node concept="3clFbS" id="i2$wuFN" role="2VODD2">
        <node concept="lc7rE" id="i2$wJil" role="3cqZAp">
          <node concept="la8eA" id="i2$wKEm" role="lcghm">
            <property role="lacIc" value="++" />
          </node>
          <node concept="l9hG8" id="i2$wMop" role="lcghm">
            <node concept="2OqwBi" id="i2$wN30" role="lb14g">
              <node concept="117lpO" id="i2$wMWU" role="2Oq$k0" />
              <node concept="3TrEf2" id="i2_HiGe" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:i2$L3eA" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="3H1xM9Lz7$Z">
    <ref role="WuzLi" to="tpee:3H1xM9LtL2O" resolve="LongLiteral" />
    <node concept="11bSqf" id="3H1xM9Lz7_0" role="11c4hB">
      <node concept="3clFbS" id="3H1xM9Lz7_1" role="2VODD2">
        <node concept="lc7rE" id="3H1xM9LzLyF" role="3cqZAp">
          <node concept="l9hG8" id="3H1xM9LzLyH" role="lcghm">
            <node concept="2OqwBi" id="3H1xM9LzLyJ" role="lb14g">
              <node concept="117lpO" id="3H1xM9LzLyK" role="2Oq$k0" />
              <node concept="3TrcHB" id="3H1xM9LzLyL" role="2OqNvi">
                <ref role="3TsBF5" to="tpee:3H1xM9LtL2P" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="2Xh8b$ioa$N">
    <ref role="WuzLi" to="tpee:fzclF8l" resolve="Statement" />
    <node concept="11bSqf" id="2Xh8b$ioa$O" role="11c4hB">
      <node concept="3clFbS" id="2Xh8b$ioa$P" role="2VODD2">
        <node concept="3clFbJ" id="2Xh8b$ioe04" role="3cqZAp">
          <node concept="3clFbS" id="2Xh8b$ioe05" role="3clFbx">
            <node concept="lc7rE" id="2Xh8b$ioe0o" role="3cqZAp">
              <node concept="la8eA" id="2Xh8b$ioe8C" role="lcghm">
                <property role="lacIc" value="/* error: statement w/o textGen:" />
              </node>
              <node concept="l9hG8" id="2Xh8b$ioe8I" role="lcghm">
                <node concept="2OqwBi" id="2Xh8b$ioe8P" role="lb14g">
                  <node concept="117lpO" id="2Xh8b$ioe8K" role="2Oq$k0" />
                  <node concept="2qgKlT" id="2Xh8b$ioe8T" role="2OqNvi">
                    <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                  </node>
                </node>
              </node>
              <node concept="l9hG8" id="2Xh8b$ioe8V" role="lcghm">
                <node concept="Xl_RD" id="2Xh8b$ioe8X" role="lb14g">
                  <property role="Xl_RC" value=" */" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2Xh8b$ioe0h" role="3clFbw">
            <node concept="35c_gC" id="1hnCKJ4WaX1" role="3uHU7w">
              <ref role="35c_gD" to="tpee:fzclF8l" resolve="Statement" />
            </node>
            <node concept="2OqwBi" id="2Xh8b$ioe09" role="3uHU7B">
              <node concept="117lpO" id="2Xh8b$ioe08" role="2Oq$k0" />
              <node concept="2yIwOk" id="1hnCKJ4W9mx" role="2OqNvi" />
            </node>
          </node>
          <node concept="9aQIb" id="2Xh8b$ioe8$" role="9aQIa">
            <node concept="3clFbS" id="2Xh8b$ioe8_" role="9aQI4">
              <node concept="lc7rE" id="2Xh8b$ioe00" role="3cqZAp">
                <node concept="l8MVK" id="2Xh8b$ioe02" role="lcghm" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6ZEvuogduYS">
    <ref role="WuzLi" to="tpee:6ZEvuogdkAL" resolve="UnaryMinus" />
    <node concept="11bSqf" id="6ZEvuogduYT" role="11c4hB">
      <node concept="3clFbS" id="6ZEvuogduYU" role="2VODD2">
        <node concept="lc7rE" id="6ZEvuogduYV" role="3cqZAp">
          <node concept="la8eA" id="6ZEvuogduYX" role="lcghm">
            <property role="lacIc" value="-" />
          </node>
          <node concept="l9hG8" id="6ZEvuogduYZ" role="lcghm">
            <node concept="2OqwBi" id="6ZEvuogduZ2" role="lb14g">
              <node concept="117lpO" id="6ZEvuogduZ1" role="2Oq$k0" />
              <node concept="3TrEf2" id="jVcQRUhSxQ" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:i2$L3eA" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="Etuc8CI8Yt">
    <ref role="WuzLi" to="tpee:4_5hYVHKxAT" resolve="FloatingPointFloatConstant" />
    <node concept="11bSqf" id="Etuc8CI8Yu" role="11c4hB">
      <node concept="3clFbS" id="Etuc8CI8Yv" role="2VODD2">
        <node concept="3clFbJ" id="Etuc8CI9ei" role="3cqZAp">
          <node concept="3clFbC" id="Etuc8CI9ej" role="3clFbw">
            <node concept="10Nm6u" id="Etuc8CI9ek" role="3uHU7w" />
            <node concept="2OqwBi" id="Etuc8CI9el" role="3uHU7B">
              <node concept="117lpO" id="Etuc8CI9em" role="2Oq$k0" />
              <node concept="3TrcHB" id="Etuc8CI9en" role="2OqNvi">
                <ref role="3TsBF5" to="tpee:4_5hYVHKxAV" resolve="value" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="Etuc8CI9eo" role="3clFbx">
            <node concept="3clFbF" id="Etuc8CI9ep" role="3cqZAp">
              <node concept="2OqwBi" id="Etuc8CI9eq" role="3clFbG">
                <node concept="2OqwBi" id="Etuc8CI9er" role="2Oq$k0">
                  <node concept="117lpO" id="Etuc8CI9es" role="2Oq$k0" />
                  <node concept="3TrcHB" id="Etuc8CI9et" role="2OqNvi">
                    <ref role="3TsBF5" to="tpee:4_5hYVHKxAV" resolve="value" />
                  </node>
                </node>
                <node concept="tyxLq" id="Etuc8CI9eu" role="2OqNvi">
                  <node concept="Xl_RD" id="Etuc8CI9ev" role="tz02z">
                    <property role="Xl_RC" value="?.?f" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="Etuc8CI9ew" role="3cqZAp">
          <node concept="l9hG8" id="Etuc8CI9ex" role="lcghm">
            <node concept="2OqwBi" id="Etuc8CI9ey" role="lb14g">
              <node concept="117lpO" id="Etuc8CI9ez" role="2Oq$k0" />
              <node concept="3TrcHB" id="Etuc8CI9e$" role="2OqNvi">
                <ref role="3TsBF5" to="tpee:4_5hYVHKxAV" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5pEYSQXO3cG">
    <property role="3GE5qa" value="classifiers.members" />
    <ref role="WuzLi" to="tpee:4fVo5eW6vfm" resolve="PlaceholderMethodDeclaration" />
    <node concept="11bSqf" id="5pEYSQXO3cH" role="11c4hB">
      <node concept="3clFbS" id="5pEYSQXO3cI" role="2VODD2">
        <node concept="lc7rE" id="5pEYSQXO6Qs" role="3cqZAp">
          <node concept="l8MVK" id="5pEYSQXO6Qu" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1bsvg0" id="2XeM6942tex">
    <property role="TrG5h" value="BaseClassConceptTextGen" />
    <property role="3GE5qa" value="lang" />
    <node concept="1bwezc" id="4PrERHsEdKS" role="1bwxVq">
      <property role="TrG5h" value="membersWithBrackets" />
      <node concept="3cqZAl" id="4PrERHsEdKT" role="3clF45" />
      <node concept="3clFbS" id="4PrERHsEdKX" role="3clF47">
        <node concept="3clFbJ" id="4PrERHsEs51" role="3cqZAp">
          <node concept="22lmx$" id="4PrERHtrVy5" role="3clFbw">
            <node concept="37vLTw" id="4PrERHtrWZq" role="3uHU7w">
              <ref role="3cqZAo" node="4PrERHtrw$c" resolve="newLineOnEmptyMembers" />
            </node>
            <node concept="2OqwBi" id="4PrERHsEs52" role="3uHU7B">
              <node concept="3GX2aA" id="4PrERHsEs53" role="2OqNvi" />
              <node concept="2OqwBi" id="4PrERHsEs54" role="2Oq$k0">
                <node concept="37vLTw" id="4PrERHsEtDh" role="2Oq$k0">
                  <ref role="3cqZAo" node="4PrERHsEnV6" resolve="classifier" />
                </node>
                <node concept="2qgKlT" id="4PrERHsEs55" role="2OqNvi">
                  <ref role="37wK5l" to="tpek:1hodSy8nQmC" resolve="members" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4PrERHsEs57" role="3clFbx">
            <node concept="lc7rE" id="4PrERHsEs58" role="3cqZAp">
              <node concept="la8eA" id="4PrERHsEs59" role="lcghm">
                <property role="lacIc" value="{" />
              </node>
              <node concept="l8MVK" id="4PrERHsEs5a" role="lcghm" />
            </node>
            <node concept="3izx1p" id="4PrERHsEs5b" role="3cqZAp">
              <node concept="3clFbS" id="4PrERHsEs5c" role="3izTki">
                <node concept="lc7rE" id="4PrERHsEs5d" role="3cqZAp">
                  <node concept="1bDJIP" id="4PrERHsEs5e" role="lcghm">
                    <ref role="1rvKf6" node="1hodSy8D0cp" resolve="members" />
                    <node concept="37vLTw" id="4PrERHsEtHG" role="1ryhcI">
                      <ref role="3cqZAo" node="4PrERHsEnV6" resolve="classifier" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="4PrERHsEs5g" role="3cqZAp">
              <node concept="la8eA" id="4PrERHsEs5h" role="lcghm">
                <property role="ldcpH" value="true" />
                <property role="lacIc" value="}" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="4PrERHsEs5i" role="9aQIa">
            <node concept="3clFbS" id="4PrERHsEs5j" role="9aQI4">
              <node concept="lc7rE" id="4PrERHtrYmP" role="3cqZAp">
                <node concept="la8eA" id="4PrERHtrYnA" role="lcghm">
                  <property role="lacIc" value="{}" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4PrERHsEnV6" role="3clF46">
        <property role="TrG5h" value="classifier" />
        <node concept="3Tqbb2" id="4PrERHsEnV5" role="1tU5fm">
          <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
        </node>
      </node>
      <node concept="37vLTG" id="4PrERHtrw$c" role="3clF46">
        <property role="TrG5h" value="newLineOnEmptyMembers" />
        <node concept="10P_77" id="4PrERHtrxVd" role="1tU5fm" />
      </node>
    </node>
    <node concept="1bwezc" id="1hodSy8D0cp" role="1bwxVq">
      <property role="TrG5h" value="members" />
      <node concept="3cqZAl" id="1hodSy8D0cq" role="3clF45" />
      <node concept="3clFbS" id="1hodSy8D0cr" role="3clF47">
        <node concept="3SKdUt" id="fXRJbnzXvU" role="3cqZAp">
          <node concept="3SKdUq" id="fXRJbnzXAI" role="3SKWNk">
            <property role="3SKdUp" value="just for first element" />
          </node>
        </node>
        <node concept="3cpWs8" id="fXRJbnzMSG" role="3cqZAp">
          <node concept="3cpWsn" id="fXRJbnzMSJ" role="3cpWs9">
            <property role="TrG5h" value="isWrappedElementBefore" />
            <node concept="3clFbT" id="fXRJbnzXjb" role="33vP2m">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="10P_77" id="fXRJbnzMSE" role="1tU5fm" />
          </node>
        </node>
        <node concept="3cpWs8" id="zB21h1lr79" role="3cqZAp">
          <node concept="3cpWsn" id="zB21h1lr7c" role="3cpWs9">
            <property role="TrG5h" value="lastMember" />
            <node concept="2OqwBi" id="zB21h1ltlp" role="33vP2m">
              <node concept="1yVyf7" id="zB21h1ltOp" role="2OqNvi" />
              <node concept="2OqwBi" id="zB21h1lrKO" role="2Oq$k0">
                <node concept="2qgKlT" id="zB21h1lsKF" role="2OqNvi">
                  <ref role="37wK5l" to="tpek:1hodSy8nQmC" resolve="members" />
                </node>
                <node concept="37vLTw" id="zB21h1lrpw" role="2Oq$k0">
                  <ref role="3cqZAo" node="1hodSy8D4zv" resolve="classifier" />
                </node>
              </node>
            </node>
            <node concept="3Tqbb2" id="zB21h1lr77" role="1tU5fm" />
          </node>
        </node>
        <node concept="1DcWWT" id="fXRJbnzkHk" role="3cqZAp">
          <node concept="2OqwBi" id="fXRJbnznBn" role="1DdaDG">
            <node concept="2qgKlT" id="fXRJbnzoZR" role="2OqNvi">
              <ref role="37wK5l" to="tpek:1hodSy8nQmC" resolve="members" />
            </node>
            <node concept="37vLTw" id="fXRJbnznb5" role="2Oq$k0">
              <ref role="3cqZAo" node="1hodSy8D4zv" resolve="classifier" />
            </node>
          </node>
          <node concept="3clFbS" id="fXRJbnzkHm" role="2LFqv$">
            <node concept="3clFbJ" id="fXRJbnzCxV" role="3cqZAp">
              <node concept="2OqwBi" id="fXRJbnzCPQ" role="3clFbw">
                <node concept="1mIQ4w" id="fXRJbnzCZU" role="2OqNvi">
                  <node concept="chp4Y" id="fXRJbnzD2G" role="cj9EA">
                    <ref role="cht4Q" to="tpee:h9ngReX" resolve="ClassifierMember" />
                  </node>
                </node>
                <node concept="37vLTw" id="fXRJbnzC$o" role="2Oq$k0">
                  <ref role="3cqZAo" node="fXRJbnzkHn" resolve="member" />
                </node>
              </node>
              <node concept="3clFbS" id="fXRJbnzCxX" role="3clFbx">
                <node concept="3cpWs8" id="fXRJbnzYpD" role="3cqZAp">
                  <node concept="3cpWsn" id="fXRJbnzYpG" role="3cpWs9">
                    <property role="TrG5h" value="needsLineBefore" />
                    <node concept="2OqwBi" id="zB21h1eUg8" role="33vP2m">
                      <node concept="2qgKlT" id="zB21h1uMeo" role="2OqNvi">
                        <ref role="37wK5l" to="tpek:zB21h1tQit" resolve="needsEmptyLineBefore" />
                      </node>
                      <node concept="1PxgMI" id="zB21h1eTRj" role="2Oq$k0">
                        <ref role="1PxNhF" to="tpee:h9ngReX" resolve="ClassifierMember" />
                        <node concept="37vLTw" id="zB21h1eTGc" role="1PxMeX">
                          <ref role="3cqZAo" node="fXRJbnzkHn" resolve="member" />
                        </node>
                      </node>
                    </node>
                    <node concept="10P_77" id="fXRJbnzYpB" role="1tU5fm" />
                  </node>
                </node>
                <node concept="3cpWs8" id="zB21h1uMBW" role="3cqZAp">
                  <node concept="3cpWsn" id="zB21h1uMBZ" role="3cpWs9">
                    <property role="TrG5h" value="needsLineAfter" />
                    <node concept="2OqwBi" id="zB21h1uO1B" role="33vP2m">
                      <node concept="2qgKlT" id="zB21h1uOpx" role="2OqNvi">
                        <ref role="37wK5l" to="tpek:zB21h1tQNm" resolve="needsEmptyLineAfter" />
                      </node>
                      <node concept="1PxgMI" id="zB21h1uNFk" role="2Oq$k0">
                        <ref role="1PxNhF" to="tpee:h9ngReX" resolve="ClassifierMember" />
                        <node concept="37vLTw" id="zB21h1uNsb" role="1PxMeX">
                          <ref role="3cqZAo" node="fXRJbnzkHn" resolve="member" />
                        </node>
                      </node>
                    </node>
                    <node concept="10P_77" id="zB21h1uMBU" role="1tU5fm" />
                  </node>
                </node>
                <node concept="lc7rE" id="fXRJbn$9Yu" role="3cqZAp">
                  <node concept="1bDJIP" id="fXRJbn$a2f" role="lcghm">
                    <ref role="1rvKf6" node="75$7FyD$hyP" resolve="newLine" />
                    <node concept="1Wc70l" id="fXRJbn$b3o" role="1ryhcI">
                      <node concept="3fqX7Q" id="fXRJbn$b6Q" role="3uHU7w">
                        <node concept="37vLTw" id="fXRJbn$bdc" role="3fr31v">
                          <ref role="3cqZAo" node="fXRJbnzMSJ" resolve="isWrappedElementBefore" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="fXRJbn$aCk" role="3uHU7B">
                        <ref role="3cqZAo" node="fXRJbnzYpG" resolve="needsLineBefore" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="lc7rE" id="fXRJbnzLr7" role="3cqZAp">
                  <node concept="l9hG8" id="fXRJbnzLtW" role="lcghm">
                    <node concept="37vLTw" id="fXRJbnzLxh" role="lb14g">
                      <ref role="3cqZAo" node="fXRJbnzkHn" resolve="member" />
                    </node>
                  </node>
                </node>
                <node concept="lc7rE" id="fXRJbn$bki" role="3cqZAp">
                  <node concept="1bDJIP" id="fXRJbn$bo2" role="lcghm">
                    <ref role="1rvKf6" node="75$7FyD$hyP" resolve="newLine" />
                    <node concept="1Wc70l" id="zB21h1lvBy" role="1ryhcI">
                      <node concept="37vLTw" id="zB21h1uPUa" role="3uHU7B">
                        <ref role="3cqZAo" node="zB21h1uMBZ" resolve="needsLineAfter" />
                      </node>
                      <node concept="3fqX7Q" id="zB21h1lvGn" role="3uHU7w">
                        <node concept="1eOMI4" id="3$myXoLqkCb" role="3fr31v">
                          <node concept="3clFbC" id="zB21h1lvV8" role="1eOMHV">
                            <node concept="37vLTw" id="zB21h1lw0t" role="3uHU7w">
                              <ref role="3cqZAo" node="fXRJbnzkHn" resolve="member" />
                            </node>
                            <node concept="37vLTw" id="zB21h1lvLf" role="3uHU7B">
                              <ref role="3cqZAo" node="zB21h1lr7c" resolve="lastMember" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="fXRJbn$byS" role="3cqZAp">
                  <node concept="37vLTI" id="fXRJbn$bZk" role="3clFbG">
                    <node concept="37vLTw" id="zB21h1uQ7m" role="37vLTx">
                      <ref role="3cqZAo" node="zB21h1uMBZ" resolve="needsLineAfter" />
                    </node>
                    <node concept="37vLTw" id="fXRJbn$byR" role="37vLTJ">
                      <ref role="3cqZAo" node="fXRJbnzMSJ" resolve="isWrappedElementBefore" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="fXRJbnzFKO" role="9aQIa">
                <node concept="3clFbS" id="fXRJbnzFKP" role="9aQI4">
                  <node concept="lc7rE" id="fXRJbnzJVP" role="3cqZAp">
                    <node concept="l9hG8" id="fXRJbnzLiD" role="lcghm">
                      <node concept="37vLTw" id="fXRJbnzLom" role="lb14g">
                        <ref role="3cqZAo" node="fXRJbnzkHn" resolve="member" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="fXRJbnzXPn" role="3cqZAp">
                    <node concept="37vLTI" id="fXRJbnzYdw" role="3clFbG">
                      <node concept="3clFbT" id="fXRJbnzYgG" role="37vLTx">
                        <property role="3clFbU" value="false" />
                      </node>
                      <node concept="37vLTw" id="fXRJbnzXPm" role="37vLTJ">
                        <ref role="3cqZAo" node="fXRJbnzMSJ" resolve="isWrappedElementBefore" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="fXRJbnzkHn" role="1Duv9x">
            <property role="TrG5h" value="member" />
            <node concept="3Tqbb2" id="fXRJbnzlaf" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbJ" id="1hodSy8DgwE" role="3cqZAp">
          <node concept="3clFbS" id="1hodSy8DgwF" role="3clFbx">
            <node concept="lc7rE" id="1hodSy8DgwG" role="3cqZAp">
              <node concept="la8eA" id="1hodSy8DgwJ" role="lcghm">
                <property role="ldcpH" value="true" />
                <property role="lacIc" value="static {" />
              </node>
            </node>
            <node concept="3izx1p" id="1hodSy8DgwK" role="3cqZAp">
              <node concept="3clFbS" id="1hodSy8DgwL" role="3izTki">
                <node concept="lc7rE" id="1hodSy8DgwM" role="3cqZAp">
                  <node concept="l9hG8" id="1hodSy8DgwN" role="lcghm">
                    <node concept="2OqwBi" id="1hodSy8DgwP" role="lb14g">
                      <node concept="3TrEf2" id="43cbvH5dQUT" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:h3anRLq" />
                      </node>
                      <node concept="1PxgMI" id="1hodSy8DnlL" role="2Oq$k0">
                        <ref role="1PxNhF" to="tpee:fz12cDA" resolve="ClassConcept" />
                        <node concept="37vLTw" id="1hodSy8DmZ_" role="1PxMeX">
                          <ref role="3cqZAo" node="1hodSy8D4zv" resolve="classifier" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="l8MVK" id="1hodSy8DgwT" role="lcghm" />
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="1hodSy8DgwU" role="3cqZAp">
              <node concept="la8eA" id="1hodSy8DgwV" role="lcghm">
                <property role="ldcpH" value="true" />
                <property role="lacIc" value="}" />
              </node>
              <node concept="l8MVK" id="1hodSy8G_O7" role="lcghm" />
            </node>
          </node>
          <node concept="2OqwBi" id="1hodSy8DgwX" role="3clFbw">
            <node concept="2OqwBi" id="1hodSy8DgwY" role="2Oq$k0">
              <node concept="3TrEf2" id="43cbvH5dLvD" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:h3anRLq" />
              </node>
              <node concept="1PxgMI" id="1hodSy8Dh28" role="2Oq$k0">
                <property role="1BlNFB" value="true" />
                <ref role="1PxNhF" to="tpee:fz12cDA" resolve="ClassConcept" />
                <node concept="37vLTw" id="1hodSy8DhAq" role="1PxMeX">
                  <ref role="3cqZAo" node="1hodSy8D4zv" resolve="classifier" />
                </node>
              </node>
            </node>
            <node concept="3x8VRR" id="1hodSy8Dgx1" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1hodSy8D4zv" role="3clF46">
        <property role="TrG5h" value="classifier" />
        <node concept="3Tqbb2" id="1hodSy8D4zu" role="1tU5fm">
          <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
        </node>
      </node>
    </node>
    <node concept="1bwezc" id="2XeM6942tTX" role="1bwxVq">
      <property role="TrG5h" value="body" />
      <node concept="3cqZAl" id="2XeM6942tTY" role="3clF45" />
      <node concept="3clFbS" id="2XeM6942tTZ" role="3clF47">
        <node concept="lc7rE" id="6Xl8iFkdsR5" role="3cqZAp">
          <node concept="1bDJIP" id="6Xl8iFkdsTJ" role="lcghm">
            <ref role="1rvKf6" node="1hodSy8D0cp" resolve="members" />
            <node concept="37vLTw" id="6Xl8iFkdsTO" role="1ryhcI">
              <ref role="3cqZAo" node="2XeM6942tU0" resolve="concept" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2XeM6942tU0" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3Tqbb2" id="2XeM6942tU1" role="1tU5fm">
          <ref role="ehGHo" to="tpee:fz12cDA" resolve="ClassConcept" />
        </node>
      </node>
    </node>
    <node concept="1bwezc" id="wlIhh0MT8V" role="1bwxVq">
      <property role="TrG5h" value="innerClassifiers" />
      <node concept="3cqZAl" id="wlIhh0MT8W" role="3clF45" />
      <node concept="3clFbS" id="wlIhh0MT8X" role="3clF47">
        <node concept="3cpWs8" id="4_LVZ3pMRpa" role="3cqZAp">
          <node concept="3cpWsn" id="4_LVZ3pMRpd" role="3cpWs9">
            <property role="TrG5h" value="last" />
            <node concept="2OqwBi" id="4_LVZ3pMV92" role="33vP2m">
              <node concept="1yVyf7" id="4_LVZ3pMVRo" role="2OqNvi" />
              <node concept="2OqwBi" id="4_LVZ3pMSTx" role="2Oq$k0">
                <node concept="2qgKlT" id="4_LVZ3pMUhK" role="2OqNvi">
                  <ref role="37wK5l" to="tpek:4_LVZ3pBjGQ" resolve="nestedClassifiers" />
                </node>
                <node concept="37vLTw" id="4_LVZ3pMSpq" role="2Oq$k0">
                  <ref role="3cqZAo" node="wlIhh0MT8Y" resolve="concept" />
                </node>
              </node>
            </node>
            <node concept="3Tqbb2" id="4_LVZ3pMRp8" role="1tU5fm">
              <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="wlIhh0MT90" role="3cqZAp">
          <node concept="2OqwBi" id="wlIhh0MT9h" role="1DdaDG">
            <node concept="2qgKlT" id="4_LVZ3pMQTw" role="2OqNvi">
              <ref role="37wK5l" to="tpek:4_LVZ3pBjGQ" resolve="nestedClassifiers" />
            </node>
            <node concept="37vLTw" id="2BHiRxgm6q9" role="2Oq$k0">
              <ref role="3cqZAo" node="wlIhh0MT8Y" resolve="concept" />
            </node>
          </node>
          <node concept="3cpWsn" id="wlIhh0MT92" role="1Duv9x">
            <property role="TrG5h" value="classifier" />
            <node concept="3Tqbb2" id="wlIhh0MT97" role="1tU5fm">
              <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
            </node>
          </node>
          <node concept="3clFbS" id="wlIhh0MT94" role="2LFqv$">
            <node concept="lc7rE" id="wlIhh0MT9u" role="3cqZAp">
              <node concept="l9hG8" id="wlIhh0MT9w" role="lcghm">
                <node concept="37vLTw" id="3GM_nagTu1e" role="lb14g">
                  <ref role="3cqZAo" node="wlIhh0MT92" resolve="classifier" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="wlIhh0MT9$" role="3cqZAp">
              <node concept="3clFbS" id="wlIhh0MT9_" role="3clFbx">
                <node concept="lc7rE" id="wlIhh0MTar" role="3cqZAp">
                  <node concept="l8MVK" id="wlIhh0MTat" role="lcghm" />
                </node>
              </node>
              <node concept="3fqX7Q" id="wlIhh0MTag" role="3clFbw">
                <node concept="2OqwBi" id="wlIhh0MTah" role="3fr31v">
                  <node concept="2JrnkZ" id="wlIhh0MTai" role="2Oq$k0">
                    <node concept="37vLTw" id="3GM_nagT$uF" role="2JrQYb">
                      <ref role="3cqZAo" node="wlIhh0MT92" resolve="classifier" />
                    </node>
                  </node>
                  <node concept="liA8E" id="wlIhh0MTak" role="2OqNvi">
                    <ref role="37wK5l" to="e2lb:~Object.equals(java.lang.Object):boolean" resolve="equals" />
                    <node concept="37vLTw" id="4_LVZ3pMWaM" role="37wK5m">
                      <ref role="3cqZAo" node="4_LVZ3pMRpd" resolve="last" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="wlIhh0MT8Y" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3Tqbb2" id="wlIhh0MT8Z" role="1tU5fm">
          <ref role="ehGHo" to="tpee:fz12cDA" resolve="ClassConcept" />
        </node>
      </node>
    </node>
    <node concept="1bwezc" id="23iz8ixRSkY" role="1bwxVq">
      <property role="TrG5h" value="collection" />
      <node concept="3cqZAl" id="23iz8ixRSkZ" role="3clF45" />
      <node concept="3clFbS" id="23iz8ixRSl0" role="3clF47">
        <node concept="lc7rE" id="23iz8ixRWDZ" role="3cqZAp">
          <node concept="l9S2W" id="23iz8ixRWE1" role="lcghm">
            <node concept="37vLTw" id="2BHiRxgmFpA" role="lbANJ">
              <ref role="3cqZAo" node="23iz8ixRSl1" resolve="nodes" />
            </node>
          </node>
          <node concept="l8MVK" id="23iz8ixRWE5" role="lcghm" />
        </node>
      </node>
      <node concept="37vLTG" id="23iz8ixRSl1" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="A3Dl8" id="6WNkzWZfib$" role="1tU5fm">
          <node concept="3Tqbb2" id="6WNkzWZficn" role="A3Ik2" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5vlcUuJ5JXX">
    <ref role="WuzLi" to="tpee:5vlcUuJ5uOU" resolve="SingleLineComment" />
    <node concept="11bSqf" id="5vlcUuJ5JXY" role="11c4hB">
      <node concept="3clFbS" id="5vlcUuJ5JXZ" role="2VODD2">
        <node concept="lc7rE" id="7CFwMBJ6Dy0" role="3cqZAp">
          <node concept="l8MVK" id="7e3vCL$TTv4" role="lcghm" />
        </node>
        <node concept="1bpajm" id="7e3vCL$UyvT" role="3cqZAp" />
        <node concept="lc7rE" id="7e3vCL$UyvP" role="3cqZAp">
          <node concept="la8eA" id="7e3vCL$UyvR" role="lcghm">
            <property role="lacIc" value="// " />
          </node>
        </node>
        <node concept="1DcWWT" id="5vlcUuJ5L$A" role="3cqZAp">
          <node concept="3clFbS" id="5vlcUuJ5L$B" role="2LFqv$">
            <node concept="lc7rE" id="5vlcUuJ5L$C" role="3cqZAp">
              <node concept="l9hG8" id="5vlcUuJ5L$D" role="lcghm">
                <node concept="37vLTw" id="3GM_nagTvOz" role="lb14g">
                  <ref role="3cqZAo" node="5vlcUuJ5L$J" resolve="commentPart" />
                </node>
              </node>
              <node concept="la8eA" id="5vlcUuJ5L$F" role="lcghm">
                <property role="lacIc" value=" " />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5vlcUuJ5L$G" role="1DdaDG">
            <node concept="117lpO" id="5vlcUuJ5L$H" role="2Oq$k0" />
            <node concept="3Tsc0h" id="5vlcUuJ5L$I" role="2OqNvi">
              <ref role="3TtcxE" to="tpee:5vlcUuJ5JXN" />
            </node>
          </node>
          <node concept="3cpWsn" id="5vlcUuJ5L$J" role="1Duv9x">
            <property role="TrG5h" value="commentPart" />
            <node concept="3Tqbb2" id="5vlcUuJ5L$K" role="1tU5fm">
              <ref role="ehGHo" to="tpee:5vlcUuJ5uOV" resolve="CommentPart" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="7CFwMBJ7ooZ">
    <ref role="WuzLi" to="tpee:5vlcUuJ5uOX" resolve="TextCommentPart" />
    <node concept="11bSqf" id="7CFwMBJ7op0" role="11c4hB">
      <node concept="3clFbS" id="7CFwMBJ7op1" role="2VODD2">
        <node concept="lc7rE" id="7CFwMBJ7oM$" role="3cqZAp">
          <node concept="l9hG8" id="7CFwMBJ7oMA" role="lcghm">
            <node concept="2OqwBi" id="7CFwMBJ7oMD" role="lb14g">
              <node concept="117lpO" id="7CFwMBJ7oMC" role="2Oq$k0" />
              <node concept="3TrcHB" id="7CFwMBJ7oMH" role="2OqNvi">
                <ref role="3TsBF5" to="tpee:5vlcUuJ5uOY" resolve="text" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="7CFwMBJ7oMI">
    <ref role="WuzLi" to="tpee:5vlcUuJ5JXB" resolve="StatementCommentPart" />
    <node concept="11bSqf" id="7CFwMBJ7oMJ" role="11c4hB">
      <node concept="3clFbS" id="7CFwMBJ7oMK" role="2VODD2">
        <node concept="lc7rE" id="7CFwMBJ7oML" role="3cqZAp">
          <node concept="la8eA" id="7CFwMBJ7oMN" role="lcghm">
            <property role="lacIc" value="&lt;node&gt;" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="65UE62YxxrI">
    <property role="3GE5qa" value="" />
    <ref role="WuzLi" to="tpee:hGd03cG" resolve="BaseAssignmentExpression" />
    <node concept="11bSqf" id="65UE62YxxrJ" role="11c4hB">
      <node concept="3clFbS" id="65UE62YxxrK" role="2VODD2">
        <node concept="lc7rE" id="65UE62YxxrL" role="3cqZAp">
          <node concept="l9hG8" id="65UE62YxxrM" role="lcghm">
            <node concept="2OqwBi" id="65UE62YxxrN" role="lb14g">
              <node concept="117lpO" id="65UE62YxxrO" role="2Oq$k0" />
              <node concept="3TrEf2" id="65UE62YxxrP" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fz7vLUn" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="65UE62YxxrQ" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
          <node concept="l9hG8" id="65UE62YxyUs" role="lcghm">
            <node concept="2OqwBi" id="2wdLO7KfHNo" role="lb14g">
              <node concept="3TrcHB" id="2wdLO7KfHNp" role="2OqNvi">
                <ref role="3TsBF5" to="tpce:4qF2Hm2r7ja" resolve="conceptAlias" />
              </node>
              <node concept="2OqwBi" id="2wdLO7KfHNq" role="2Oq$k0">
                <node concept="3NT_Vc" id="2wdLO7KfHNr" role="2OqNvi" />
                <node concept="117lpO" id="2wdLO7KfHNs" role="2Oq$k0" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="65UE62YxxrV" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
          <node concept="l9hG8" id="65UE62YxxrR" role="lcghm">
            <node concept="2OqwBi" id="65UE62YxxrS" role="lb14g">
              <node concept="117lpO" id="65UE62YxxrT" role="2Oq$k0" />
              <node concept="3TrEf2" id="65UE62YxxrU" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fz7vLUp" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="1__AKt9afSN">
    <property role="3GE5qa" value="control_flow.loops" />
    <ref role="WuzLi" to="tpee:1__AKt9a7wu" resolve="AdditionalForLoopVariable" />
    <node concept="11bSqf" id="1__AKt9afSO" role="11c4hB">
      <node concept="3clFbS" id="1__AKt9afSP" role="2VODD2">
        <node concept="lc7rE" id="1__AKt9agKs" role="3cqZAp">
          <node concept="l9hG8" id="1__AKt9agKy" role="lcghm">
            <node concept="2OqwBi" id="1__AKt9agKz" role="lb14g">
              <node concept="117lpO" id="1__AKt9agKO" role="2Oq$k0" />
              <node concept="3TrcHB" id="1__AKt9agKP" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1__AKt9agKA" role="3cqZAp">
          <node concept="3clFbS" id="1__AKt9agKB" role="3clFbx">
            <node concept="lc7rE" id="1__AKt9agKC" role="3cqZAp">
              <node concept="la8eA" id="1__AKt9agKD" role="lcghm">
                <property role="lacIc" value=" = " />
              </node>
              <node concept="l9hG8" id="1__AKt9agKE" role="lcghm">
                <node concept="2OqwBi" id="1__AKt9agKF" role="lb14g">
                  <node concept="117lpO" id="1__AKt9agKR" role="2Oq$k0" />
                  <node concept="3TrEf2" id="1__AKt9agKH" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:fz3vP1I" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1__AKt9agKI" role="3clFbw">
            <node concept="2OqwBi" id="1__AKt9agKJ" role="2Oq$k0">
              <node concept="117lpO" id="1__AKt9agKQ" role="2Oq$k0" />
              <node concept="3TrEf2" id="1__AKt9agKL" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fz3vP1I" />
              </node>
            </node>
            <node concept="3x8VRR" id="1__AKt9agKM" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="2ffuO1rgFFk">
    <property role="3GE5qa" value="classifiers" />
    <ref role="WuzLi" to="tpee:2ffuO1reTtx" resolve="ImplicitAnnotationInstanceValue" />
    <node concept="11bSqf" id="2ffuO1rgFFl" role="11c4hB">
      <node concept="3clFbS" id="2ffuO1rgFFm" role="2VODD2">
        <node concept="lc7rE" id="2ffuO1rgLHU" role="3cqZAp">
          <node concept="l9hG8" id="2ffuO1rgLHW" role="lcghm">
            <node concept="2OqwBi" id="2ffuO1rgLHZ" role="lb14g">
              <node concept="117lpO" id="2ffuO1rgLHY" role="2Oq$k0" />
              <node concept="3TrEf2" id="2ffuO1rgLI3" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:hiB70Z4" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="3XnUzqXsmt3">
    <property role="3GE5qa" value="primitive" />
    <ref role="WuzLi" to="tpee:3XnUzqXsajx" resolve="PrimitiveClassExpression" />
    <node concept="11bSqf" id="3XnUzqXsmt4" role="11c4hB">
      <node concept="3clFbS" id="3XnUzqXsmt5" role="2VODD2">
        <node concept="lc7rE" id="3XnUzqXsmt6" role="3cqZAp">
          <node concept="l9hG8" id="3XnUzqXsmt8" role="lcghm">
            <node concept="2OqwBi" id="3XnUzqXsmtb" role="lb14g">
              <node concept="117lpO" id="3XnUzqXsmta" role="2Oq$k0" />
              <node concept="3TrEf2" id="3XnUzqXsmtf" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:3XnUzqXsajy" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="3XnUzqXsmtg" role="lcghm">
            <property role="lacIc" value=".class" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="4wYUtvK_vy8">
    <property role="3GE5qa" value="array" />
    <ref role="WuzLi" to="tpee:4wYUtvK_o3m" resolve="ArrayCloneOperation" />
    <node concept="11bSqf" id="4wYUtvK_vy9" role="11c4hB">
      <node concept="3clFbS" id="4wYUtvK_vya" role="2VODD2">
        <node concept="lc7rE" id="4wYUtvK_vyb" role="3cqZAp">
          <node concept="la8eA" id="4wYUtvK_vyc" role="lcghm">
            <property role="lacIc" value="clone()" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="hKY_DV0ULu">
    <ref role="WuzLi" to="tpee:hKY_DV0ULp" resolve="ShiftRightUnsignedExpression" />
    <node concept="11bSqf" id="hKY_DV0ULv" role="11c4hB">
      <node concept="3clFbS" id="hKY_DV0ULw" role="2VODD2">
        <node concept="lc7rE" id="hKY_DV0ULx" role="3cqZAp">
          <node concept="l9hG8" id="hKY_DV0ULy" role="lcghm">
            <node concept="2OqwBi" id="hKY_DV0ULz" role="lb14g">
              <node concept="117lpO" id="hKY_DV0UL$" role="2Oq$k0" />
              <node concept="3TrEf2" id="hKY_DV0UL_" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4s" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="hKY_DV0ULA" role="lcghm">
            <property role="lacIc" value=" &gt;&gt;&gt; " />
          </node>
          <node concept="l9hG8" id="hKY_DV0ULB" role="lcghm">
            <node concept="2OqwBi" id="hKY_DV0ULC" role="lb14g">
              <node concept="117lpO" id="hKY_DV0ULD" role="2Oq$k0" />
              <node concept="3TrEf2" id="hKY_DV0ULE" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4r" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="15vu32zaAPY">
    <property role="3GE5qa" value="array" />
    <ref role="WuzLi" to="tpee:15vu32zaAnB" resolve="ArrayClassExpression" />
    <node concept="11bSqf" id="15vu32zaAPZ" role="11c4hB">
      <node concept="3clFbS" id="15vu32zaAQ0" role="2VODD2">
        <node concept="lc7rE" id="15vu32zaAQ1" role="3cqZAp">
          <node concept="l9hG8" id="15vu32zaAQ2" role="lcghm">
            <node concept="2OqwBi" id="15vu32zaAQ3" role="lb14g">
              <node concept="117lpO" id="15vu32zaAQ4" role="2Oq$k0" />
              <node concept="3TrEf2" id="15vu32zaAQ8" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:15vu32zaAnC" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="15vu32zaAQ6" role="lcghm">
            <property role="lacIc" value=".class" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="1hodSy9TNsY">
    <ref role="WuzLi" to="tpee:1hodSy9TH5A" resolve="PlaceholderMember" />
    <node concept="11bSqf" id="1hodSy9TNsZ" role="11c4hB">
      <node concept="3clFbS" id="1hodSy9TNt0" role="2VODD2">
        <node concept="lc7rE" id="1hodSy9TOQc" role="3cqZAp">
          <node concept="l8MVK" id="1hodSy9TOQk" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6DQGhlriWt5">
    <property role="TrG5h" value="SimpleCache" />
    <property role="3GE5qa" value="utils" />
    <property role="1sVAO0" value="true" />
    <node concept="3Tm1VV" id="6DQGhlriWt6" role="1B3o_S" />
    <node concept="16euLQ" id="6DQGhlriWtb" role="16eVyc">
      <property role="TrG5h" value="K" />
    </node>
    <node concept="16euLQ" id="6DQGhlriWtd" role="16eVyc">
      <property role="TrG5h" value="V" />
    </node>
    <node concept="312cEg" id="6DQGhlriWte" role="jymVt">
      <property role="TrG5h" value="cache" />
      <node concept="3Tm6S6" id="6DQGhlriWtf" role="1B3o_S" />
      <node concept="3uibUv" id="6DQGhlriWtg" role="1tU5fm">
        <ref role="3uigEE" to="k7g3:~Map" resolve="Map" />
        <node concept="16syzq" id="6DQGhlriWth" role="11_B2D">
          <ref role="16sUi3" node="6DQGhlriWtb" resolve="K" />
        </node>
        <node concept="16syzq" id="6DQGhlriWti" role="11_B2D">
          <ref role="16sUi3" node="6DQGhlriWtd" resolve="V" />
        </node>
      </node>
      <node concept="2ShNRf" id="6DQGhlriWtj" role="33vP2m">
        <node concept="1pGfFk" id="6DQGhlriWtk" role="2ShVmc">
          <ref role="37wK5l" to="k7g3:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="16syzq" id="6DQGhlriWtl" role="1pMfVU">
            <ref role="16sUi3" node="6DQGhlriWtb" resolve="K" />
          </node>
          <node concept="16syzq" id="6DQGhlriWtm" role="1pMfVU">
            <ref role="16sUi3" node="6DQGhlriWtd" resolve="V" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbW" id="6DQGhlriWt7" role="jymVt">
      <node concept="3cqZAl" id="6DQGhlriWt8" role="3clF45" />
      <node concept="3Tm1VV" id="6DQGhlriWt9" role="1B3o_S" />
      <node concept="3clFbS" id="6DQGhlriWta" role="3clF47" />
    </node>
    <node concept="3clFb_" id="6DQGhlriWtn" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="innerGet" />
      <node concept="16syzq" id="6DQGhlriWto" role="3clF45">
        <ref role="16sUi3" node="6DQGhlriWtd" resolve="V" />
      </node>
      <node concept="3clFbS" id="6DQGhlriWtp" role="3clF47" />
      <node concept="3Tmbuc" id="6DQGhlriWtq" role="1B3o_S" />
      <node concept="37vLTG" id="6DQGhlriWtr" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="16syzq" id="6DQGhlriWts" role="1tU5fm">
          <ref role="16sUi3" node="6DQGhlriWtb" resolve="K" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6DQGhlriWtt" role="jymVt">
      <property role="TrG5h" value="get" />
      <property role="DiZV1" value="true" />
      <node concept="16syzq" id="6DQGhlriWtu" role="3clF45">
        <ref role="16sUi3" node="6DQGhlriWtd" resolve="V" />
      </node>
      <node concept="3Tm1VV" id="6DQGhlriWtv" role="1B3o_S" />
      <node concept="3clFbS" id="6DQGhlriWtw" role="3clF47">
        <node concept="3clFbJ" id="6DQGhlriWtx" role="3cqZAp">
          <node concept="2OqwBi" id="6DQGhlriWty" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxeula_" role="2Oq$k0">
              <ref role="3cqZAo" node="6DQGhlriWte" resolve="cache" />
            </node>
            <node concept="liA8E" id="6DQGhlriWt$" role="2OqNvi">
              <ref role="37wK5l" to="k7g3:~Map.containsKey(java.lang.Object):boolean" resolve="containsKey" />
              <node concept="37vLTw" id="2BHiRxghfdN" role="37wK5m">
                <ref role="3cqZAo" node="6DQGhlriWtT" resolve="key" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6DQGhlriWtA" role="3clFbx">
            <node concept="3cpWs6" id="6DQGhlriWtB" role="3cqZAp">
              <node concept="2OqwBi" id="6DQGhlriWtC" role="3cqZAk">
                <node concept="37vLTw" id="2BHiRxeuHu3" role="2Oq$k0">
                  <ref role="3cqZAo" node="6DQGhlriWte" resolve="cache" />
                </node>
                <node concept="liA8E" id="6DQGhlriWtE" role="2OqNvi">
                  <ref role="37wK5l" to="k7g3:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                  <node concept="37vLTw" id="2BHiRxgmC7_" role="37wK5m">
                    <ref role="3cqZAo" node="6DQGhlriWtT" resolve="key" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6DQGhlriWtG" role="3cqZAp">
          <node concept="3cpWsn" id="6DQGhlriWtH" role="3cpWs9">
            <property role="TrG5h" value="value" />
            <node concept="16syzq" id="6DQGhlriWtI" role="1tU5fm">
              <ref role="16sUi3" node="6DQGhlriWtd" resolve="V" />
            </node>
            <node concept="1rXfSq" id="4hiugqyz8oA" role="33vP2m">
              <ref role="37wK5l" node="6DQGhlriWtn" resolve="innerGet" />
              <node concept="37vLTw" id="2BHiRxglr$2" role="37wK5m">
                <ref role="3cqZAo" node="6DQGhlriWtT" resolve="key" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6DQGhlriWtL" role="3cqZAp">
          <node concept="2OqwBi" id="6DQGhlriWtM" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeunaY" role="2Oq$k0">
              <ref role="3cqZAo" node="6DQGhlriWte" resolve="cache" />
            </node>
            <node concept="liA8E" id="6DQGhlriWtO" role="2OqNvi">
              <ref role="37wK5l" to="k7g3:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
              <node concept="37vLTw" id="2BHiRxgmnU1" role="37wK5m">
                <ref role="3cqZAo" node="6DQGhlriWtT" resolve="key" />
              </node>
              <node concept="37vLTw" id="3GM_nagTBIq" role="37wK5m">
                <ref role="3cqZAo" node="6DQGhlriWtH" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6DQGhlriWtR" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTw1L" role="3cqZAk">
            <ref role="3cqZAo" node="6DQGhlriWtH" resolve="value" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6DQGhlriWtT" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="16syzq" id="6DQGhlriWtU" role="1tU5fm">
          <ref role="16sUi3" node="6DQGhlriWtb" resolve="K" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="2s$p4KaM3OP">
    <property role="3GE5qa" value="classifier" />
    <ref role="WuzLi" to="tpee:2s$p4KaM3e_" resolve="DefaultClassCreator" />
    <node concept="11bSqf" id="2s$p4KaM3OQ" role="11c4hB">
      <node concept="3clFbS" id="2s$p4KaM3OR" role="2VODD2">
        <node concept="lc7rE" id="2s$p4KaM3OS" role="3cqZAp">
          <node concept="1bDJIP" id="2s$p4KaM3OT" role="lcghm">
            <ref role="1rvKf6" node="6fUw26UhtdA" resolve="blClassifierRef" />
            <node concept="2OqwBi" id="2s$p4KaM3PU" role="1ryhcI">
              <node concept="117lpO" id="2s$p4KaM3P_" role="2Oq$k0" />
              <node concept="37Cfm0" id="2s$p4KaMTD6" role="2OqNvi">
                <node concept="1aIX9F" id="2s$p4KaMTD7" role="37CeNk">
                  <node concept="26LbJo" id="2s$p4KaMTDb" role="1aIX9E">
                    <ref role="26LbJp" to="tpee:2s$p4KaM3eA" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1bDJIP" id="2s$p4KaNZZP" role="lcghm">
            <ref role="1rvKf6" node="hXZ_zy0" resolve="typeParameters" />
            <node concept="2OqwBi" id="2s$p4KaNZZQ" role="1ryhcI">
              <node concept="117lpO" id="2s$p4KaNZZR" role="2Oq$k0" />
              <node concept="3Tsc0h" id="2s$p4KaNZZU" role="2OqNvi">
                <ref role="3TtcxE" to="tpee:2s$p4KaNfQN" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="2s$p4KaM3Qi" role="lcghm">
            <property role="lacIc" value="()" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5kChkJ6qdl_">
    <property role="TrG5h" value="ImportsContext" />
    <property role="3GE5qa" value="utils" />
    <node concept="3Tm1VV" id="5kChkJ6qdlA" role="1B3o_S" />
    <node concept="Wx3nA" id="5kChkJ6qHH1" role="jymVt">
      <property role="TrG5h" value="USER_OBJECT_KEY" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5kChkJ6qHHT" role="1B3o_S" />
      <node concept="17QB3L" id="5kChkJ6qHH8" role="1tU5fm" />
      <node concept="Xl_RD" id="5kChkJ6qHHa" role="33vP2m">
        <property role="Xl_RC" value="CLASS_IMPORTS_CONTEXT" />
      </node>
    </node>
    <node concept="312cEg" id="7lG0I2ma03v" role="jymVt">
      <property role="TrG5h" value="buffer" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7lG0I2ma03w" role="1B3o_S" />
      <node concept="3uibUv" id="7lG0I2ma03y" role="1tU5fm">
        <ref role="3uigEE" to="zrid:~TextGenBuffer" resolve="TextGenBuffer" />
      </node>
    </node>
    <node concept="312cEg" id="5kChkJ6qsA1" role="jymVt">
      <property role="TrG5h" value="packageName" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5kChkJ6qsA2" role="1B3o_S" />
      <node concept="17QB3L" id="5kChkJ6qsA4" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="5kChkJ6qdp3" role="jymVt">
      <property role="TrG5h" value="packageSimpleNames" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5kChkJ6qdp4" role="1B3o_S" />
      <node concept="3uibUv" id="5522gsSlaHv" role="1tU5fm">
        <ref role="3uigEE" to="k7g3:~Set" resolve="Set" />
        <node concept="17QB3L" id="5522gsSlaHx" role="11_B2D" />
      </node>
    </node>
    <node concept="312cEg" id="5kChkJ6qdlL" role="jymVt">
      <property role="TrG5h" value="bindings" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5kChkJ6qdlM" role="1B3o_S" />
      <node concept="3uibUv" id="5522gsSlaHB" role="1tU5fm">
        <ref role="3uigEE" to="k7g3:~Map" resolve="Map" />
        <node concept="17QB3L" id="5522gsSlaHD" role="11_B2D" />
        <node concept="17QB3L" id="5522gsSlaHF" role="11_B2D" />
      </node>
    </node>
    <node concept="312cEg" id="6DQGhlriWrZ" role="jymVt">
      <property role="TrG5h" value="contextClassifiers" />
      <node concept="3Tm6S6" id="6DQGhlriWs0" role="1B3o_S" />
      <node concept="3uibUv" id="3XLHuwza2Eh" role="1tU5fm">
        <ref role="3uigEE" node="3XLHuwza2_b" resolve="ContextClassifiersInRoot" />
      </node>
    </node>
    <node concept="3clFbW" id="5kChkJ6qdlB" role="jymVt">
      <node concept="3cqZAl" id="5kChkJ6qdlC" role="3clF45" />
      <node concept="3Tm6S6" id="5kChkJ6qHHS" role="1B3o_S" />
      <node concept="3clFbS" id="5kChkJ6qdlE" role="3clF47">
        <node concept="3clFbF" id="7lG0I2ma043" role="3cqZAp">
          <node concept="37vLTI" id="7lG0I2ma04O" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgm60R" role="37vLTx">
              <ref role="3cqZAo" node="7lG0I2ma03z" resolve="buffer" />
            </node>
            <node concept="2OqwBi" id="7lG0I2ma04p" role="37vLTJ">
              <node concept="Xjq3P" id="7lG0I2ma044" role="2Oq$k0" />
              <node concept="2OwXpG" id="7lG0I2ma04u" role="2OqNvi">
                <ref role="2Oxat5" node="7lG0I2ma03v" resolve="buffer" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5kChkJ6qsA6" role="3cqZAp">
          <node concept="37vLTI" id="5kChkJ6qsAS" role="3clFbG">
            <node concept="2YIFZM" id="4DcpLEzkHa" role="37vLTx">
              <ref role="37wK5l" to="cu2c:~SModelStereotype.withoutStereotype(java.lang.String):java.lang.String" resolve="withoutStereotype" />
              <ref role="1Pybhc" to="cu2c:~SModelStereotype" resolve="SModelStereotype" />
              <node concept="2OqwBi" id="4DcpLEzkHb" role="37wK5m">
                <node concept="liA8E" id="4DcpLEzkHc" role="2OqNvi">
                  <ref role="37wK5l" to="ec5l:~SModelReference.getModelName():java.lang.String" resolve="getModelName" />
                </node>
                <node concept="2OqwBi" id="4DcpLEzkHd" role="2Oq$k0">
                  <node concept="liA8E" id="4DcpLEzkHe" role="2OqNvi">
                    <ref role="37wK5l" to="ec5l:~SModel.getReference():org.jetbrains.mps.openapi.model.SModelReference" resolve="getReference" />
                  </node>
                  <node concept="2JrnkZ" id="4DcpLEzkHf" role="2Oq$k0">
                    <node concept="2OqwBi" id="4DcpLEzkHg" role="2JrQYb">
                      <node concept="37vLTw" id="2BHiRxgllbv" role="2Oq$k0">
                        <ref role="3cqZAo" node="5kChkJ6qdlF" resolve="rootNode" />
                      </node>
                      <node concept="I4A8Y" id="4DcpLEzkHi" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5kChkJ6qsAs" role="37vLTJ">
              <node concept="Xjq3P" id="5kChkJ6qsA7" role="2Oq$k0" />
              <node concept="2OwXpG" id="5kChkJ6qt8t" role="2OqNvi">
                <ref role="2Oxat5" node="5kChkJ6qsA1" resolve="packageName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5Au6be9fA_r" role="3cqZAp" />
        <node concept="3clFbF" id="3XLHuwza2Ej" role="3cqZAp">
          <node concept="37vLTI" id="3XLHuwza2ED" role="3clFbG">
            <node concept="2ShNRf" id="3XLHuwza2EG" role="37vLTx">
              <node concept="1pGfFk" id="3XLHuwza2EK" role="2ShVmc">
                <ref role="37wK5l" node="3XLHuwza2_d" resolve="ContextClassifiersInRoot" />
                <node concept="37vLTw" id="2BHiRxghhnZ" role="37wK5m">
                  <ref role="3cqZAo" node="5kChkJ6qdlF" resolve="rootNode" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeumOm" role="37vLTJ">
              <ref role="3cqZAo" node="6DQGhlriWrZ" resolve="contextClassifiers" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5Au6be9fA_q" role="3cqZAp" />
        <node concept="3SKdUt" id="5kChkJ6qdsl" role="3cqZAp">
          <node concept="3SKdUq" id="5kChkJ6qdsm" role="3SKWNk">
            <property role="3SKdUp" value="init nested class bindings" />
          </node>
        </node>
        <node concept="3clFbF" id="5kChkJ6qlsm" role="3cqZAp">
          <node concept="37vLTI" id="5kChkJ6qlsG" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeulyW" role="37vLTJ">
              <ref role="3cqZAo" node="5kChkJ6qdlL" resolve="bindings" />
            </node>
            <node concept="2ShNRf" id="5kChkJ6qdt4" role="37vLTx">
              <node concept="1pGfFk" id="5kChkJ6qdt6" role="2ShVmc">
                <ref role="37wK5l" to="k7g3:~HashMap.&lt;init&gt;()" resolve="HashMap" />
                <node concept="17QB3L" id="5kChkJ6qdt8" role="1pMfVU" />
                <node concept="17QB3L" id="5kChkJ6qt8w" role="1pMfVU" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5kChkJ6qlrd" role="3cqZAp" />
        <node concept="3SKdUt" id="5kChkJ6qdso" role="3cqZAp">
          <node concept="3SKdUq" id="5kChkJ6qdsp" role="3SKWNk">
            <property role="3SKdUp" value="init package simple names" />
          </node>
        </node>
        <node concept="3clFbF" id="5kChkJ6qlsN" role="3cqZAp">
          <node concept="37vLTI" id="5kChkJ6qlt9" role="3clFbG">
            <node concept="2ShNRf" id="5kChkJ6qltc" role="37vLTx">
              <node concept="1pGfFk" id="5kChkJ6qltg" role="2ShVmc">
                <ref role="37wK5l" to="k7g3:~HashSet.&lt;init&gt;()" resolve="HashSet" />
                <node concept="17QB3L" id="5kChkJ6qlti" role="1pMfVU" />
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeuyTj" role="37vLTJ">
              <ref role="3cqZAo" node="5kChkJ6qdp3" resolve="packageSimpleNames" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="5kChkJ6qlpo" role="3cqZAp">
          <node concept="3clFbS" id="5kChkJ6qlpp" role="2LFqv$">
            <node concept="3clFbF" id="5kChkJ6qlql" role="3cqZAp">
              <node concept="2OqwBi" id="5522gsSlaIy" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeuu0m" role="2Oq$k0">
                  <ref role="3cqZAo" node="5kChkJ6qdp3" resolve="packageSimpleNames" />
                </node>
                <node concept="liA8E" id="5522gsSlaIC" role="2OqNvi">
                  <ref role="37wK5l" to="k7g3:~Set.add(java.lang.Object):boolean" resolve="add" />
                  <node concept="2OqwBi" id="5522gsSlaIY" role="37wK5m">
                    <node concept="37vLTw" id="3GM_nagT$EG" role="2Oq$k0">
                      <ref role="3cqZAo" node="5kChkJ6qlpr" resolve="classifier" />
                    </node>
                    <node concept="3TrcHB" id="5522gsSliqZ" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5kChkJ6qlpr" role="1Duv9x">
            <property role="TrG5h" value="classifier" />
            <node concept="3Tqbb2" id="5kChkJ6qlpt" role="1tU5fm">
              <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
            </node>
          </node>
          <node concept="2OqwBi" id="5kChkJ6qlqe" role="1DdaDG">
            <node concept="2OqwBi" id="5kChkJ6qlpN" role="2Oq$k0">
              <node concept="37vLTw" id="2BHiRxglIdb" role="2Oq$k0">
                <ref role="3cqZAo" node="5kChkJ6qdlF" resolve="rootNode" />
              </node>
              <node concept="I4A8Y" id="5kChkJ6qlpS" role="2OqNvi" />
            </node>
            <node concept="2RRcyG" id="5kChkJ6qlqk" role="2OqNvi">
              <ref role="2RRcyH" to="tpee:g7pOWCK" resolve="Classifier" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7lG0I2ma03z" role="3clF46">
        <property role="TrG5h" value="buffer" />
        <node concept="3uibUv" id="7lG0I2ma03_" role="1tU5fm">
          <ref role="3uigEE" to="zrid:~TextGenBuffer" resolve="TextGenBuffer" />
        </node>
      </node>
      <node concept="37vLTG" id="5kChkJ6qdlF" role="3clF46">
        <property role="TrG5h" value="rootNode" />
        <node concept="3Tqbb2" id="5kChkJ6qdlG" role="1tU5fm">
          <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7lG0I2m9ZGU" role="jymVt">
      <property role="TrG5h" value="getClassifierRefText" />
      <node concept="17QB3L" id="3bI5ETjeTXK" role="3clF45" />
      <node concept="3Tm1VV" id="7lG0I2m9ZGW" role="1B3o_S" />
      <node concept="3clFbS" id="7lG0I2m9ZGX" role="3clF47">
        <node concept="3SKdUt" id="6DQGhlrjhwe" role="3cqZAp">
          <node concept="3SKdUq" id="6DQGhlrjhwf" role="3SKWNk">
            <property role="3SKdUp" value="main invariant: use always nested names, import only root classifiers" />
          </node>
        </node>
        <node concept="3cpWs8" id="6DQGhlrjhwq" role="3cqZAp">
          <node concept="3cpWsn" id="6DQGhlrjhwr" role="3cpWs9">
            <property role="TrG5h" value="nestedName" />
            <node concept="17QB3L" id="6DQGhlrjhws" role="1tU5fm" />
            <node concept="2YIFZM" id="6DQGhlrjhwv" role="33vP2m">
              <ref role="37wK5l" to="msyo:~JavaNameUtil.nestedClassName(java.lang.String,java.lang.String):java.lang.String" resolve="nestedClassName" />
              <ref role="1Pybhc" to="msyo:~JavaNameUtil" resolve="JavaNameUtil" />
              <node concept="37vLTw" id="2BHiRxghiAy" role="37wK5m">
                <ref role="3cqZAo" node="7lG0I2m9ZGZ" resolve="packageName" />
              </node>
              <node concept="37vLTw" id="2BHiRxglI6J" role="37wK5m">
                <ref role="3cqZAo" node="7lG0I2m9ZH1" resolve="fqName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6DQGhlrjhzq" role="3cqZAp" />
        <node concept="3cpWs8" id="6DQGhlrjhzs" role="3cqZAp">
          <node concept="3cpWsn" id="6DQGhlrjhzt" role="3cpWs9">
            <property role="TrG5h" value="dotIndex" />
            <node concept="10Oyi0" id="6DQGhlrjhzu" role="1tU5fm" />
            <node concept="2OqwBi" id="6DQGhlrjhzP" role="33vP2m">
              <node concept="37vLTw" id="3GM_nagTvDd" role="2Oq$k0">
                <ref role="3cqZAo" node="6DQGhlrjhwr" resolve="nestedName" />
              </node>
              <node concept="liA8E" id="6DQGhlrjhzV" role="2OqNvi">
                <ref role="37wK5l" to="e2lb:~String.indexOf(java.lang.String):int" resolve="indexOf" />
                <node concept="Xl_RD" id="6DQGhlrjhzW" role="37wK5m">
                  <property role="Xl_RC" value="." />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6DQGhlrjhyy" role="3cqZAp">
          <node concept="3cpWsn" id="6DQGhlrjhyz" role="3cpWs9">
            <property role="TrG5h" value="rootClassifierName" />
            <node concept="17QB3L" id="6DQGhlrjhy$" role="1tU5fm" />
            <node concept="3K4zz7" id="6DQGhlrjh$I" role="33vP2m">
              <node concept="37vLTw" id="3GM_nagTs2a" role="3K4E3e">
                <ref role="3cqZAo" node="6DQGhlrjhwr" resolve="nestedName" />
              </node>
              <node concept="2OqwBi" id="6DQGhlrjh_8" role="3K4GZi">
                <node concept="37vLTw" id="3GM_nagTu_8" role="2Oq$k0">
                  <ref role="3cqZAo" node="6DQGhlrjhwr" resolve="nestedName" />
                </node>
                <node concept="liA8E" id="6DQGhlrjh_e" role="2OqNvi">
                  <ref role="37wK5l" to="e2lb:~String.substring(int,int):java.lang.String" resolve="substring" />
                  <node concept="3cmrfG" id="6DQGhlrjh_f" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagTvH8" role="37wK5m">
                    <ref role="3cqZAo" node="6DQGhlrjhzt" resolve="dotIndex" />
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="6DQGhlrjh$m" role="3K4Cdx">
                <node concept="3cmrfG" id="6DQGhlrjh$p" role="3uHU7w">
                  <property role="3cmrfH" value="-1" />
                </node>
                <node concept="37vLTw" id="3GM_nagTrfW" role="3uHU7B">
                  <ref role="3cqZAo" node="6DQGhlrjhzt" resolve="dotIndex" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6DQGhlrjhAT" role="3cqZAp">
          <node concept="3cpWsn" id="6DQGhlrjhAU" role="3cpWs9">
            <property role="TrG5h" value="nestedPart" />
            <node concept="17QB3L" id="6DQGhlrjhAV" role="1tU5fm" />
            <node concept="2OqwBi" id="6DQGhlrjhCX" role="33vP2m">
              <node concept="37vLTw" id="3GM_nagTv30" role="2Oq$k0">
                <ref role="3cqZAo" node="6DQGhlrjhwr" resolve="nestedName" />
              </node>
              <node concept="liA8E" id="6DQGhlrjhD3" role="2OqNvi">
                <ref role="37wK5l" to="e2lb:~String.substring(int):java.lang.String" resolve="substring" />
                <node concept="2OqwBi" id="6DQGhlrjhDp" role="37wK5m">
                  <node concept="37vLTw" id="3GM_nagTxF2" role="2Oq$k0">
                    <ref role="3cqZAo" node="6DQGhlrjhyz" resolve="rootClassifierName" />
                  </node>
                  <node concept="liA8E" id="6DQGhlrjhDu" role="2OqNvi">
                    <ref role="37wK5l" to="e2lb:~String.length():int" resolve="length" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6DQGhlrjh_U" role="3cqZAp" />
        <node concept="3clFbF" id="6DQGhlrjhDx" role="3cqZAp">
          <node concept="3cpWs3" id="6DQGhlrjhDZ" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTrw_" role="3uHU7w">
              <ref role="3cqZAo" node="6DQGhlrjhAU" resolve="nestedPart" />
            </node>
            <node concept="1rXfSq" id="4hiugqyz9D4" role="3uHU7B">
              <ref role="37wK5l" node="6DQGhlrjhwM" resolve="getRootClassifierRefText" />
              <node concept="37vLTw" id="2BHiRxglB3P" role="37wK5m">
                <ref role="3cqZAo" node="7lG0I2m9ZGZ" resolve="packageName" />
              </node>
              <node concept="37vLTw" id="3GM_nagT_AU" role="37wK5m">
                <ref role="3cqZAo" node="6DQGhlrjhyz" resolve="rootClassifierName" />
              </node>
              <node concept="37vLTw" id="2BHiRxgmJga" role="37wK5m">
                <ref role="3cqZAo" node="7QHNx0BoylC" resolve="contextNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7lG0I2m9ZGZ" role="3clF46">
        <property role="TrG5h" value="packageName" />
        <node concept="17QB3L" id="7lG0I2m9ZH0" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7lG0I2m9ZH1" role="3clF46">
        <property role="TrG5h" value="fqName" />
        <node concept="17QB3L" id="7lG0I2m9ZH3" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7QHNx0BoylC" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="7QHNx0BoylF" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="6DQGhlrjhwM" role="jymVt">
      <property role="TrG5h" value="getRootClassifierRefText" />
      <node concept="17QB3L" id="6DQGhlrjhyu" role="3clF45" />
      <node concept="3Tm6S6" id="6DQGhlrjhE5" role="1B3o_S" />
      <node concept="3clFbS" id="6DQGhlrjhwP" role="3clF47">
        <node concept="1gVbGN" id="6DQGhlrjhwV" role="3cqZAp">
          <node concept="3fqX7Q" id="6DQGhlrjhxp" role="1gVkn0">
            <node concept="2OqwBi" id="6DQGhlrjhxq" role="3fr31v">
              <node concept="37vLTw" id="2BHiRxghiwa" role="2Oq$k0">
                <ref role="3cqZAo" node="6DQGhlrjhwS" resolve="className" />
              </node>
              <node concept="liA8E" id="6DQGhlrjhxs" role="2OqNvi">
                <ref role="37wK5l" to="e2lb:~String.contains(java.lang.CharSequence):boolean" resolve="contains" />
                <node concept="Xl_RD" id="6DQGhlrjhxt" role="37wK5m">
                  <property role="Xl_RC" value="." />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6DQGhlrjh_X" role="3cqZAp" />
        <node concept="3cpWs8" id="6DQGhlrjh_Z" role="3cqZAp">
          <node concept="3cpWsn" id="6DQGhlrjhA0" role="3cpWs9">
            <property role="TrG5h" value="fqName" />
            <node concept="17QB3L" id="6DQGhlrjhA1" role="1tU5fm" />
            <node concept="3cpWs3" id="6DQGhlrjhAL" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxghgBG" role="3uHU7w">
                <ref role="3cqZAo" node="6DQGhlrjhwS" resolve="className" />
              </node>
              <node concept="3cpWs3" id="6DQGhlrjhAp" role="3uHU7B">
                <node concept="37vLTw" id="2BHiRxgmC8i" role="3uHU7B">
                  <ref role="3cqZAo" node="6DQGhlrjhwQ" resolve="packageName" />
                </node>
                <node concept="Xl_RD" id="6DQGhlrjhAs" role="3uHU7w">
                  <property role="Xl_RC" value="." />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7QHNx0BoESu" role="3cqZAp">
          <node concept="3cpWsn" id="7QHNx0BoESv" role="3cpWs9">
            <property role="TrG5h" value="nestedClassifiersBinding" />
            <node concept="3uibUv" id="5522gsSliry" role="1tU5fm">
              <ref role="3uigEE" to="k7g3:~Map" resolve="Map" />
              <node concept="17QB3L" id="5522gsSlir$" role="11_B2D" />
              <node concept="17QB3L" id="5522gsSlirA" role="11_B2D" />
            </node>
            <node concept="2OqwBi" id="3XLHuwza2F8" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxeuG$b" role="2Oq$k0">
                <ref role="3cqZAo" node="6DQGhlriWrZ" resolve="contextClassifiers" />
              </node>
              <node concept="liA8E" id="3XLHuwza2Fi" role="2OqNvi">
                <ref role="37wK5l" node="3XLHuwza2Ce" resolve="getContextClassifiers" />
                <node concept="37vLTw" id="2BHiRxgm8mw" role="37wK5m">
                  <ref role="3cqZAo" node="6DQGhlrjhAP" resolve="contextNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6DQGhlrjh_Y" role="3cqZAp" />
        <node concept="3SKdUt" id="7QHNx0BoERN" role="3cqZAp">
          <node concept="3SKdUq" id="7QHNx0BoERQ" role="3SKWNk">
            <property role="3SKdUp" value="1) check nested classes context" />
          </node>
        </node>
        <node concept="3clFbJ" id="7QHNx0BoESE" role="3cqZAp">
          <node concept="3clFbS" id="7QHNx0BoESF" role="3clFbx">
            <node concept="3clFbJ" id="7QHNx0BoETe" role="3cqZAp">
              <node concept="3clFbS" id="7QHNx0BoETf" role="3clFbx">
                <node concept="3cpWs6" id="7QHNx0BoEUK" role="3cqZAp">
                  <node concept="37vLTw" id="2BHiRxglG6R" role="3cqZAk">
                    <ref role="3cqZAo" node="6DQGhlrjhwS" resolve="className" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7QHNx0BoEUC" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagTwLC" role="2Oq$k0">
                  <ref role="3cqZAo" node="6DQGhlrjhA0" resolve="fqName" />
                </node>
                <node concept="liA8E" id="7QHNx0BoEUJ" role="2OqNvi">
                  <ref role="37wK5l" to="e2lb:~String.equals(java.lang.Object):boolean" resolve="equals" />
                  <node concept="2OqwBi" id="5522gsSlisN" role="37wK5m">
                    <node concept="37vLTw" id="3GM_nagTscB" role="2Oq$k0">
                      <ref role="3cqZAo" node="7QHNx0BoESv" resolve="nestedClassifiersBinding" />
                    </node>
                    <node concept="liA8E" id="5522gsSlisT" role="2OqNvi">
                      <ref role="37wK5l" to="k7g3:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                      <node concept="37vLTw" id="2BHiRxghiwk" role="37wK5m">
                        <ref role="3cqZAo" node="6DQGhlrjhwS" resolve="className" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="7QHNx0BoEUT" role="9aQIa">
                <node concept="3clFbS" id="7QHNx0BoEUU" role="9aQI4">
                  <node concept="3cpWs6" id="7QHNx0BoEUV" role="3cqZAp">
                    <node concept="37vLTw" id="3GM_nagTvfQ" role="3cqZAk">
                      <ref role="3cqZAo" node="6DQGhlrjhA0" resolve="fqName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5522gsSlisn" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagT_mS" role="2Oq$k0">
              <ref role="3cqZAo" node="7QHNx0BoESv" resolve="nestedClassifiersBinding" />
            </node>
            <node concept="liA8E" id="5522gsSlist" role="2OqNvi">
              <ref role="37wK5l" to="k7g3:~Map.containsKey(java.lang.Object):boolean" resolve="containsKey" />
              <node concept="37vLTw" id="2BHiRxgheOz" role="37wK5m">
                <ref role="3cqZAo" node="6DQGhlrjhwS" resolve="className" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7QHNx0BoESD" role="3cqZAp" />
        <node concept="3SKdUt" id="7QHNx0BoEV4" role="3cqZAp">
          <node concept="3SKdUq" id="7QHNx0BoEV5" role="3SKWNk">
            <property role="3SKdUp" value="2) check current binding" />
          </node>
        </node>
        <node concept="3clFbJ" id="7lG0I2m9ZHj" role="3cqZAp">
          <node concept="3clFbS" id="7lG0I2m9ZHk" role="3clFbx">
            <node concept="3clFbJ" id="7lG0I2m9ZHl" role="3cqZAp">
              <node concept="3clFbS" id="7lG0I2m9ZHm" role="3clFbx">
                <node concept="3cpWs6" id="7lG0I2m9ZHn" role="3cqZAp">
                  <node concept="37vLTw" id="2BHiRxgm6LZ" role="3cqZAk">
                    <ref role="3cqZAo" node="6DQGhlrjhwS" resolve="className" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7lG0I2m9ZHp" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagT_U2" role="2Oq$k0">
                  <ref role="3cqZAo" node="6DQGhlrjhA0" resolve="fqName" />
                </node>
                <node concept="liA8E" id="7lG0I2m9ZHr" role="2OqNvi">
                  <ref role="37wK5l" to="e2lb:~String.equals(java.lang.Object):boolean" resolve="equals" />
                  <node concept="2OqwBi" id="5522gsSlitF" role="37wK5m">
                    <node concept="37vLTw" id="2BHiRxeusnA" role="2Oq$k0">
                      <ref role="3cqZAo" node="5kChkJ6qdlL" resolve="bindings" />
                    </node>
                    <node concept="liA8E" id="5522gsSlitL" role="2OqNvi">
                      <ref role="37wK5l" to="k7g3:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                      <node concept="37vLTw" id="2BHiRxgm8aH" role="37wK5m">
                        <ref role="3cqZAo" node="6DQGhlrjhwS" resolve="className" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="7lG0I2m9ZHw" role="9aQIa">
                <node concept="3clFbS" id="7lG0I2m9ZHx" role="9aQI4">
                  <node concept="3cpWs6" id="3bI5ETjeTYH" role="3cqZAp">
                    <node concept="37vLTw" id="3GM_nagTuiy" role="3cqZAk">
                      <ref role="3cqZAo" node="6DQGhlrjhA0" resolve="fqName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5522gsSlitf" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxeuQvM" role="2Oq$k0">
              <ref role="3cqZAo" node="5kChkJ6qdlL" resolve="bindings" />
            </node>
            <node concept="liA8E" id="5522gsSlitl" role="2OqNvi">
              <ref role="37wK5l" to="k7g3:~Map.containsKey(java.lang.Object):boolean" resolve="containsKey" />
              <node concept="37vLTw" id="2BHiRxglKzX" role="37wK5m">
                <ref role="3cqZAo" node="6DQGhlrjhwS" resolve="className" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7QHNx0BoEV9" role="3cqZAp" />
        <node concept="3SKdUt" id="7QHNx0BoEVb" role="3cqZAp">
          <node concept="3SKdUq" id="7QHNx0BoEVc" role="3SKWNk">
            <property role="3SKdUp" value="3) add binding, question is: add explicit import or not?" />
          </node>
        </node>
        <node concept="3clFbF" id="5522gsSliui" role="3cqZAp">
          <node concept="2OqwBi" id="5522gsSliu7" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeumoq" role="2Oq$k0">
              <ref role="3cqZAo" node="5kChkJ6qdlL" resolve="bindings" />
            </node>
            <node concept="liA8E" id="5522gsSliud" role="2OqNvi">
              <ref role="37wK5l" to="k7g3:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
              <node concept="37vLTw" id="2BHiRxgmb9c" role="37wK5m">
                <ref role="3cqZAo" node="6DQGhlrjhwS" resolve="className" />
              </node>
              <node concept="37vLTw" id="3GM_nagTAsD" role="37wK5m">
                <ref role="3cqZAo" node="6DQGhlrjhA0" resolve="fqName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3bI5ETjeTYU" role="3cqZAp">
          <node concept="3cpWsn" id="3bI5ETjeTYV" role="3cpWs9">
            <property role="TrG5h" value="shouldBeImported" />
            <node concept="10P_77" id="3bI5ETjeTYW" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbH" id="3bI5ETjeTYT" role="3cqZAp" />
        <node concept="3clFbJ" id="6DQGhlrjhxw" role="3cqZAp">
          <node concept="3clFbS" id="6DQGhlrjhxx" role="3clFbx">
            <node concept="3clFbF" id="6DQGhlrjhxP" role="3cqZAp">
              <node concept="37vLTI" id="6DQGhlrjhxQ" role="3clFbG">
                <node concept="3clFbT" id="6DQGhlrjhEq" role="37vLTx">
                  <property role="3clFbU" value="false" />
                </node>
                <node concept="37vLTw" id="3GM_nagTAL1" role="37vLTJ">
                  <ref role="3cqZAo" node="3bI5ETjeTYV" resolve="shouldBeImported" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6DQGhlrjhxU" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxglPgN" role="2Oq$k0">
              <ref role="3cqZAo" node="6DQGhlrjhwQ" resolve="packageName" />
            </node>
            <node concept="liA8E" id="6DQGhlrjhxW" role="2OqNvi">
              <ref role="37wK5l" to="e2lb:~String.equals(java.lang.Object):boolean" resolve="equals" />
              <node concept="2OqwBi" id="6DQGhlrjhxX" role="37wK5m">
                <node concept="Xjq3P" id="6DQGhlrjhxY" role="2Oq$k0" />
                <node concept="2OwXpG" id="6DQGhlrjhxZ" role="2OqNvi">
                  <ref role="2Oxat5" node="5kChkJ6qsA1" resolve="packageName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="6DQGhlrjhy0" role="3eNLev">
            <node concept="3clFbS" id="6DQGhlrjhy1" role="3eOfB_">
              <node concept="3SKdUt" id="6DQGhlrjhy2" role="3cqZAp">
                <node concept="3SKdUq" id="6DQGhlrjhy3" role="3SKWNk">
                  <property role="3SKdUp" value="java.lang model: generate without explicit import if context package doesn't contains same simple name" />
                </node>
              </node>
              <node concept="3clFbF" id="6DQGhlrjhy4" role="3cqZAp">
                <node concept="37vLTI" id="6DQGhlrjhy5" role="3clFbG">
                  <node concept="2OqwBi" id="6DQGhlrjhy6" role="37vLTx">
                    <node concept="37vLTw" id="2BHiRxeuO13" role="2Oq$k0">
                      <ref role="3cqZAo" node="5kChkJ6qdp3" resolve="packageSimpleNames" />
                    </node>
                    <node concept="liA8E" id="6DQGhlrjhy8" role="2OqNvi">
                      <ref role="37wK5l" to="k7g3:~Set.contains(java.lang.Object):boolean" resolve="contains" />
                      <node concept="37vLTw" id="2BHiRxglqMw" role="37wK5m">
                        <ref role="3cqZAo" node="6DQGhlrjhwS" resolve="className" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="3GM_nagTw6Z" role="37vLTJ">
                    <ref role="3cqZAo" node="3bI5ETjeTYV" resolve="shouldBeImported" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6DQGhlrjhyb" role="3eO9$A">
              <node concept="37vLTw" id="2BHiRxglG9r" role="2Oq$k0">
                <ref role="3cqZAo" node="6DQGhlrjhwQ" resolve="packageName" />
              </node>
              <node concept="liA8E" id="6DQGhlrjhyd" role="2OqNvi">
                <ref role="37wK5l" to="e2lb:~String.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="Xl_RD" id="6DQGhlrjhye" role="37wK5m">
                  <property role="Xl_RC" value="java.lang" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="6DQGhlrjhyf" role="9aQIa">
            <node concept="3clFbS" id="6DQGhlrjhyg" role="9aQI4">
              <node concept="3SKdUt" id="6DQGhlrjhyh" role="3cqZAp">
                <node concept="3SKdUq" id="6DQGhlrjhyi" role="3SKWNk">
                  <property role="3SKdUp" value="in other cases: generate explicit import" />
                </node>
              </node>
              <node concept="3clFbF" id="6DQGhlrjhyj" role="3cqZAp">
                <node concept="37vLTI" id="6DQGhlrjhyk" role="3clFbG">
                  <node concept="3clFbT" id="6DQGhlrjhyl" role="37vLTx">
                    <property role="3clFbU" value="true" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagTyLP" role="37vLTJ">
                    <ref role="3cqZAo" node="3bI5ETjeTYV" resolve="shouldBeImported" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6DQGhlrjhyn" role="3cqZAp">
          <node concept="3clFbS" id="6DQGhlrjhyo" role="3clFbx">
            <node concept="3clFbF" id="6DQGhlrjhyp" role="3cqZAp">
              <node concept="1rXfSq" id="4hiugqyyYiV" role="3clFbG">
                <ref role="37wK5l" node="3bI5ETjeTQC" resolve="addImport" />
                <node concept="37vLTw" id="3GM_nagTxYL" role="37wK5m">
                  <ref role="3cqZAo" node="6DQGhlrjhA0" resolve="fqName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="3GM_nagTuxQ" role="3clFbw">
            <ref role="3cqZAo" node="3bI5ETjeTYV" resolve="shouldBeImported" />
          </node>
        </node>
        <node concept="3clFbH" id="6DQGhlrjhEy" role="3cqZAp" />
        <node concept="3clFbF" id="6DQGhlrjhEv" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxgmHUs" role="3clFbG">
            <ref role="3cqZAo" node="6DQGhlrjhwS" resolve="className" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6DQGhlrjhwQ" role="3clF46">
        <property role="TrG5h" value="packageName" />
        <node concept="17QB3L" id="6DQGhlrjhwR" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6DQGhlrjhwS" role="3clF46">
        <property role="TrG5h" value="className" />
        <node concept="17QB3L" id="6DQGhlrjhwU" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6DQGhlrjhAP" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="6DQGhlrjhAS" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="3bI5ETjeTQC" role="jymVt">
      <property role="TrG5h" value="addImport" />
      <node concept="3cqZAl" id="3bI5ETjeTQD" role="3clF45" />
      <node concept="3Tm6S6" id="3bI5ETjeTQG" role="1B3o_S" />
      <node concept="3clFbS" id="3bI5ETjeTQF" role="3clF47">
        <node concept="3cpWs8" id="3bI5ETjeTQO" role="3cqZAp">
          <node concept="3cpWsn" id="3bI5ETjeTQP" role="3cpWs9">
            <property role="TrG5h" value="currPartId" />
            <node concept="10Oyi0" id="3bI5ETjeTQQ" role="1tU5fm" />
            <node concept="2OqwBi" id="3bI5ETjeTQR" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxeuvK1" role="2Oq$k0">
                <ref role="3cqZAo" node="7lG0I2ma03v" resolve="buffer" />
              </node>
              <node concept="liA8E" id="3bI5ETjeTQT" role="2OqNvi">
                <ref role="37wK5l" to="zrid:~TextGenBuffer.selectPart(int):int" resolve="selectPart" />
                <node concept="10M0yZ" id="3bI5ETjeTQU" role="37wK5m">
                  <ref role="1PxDUh" to="zrid:~TextGenBuffer" resolve="TextGenBuffer" />
                  <ref role="3cqZAo" to="zrid:~TextGenBuffer.TOP" resolve="TOP" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3bI5ETjeTX$" role="3cqZAp" />
        <node concept="3clFbF" id="3bI5ETjeTRb" role="3cqZAp">
          <node concept="2OqwBi" id="3bI5ETjeTUC" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuv1K" role="2Oq$k0">
              <ref role="3cqZAo" node="7lG0I2ma03v" resolve="buffer" />
            </node>
            <node concept="liA8E" id="3bI5ETjeTUH" role="2OqNvi">
              <ref role="37wK5l" to="zrid:~TextGenBuffer.append(java.lang.String):void" resolve="append" />
              <node concept="2OqwBi" id="3bI5ETjeTV3" role="37wK5m">
                <node concept="37vLTw" id="2BHiRxeuoLz" role="2Oq$k0">
                  <ref role="3cqZAo" node="7lG0I2ma03v" resolve="buffer" />
                </node>
                <node concept="liA8E" id="3bI5ETjeTV9" role="2OqNvi">
                  <ref role="37wK5l" to="zrid:~TextGenBuffer.getLineSeparator():java.lang.String" resolve="getLineSeparator" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3bI5ETjeTVb" role="3cqZAp">
          <node concept="2OqwBi" id="3bI5ETjeTVx" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeu_8x" role="2Oq$k0">
              <ref role="3cqZAo" node="7lG0I2ma03v" resolve="buffer" />
            </node>
            <node concept="liA8E" id="3bI5ETjeTVB" role="2OqNvi">
              <ref role="37wK5l" to="zrid:~TextGenBuffer.append(java.lang.String):void" resolve="append" />
              <node concept="Xl_RD" id="3bI5ETjeTVC" role="37wK5m">
                <property role="Xl_RC" value="import " />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3bI5ETjeTWD" role="3cqZAp">
          <node concept="2OqwBi" id="3bI5ETjeTWZ" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuXf7" role="2Oq$k0">
              <ref role="3cqZAo" node="7lG0I2ma03v" resolve="buffer" />
            </node>
            <node concept="liA8E" id="3bI5ETjeTX4" role="2OqNvi">
              <ref role="37wK5l" to="zrid:~TextGenBuffer.append(java.lang.String):void" resolve="append" />
              <node concept="37vLTw" id="2BHiRxghiCt" role="37wK5m">
                <ref role="3cqZAo" node="3bI5ETjeTQH" resolve="fqName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3bI5ETjeTX7" role="3cqZAp">
          <node concept="2OqwBi" id="3bI5ETjeTXt" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeup0Y" role="2Oq$k0">
              <ref role="3cqZAo" node="7lG0I2ma03v" resolve="buffer" />
            </node>
            <node concept="liA8E" id="3bI5ETjeTXy" role="2OqNvi">
              <ref role="37wK5l" to="zrid:~TextGenBuffer.append(java.lang.String):void" resolve="append" />
              <node concept="Xl_RD" id="3bI5ETjeTXz" role="37wK5m">
                <property role="Xl_RC" value=";" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3bI5ETjeTX_" role="3cqZAp" />
        <node concept="3clFbF" id="3bI5ETjeTR3" role="3cqZAp">
          <node concept="2OqwBi" id="3bI5ETjeTR4" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuKki" role="2Oq$k0">
              <ref role="3cqZAo" node="7lG0I2ma03v" resolve="buffer" />
            </node>
            <node concept="liA8E" id="3bI5ETjeTR6" role="2OqNvi">
              <ref role="37wK5l" to="zrid:~TextGenBuffer.selectPart(int):int" resolve="selectPart" />
              <node concept="37vLTw" id="3GM_nagTr3l" role="37wK5m">
                <ref role="3cqZAo" node="3bI5ETjeTQP" resolve="currPartId" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3bI5ETjeTQH" role="3clF46">
        <property role="TrG5h" value="fqName" />
        <node concept="17QB3L" id="3bI5ETjeTQI" role="1tU5fm" />
      </node>
    </node>
    <node concept="2YIFZL" id="5kChkJ6qHHh" role="jymVt">
      <property role="TrG5h" value="getInstance" />
      <node concept="3uibUv" id="5kChkJ6qHIT" role="3clF45">
        <ref role="3uigEE" node="5kChkJ6qdl_" resolve="ImportsContext" />
      </node>
      <node concept="3Tm1VV" id="5kChkJ6qHHj" role="1B3o_S" />
      <node concept="3clFbS" id="5kChkJ6qHHk" role="3clF47">
        <node concept="3cpWs8" id="5kChkJ6qHIk" role="3cqZAp">
          <node concept="3cpWsn" id="5kChkJ6qHIl" role="3cpWs9">
            <property role="TrG5h" value="instance" />
            <node concept="3uibUv" id="5kChkJ6qHJ9" role="1tU5fm">
              <ref role="3uigEE" node="5kChkJ6qdl_" resolve="ImportsContext" />
            </node>
            <node concept="10QFUN" id="5kChkJ6qHJc" role="33vP2m">
              <node concept="3uibUv" id="5kChkJ6qHJf" role="10QFUM">
                <ref role="3uigEE" node="5kChkJ6qdl_" resolve="ImportsContext" />
              </node>
              <node concept="2OqwBi" id="5kChkJ6qHHJ" role="10QFUP">
                <node concept="37vLTw" id="2BHiRxgm6_Z" role="2Oq$k0">
                  <ref role="3cqZAo" node="5kChkJ6qHHl" resolve="buffer" />
                </node>
                <node concept="liA8E" id="5kChkJ6qHHP" role="2OqNvi">
                  <ref role="37wK5l" to="zrid:~TextGenBuffer.getUserObject(java.lang.Object):java.lang.Object" resolve="getUserObject" />
                  <node concept="37vLTw" id="2BHiRxeookM" role="37wK5m">
                    <ref role="3cqZAo" node="5kChkJ6qHH1" resolve="USER_OBJECT_KEY" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5kChkJ6qHIs" role="3cqZAp">
          <node concept="3clFbS" id="5kChkJ6qHIt" role="3clFbx">
            <node concept="3cpWs8" id="5kChkJ6qNIs" role="3cqZAp">
              <node concept="3cpWsn" id="5kChkJ6qNIt" role="3cpWs9">
                <property role="TrG5h" value="rootNode" />
                <node concept="3Tqbb2" id="5kChkJ6qNIu" role="1tU5fm" />
                <node concept="10QFUN" id="5kChkJ6qNK7" role="33vP2m">
                  <node concept="3Tqbb2" id="5kChkJ6qNKa" role="10QFUM" />
                  <node concept="2OqwBi" id="5kChkJ6qNIF" role="10QFUP">
                    <node concept="37vLTw" id="2BHiRxgheMj" role="2Oq$k0">
                      <ref role="3cqZAo" node="5kChkJ6qHHl" resolve="buffer" />
                    </node>
                    <node concept="liA8E" id="5kChkJ6qNIJ" role="2OqNvi">
                      <ref role="37wK5l" to="zrid:~TextGenBuffer.getUserObject(java.lang.Object):java.lang.Object" resolve="getUserObject" />
                      <node concept="10M0yZ" id="5kChkJ6qNIK" role="37wK5m">
                        <ref role="1PxDUh" to="zrid:~TextGen" resolve="TextGen" />
                        <ref role="3cqZAo" to="zrid:~TextGen.ROOT_NODE" resolve="ROOT_NODE" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5kChkJ6qNIM" role="3cqZAp">
              <node concept="3clFbS" id="5kChkJ6qNIN" role="3clFbx">
                <node concept="YS8fn" id="5kChkJ6qNJD" role="3cqZAp">
                  <node concept="2ShNRf" id="5kChkJ6qNJF" role="YScLw">
                    <node concept="1pGfFk" id="5kChkJ6qNJH" role="2ShVmc">
                      <ref role="37wK5l" to="e2lb:~IllegalStateException.&lt;init&gt;()" resolve="IllegalStateException" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="22lmx$" id="5kChkJ6qNJg" role="3clFbw">
                <node concept="2OqwBi" id="5kChkJ6qNJ1" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagTtD_" role="2Oq$k0">
                    <ref role="3cqZAo" node="5kChkJ6qNIt" resolve="rootNode" />
                  </node>
                  <node concept="3w_OXm" id="5kChkJ6qNJ5" role="2OqNvi" />
                </node>
                <node concept="3fqX7Q" id="5kChkJ6qNJl" role="3uHU7w">
                  <node concept="2OqwBi" id="5kChkJ6qNJy" role="3fr31v">
                    <node concept="37vLTw" id="3GM_nagTxFN" role="2Oq$k0">
                      <ref role="3cqZAo" node="5kChkJ6qNIt" resolve="rootNode" />
                    </node>
                    <node concept="1mIQ4w" id="5kChkJ6qNJA" role="2OqNvi">
                      <node concept="chp4Y" id="5kChkJ6qNJC" role="cj9EA">
                        <ref role="cht4Q" to="tpee:g7pOWCK" resolve="Classifier" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5kChkJ6qHKg" role="3cqZAp">
              <node concept="37vLTI" id="5kChkJ6qHKA" role="3clFbG">
                <node concept="2ShNRf" id="5kChkJ6qHKD" role="37vLTx">
                  <node concept="1pGfFk" id="5kChkJ6qHKH" role="2ShVmc">
                    <ref role="37wK5l" node="5kChkJ6qdlB" resolve="ImportsContext" />
                    <node concept="37vLTw" id="2BHiRxgl0Mk" role="37wK5m">
                      <ref role="3cqZAo" node="5kChkJ6qHHl" resolve="buffer" />
                    </node>
                    <node concept="1PxgMI" id="5kChkJ6qNK3" role="37wK5m">
                      <ref role="1PxNhF" to="tpee:g7pOWCK" resolve="Classifier" />
                      <node concept="37vLTw" id="3GM_nagT_zN" role="1PxMeX">
                        <ref role="3cqZAo" node="5kChkJ6qNIt" resolve="rootNode" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="3GM_nagTs2e" role="37vLTJ">
                  <ref role="3cqZAo" node="5kChkJ6qHIl" resolve="instance" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5kChkJ6qHKK" role="3cqZAp">
              <node concept="2OqwBi" id="5kChkJ6qHLw" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxglryQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="5kChkJ6qHHl" resolve="buffer" />
                </node>
                <node concept="liA8E" id="5kChkJ6qHL_" role="2OqNvi">
                  <ref role="37wK5l" to="zrid:~TextGenBuffer.putUserObject(java.lang.Object,java.lang.Object):void" resolve="putUserObject" />
                  <node concept="37vLTw" id="2BHiRxeoeiG" role="37wK5m">
                    <ref role="3cqZAo" node="5kChkJ6qHH1" resolve="USER_OBJECT_KEY" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagTsSI" role="37wK5m">
                    <ref role="3cqZAo" node="5kChkJ6qHIl" resolve="instance" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5kChkJ6qHJj" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTtdb" role="3uHU7B">
              <ref role="3cqZAo" node="5kChkJ6qHIl" resolve="instance" />
            </node>
            <node concept="10Nm6u" id="5kChkJ6qHJl" role="3uHU7w" />
          </node>
        </node>
        <node concept="3clFbF" id="5kChkJ6qHLZ" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagT_C7" role="3clFbG">
            <ref role="3cqZAo" node="5kChkJ6qHIl" resolve="instance" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5kChkJ6qHHl" role="3clF46">
        <property role="TrG5h" value="buffer" />
        <node concept="3uibUv" id="5kChkJ6qHHm" role="1tU5fm">
          <ref role="3uigEE" to="zrid:~TextGenBuffer" resolve="TextGenBuffer" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="1hodSy8RV1R">
    <property role="3GE5qa" value="classifiers.members" />
    <ref role="WuzLi" to="tpee:hLPe0et" resolve="StaticInitializer" />
    <node concept="11bSqf" id="1hodSy8RV23" role="11c4hB">
      <node concept="3clFbS" id="1hodSy8RV24" role="2VODD2">
        <node concept="lc7rE" id="1hodSy8S17r" role="3cqZAp">
          <node concept="la8eA" id="1hodSy8S2xI" role="lcghm">
            <property role="ldcpH" value="true" />
            <property role="lacIc" value="static {" />
          </node>
        </node>
        <node concept="3izx1p" id="1hodSy8S3Yr" role="3cqZAp">
          <node concept="3clFbS" id="1hodSy8S3Ys" role="3izTki">
            <node concept="lc7rE" id="1hodSy8S3Yt" role="3cqZAp">
              <node concept="l9hG8" id="1hodSy8S3Yu" role="lcghm">
                <node concept="2OqwBi" id="1hodSy8S3Yv" role="lb14g">
                  <node concept="3TrEf2" id="1hodSy8S4_N" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:hLPe0eu" />
                  </node>
                  <node concept="117lpO" id="1hodSy8S4be" role="2Oq$k0" />
                </node>
              </node>
              <node concept="l8MVK" id="1hodSy8S3Y$" role="lcghm" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="1hodSy8S3Wm" role="3cqZAp">
          <node concept="la8eA" id="1hodSy8S3Wn" role="lcghm">
            <property role="ldcpH" value="true" />
            <property role="lacIc" value="}" />
          </node>
          <node concept="l8MVK" id="1hodSy8S3Wo" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6LFqxSRCw0u">
    <property role="3GE5qa" value="classifiers.refs" />
    <ref role="WuzLi" to="tpee:6LFqxSRBTg4" resolve="LocalMethodCall" />
    <node concept="11bSqf" id="6LFqxSRCw0v" role="11c4hB">
      <node concept="3clFbS" id="6LFqxSRCw0w" role="2VODD2">
        <node concept="lc7rE" id="6LFqxSRCw0x" role="3cqZAp">
          <node concept="1bDJIP" id="6LFqxSRCw0y" role="lcghm">
            <ref role="1rvKf6" node="hYHLMDp" resolve="methodCall" />
            <node concept="117lpO" id="6LFqxSRCw0z" role="1ryhcI" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3XLHuwza2_b">
    <property role="TrG5h" value="ContextClassifiersInRoot" />
    <property role="3GE5qa" value="utils" />
    <node concept="3Tm1VV" id="3XLHuwza2_c" role="1B3o_S" />
    <node concept="312cEg" id="3XLHuwza2D_" role="jymVt">
      <property role="TrG5h" value="contextClassifiersCache" />
      <node concept="3Tm6S6" id="3XLHuwza2DA" role="1B3o_S" />
      <node concept="3uibUv" id="3XLHuwza2DB" role="1tU5fm">
        <ref role="3uigEE" node="6DQGhlriWt5" resolve="SimpleCache" />
        <node concept="1LlUBW" id="3XLHuwza2DC" role="11_B2D">
          <node concept="3Tqbb2" id="3XLHuwza2DD" role="1Lm7xW">
            <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
          </node>
          <node concept="17QB3L" id="3XLHuwza2DE" role="1Lm7xW" />
        </node>
        <node concept="3uibUv" id="3XLHuwza2DF" role="11_B2D">
          <ref role="3uigEE" to="k7g3:~Map" resolve="Map" />
          <node concept="17QB3L" id="3XLHuwza2DG" role="11_B2D" />
          <node concept="17QB3L" id="3XLHuwza2DH" role="11_B2D" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="6xvy0T1C_OC" role="jymVt">
      <property role="TrG5h" value="nestedClassifiersCache" />
      <node concept="3Tm6S6" id="6xvy0T1C_OD" role="1B3o_S" />
      <node concept="3uibUv" id="6xvy0T1C_Os" role="1tU5fm">
        <ref role="3uigEE" node="6DQGhlriWt5" resolve="SimpleCache" />
        <node concept="3Tqbb2" id="6xvy0T1C_Ou" role="11_B2D">
          <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
        </node>
        <node concept="3uibUv" id="6xvy0T1C_Oz" role="11_B2D">
          <ref role="3uigEE" to="k7g3:~Map" resolve="Map" />
          <node concept="17QB3L" id="6xvy0T1C_O_" role="11_B2D" />
          <node concept="17QB3L" id="6xvy0T1C_OB" role="11_B2D" />
        </node>
      </node>
    </node>
    <node concept="3clFbW" id="3XLHuwza2_d" role="jymVt">
      <node concept="3cqZAl" id="3XLHuwza2_e" role="3clF45" />
      <node concept="3Tm1VV" id="3XLHuwza2_f" role="1B3o_S" />
      <node concept="3clFbS" id="3XLHuwza2_g" role="3clF47">
        <node concept="3clFbF" id="3XLHuwza2DJ" role="3cqZAp">
          <node concept="37vLTI" id="3XLHuwza2DK" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuL5k" role="37vLTJ">
              <ref role="3cqZAo" node="3XLHuwza2D_" resolve="contextClassifiersCache" />
            </node>
            <node concept="2ShNRf" id="3XLHuwza2DM" role="37vLTx">
              <node concept="YeOm9" id="3XLHuwza2DN" role="2ShVmc">
                <node concept="1Y3b0j" id="3XLHuwza2DO" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" node="6DQGhlriWt5" resolve="SimpleCache" />
                  <ref role="37wK5l" node="6DQGhlriWt7" resolve="SimpleCache" />
                  <node concept="3Tm1VV" id="3XLHuwza2DP" role="1B3o_S" />
                  <node concept="1LlUBW" id="3XLHuwza2E8" role="2Ghqu4">
                    <node concept="3Tqbb2" id="3XLHuwza2E9" role="1Lm7xW">
                      <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
                    </node>
                    <node concept="17QB3L" id="3XLHuwza2Ea" role="1Lm7xW" />
                  </node>
                  <node concept="3uibUv" id="3XLHuwza2Eb" role="2Ghqu4">
                    <ref role="3uigEE" to="k7g3:~Map" resolve="Map" />
                    <node concept="17QB3L" id="3XLHuwza2Ec" role="11_B2D" />
                    <node concept="17QB3L" id="3XLHuwza2Ed" role="11_B2D" />
                  </node>
                  <node concept="3clFb_" id="3XLHuwza2DQ" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="innerGet" />
                    <node concept="3uibUv" id="3XLHuwza2DR" role="3clF45">
                      <ref role="3uigEE" to="k7g3:~Map" resolve="Map" />
                      <node concept="17QB3L" id="3XLHuwza2DS" role="11_B2D" />
                      <node concept="17QB3L" id="3XLHuwza2DT" role="11_B2D" />
                    </node>
                    <node concept="3Tmbuc" id="3XLHuwza2DU" role="1B3o_S" />
                    <node concept="37vLTG" id="3XLHuwza2DV" role="3clF46">
                      <property role="TrG5h" value="key" />
                      <node concept="1LlUBW" id="3XLHuwza2DW" role="1tU5fm">
                        <node concept="3Tqbb2" id="3XLHuwza2DX" role="1Lm7xW">
                          <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
                        </node>
                        <node concept="17QB3L" id="3XLHuwza2DY" role="1Lm7xW" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="3XLHuwza2DZ" role="3clF47">
                      <node concept="3clFbF" id="6xvy0T1C_Td" role="3cqZAp">
                        <node concept="1rXfSq" id="4hiugqyz8R2" role="3clFbG">
                          <ref role="37wK5l" node="6xvy0T1C_PQ" resolve="getContextClassifiers" />
                          <node concept="1LFfDK" id="6xvy0T1C_T$" role="37wK5m">
                            <node concept="3cmrfG" id="6xvy0T1C_TB" role="1LF_Uc">
                              <property role="3cmrfH" value="0" />
                            </node>
                            <node concept="37vLTw" id="2BHiRxgh9Xy" role="1LFl5Q">
                              <ref role="3cqZAo" node="3XLHuwza2DV" resolve="key" />
                            </node>
                          </node>
                          <node concept="1LFfDK" id="6xvy0T1C_U8" role="37wK5m">
                            <node concept="3cmrfG" id="6xvy0T1C_Ub" role="1LF_Uc">
                              <property role="3cmrfH" value="1" />
                            </node>
                            <node concept="37vLTw" id="2BHiRxgmeYM" role="1LFl5Q">
                              <ref role="3cqZAo" node="3XLHuwza2DV" resolve="key" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="3tYsUK_SdXa" role="2AJF6D">
                      <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6xvy0T1C_OG" role="3cqZAp">
          <node concept="37vLTI" id="6xvy0T1C_P2" role="3clFbG">
            <node concept="2ShNRf" id="6xvy0T1C_P5" role="37vLTx">
              <node concept="YeOm9" id="6xvy0T1C_Pj" role="2ShVmc">
                <node concept="1Y3b0j" id="6xvy0T1C_Pk" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" node="6DQGhlriWt5" resolve="SimpleCache" />
                  <ref role="37wK5l" node="6DQGhlriWt7" resolve="SimpleCache" />
                  <node concept="3Tm1VV" id="6xvy0T1C_Pl" role="1B3o_S" />
                  <node concept="3Tqbb2" id="6xvy0T1C_PJ" role="2Ghqu4">
                    <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
                  </node>
                  <node concept="3uibUv" id="6xvy0T1C_PF" role="2Ghqu4">
                    <ref role="3uigEE" to="k7g3:~Map" resolve="Map" />
                    <node concept="17QB3L" id="6xvy0T1C_PG" role="11_B2D" />
                    <node concept="17QB3L" id="6xvy0T1C_PH" role="11_B2D" />
                  </node>
                  <node concept="3clFb_" id="6xvy0T1C_Pm" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="innerGet" />
                    <node concept="3uibUv" id="6xvy0T1C_Pn" role="3clF45">
                      <ref role="3uigEE" to="k7g3:~Map" resolve="Map" />
                      <node concept="17QB3L" id="6xvy0T1C_Po" role="11_B2D" />
                      <node concept="17QB3L" id="6xvy0T1C_Pp" role="11_B2D" />
                    </node>
                    <node concept="3Tmbuc" id="6xvy0T1C_Pq" role="1B3o_S" />
                    <node concept="37vLTG" id="6xvy0T1C_Pr" role="3clF46">
                      <property role="TrG5h" value="key" />
                      <node concept="3Tqbb2" id="6xvy0T1C_PL" role="1tU5fm">
                        <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="6xvy0T1C_Pv" role="3clF47">
                      <node concept="3clFbF" id="6xvy0T1C_PN" role="3cqZAp">
                        <node concept="1rXfSq" id="4hiugqysfqs" role="3clFbG">
                          <ref role="37wK5l" node="6xvy0T1C_JI" resolve="getNestedClassifiers" />
                          <node concept="37vLTw" id="2BHiRxgloXh" role="37wK5m">
                            <ref role="3cqZAo" node="6xvy0T1C_Pr" resolve="key" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="3tYsUK_Sa8v" role="2AJF6D">
                      <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeut1p" role="37vLTJ">
              <ref role="3cqZAo" node="6xvy0T1C_OC" resolve="nestedClassifiersCache" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3XLHuwza2_i" role="3clF46">
        <property role="TrG5h" value="rootNode" />
        <node concept="3Tqbb2" id="3XLHuwza2_j" role="1tU5fm">
          <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3XLHuwza2Ce" role="jymVt">
      <property role="TrG5h" value="getContextClassifiers" />
      <node concept="3clFbS" id="3XLHuwza2Cf" role="3clF47">
        <node concept="3SKdUt" id="3XLHuwza2Cg" role="3cqZAp">
          <node concept="3SKdUq" id="3XLHuwza2Ch" role="3SKWNk">
            <property role="3SKdUp" value="only AnonymousClass has Classifier as reference" />
          </node>
        </node>
        <node concept="3SKdUt" id="3XLHuwza2Ci" role="3cqZAp">
          <node concept="3SKdUq" id="3XLHuwza2Cj" role="3SKWNk">
            <property role="3SKdUp" value="todo: make it clearer" />
          </node>
        </node>
        <node concept="3clFbJ" id="3XLHuwza2Ck" role="3cqZAp">
          <node concept="3clFbS" id="3XLHuwza2Cl" role="3clFbx">
            <node concept="3clFbF" id="3XLHuwza2Cm" role="3cqZAp">
              <node concept="37vLTI" id="3XLHuwza2Cn" role="3clFbG">
                <node concept="2OqwBi" id="3XLHuwza2Co" role="37vLTx">
                  <node concept="37vLTw" id="2BHiRxgm979" role="2Oq$k0">
                    <ref role="3cqZAo" node="3XLHuwza2Dv" resolve="contextNode" />
                  </node>
                  <node concept="1mfA1w" id="3XLHuwza2Cq" role="2OqNvi" />
                </node>
                <node concept="37vLTw" id="2BHiRxglavD" role="37vLTJ">
                  <ref role="3cqZAo" node="3XLHuwza2Dv" resolve="contextNode" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3XLHuwza2Cs" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxgheec" role="2Oq$k0">
              <ref role="3cqZAo" node="3XLHuwza2Dv" resolve="contextNode" />
            </node>
            <node concept="1mIQ4w" id="3XLHuwza2Cu" role="2OqNvi">
              <node concept="chp4Y" id="Zz3BacTok_" role="cj9EA">
                <ref role="cht4Q" to="tpee:2Y9T73IPyme" resolve="IAnonymousClass" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3XLHuwza2Cw" role="3cqZAp">
          <node concept="3clFbS" id="3XLHuwza2Cx" role="3clFbx">
            <node concept="34ab3g" id="3XLHuwza2Cy" role="3cqZAp">
              <property role="35gtTG" value="warn" />
              <node concept="3cpWs3" id="3XLHuwza2Cz" role="34bqiv">
                <node concept="37vLTw" id="2BHiRxglFug" role="3uHU7w">
                  <ref role="3cqZAo" node="3XLHuwza2Dv" resolve="contextNode" />
                </node>
                <node concept="Xl_RD" id="3XLHuwza2C_" role="3uHU7B">
                  <property role="Xl_RC" value="contextNode is classifier in getContextClassifiers: " />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="3XLHuwza2CA" role="3cqZAp">
              <node concept="2YIFZM" id="3XLHuwza2CB" role="3cqZAk">
                <ref role="1Pybhc" to="k7g3:~Collections" resolve="Collections" />
                <ref role="37wK5l" to="k7g3:~Collections.emptyMap():java.util.Map" resolve="emptyMap" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3XLHuwza2CC" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxgm6dl" role="2Oq$k0">
              <ref role="3cqZAo" node="3XLHuwza2Dv" resolve="contextNode" />
            </node>
            <node concept="1mIQ4w" id="3XLHuwza2CE" role="2OqNvi">
              <node concept="chp4Y" id="3XLHuwza2CF" role="cj9EA">
                <ref role="cht4Q" to="tpee:g7pOWCK" resolve="Classifier" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3XLHuwza2CG" role="3cqZAp" />
        <node concept="3SKdUt" id="3XLHuwza2CH" role="3cqZAp">
          <node concept="3SKdUq" id="3XLHuwza2CI" role="3SKWNk">
            <property role="3SKdUp" value="find first classifier in path" />
          </node>
        </node>
        <node concept="3cpWs8" id="3XLHuwza2CJ" role="3cqZAp">
          <node concept="3cpWsn" id="3XLHuwza2CK" role="3cpWs9">
            <property role="TrG5h" value="sourceChildRole" />
            <node concept="17QB3L" id="3XLHuwza2CL" role="1tU5fm" />
            <node concept="10Nm6u" id="3XLHuwza2CM" role="33vP2m" />
          </node>
        </node>
        <node concept="2$JKZl" id="3XLHuwza2CN" role="3cqZAp">
          <node concept="1Wc70l" id="3XLHuwza2CO" role="2$JKZa">
            <node concept="3fqX7Q" id="3XLHuwza2CP" role="3uHU7w">
              <node concept="2OqwBi" id="3XLHuwza2CQ" role="3fr31v">
                <node concept="37vLTw" id="2BHiRxghiLf" role="2Oq$k0">
                  <ref role="3cqZAo" node="3XLHuwza2Dv" resolve="contextNode" />
                </node>
                <node concept="1mIQ4w" id="3XLHuwza2CS" role="2OqNvi">
                  <node concept="chp4Y" id="3XLHuwza2CT" role="cj9EA">
                    <ref role="cht4Q" to="tpee:g7pOWCK" resolve="Classifier" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3XLHuwza2CU" role="3uHU7B">
              <node concept="37vLTw" id="2BHiRxglEsT" role="2Oq$k0">
                <ref role="3cqZAo" node="3XLHuwza2Dv" resolve="contextNode" />
              </node>
              <node concept="3x8VRR" id="3XLHuwza2CW" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbS" id="3XLHuwza2CX" role="2LFqv$">
            <node concept="3clFbF" id="3XLHuwza2CY" role="3cqZAp">
              <node concept="37vLTI" id="3XLHuwza2CZ" role="3clFbG">
                <node concept="2OqwBi" id="3XLHuwza2D0" role="37vLTx">
                  <node concept="2JrnkZ" id="3XLHuwza2D1" role="2Oq$k0">
                    <node concept="37vLTw" id="2BHiRxghfkV" role="2JrQYb">
                      <ref role="3cqZAo" node="3XLHuwza2Dv" resolve="contextNode" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3XLHuwza2D3" role="2OqNvi">
                    <ref role="37wK5l" to="ec5l:~SNode.getRoleInParent():java.lang.String" resolve="getRoleInParent" />
                  </node>
                </node>
                <node concept="37vLTw" id="3GM_nagTsIZ" role="37vLTJ">
                  <ref role="3cqZAo" node="3XLHuwza2CK" resolve="sourceChildRole" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3XLHuwza2D5" role="3cqZAp">
              <node concept="37vLTI" id="3XLHuwza2D6" role="3clFbG">
                <node concept="2OqwBi" id="3XLHuwza2D7" role="37vLTx">
                  <node concept="37vLTw" id="2BHiRxglB8N" role="2Oq$k0">
                    <ref role="3cqZAo" node="3XLHuwza2Dv" resolve="contextNode" />
                  </node>
                  <node concept="1mfA1w" id="3XLHuwza2D9" role="2OqNvi" />
                </node>
                <node concept="37vLTw" id="2BHiRxglw8M" role="37vLTJ">
                  <ref role="3cqZAo" node="3XLHuwza2Dv" resolve="contextNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3XLHuwza2Db" role="3cqZAp" />
        <node concept="3clFbJ" id="3XLHuwza2Dc" role="3cqZAp">
          <node concept="3clFbS" id="3XLHuwza2Dd" role="3clFbx">
            <node concept="3SKdUt" id="3XLHuwza2De" role="3cqZAp">
              <node concept="3SKdUq" id="3XLHuwza2Df" role="3SKWNk">
                <property role="3SKdUp" value="todo: impossible?" />
              </node>
            </node>
            <node concept="3cpWs6" id="3XLHuwza2Dg" role="3cqZAp">
              <node concept="2YIFZM" id="3XLHuwza2Dh" role="3cqZAk">
                <ref role="37wK5l" to="k7g3:~Collections.emptyMap():java.util.Map" resolve="emptyMap" />
                <ref role="1Pybhc" to="k7g3:~Collections" resolve="Collections" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3XLHuwza2Di" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxgm96y" role="2Oq$k0">
              <ref role="3cqZAo" node="3XLHuwza2Dv" resolve="contextNode" />
            </node>
            <node concept="3w_OXm" id="3XLHuwza2Dk" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="3XLHuwza2Dl" role="3cqZAp" />
        <node concept="3clFbF" id="3XLHuwza2Dm" role="3cqZAp">
          <node concept="2OqwBi" id="3XLHuwza2Dn" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuStv" role="2Oq$k0">
              <ref role="3cqZAo" node="3XLHuwza2D_" resolve="contextClassifiersCache" />
            </node>
            <node concept="liA8E" id="3XLHuwza2Dp" role="2OqNvi">
              <ref role="37wK5l" node="6DQGhlriWtt" resolve="get" />
              <node concept="1Ls8ON" id="3XLHuwza2Dq" role="37wK5m">
                <node concept="1PxgMI" id="3XLHuwza2Dr" role="1Lso8e">
                  <ref role="1PxNhF" to="tpee:g7pOWCK" resolve="Classifier" />
                  <node concept="37vLTw" id="2BHiRxglrgg" role="1PxMeX">
                    <ref role="3cqZAo" node="3XLHuwza2Dv" resolve="contextNode" />
                  </node>
                </node>
                <node concept="37vLTw" id="3GM_nagTAYK" role="1Lso8e">
                  <ref role="3cqZAo" node="3XLHuwza2CK" resolve="sourceChildRole" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3XLHuwza2Fe" role="1B3o_S" />
      <node concept="37vLTG" id="3XLHuwza2Dv" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="3XLHuwza2Dw" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="3XLHuwza2Dx" role="3clF45">
        <ref role="3uigEE" to="k7g3:~Map" resolve="Map" />
        <node concept="17QB3L" id="3XLHuwza2Dy" role="11_B2D" />
        <node concept="17QB3L" id="3XLHuwza2Dz" role="11_B2D" />
      </node>
    </node>
    <node concept="3clFb_" id="6xvy0T1C_PQ" role="jymVt">
      <property role="TrG5h" value="getContextClassifiers" />
      <node concept="3uibUv" id="6xvy0T1C_Sg" role="3clF45">
        <ref role="3uigEE" to="k7g3:~Map" resolve="Map" />
        <node concept="17QB3L" id="6xvy0T1C_Sj" role="11_B2D" />
        <node concept="17QB3L" id="6xvy0T1C_Sl" role="11_B2D" />
      </node>
      <node concept="3Tm6S6" id="6xvy0T1C_Sm" role="1B3o_S" />
      <node concept="3clFbS" id="6xvy0T1C_PT" role="3clF47">
        <node concept="3cpWs8" id="6xvy0T1C_PZ" role="3cqZAp">
          <node concept="3cpWsn" id="6xvy0T1C_Q0" role="3cpWs9">
            <property role="TrG5h" value="bindings" />
            <node concept="2ShNRf" id="6xvy0T1C_Q1" role="33vP2m">
              <node concept="1pGfFk" id="6xvy0T1C_Q2" role="2ShVmc">
                <ref role="37wK5l" to="k7g3:~HashMap.&lt;init&gt;()" resolve="HashMap" />
                <node concept="17QB3L" id="6xvy0T1C_Q3" role="1pMfVU" />
                <node concept="17QB3L" id="6xvy0T1C_Q4" role="1pMfVU" />
              </node>
            </node>
            <node concept="3uibUv" id="6xvy0T1C_Q5" role="1tU5fm">
              <ref role="3uigEE" to="k7g3:~Map" resolve="Map" />
              <node concept="17QB3L" id="6xvy0T1C_Q6" role="11_B2D" />
              <node concept="17QB3L" id="6xvy0T1C_Q7" role="11_B2D" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6xvy0T1C_Q8" role="3cqZAp" />
        <node concept="3cpWs8" id="6xvy0T1C_Q9" role="3cqZAp">
          <node concept="3cpWsn" id="6xvy0T1C_Qa" role="3cpWs9">
            <property role="TrG5h" value="current" />
            <node concept="3Tqbb2" id="6xvy0T1C_Qb" role="1tU5fm" />
            <node concept="37vLTw" id="2BHiRxglCwQ" role="33vP2m">
              <ref role="3cqZAo" node="6xvy0T1C_PU" resolve="contextNode" />
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="6xvy0T1C_Qd" role="3cqZAp">
          <node concept="2OqwBi" id="6xvy0T1C_Qe" role="2$JKZa">
            <node concept="37vLTw" id="3GM_nagTrL4" role="2Oq$k0">
              <ref role="3cqZAo" node="6xvy0T1C_Qa" resolve="current" />
            </node>
            <node concept="3x8VRR" id="6xvy0T1C_Qg" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="6xvy0T1C_Qh" role="2LFqv$">
            <node concept="3clFbJ" id="6xvy0T1C_Qi" role="3cqZAp">
              <node concept="2OqwBi" id="6xvy0T1C_Qj" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagTzt4" role="2Oq$k0">
                  <ref role="3cqZAo" node="6xvy0T1C_Qa" resolve="current" />
                </node>
                <node concept="1mIQ4w" id="6xvy0T1C_Ql" role="2OqNvi">
                  <node concept="chp4Y" id="6xvy0T1C_Qm" role="cj9EA">
                    <ref role="cht4Q" to="tpee:g7pOWCK" resolve="Classifier" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="6xvy0T1C_Qn" role="3clFbx">
                <node concept="3cpWs8" id="6xvy0T1C_Qo" role="3cqZAp">
                  <node concept="3cpWsn" id="6xvy0T1C_Qp" role="3cpWs9">
                    <property role="TrG5h" value="processNestedClassifiers" />
                    <node concept="10P_77" id="6xvy0T1C_Qq" role="1tU5fm" />
                    <node concept="3clFbT" id="6xvy0T1C_Qr" role="33vP2m">
                      <property role="3clFbU" value="false" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="6xvy0T1C_Qs" role="3cqZAp">
                  <node concept="22lmx$" id="6xvy0T1C_Qt" role="3clFbw">
                    <node concept="2OqwBi" id="6xvy0T1C_Qu" role="3uHU7w">
                      <node concept="37vLTw" id="3GM_nagT_T7" role="2Oq$k0">
                        <ref role="3cqZAo" node="6xvy0T1C_Qa" resolve="current" />
                      </node>
                      <node concept="1mIQ4w" id="6xvy0T1C_Qw" role="2OqNvi">
                        <node concept="chp4Y" id="6xvy0T1C_Qx" role="cj9EA">
                          <ref role="cht4Q" to="tpee:fKQs72_" resolve="EnumClass" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6xvy0T1C_Qy" role="3uHU7B">
                      <node concept="37vLTw" id="3GM_nagTAYx" role="2Oq$k0">
                        <ref role="3cqZAo" node="6xvy0T1C_Qa" resolve="current" />
                      </node>
                      <node concept="1mIQ4w" id="6xvy0T1C_Q$" role="2OqNvi">
                        <node concept="chp4Y" id="6xvy0T1C_Q_" role="cj9EA">
                          <ref role="cht4Q" to="tpee:h1Y3b43" resolve="AnonymousClass" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="6xvy0T1C_QA" role="3clFbx">
                    <node concept="3clFbF" id="6xvy0T1C_QB" role="3cqZAp">
                      <node concept="37vLTI" id="6xvy0T1C_QC" role="3clFbG">
                        <node concept="3clFbT" id="6xvy0T1C_QD" role="37vLTx">
                          <property role="3clFbU" value="true" />
                        </node>
                        <node concept="37vLTw" id="3GM_nagTuY5" role="37vLTJ">
                          <ref role="3cqZAo" node="6xvy0T1C_Qp" resolve="processNestedClassifiers" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3eNFk2" id="6xvy0T1C_QF" role="3eNLev">
                    <node concept="2OqwBi" id="6xvy0T1C_QG" role="3eO9$A">
                      <node concept="37vLTw" id="3GM_nagTte0" role="2Oq$k0">
                        <ref role="3cqZAo" node="6xvy0T1C_Qa" resolve="current" />
                      </node>
                      <node concept="1mIQ4w" id="6xvy0T1C_QI" role="2OqNvi">
                        <node concept="chp4Y" id="6xvy0T1C_QJ" role="cj9EA">
                          <ref role="cht4Q" to="tpee:g7HP654" resolve="Interface" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="6xvy0T1C_QK" role="3eOfB_">
                      <node concept="3clFbF" id="6xvy0T1C_QL" role="3cqZAp">
                        <node concept="37vLTI" id="6xvy0T1C_QM" role="3clFbG">
                          <node concept="37vLTw" id="3GM_nagTvha" role="37vLTJ">
                            <ref role="3cqZAo" node="6xvy0T1C_Qp" resolve="processNestedClassifiers" />
                          </node>
                          <node concept="3fqX7Q" id="6xvy0T1C_QO" role="37vLTx">
                            <node concept="2OqwBi" id="6xvy0T1C_QP" role="3fr31v">
                              <node concept="prKvN" id="6xvy0T1C_QQ" role="2Oq$k0">
                                <ref role="prhl7" to="tpee:g7HQHFn" />
                                <ref role="prhl4" to="tpee:g7HP654" resolve="Interface" />
                              </node>
                              <node concept="liA8E" id="6xvy0T1C_QR" role="2OqNvi">
                                <ref role="37wK5l" to="e2lb:~String.equals(java.lang.Object):boolean" resolve="equals" />
                                <node concept="37vLTw" id="2BHiRxghf32" role="37wK5m">
                                  <ref role="3cqZAo" node="6xvy0T1C_PW" resolve="sourceChildRole" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3eNFk2" id="6xvy0T1C_QT" role="3eNLev">
                    <node concept="2OqwBi" id="6xvy0T1C_QU" role="3eO9$A">
                      <node concept="37vLTw" id="3GM_nagTAiP" role="2Oq$k0">
                        <ref role="3cqZAo" node="6xvy0T1C_Qa" resolve="current" />
                      </node>
                      <node concept="1mIQ4w" id="6xvy0T1C_QW" role="2OqNvi">
                        <node concept="chp4Y" id="6xvy0T1C_QX" role="cj9EA">
                          <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="6xvy0T1C_QY" role="3eOfB_">
                      <node concept="3clFbF" id="6xvy0T1C_QZ" role="3cqZAp">
                        <node concept="37vLTI" id="6xvy0T1C_R0" role="3clFbG">
                          <node concept="3fqX7Q" id="6xvy0T1C_R1" role="37vLTx">
                            <node concept="1eOMI4" id="3$myXoLqnaU" role="3fr31v">
                              <node concept="22lmx$" id="6xvy0T1C_R2" role="1eOMHV">
                                <node concept="2OqwBi" id="6xvy0T1C_R3" role="3uHU7w">
                                  <node concept="prKvN" id="6xvy0T1C_R4" role="2Oq$k0">
                                    <ref role="prhl7" to="tpee:fWEKbgp" />
                                    <ref role="prhl4" to="tpee:fz12cDA" resolve="ClassConcept" />
                                  </node>
                                  <node concept="liA8E" id="6xvy0T1C_R5" role="2OqNvi">
                                    <ref role="37wK5l" to="e2lb:~String.equals(java.lang.Object):boolean" resolve="equals" />
                                    <node concept="37vLTw" id="2BHiRxgm6QP" role="37wK5m">
                                      <ref role="3cqZAo" node="6xvy0T1C_PW" resolve="sourceChildRole" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="6xvy0T1C_R7" role="3uHU7B">
                                  <node concept="prKvN" id="6xvy0T1C_R8" role="2Oq$k0">
                                    <ref role="prhl7" to="tpee:gXzkM_H" />
                                    <ref role="prhl4" to="tpee:fz12cDA" resolve="ClassConcept" />
                                  </node>
                                  <node concept="liA8E" id="6xvy0T1C_R9" role="2OqNvi">
                                    <ref role="37wK5l" to="e2lb:~String.equals(java.lang.Object):boolean" resolve="equals" />
                                    <node concept="37vLTw" id="2BHiRxgmz09" role="37wK5m">
                                      <ref role="3cqZAo" node="6xvy0T1C_PW" resolve="sourceChildRole" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="3GM_nagT_zc" role="37vLTJ">
                            <ref role="3cqZAo" node="6xvy0T1C_Qp" resolve="processNestedClassifiers" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="9aQIb" id="6xvy0T1C_Rc" role="9aQIa">
                    <node concept="3clFbS" id="6xvy0T1C_Rd" role="9aQI4">
                      <node concept="34ab3g" id="6xvy0T1C_Re" role="3cqZAp">
                        <property role="35gtTG" value="warn" />
                        <node concept="3cpWs3" id="6xvy0T1C_Rf" role="34bqiv">
                          <node concept="Xl_RD" id="6xvy0T1C_Rg" role="3uHU7B">
                            <property role="Xl_RC" value="Illegal classifier node in bl textgen: " />
                          </node>
                          <node concept="37vLTw" id="3GM_nagTASU" role="3uHU7w">
                            <ref role="3cqZAo" node="6xvy0T1C_Qa" resolve="current" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="6xvy0T1C_Ri" role="3cqZAp" />
                <node concept="3SKdUt" id="6xvy0T1C_Rj" role="3cqZAp">
                  <node concept="3SKdUq" id="6xvy0T1C_Rk" role="3SKWNk">
                    <property role="3SKdUp" value="todo: is it true? had a bug with it. Look like nested classifier has more priority then class with same name" />
                  </node>
                </node>
                <node concept="3clFbF" id="6xvy0T1C_Rl" role="3cqZAp">
                  <node concept="1rXfSq" id="4hiugqysr0G" role="3clFbG">
                    <ref role="37wK5l" node="3XLHuwza2BD" resolve="addClassifierToBindingMap" />
                    <node concept="37vLTw" id="3GM_nagTBmq" role="37wK5m">
                      <ref role="3cqZAo" node="6xvy0T1C_Q0" resolve="bindings" />
                    </node>
                    <node concept="1PxgMI" id="6xvy0T1C_Ro" role="37wK5m">
                      <ref role="1PxNhF" to="tpee:g7pOWCK" resolve="Classifier" />
                      <node concept="37vLTw" id="3GM_nagTyut" role="1PxMeX">
                        <ref role="3cqZAo" node="6xvy0T1C_Qa" resolve="current" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="6xvy0T1C_Rq" role="3cqZAp">
                  <node concept="3clFbS" id="6xvy0T1C_Rr" role="3clFbx">
                    <node concept="1DcWWT" id="6xvy0T1C_Rs" role="3cqZAp">
                      <node concept="3clFbS" id="6xvy0T1C_Rt" role="2LFqv$">
                        <node concept="3clFbJ" id="6xvy0T1C_Ru" role="3cqZAp">
                          <node concept="3clFbS" id="6xvy0T1C_Rv" role="3clFbx">
                            <node concept="3clFbF" id="6xvy0T1C_Rw" role="3cqZAp">
                              <node concept="2OqwBi" id="6xvy0T1C_Rx" role="3clFbG">
                                <node concept="37vLTw" id="3GM_nagTysp" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6xvy0T1C_Q0" resolve="bindings" />
                                </node>
                                <node concept="liA8E" id="6xvy0T1C_Rz" role="2OqNvi">
                                  <ref role="37wK5l" to="k7g3:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
                                  <node concept="2OqwBi" id="6xvy0T1C_R$" role="37wK5m">
                                    <node concept="37vLTw" id="3GM_nagTsiv" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6xvy0T1C_RL" resolve="simpleToFqName" />
                                    </node>
                                    <node concept="liA8E" id="6xvy0T1C_RA" role="2OqNvi">
                                      <ref role="37wK5l" to="k7g3:~Map$Entry.getKey():java.lang.Object" resolve="getKey" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="6xvy0T1C_RB" role="37wK5m">
                                    <node concept="37vLTw" id="3GM_nagTATJ" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6xvy0T1C_RL" resolve="simpleToFqName" />
                                    </node>
                                    <node concept="liA8E" id="6xvy0T1C_RD" role="2OqNvi">
                                      <ref role="37wK5l" to="k7g3:~Map$Entry.getValue():java.lang.Object" resolve="getValue" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="6xvy0T1C_RE" role="3clFbw">
                            <node concept="2OqwBi" id="6xvy0T1C_RF" role="3fr31v">
                              <node concept="37vLTw" id="3GM_nagTwvT" role="2Oq$k0">
                                <ref role="3cqZAo" node="6xvy0T1C_Q0" resolve="bindings" />
                              </node>
                              <node concept="liA8E" id="6xvy0T1C_RH" role="2OqNvi">
                                <ref role="37wK5l" to="k7g3:~Map.containsKey(java.lang.Object):boolean" resolve="containsKey" />
                                <node concept="2OqwBi" id="6xvy0T1C_RI" role="37wK5m">
                                  <node concept="37vLTw" id="3GM_nagTyAc" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6xvy0T1C_RL" resolve="simpleToFqName" />
                                  </node>
                                  <node concept="liA8E" id="6xvy0T1C_RK" role="2OqNvi">
                                    <ref role="37wK5l" to="k7g3:~Map$Entry.getKey():java.lang.Object" resolve="getKey" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWsn" id="6xvy0T1C_RL" role="1Duv9x">
                        <property role="TrG5h" value="simpleToFqName" />
                        <node concept="3uibUv" id="6xvy0T1C_RM" role="1tU5fm">
                          <ref role="3uigEE" to="k7g3:~Map$Entry" resolve="Map.Entry" />
                          <node concept="17QB3L" id="6xvy0T1C_RN" role="11_B2D" />
                          <node concept="17QB3L" id="6xvy0T1C_RO" role="11_B2D" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="6xvy0T1C_RP" role="1DdaDG">
                        <node concept="liA8E" id="6xvy0T1C_RT" role="2OqNvi">
                          <ref role="37wK5l" to="k7g3:~Map.entrySet():java.util.Set" resolve="entrySet" />
                        </node>
                        <node concept="2OqwBi" id="6xvy0T1C_SH" role="2Oq$k0">
                          <node concept="37vLTw" id="2BHiRxeul_7" role="2Oq$k0">
                            <ref role="3cqZAo" node="6xvy0T1C_OC" resolve="nestedClassifiersCache" />
                          </node>
                          <node concept="liA8E" id="6xvy0T1C_SN" role="2OqNvi">
                            <ref role="37wK5l" node="6DQGhlriWtt" resolve="get" />
                            <node concept="1PxgMI" id="6xvy0T1C_T9" role="37wK5m">
                              <ref role="1PxNhF" to="tpee:g7pOWCK" resolve="Classifier" />
                              <node concept="37vLTw" id="3GM_nagTupM" role="1PxMeX">
                                <ref role="3cqZAo" node="6xvy0T1C_Qa" resolve="current" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="3GM_nagTzYH" role="3clFbw">
                    <ref role="3cqZAo" node="6xvy0T1C_Qp" resolve="processNestedClassifiers" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6xvy0T1C_RV" role="3cqZAp" />
            <node concept="3SKdUt" id="6xvy0T1C_RW" role="3cqZAp">
              <node concept="3SKdUq" id="6xvy0T1C_RX" role="3SKWNk">
                <property role="3SKdUp" value="todo: specialized links?" />
              </node>
            </node>
            <node concept="3SKdUt" id="6xvy0T1C_RY" role="3cqZAp">
              <node concept="3SKdUq" id="6xvy0T1C_RZ" role="3SKWNk">
                <property role="3SKdUp" value="should not be a problem: superclass/extendedInterface/implementedInterface not specialized" />
              </node>
            </node>
            <node concept="3clFbF" id="6xvy0T1C_S0" role="3cqZAp">
              <node concept="37vLTI" id="6xvy0T1C_S1" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxglK$i" role="37vLTJ">
                  <ref role="3cqZAo" node="6xvy0T1C_PW" resolve="sourceChildRole" />
                </node>
                <node concept="2OqwBi" id="6xvy0T1C_S3" role="37vLTx">
                  <node concept="2JrnkZ" id="6xvy0T1C_S4" role="2Oq$k0">
                    <node concept="37vLTw" id="3GM_nagTvBQ" role="2JrQYb">
                      <ref role="3cqZAo" node="6xvy0T1C_Qa" resolve="current" />
                    </node>
                  </node>
                  <node concept="liA8E" id="6xvy0T1C_S6" role="2OqNvi">
                    <ref role="37wK5l" to="ec5l:~SNode.getRoleInParent():java.lang.String" resolve="getRoleInParent" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6xvy0T1C_S7" role="3cqZAp">
              <node concept="37vLTI" id="6xvy0T1C_S8" role="3clFbG">
                <node concept="2OqwBi" id="6xvy0T1C_S9" role="37vLTx">
                  <node concept="37vLTw" id="3GM_nagTu2C" role="2Oq$k0">
                    <ref role="3cqZAo" node="6xvy0T1C_Qa" resolve="current" />
                  </node>
                  <node concept="1mfA1w" id="6xvy0T1C_Sb" role="2OqNvi" />
                </node>
                <node concept="37vLTw" id="3GM_nagTs4P" role="37vLTJ">
                  <ref role="3cqZAo" node="6xvy0T1C_Qa" resolve="current" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6xvy0T1C_Sd" role="3cqZAp" />
        <node concept="3clFbF" id="6xvy0T1C_Se" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTtSK" role="3clFbG">
            <ref role="3cqZAo" node="6xvy0T1C_Q0" resolve="bindings" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6xvy0T1C_PU" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="6xvy0T1C_PV" role="1tU5fm">
          <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
        </node>
      </node>
      <node concept="37vLTG" id="6xvy0T1C_PW" role="3clF46">
        <property role="TrG5h" value="sourceChildRole" />
        <node concept="17QB3L" id="6xvy0T1C_PY" role="1tU5fm" />
      </node>
    </node>
    <node concept="2YIFZL" id="6xvy0T1C_JI" role="jymVt">
      <property role="TrG5h" value="getNestedClassifiers" />
      <node concept="3uibUv" id="6xvy0T1C_JV" role="3clF45">
        <ref role="3uigEE" to="k7g3:~Map" resolve="Map" />
        <node concept="17QB3L" id="6xvy0T1C_JX" role="11_B2D" />
        <node concept="17QB3L" id="6xvy0T1C_JZ" role="11_B2D" />
      </node>
      <node concept="3clFbS" id="6xvy0T1C_JL" role="3clF47">
        <node concept="3SKdUt" id="6xvy0T1C_K0" role="3cqZAp">
          <node concept="3SKdUq" id="6xvy0T1C_K1" role="3SKWNk">
            <property role="3SKdUp" value="returns map from simpleName to fqName" />
          </node>
        </node>
        <node concept="3cpWs8" id="6xvy0T1C_Kr" role="3cqZAp">
          <node concept="3cpWsn" id="6xvy0T1C_Ks" role="3cpWs9">
            <property role="TrG5h" value="nestedClassifiers" />
            <node concept="2ShNRf" id="6xvy0T1C_Kt" role="33vP2m">
              <node concept="1pGfFk" id="6xvy0T1C_Ku" role="2ShVmc">
                <ref role="37wK5l" to="k7g3:~HashMap.&lt;init&gt;()" resolve="HashMap" />
                <node concept="17QB3L" id="6xvy0T1C_Kv" role="1pMfVU" />
                <node concept="17QB3L" id="6xvy0T1C_Kw" role="1pMfVU" />
              </node>
            </node>
            <node concept="3uibUv" id="6xvy0T1C_Kx" role="1tU5fm">
              <ref role="3uigEE" to="k7g3:~Map" resolve="Map" />
              <node concept="17QB3L" id="6xvy0T1C_Ky" role="11_B2D" />
              <node concept="17QB3L" id="6xvy0T1C_Kz" role="11_B2D" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6xvy0T1C_Kp" role="3cqZAp" />
        <node concept="3SKdUt" id="3XLHuwza2AU" role="3cqZAp">
          <node concept="3SKdUq" id="3XLHuwza2AV" role="3SKWNk">
            <property role="3SKdUp" value="todo: classifiers with same names in different supertypes?" />
          </node>
        </node>
        <node concept="1DcWWT" id="6xvy0T1C_K6" role="3cqZAp">
          <node concept="3clFbS" id="6xvy0T1C_K7" role="2LFqv$">
            <node concept="1DcWWT" id="6xvy0T1C_K8" role="3cqZAp">
              <node concept="3clFbS" id="6xvy0T1C_K9" role="2LFqv$">
                <node concept="3clFbF" id="6xvy0T1C_Ka" role="3cqZAp">
                  <node concept="1rXfSq" id="4hiugqysvVl" role="3clFbG">
                    <ref role="37wK5l" node="3XLHuwza2BD" resolve="addClassifierToBindingMap" />
                    <node concept="37vLTw" id="3GM_nagT$JC" role="37wK5m">
                      <ref role="3cqZAo" node="6xvy0T1C_Ks" resolve="nestedClassifiers" />
                    </node>
                    <node concept="37vLTw" id="3GM_nagTu25" role="37wK5m">
                      <ref role="3cqZAo" node="6xvy0T1C_Ke" resolve="nestedClassifier" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="6xvy0T1C_Ke" role="1Duv9x">
                <property role="TrG5h" value="nestedClassifier" />
                <node concept="3Tqbb2" id="6xvy0T1C_Kf" role="1tU5fm">
                  <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
                </node>
              </node>
              <node concept="2OqwBi" id="6xvy0T1C_Kg" role="1DdaDG">
                <node concept="2qgKlT" id="2oLu0Jc2bia" role="2OqNvi">
                  <ref role="37wK5l" to="tpek:4_LVZ3pBjGQ" resolve="nestedClassifiers" />
                </node>
                <node concept="37vLTw" id="3GM_nagTyG$" role="2Oq$k0">
                  <ref role="3cqZAo" node="6xvy0T1C_Kj" resolve="superClassifier" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="6xvy0T1C_Kj" role="1Duv9x">
            <property role="TrG5h" value="superClassifier" />
            <node concept="3Tqbb2" id="6xvy0T1C_Kk" role="1tU5fm">
              <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
            </node>
          </node>
          <node concept="2OqwBi" id="6xvy0T1C_Kl" role="1DdaDG">
            <node concept="1PxgMI" id="6xvy0T1C_Km" role="2Oq$k0">
              <ref role="1PxNhF" to="tpee:g7pOWCK" resolve="Classifier" />
              <node concept="37vLTw" id="2BHiRxghirs" role="1PxMeX">
                <ref role="3cqZAo" node="6xvy0T1C_K3" resolve="classifier" />
              </node>
            </node>
            <node concept="2qgKlT" id="6xvy0T1C_Ko" role="2OqNvi">
              <ref role="37wK5l" to="tpek:2xreLMO8jma" resolve="getAllExtendedClassifiers" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6xvy0T1C_K_" role="3cqZAp" />
        <node concept="3clFbF" id="6xvy0T1C_KB" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTtrQ" role="3clFbG">
            <ref role="3cqZAo" node="6xvy0T1C_Ks" resolve="nestedClassifiers" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6xvy0T1C_K3" role="3clF46">
        <property role="TrG5h" value="classifier" />
        <node concept="3Tqbb2" id="6xvy0T1C_K4" role="1tU5fm">
          <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
        </node>
      </node>
      <node concept="3Tm6S6" id="6xvy0T1C_K5" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="3XLHuwza2BD" role="jymVt">
      <property role="TrG5h" value="addClassifierToBindingMap" />
      <node concept="37vLTG" id="3XLHuwza2BE" role="3clF46">
        <property role="TrG5h" value="bindings" />
        <node concept="3uibUv" id="3XLHuwza2BF" role="1tU5fm">
          <ref role="3uigEE" to="k7g3:~Map" resolve="Map" />
          <node concept="17QB3L" id="3XLHuwza2BG" role="11_B2D" />
          <node concept="17QB3L" id="3XLHuwza2BH" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="3XLHuwza2BI" role="3clF46">
        <property role="TrG5h" value="classifier" />
        <node concept="3Tqbb2" id="3XLHuwza2BJ" role="1tU5fm">
          <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
        </node>
      </node>
      <node concept="3cqZAl" id="3XLHuwza2BK" role="3clF45" />
      <node concept="3Tm6S6" id="3XLHuwza2BL" role="1B3o_S" />
      <node concept="3clFbS" id="3XLHuwza2BM" role="3clF47">
        <node concept="3cpWs8" id="3XLHuwza2BN" role="3cqZAp">
          <node concept="3cpWsn" id="3XLHuwza2BO" role="3cpWs9">
            <property role="TrG5h" value="simpleName" />
            <node concept="17QB3L" id="3XLHuwza2BP" role="1tU5fm" />
            <node concept="2OqwBi" id="3XLHuwza2BQ" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxgmaxI" role="2Oq$k0">
                <ref role="3cqZAo" node="3XLHuwza2BI" resolve="classifier" />
              </node>
              <node concept="3TrcHB" id="3XLHuwza2BS" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3XLHuwza2BT" role="3cqZAp">
          <node concept="3cpWsn" id="3XLHuwza2BU" role="3cpWs9">
            <property role="TrG5h" value="fqName" />
            <node concept="17QB3L" id="3XLHuwza2BV" role="1tU5fm" />
            <node concept="2OqwBi" id="3XLHuwza2BW" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxgheSw" role="2Oq$k0">
                <ref role="3cqZAo" node="3XLHuwza2BI" resolve="classifier" />
              </node>
              <node concept="2qgKlT" id="3XLHuwza2BY" role="2OqNvi">
                <ref role="37wK5l" to="tpcu:hEwIO9y" resolve="getFqName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3XLHuwza2BZ" role="3cqZAp" />
        <node concept="3clFbJ" id="3XLHuwza2C0" role="3cqZAp">
          <node concept="3clFbS" id="3XLHuwza2C1" role="3clFbx">
            <node concept="3clFbF" id="3XLHuwza2C2" role="3cqZAp">
              <node concept="2OqwBi" id="3XLHuwza2C3" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxglGTI" role="2Oq$k0">
                  <ref role="3cqZAo" node="3XLHuwza2BE" resolve="bindings" />
                </node>
                <node concept="liA8E" id="3XLHuwza2C5" role="2OqNvi">
                  <ref role="37wK5l" to="k7g3:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
                  <node concept="37vLTw" id="3GM_nagTuAr" role="37wK5m">
                    <ref role="3cqZAo" node="3XLHuwza2BO" resolve="simpleName" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagT$6M" role="37wK5m">
                    <ref role="3cqZAo" node="3XLHuwza2BU" resolve="fqName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="3XLHuwza2C8" role="3clFbw">
            <node concept="2OqwBi" id="3XLHuwza2C9" role="3fr31v">
              <node concept="37vLTw" id="2BHiRxghfqL" role="2Oq$k0">
                <ref role="3cqZAo" node="3XLHuwza2BE" resolve="bindings" />
              </node>
              <node concept="liA8E" id="3XLHuwza2Cb" role="2OqNvi">
                <ref role="37wK5l" to="k7g3:~Map.containsKey(java.lang.Object):boolean" resolve="containsKey" />
                <node concept="37vLTw" id="3GM_nagTv8f" role="37wK5m">
                  <ref role="3cqZAo" node="3XLHuwza2BO" resolve="simpleName" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="13pakHAMkto">
    <property role="3GE5qa" value="variables" />
    <ref role="WuzLi" to="tpee:fz7vLUo" resolve="VariableReference" />
    <node concept="11bSqf" id="13pakHAMktp" role="11c4hB">
      <node concept="3clFbS" id="13pakHAMktq" role="2VODD2">
        <node concept="lc7rE" id="13pakHAMktr" role="3cqZAp">
          <node concept="l9hG8" id="13pakHAMl21" role="lcghm">
            <node concept="2OqwBi" id="13pakHAMl23" role="lb14g">
              <node concept="2OqwBi" id="13pakHAMl24" role="2Oq$k0">
                <node concept="117lpO" id="13pakHAMl25" role="2Oq$k0" />
                <node concept="3TrEf2" id="13pakHAMl26" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:fzcqZ_w" />
                </node>
              </node>
              <node concept="3TrcHB" id="13pakHAMl27" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

