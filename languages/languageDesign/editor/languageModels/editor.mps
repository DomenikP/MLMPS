<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:00000000-0000-4000-0000-011c89590299(jetbrains.mps.lang.editor.editor)">
  <persistence version="9" />
  <languages>
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="0" />
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpc2" ref="r:00000000-0000-4000-0000-011c8959029e(jetbrains.mps.lang.editor.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="tpcw" ref="r:00000000-0000-4000-0000-011c895902bc(jetbrains.mps.lang.sharedConcepts.structure)" />
    <import index="tpen" ref="r:00000000-0000-4000-0000-011c895902c3(jetbrains.mps.baseLanguage.editor)" />
    <import index="tpd3" ref="r:00000000-0000-4000-0000-011c895902bb(jetbrains.mps.lang.sharedConcepts.editor)" />
    <import index="tpcb" ref="r:00000000-0000-4000-0000-011c89590297(jetbrains.mps.lang.editor.behavior)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang()" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt()" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing()" />
    <import index="m4oy" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.plaf.metal()" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io()" />
    <import index="hyam" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.event()" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel()" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project()" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor()" />
    <import index="3ju5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs()" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util()" />
    <import index="etl3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.ui.filechoosers.treefilechooser()" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util()" />
    <import index="la0d" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.keymaps()" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells()" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="wr1s" ref="r:0f9ddbb6-f761-4bd7-8dde-1e5300bd28c2(jetbrains.mps.lang.project.editor)" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1402906326896143883" name="jetbrains.mps.lang.editor.structure.CellKeyMap_FunctionParm_selectedNode" flags="nn" index="0GJ7k" />
      <concept id="1402906326895675325" name="jetbrains.mps.lang.editor.structure.CellActionMap_FunctionParm_selectedNode" flags="nn" index="0IXxy" />
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
      </concept>
      <concept id="1176897764478" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeFactory" flags="in" index="4$FPG" />
      <concept id="1164052439493" name="jetbrains.mps.lang.editor.structure.CellMenuPart_AbstractGroup_MatchingText" flags="in" index="6VE3a" />
      <concept id="1164052588708" name="jetbrains.mps.lang.editor.structure.CellMenuPart_AbstractGroup_DescriptionText" flags="in" index="6WeAF" />
      <concept id="1226339938453" name="jetbrains.mps.lang.editor.structure.AbstractPaddingStyleClassItem" flags="ln" index="27zB68">
        <property id="1226504838901" name="measure" index="2hoDZC" />
      </concept>
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450555" name="gridLayout" index="2czwfM" />
        <property id="1140524450554" name="vertical" index="2czwfN" />
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <property id="1140524450556" name="usesBraces" index="2czwfP" />
        <child id="1176897874615" name="nodeFactory" index="4_6I_" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
        <child id="1233141163694" name="separatorStyle" index="sWeuL" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="1233148810477" name="jetbrains.mps.lang.editor.structure.InlineStyleDeclaration" flags="ng" index="tppnM" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1239814640496" name="jetbrains.mps.lang.editor.structure.CellLayout_VerticalGrid" flags="nn" index="2EHx9g" />
      <concept id="1160493135005" name="jetbrains.mps.lang.editor.structure.CellMenuPart_PropertyValues_GetValues" flags="in" index="MLZmj" />
      <concept id="4151393920374910634" name="jetbrains.mps.lang.editor.structure.StyleKey" flags="ng" index="2NdhxG" />
      <concept id="4151393920374910722" name="jetbrains.mps.lang.editor.structure.StyleKeyPack" flags="ng" index="2NdhB4">
        <child id="4151393920375014512" name="styleKey" index="2NdZaQ" />
      </concept>
      <concept id="1164824717996" name="jetbrains.mps.lang.editor.structure.CellMenuDescriptor" flags="ng" index="OXEIz">
        <child id="1164824815888" name="cellMenuPart" index="OY2wv" />
      </concept>
      <concept id="1164833692343" name="jetbrains.mps.lang.editor.structure.CellMenuPart_PropertyValues" flags="ng" index="PvTIS">
        <child id="1164833692344" name="valuesFunction" index="PvTIR" />
      </concept>
      <concept id="1136916919141" name="jetbrains.mps.lang.editor.structure.CellKeyMapItem" flags="lg" index="2PxR9H">
        <property id="1136916941877" name="description" index="2PxWOX" />
        <property id="1163507208434" name="showInPopup" index="3ArL7W" />
        <child id="1136916998332" name="keystroke" index="2PyaAO" />
        <child id="1136917325338" name="isApplicableFunction" index="2Pzqsi" />
        <child id="1136920925604" name="executeFunction" index="2PL9iG" />
      </concept>
      <concept id="1136916976737" name="jetbrains.mps.lang.editor.structure.CellKeyMapKeystroke" flags="ng" index="2Py5lD">
        <property id="1136923970223" name="modifiers" index="2PWKIB" />
        <property id="1136923970224" name="keycode" index="2PWKIS" />
      </concept>
      <concept id="1136917249679" name="jetbrains.mps.lang.editor.structure.CellKeyMap_IsApplicableFunction" flags="in" index="2Pz7Y7" />
      <concept id="1136917288805" name="jetbrains.mps.lang.editor.structure.CellKeyMap_ExecuteFunction" flags="in" index="2PzhpH" />
      <concept id="1078938745671" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclaration" flags="ig" index="PKFIW" />
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="4323500428121233431" name="jetbrains.mps.lang.editor.structure.EditorCellId" flags="ng" index="2SqB2G" />
      <concept id="4323500428136740385" name="jetbrains.mps.lang.editor.structure.CellIdReferenceSelector" flags="ng" index="2TlHUq">
        <reference id="4323500428136742952" name="id" index="2TlMyj" />
      </concept>
      <concept id="1164914519156" name="jetbrains.mps.lang.editor.structure.CellMenuPart_ReplaceNode_CustomNodeConcept" flags="ng" index="UkePV">
        <reference id="1164914727930" name="replacementConcept" index="Ul1FP" />
      </concept>
      <concept id="1186402211651" name="jetbrains.mps.lang.editor.structure.StyleSheet" flags="ng" index="V5hpn">
        <child id="1186402402630" name="styleClass" index="V601i" />
      </concept>
      <concept id="1214320119173" name="jetbrains.mps.lang.editor.structure.SideTransformAnchorTagStyleClassItem" flags="ln" index="2V7CMv">
        <property id="1214320119174" name="tag" index="2V7CMs" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
        <child id="1186403803051" name="query" index="VblUZ" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2">
        <property id="1186403771423" name="style" index="Vbekb" />
        <child id="1220975211821" name="query" index="17MNgL" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="1186404574412" name="jetbrains.mps.lang.editor.structure.BackgroundColorStyleClassItem" flags="ln" index="Veino" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
        <child id="1223387335081" name="query" index="3n$kyP" />
      </concept>
      <concept id="1186414860679" name="jetbrains.mps.lang.editor.structure.EditableStyleClassItem" flags="ln" index="VPxyj" />
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1186414949600" name="jetbrains.mps.lang.editor.structure.AutoDeletableStyleClassItem" flags="ln" index="VPRnO" />
      <concept id="1186414976055" name="jetbrains.mps.lang.editor.structure.DrawBorderStyleClassItem" flags="ln" index="VPXOz" />
      <concept id="1186414999511" name="jetbrains.mps.lang.editor.structure.UnderlinedStyleClassItem" flags="ln" index="VQ3r3">
        <property id="1214316229833" name="underlined" index="2USNnj" />
        <child id="1221219051630" name="query" index="1mkY_M" />
      </concept>
      <concept id="1186415722038" name="jetbrains.mps.lang.editor.structure.FontSizeStyleClassItem" flags="ln" index="VSNWy">
        <child id="1221064706952" name="query" index="1d8cEk" />
      </concept>
      <concept id="1164996492011" name="jetbrains.mps.lang.editor.structure.CellMenuPart_ReferentPrimary" flags="ng" index="ZcVJ$" />
      <concept id="1214406454886" name="jetbrains.mps.lang.editor.structure.TextBackgroundColorStyleClassItem" flags="ln" index="30gYXW" />
      <concept id="1214406466686" name="jetbrains.mps.lang.editor.structure.TextBackgroundColorSelectedStyleClassItem" flags="ln" index="30h1P$" />
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="1081293058843" name="jetbrains.mps.lang.editor.structure.CellKeyMapDeclaration" flags="ig" index="325Ffw">
        <reference id="1139445935125" name="applicableConcept" index="1chiOs" />
        <child id="1136930944870" name="item" index="2QnnpI" />
      </concept>
      <concept id="1214472762472" name="jetbrains.mps.lang.editor.structure.DefaultCaretPositionStyleClassItem" flags="ln" index="34dVlM">
        <property id="1214472762473" name="position" index="34dVlN" />
      </concept>
      <concept id="1240253180846" name="jetbrains.mps.lang.editor.structure.IndentLayoutNoWrapClassItem" flags="ln" index="34QqEe" />
      <concept id="3383245079137382180" name="jetbrains.mps.lang.editor.structure.StyleClass" flags="ig" index="14StLt" />
      <concept id="1233823429331" name="jetbrains.mps.lang.editor.structure.HorizontalGapStyleClassItem" flags="ln" index="15ARfc" />
      <concept id="1220974635399" name="jetbrains.mps.lang.editor.structure.QueryFunction_FontStyle" flags="in" index="17KAyr" />
      <concept id="1221057094638" name="jetbrains.mps.lang.editor.structure.QueryFunction_Integer" flags="in" index="1cFabM" />
      <concept id="1221062700015" name="jetbrains.mps.lang.editor.structure.QueryFunction_Underlined" flags="in" index="1d0yFN" />
      <concept id="1165253627126" name="jetbrains.mps.lang.editor.structure.CellMenuPart_AbstractGroup" flags="ng" index="1exORT">
        <property id="1165254125954" name="presentation" index="1ezIyd" />
        <child id="1165253890469" name="parameterObjectType" index="1eyP2E" />
        <child id="1165254159533" name="matchingTextFunction" index="1ezQQy" />
        <child id="1165254180581" name="descriptionTextFunction" index="1ezVZE" />
      </concept>
      <concept id="1103016434866" name="jetbrains.mps.lang.editor.structure.CellModel_JComponent" flags="sg" stub="8104358048506731196" index="3gTLQM">
        <child id="1176475119347" name="componentProvider" index="3FoqZy" />
      </concept>
      <concept id="1139535219966" name="jetbrains.mps.lang.editor.structure.CellActionMapDeclaration" flags="ig" index="1h_SRR">
        <reference id="1139535219968" name="applicableConcept" index="1h_SK9" />
        <child id="1139535219969" name="item" index="1h_SK8" />
      </concept>
      <concept id="1139535280617" name="jetbrains.mps.lang.editor.structure.CellActionMapItem" flags="lg" index="1hA7zw">
        <property id="1139535298778" name="actionId" index="1hAc7j" />
        <property id="1139537298254" name="description" index="1hHO97" />
        <child id="1139535280620" name="executeFunction" index="1hA7z_" />
      </concept>
      <concept id="1139535439104" name="jetbrains.mps.lang.editor.structure.CellActionMap_ExecuteFunction" flags="in" index="1hAIg9" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ng" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1236262245656" name="jetbrains.mps.lang.editor.structure.MatchingLabelStyleClassItem" flags="ln" index="3mYdg7">
        <property id="1238091709220" name="labelName" index="1413C4" />
      </concept>
      <concept id="1223386653097" name="jetbrains.mps.lang.editor.structure.StrikeOutStyleSheet" flags="ln" index="3nxI2P" />
      <concept id="1223387125302" name="jetbrains.mps.lang.editor.structure.QueryFunction_Boolean" flags="in" index="3nzxsE" />
      <concept id="1165420413719" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Generic_Group" flags="ng" index="1ou48o">
        <child id="1165420413721" name="handlerFunction" index="1ou48m" />
        <child id="1165420413720" name="parametersFunction" index="1ou48n" />
      </concept>
      <concept id="1165420626554" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Generic_Group_Handler" flags="in" index="1ouSdP" />
      <concept id="1165424453110" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Generic_Item" flags="ng" index="1oHujT">
        <property id="1165424453111" name="matchingText" index="1oHujS" />
        <child id="1165424453112" name="handlerFunction" index="1oHujR" />
      </concept>
      <concept id="1165424657443" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Generic_Item_Handler" flags="in" index="1oIgkG" />
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="9122903797312246523" name="jetbrains.mps.lang.editor.structure.StyleReference" flags="ng" index="1wgc9g">
        <reference id="9122903797312247166" name="style" index="1wgcnl" />
      </concept>
      <concept id="1075375595203" name="jetbrains.mps.lang.editor.structure.CellModel_Error" flags="sg" stub="8104358048506729356" index="1xolST">
        <property id="1075375595204" name="text" index="1xolSY" />
      </concept>
      <concept id="1180615838666" name="jetbrains.mps.lang.editor.structure.CellMenuPart_PropertyPostfixHints" flags="ng" index="3yc0Fo">
        <child id="1180615838667" name="postfixesFunction" index="3yc0Fp" />
      </concept>
      <concept id="1180616057533" name="jetbrains.mps.lang.editor.structure.CellMenuPart_PropertyPostfixHints_GetPostfixes" flags="in" index="3ycQeJ" />
      <concept id="1215007762405" name="jetbrains.mps.lang.editor.structure.FloatStyleClassItem" flags="ln" index="3$6MrZ">
        <property id="1215007802031" name="value" index="3$6WeP" />
      </concept>
      <concept id="1215007897487" name="jetbrains.mps.lang.editor.structure.PaddingRightStyleClassItem" flags="ln" index="3$7jql" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1214560368769" name="emptyNoTargetText" index="39s7Ar" />
        <property id="1139852716018" name="noTargetText" index="1$x2rV" />
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <property id="1140114345053" name="allowEmptyText" index="1O74Pk" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <property id="1130859485024" name="attractsFocus" index="1cu_pB" />
        <reference id="1081339532145" name="keyMap" index="34QXea" />
        <reference id="1139959269582" name="actionMap" index="1ERwB7" />
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
        <child id="1164826688380" name="menuDescriptor" index="P5bDN" />
        <child id="4323500428121274054" name="id" index="2SqHTX" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <property id="1160590353935" name="usesFolding" index="S$Qs1" />
        <property id="1139416841293" name="usesBraces" index="1ayjP4" />
        <property id="1073389446425" name="vertical" index="3EZMnw" />
        <property id="1073389446426" name="gridLayout" index="3EZMnz" />
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="7723470090030138869" name="foldedCellModel" index="AHCbl" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1082639509531" name="nullText" index="ilYzB" />
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1176474535556" name="jetbrains.mps.lang.editor.structure.QueryFunction_JComponent" flags="in" index="3Fmcul" />
      <concept id="1163613035599" name="jetbrains.mps.lang.editor.structure.CellMenuPart_AbstractGroup_Query" flags="in" index="3GJtP1" />
      <concept id="1163613549566" name="jetbrains.mps.lang.editor.structure.CellMenuPart_AbstractGroup_parameterObject" flags="nn" index="3GLrbK" />
      <concept id="1163613822479" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Abstract_editedNode" flags="nn" index="3GMtW1" />
      <concept id="1225898583838" name="jetbrains.mps.lang.editor.structure.ReadOnlyModelAccessor" flags="ng" index="1HfYo3">
        <child id="1225898971709" name="getter" index="1Hhtcw" />
      </concept>
      <concept id="1225900081164" name="jetbrains.mps.lang.editor.structure.CellModel_ReadOnlyModelAccessor" flags="sg" stub="3708815482283559694" index="1HlG4h">
        <child id="1225900141900" name="modelAccessor" index="1HlULh" />
      </concept>
      <concept id="1187258617779" name="jetbrains.mps.lang.editor.structure.ForegroundNullColorStyleClassItem" flags="ln" index="1I8cUB" />
      <concept id="3647146066980922272" name="jetbrains.mps.lang.editor.structure.SelectInEditorOperation" flags="nn" index="1OKiuA">
        <child id="1948540814633499358" name="editorContext" index="lBI5i" />
        <child id="1948540814635895774" name="cellSelector" index="lGT1i" />
        <child id="3604384757217586546" name="selectionStart" index="3dN3m$" />
      </concept>
      <concept id="1161622981231" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_editorContext" flags="nn" index="1Q80Hx" />
      <concept id="1088612959204" name="jetbrains.mps.lang.editor.structure.CellModel_Alternation" flags="sg" stub="8104358048506729361" index="1QoScp">
        <property id="1088613081987" name="vertical" index="1QpmdY" />
        <child id="1145918517974" name="alternationCondition" index="3e4ffs" />
        <child id="1088612958265" name="ifTrueCellModel" index="1QoS34" />
        <child id="1088612973955" name="ifFalseCellModel" index="1QoVPY" />
      </concept>
      <concept id="625126330682908270" name="jetbrains.mps.lang.editor.structure.CellModel_ReferencePresentation" flags="sg" stub="730538219795961225" index="3SHvHV" />
      <concept id="1176717841777" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Getter" flags="in" index="3TQlhw" />
      <concept id="1950447826681509042" name="jetbrains.mps.lang.editor.structure.ApplyStyleClass" flags="lg" index="3Xmtl4">
        <child id="1950447826683828796" name="target" index="3XvnJa" />
      </concept>
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
      <concept id="1176809959526" name="jetbrains.mps.lang.editor.structure.QueryFunction_Color" flags="in" index="3ZlJ5R" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
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
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P">
        <reference id="1182955020723" name="classConcept" index="1HBi2w" />
      </concept>
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
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
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
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
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
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="5979988948250981289" name="jetbrains.mps.lang.actions.structure.SNodeCreatorAndInitializer" flags="nn" index="2fJWfE" />
      <concept id="767145758118872833" name="jetbrains.mps.lang.actions.structure.NF_LinkList_AddNewChildOperation" flags="nn" index="2DeJg1" />
      <concept id="767145758118872830" name="jetbrains.mps.lang.actions.structure.NF_Link_SetNewChildOperation" flags="nn" index="2DeJnY" />
      <concept id="5480835971642155304" name="jetbrains.mps.lang.actions.structure.NF_Model_CreateNewNodeOperation" flags="nn" index="15TzpJ" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1204834851141" name="jetbrains.mps.lang.smodel.structure.PoundExpression" flags="ng" index="25Kdxt">
        <child id="1204834868751" name="expression" index="25KhWn" />
      </concept>
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1140725362528" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetOperation" flags="nn" index="2oxUTD">
        <child id="1140725362529" name="linkTarget" index="2oxUTC" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1138661924179" name="jetbrains.mps.lang.smodel.structure.Property_SetOperation" flags="nn" index="tyxLq">
        <child id="1138662048170" name="value" index="tz02z" />
      </concept>
      <concept id="1138676077309" name="jetbrains.mps.lang.smodel.structure.EnumMemberReference" flags="nn" index="uoxfO">
        <reference id="1138676095763" name="enumMember" index="uo_Cq" />
      </concept>
      <concept id="1138757581985" name="jetbrains.mps.lang.smodel.structure.Link_SetNewChildOperation" flags="nn" index="zfrQC">
        <reference id="1139880128956" name="concept" index="1A9B2P" />
      </concept>
      <concept id="1143224127713" name="jetbrains.mps.lang.smodel.structure.Node_InsertPrevSiblingOperation" flags="nn" index="HtX7F">
        <child id="1143224127716" name="insertedNode" index="HtX7I" />
      </concept>
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1143235216708" name="jetbrains.mps.lang.smodel.structure.Model_CreateNewNodeOperation" flags="nn" index="I8ghe">
        <reference id="1143235391024" name="concept" index="I8UWU" />
      </concept>
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1240170042401" name="jetbrains.mps.lang.smodel.structure.SEnumMemberType" flags="in" index="2ZThk1">
        <reference id="1240170836027" name="enum" index="2ZWj4r" />
      </concept>
      <concept id="1240171359678" name="jetbrains.mps.lang.smodel.structure.EnumMember_ValueOperation" flags="nn" index="2ZYiMu" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1146171026731" name="jetbrains.mps.lang.smodel.structure.Property_HasValue_Enum" flags="nn" index="3t7uKx">
        <child id="1146171026732" name="value" index="3t7uKA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1144146199828" name="jetbrains.mps.lang.smodel.structure.Node_CopyOperation" flags="nn" index="1$rogu" />
      <concept id="1139867745658" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithNewOperation" flags="nn" index="1_qnLN">
        <reference id="1139867957129" name="concept" index="1_rbq0" />
      </concept>
      <concept id="1240930118027" name="jetbrains.mps.lang.smodel.structure.SEnumOperationInvocation" flags="nn" index="3HcIyF">
        <reference id="1240930118028" name="enumDeclaration" index="3HcIyG" />
        <child id="1240930317927" name="operation" index="3Hdvt7" />
      </concept>
      <concept id="1240930444980" name="jetbrains.mps.lang.smodel.structure.SEnum_MembersOperation" flags="ng" index="3HdYuk" />
      <concept id="1240930444945" name="jetbrains.mps.lang.smodel.structure.SEnum_MemberOperation" flags="ng" index="3HdYuL">
        <reference id="1240930444946" name="member" index="3HdYuM" />
      </concept>
      <concept id="1172323065820" name="jetbrains.mps.lang.smodel.structure.Node_GetConceptOperation" flags="nn" index="3NT_Vc" />
      <concept id="1172326502327" name="jetbrains.mps.lang.smodel.structure.Concept_IsExactlyOperation" flags="nn" index="3O6GUB">
        <child id="1206733650006" name="conceptArgument" index="3QVz_e" />
      </concept>
      <concept id="1140131837776" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithAnotherOperation" flags="nn" index="1P9Npp">
        <child id="1140131861877" name="replacementNode" index="1P9ThW" />
      </concept>
      <concept id="1140133623887" name="jetbrains.mps.lang.smodel.structure.Node_DeleteOperation" flags="nn" index="1PgB_6" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
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
      <concept id="1172424058054" name="jetbrains.mps.lang.smodel.structure.ConceptRefExpression" flags="nn" index="3TUQnm">
        <reference id="1172424100906" name="conceptDeclaration" index="3TV0OU" />
      </concept>
      <concept id="1228341669568" name="jetbrains.mps.lang.smodel.structure.Node_DetachOperation" flags="nn" index="3YRAZt" />
      <concept id="1215467301810" name="jetbrains.mps.lang.smodel.structure.Property_RemoveOperation" flags="nn" index="3ZvMEC" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1227022210526" name="jetbrains.mps.baseLanguage.collections.structure.ClearAllElementsOperation" flags="nn" index="2Kehj3" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="24kQdi" id="fG6YMMf">
    <property role="TrG5h" value="ConceptEditorDeclaration_Editor" />
    <ref role="1XX52x" to="tpc2:fA4kQeF" resolve="ConceptEditorDeclaration" />
    <node concept="3EZMnI" id="fG705JJ" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <property role="1cu_pB" value="0" />
      <node concept="3EZMnI" id="fG705JK" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <property role="1cu_pB" value="0" />
        <node concept="3F2HdR" id="2gbCHSczkzO" role="3EZMnx">
          <property role="2czwfO" value="&amp;" />
          <ref role="1NtTu8" to="tpc2:2gbCHScr0HI" />
          <node concept="2iRfu4" id="2gbCHSczkzP" role="2czzBx" />
          <node concept="3F0ifn" id="3Nez1fUhV4U" role="2czzBI">
            <property role="3F0ifm" value="&lt;default&gt;" />
            <ref role="34QXea" node="3Nez1fVxdLf" resolve="ConceptEditor_DefaultContextHintLabel" />
            <node concept="VechU" id="3Nez1fVluPu" role="3F10Kt">
              <property role="Vb096" value="gray" />
            </node>
            <node concept="34dVlM" id="l3qzLlu60f" role="3F10Kt">
              <property role="34dVlN" value="FIRST" />
            </node>
          </node>
          <node concept="tppnM" id="l3qzLmIunX" role="sWeuL">
            <node concept="11L4FC" id="l3qzLmIunZ" role="3F10Kt" />
            <node concept="Vb9p2" id="l3qzLn3X$Q" role="3F10Kt" />
          </node>
        </node>
        <node concept="3F0ifn" id="fG705JL" role="3EZMnx">
          <property role="3F0ifm" value="editor for concept" />
          <node concept="VPM3Z" id="hEU$Pdn" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="1iCGBv" id="g6ipQP8" role="3EZMnx">
          <property role="1$x2rV" value="&lt;no concept&gt;" />
          <ref role="1NtTu8" to="tpc2:gXXX56I" />
          <node concept="1sVBvm" id="g6ipMeG" role="1sWHZn">
            <node concept="3F0A7n" id="g6ipQP9" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <property role="1$x2rV" value="&lt;no name&gt;" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
              <ref role="1k5W1q" to="tpd3:hwSE21y" resolve="ReferenceOnConcept" />
              <node concept="VPXOz" id="hEUNSqK" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$PWC" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IxuR7" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="fG7Pr3T" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="3XFhqQ" id="hGQ3u$B" role="3EZMnx" />
        <node concept="3EZMnI" id="fG7Q63p" role="3EZMnx">
          <property role="3EZMnw" value="true" />
          <node concept="3F0ifn" id="fG7R0q3" role="3EZMnx">
            <property role="3F0ifm" value="node cell layout:" />
            <node concept="VPM3Z" id="hEU$Pyj" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3EZMnI" id="fG7RyFU" role="3EZMnx">
            <property role="3EZMnw" value="false" />
            <node concept="3XFhqQ" id="hGQ3v6l" role="3EZMnx" />
            <node concept="3F1sOY" id="gqRMgYh" role="3EZMnx">
              <property role="1$x2rV" value="&lt;choose cell model&gt;" />
              <ref role="1NtTu8" to="tpc2:fIwV5gl" />
              <ref role="34QXea" node="gtczF7b" resolve="EditorCellModel_KeyMap" />
            </node>
            <node concept="VPM3Z" id="hEU$Q0C" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="15ARfc" id="hX60Cee" role="3F10Kt">
              <property role="3$6WeP" value="0.0" />
            </node>
            <node concept="2iRfu4" id="i2IxuNK" role="2iSdaV" />
          </node>
          <node concept="VPM3Z" id="hEU$P3c" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRkQZ" id="i2IxuR5" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$Q0w" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="15ARfc" id="hX63F4k" role="3F10Kt">
          <property role="3$6WeP" value="0.0" />
        </node>
        <node concept="2iRfu4" id="i2IxuTO" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="fGbFJ$Q" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="3XFhqQ" id="hGQ3vSS" role="3EZMnx" />
        <node concept="3EZMnI" id="fGbFJ$S" role="3EZMnx">
          <property role="3EZMnw" value="true" />
          <node concept="3F0ifn" id="fGbFJ$T" role="3EZMnx">
            <node concept="VPM3Z" id="hEU$Php" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F0ifn" id="fGbFJ$U" role="3EZMnx">
            <property role="3F0ifm" value="inspected cell layout:" />
            <property role="1cu_pB" value="0" />
            <node concept="VPM3Z" id="hEU$P6m" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3EZMnI" id="fGbFJ$V" role="3EZMnx">
            <property role="3EZMnw" value="false" />
            <node concept="3XFhqQ" id="hGQ3wyD" role="3EZMnx" />
            <node concept="3F1sOY" id="fGbFJ$X" role="3EZMnx">
              <property role="1$x2rV" value="&lt;choose cell model&gt;" />
              <ref role="1NtTu8" to="tpc2:fG6VMW6" />
              <ref role="34QXea" node="gtczF7b" resolve="EditorCellModel_KeyMap" />
            </node>
            <node concept="VPM3Z" id="hEU$PRX" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="15ARfc" id="hX63KhC" role="3F10Kt">
              <property role="3$6WeP" value="0.0" />
            </node>
            <node concept="2iRfu4" id="i2IxuNx" role="2iSdaV" />
          </node>
          <node concept="VPM3Z" id="hEU$Pka" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRkQZ" id="i2IxuR8" role="2iSdaV" />
        </node>
        <node concept="15ARfc" id="hX63H7g" role="3F10Kt">
          <property role="3$6WeP" value="0.0" />
        </node>
        <node concept="VPM3Z" id="hEU$PLo" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IxuOr" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2IxxZE" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="fGcK$Mt">
    <property role="TrG5h" value="CellModel_Error_Editor" />
    <property role="3GE5qa" value="CellModel" />
    <ref role="1XX52x" to="tpc2:fDxolV3" resolve="CellModel_Error" />
    <node concept="3EZMnI" id="fGcK$Mu" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <ref role="1k5W1q" node="hX5ZSzR" resolve="borderedCollection" />
      <node concept="PMmxH" id="h7TN1Lq" role="3EZMnx">
        <ref role="PMmxG" node="h7TMiuR" resolve="_OpenTag" />
      </node>
      <node concept="3F0A7n" id="fGcK$Mv" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:fDxolV4" resolve="text" />
        <node concept="VPXOz" id="hEUNSGJ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="Veino" id="hEZG_vD" role="3F10Kt">
          <node concept="3ZlJ5R" id="hEZG_vE" role="VblUZ">
            <node concept="3clFbS" id="hEZG_vF" role="2VODD2">
              <node concept="3cpWs6" id="hEZG_vG" role="3cqZAp">
                <node concept="2YIFZM" id="hEZG_vH" role="3cqZAk">
                  <ref role="37wK5l" node="h842N6q" resolve="grayIfNotSelectable" />
                  <ref role="1Pybhc" node="h842M7a" resolve="_EditorUtil" />
                  <node concept="pncrf" id="hEZG_vI" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="30gYXW" id="hF0kJSL" role="3F10Kt">
          <property role="Vb096" value="pink" />
        </node>
        <node concept="30h1P$" id="hF0kJV$" role="3F10Kt">
          <property role="Vb096" value="magenta" />
        </node>
      </node>
      <node concept="PMmxH" id="h7TN377" role="3EZMnx">
        <ref role="PMmxG" node="h7TMK$j" resolve="_CloseTag" />
        <node concept="VPXOz" id="hEUNSB7" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2iRfu4" id="i2IxuTC" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="fGcMQ3s" role="6VMZX">
      <property role="3EZMnw" value="true" />
      <node concept="PMmxH" id="hF4F9gz" role="3EZMnx">
        <ref role="PMmxG" node="hF4ssnw" resolve="_CellModel_Common" />
      </node>
      <node concept="3F0ifn" id="hF4F2aD" role="3EZMnx">
        <node concept="VPM3Z" id="hF4F2OT" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="fGcMQ3t" role="3EZMnx">
        <property role="3F0ifm" value="Error cell:" />
        <ref role="1k5W1q" node="hF4yUZ8" resolve="header" />
      </node>
      <node concept="3EZMnI" id="fGcO4FX" role="3EZMnx">
        <property role="3EZMnw" value="true" />
        <property role="3EZMnz" value="true" />
        <node concept="3EZMnI" id="fGcO4FY" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="fGcO4FZ" role="3EZMnx">
            <property role="3F0ifm" value="text" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F0A7n" id="fGcO4G1" role="3EZMnx">
            <ref role="1NtTu8" to="tpc2:fDxolV4" resolve="text" />
            <node concept="VPXOz" id="hEUNSu1" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="30gYXW" id="hF0kJTU" role="3F10Kt">
              <property role="Vb096" value="pink" />
            </node>
            <node concept="30h1P$" id="hF0kJW3" role="3F10Kt">
              <property role="Vb096" value="magenta" />
            </node>
          </node>
          <node concept="VPM3Z" id="hEU$Pc7" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="hEUNSuJ" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2iRfu4" id="i2IxuTI" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$PcH" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VPXOz" id="hEUNSHU" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="2EHx9g" id="i2IxuUy" role="2iSdaV" />
      </node>
      <node concept="VPM3Z" id="hEU$PPG" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="i2IxuR3" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="fGJkuol">
    <property role="TrG5h" value="CellModel_Collection_Editor" />
    <property role="3GE5qa" value="CellModel" />
    <ref role="1XX52x" to="tpc2:fBEZMkn" resolve="CellModel_Collection" />
    <node concept="1QoScp" id="i0vcEng" role="2wV5jI">
      <property role="1QpmdY" value="true" />
      <node concept="3EZMnI" id="i0vcEnh" role="1QoS34">
        <property role="3EZMnw" value="true" />
        <ref role="1k5W1q" node="i0pPgF8" resolve="rootCellModelStyle" />
        <node concept="3EZMnI" id="i0vcES3" role="3EZMnx">
          <property role="3EZMnw" value="true" />
          <property role="3EZMnz" value="true" />
          <node concept="3EZMnI" id="i0vcES4" role="3EZMnx">
            <property role="3EZMnw" value="false" />
            <ref role="1k5W1q" node="hX5ZSzR" resolve="borderedCollection" />
            <node concept="PMmxH" id="i0vcES5" role="3EZMnx">
              <ref role="1ERwB7" node="heqDw3D" resolve="CellModel_Collection_Actions" />
              <ref role="PMmxG" node="h7TMiuR" resolve="_OpenTag" />
              <ref role="1k5W1q" node="i12920y" resolve="tag" />
            </node>
            <node concept="2iRfu4" id="i2IxuNz" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="i0vcES7" role="3EZMnx">
            <property role="3EZMnw" value="false" />
            <property role="3EZMnz" value="true" />
            <ref role="1k5W1q" node="hX5ZSzR" resolve="borderedCollection" />
            <node concept="3F0ifn" id="i0vcES8" role="3EZMnx">
              <node concept="VPM3Z" id="i0vcES9" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="3F2HdR" id="i0vcESb" role="3EZMnx">
              <property role="2czwfN" value="true" />
              <ref role="1NtTu8" to="tpc2:fBEZMko" />
              <node concept="VPXOz" id="i0vcESc" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
              <node concept="2iRkQZ" id="i2IxuV0" role="2czzBx" />
              <node concept="4$FPG" id="5oMNpfU8JVc" role="4_6I_">
                <node concept="3clFbS" id="5oMNpfU8JVd" role="2VODD2">
                  <node concept="3clFbF" id="5oMNpfU8LxD" role="3cqZAp">
                    <node concept="2ShNRf" id="5oMNpfU8LxB" role="3clFbG">
                      <node concept="3zrR0B" id="5oMNpfU8M9x" role="2ShVmc">
                        <node concept="3Tqbb2" id="5oMNpfU8M9z" role="3zrR0E">
                          <ref role="ehGHo" to="tpc2:fBF0icI" resolve="CellModel_Constant" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2iRfu4" id="i2IxuUN" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="6GJhM1dAOGA" role="3EZMnx">
            <ref role="1k5W1q" node="hX5ZSzR" resolve="borderedCollection" />
            <node concept="3F0ifn" id="6GJhM1dARm2" role="3EZMnx">
              <node concept="VPM3Z" id="6GJhM1dARm3" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="2iRfu4" id="6GJhM1dAOGD" role="2iSdaV" />
            <node concept="pkWqt" id="6GJhM1dAOGE" role="pqm2j">
              <node concept="3clFbS" id="6GJhM1dAOGF" role="2VODD2">
                <node concept="3clFbF" id="6GJhM1dARlV" role="3cqZAp">
                  <node concept="2OqwBi" id="6GJhM1dARlX" role="3clFbG">
                    <node concept="pncrf" id="6GJhM1dARlW" role="2Oq$k0" />
                    <node concept="2qgKlT" id="1_9L3A4DvQh" role="2OqNvi">
                      <ref role="37wK5l" to="tpcb:1_9L3A4DrOF" resolve="isFoldingEnabled" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="PMmxH" id="6GJhM1dCSHd" role="3EZMnx">
              <ref role="PMmxG" node="6GJhM1dCSH6" resolve="CellModelCollection_FoldedCellComponent" />
            </node>
          </node>
          <node concept="3EZMnI" id="i0vcESd" role="3EZMnx">
            <property role="3EZMnw" value="false" />
            <ref role="1k5W1q" node="hX5ZSzR" resolve="borderedCollection" />
            <node concept="PMmxH" id="i0vcESe" role="3EZMnx">
              <ref role="PMmxG" node="h7TMK$j" resolve="_CloseTag" />
              <ref role="1ERwB7" node="heqDw3D" resolve="CellModel_Collection_Actions" />
              <ref role="1k5W1q" node="i12920y" resolve="tag" />
            </node>
            <node concept="Veino" id="i0vcESg" role="3F10Kt">
              <node concept="3ZlJ5R" id="i0vcESh" role="VblUZ">
                <node concept="3clFbS" id="i0vcESi" role="2VODD2">
                  <node concept="3cpWs6" id="i0vcESj" role="3cqZAp">
                    <node concept="2YIFZM" id="i0vcESk" role="3cqZAk">
                      <ref role="37wK5l" node="h842N6q" resolve="grayIfNotSelectable" />
                      <ref role="1Pybhc" node="h842M7a" resolve="_EditorUtil" />
                      <node concept="pncrf" id="i0vcESl" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2iRfu4" id="i2IxuOU" role="2iSdaV" />
          </node>
          <node concept="pkWqt" id="i0vcESm" role="pqm2j">
            <node concept="3clFbS" id="i0vcESn" role="2VODD2">
              <node concept="3cpWs6" id="i0vcESo" role="3cqZAp">
                <node concept="2OqwBi" id="i0vcESp" role="3cqZAk">
                  <node concept="pncrf" id="i0vcESq" role="2Oq$k0" />
                  <node concept="2qgKlT" id="i0vcESr" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:i0pAV23" resolve="isVertical" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="VPXOz" id="i0vcESt" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2EHx9g" id="i2IxxZ$" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="i0vcESu" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <ref role="1k5W1q" node="hX5ZSzR" resolve="borderedCollection" />
          <node concept="PMmxH" id="i0vcESv" role="3EZMnx">
            <ref role="PMmxG" node="h7TMiuR" resolve="_OpenTag" />
            <ref role="1ERwB7" node="heqDw3D" resolve="CellModel_Collection_Actions" />
            <ref role="1k5W1q" node="i12920y" resolve="tag" />
          </node>
          <node concept="3F2HdR" id="i0vcESx" role="3EZMnx">
            <property role="2czwfN" value="false" />
            <ref role="1NtTu8" to="tpc2:fBEZMko" />
            <node concept="15ARfc" id="i0vcESy" role="3F10Kt">
              <property role="3$6WeP" value="0.0" />
            </node>
            <node concept="VPXOz" id="i0vcESz" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="2iRfu4" id="i2IxuV3" role="2czzBx" />
          </node>
          <node concept="PMmxH" id="6GJhM1dCSHf" role="3EZMnx">
            <ref role="PMmxG" node="6GJhM1dCSH6" resolve="CellModelCollection_FoldedCellComponent" />
            <node concept="pkWqt" id="6GJhM1dDf$N" role="pqm2j">
              <node concept="3clFbS" id="6GJhM1dDf$O" role="2VODD2">
                <node concept="3clFbF" id="6GJhM1dDf$P" role="3cqZAp">
                  <node concept="2OqwBi" id="6GJhM1dDf$R" role="3clFbG">
                    <node concept="pncrf" id="6GJhM1dDf$Q" role="2Oq$k0" />
                    <node concept="2qgKlT" id="1_9L3A4DvQf" role="2OqNvi">
                      <ref role="37wK5l" to="tpcb:1_9L3A4DrOF" resolve="isFoldingEnabled" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="PMmxH" id="i0vcES$" role="3EZMnx">
            <ref role="1ERwB7" node="heqDw3D" resolve="CellModel_Collection_Actions" />
            <ref role="PMmxG" node="h7TMK$j" resolve="_CloseTag" />
            <ref role="1k5W1q" node="i12920y" resolve="tag" />
          </node>
          <node concept="pkWqt" id="i0vcESA" role="pqm2j">
            <node concept="3clFbS" id="i0vcESB" role="2VODD2">
              <node concept="3cpWs6" id="i0vcESC" role="3cqZAp">
                <node concept="1Wc70l" id="i0vcESD" role="3cqZAk">
                  <node concept="3fqX7Q" id="i0vcESE" role="3uHU7w">
                    <node concept="2OqwBi" id="i0vcESF" role="3fr31v">
                      <node concept="pncrf" id="i0vcESG" role="2Oq$k0" />
                      <node concept="2qgKlT" id="i0vcESH" role="2OqNvi">
                        <ref role="37wK5l" to="tpcb:i0pB9jQ" resolve="isIndentLayout" />
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="i0vcESI" role="3uHU7B">
                    <node concept="2OqwBi" id="i0vcESJ" role="3fr31v">
                      <node concept="pncrf" id="i0vcESK" role="2Oq$k0" />
                      <node concept="2qgKlT" id="i0vcESL" role="2OqNvi">
                        <ref role="37wK5l" to="tpcb:i0pAV23" resolve="isVertical" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2iRfu4" id="i2IxuTt" role="2iSdaV" />
        </node>
        <node concept="2iRkQZ" id="i2IxuNA" role="2iSdaV" />
      </node>
      <node concept="pkWqt" id="i0vcEni" role="3e4ffs">
        <node concept="3clFbS" id="i0vcEnj" role="2VODD2">
          <node concept="3clFbF" id="i0vcQbB" role="3cqZAp">
            <node concept="3fqX7Q" id="i0vcQbC" role="3clFbG">
              <node concept="2OqwBi" id="i0vcQbD" role="3fr31v">
                <node concept="pncrf" id="i0vcQbE" role="2Oq$k0" />
                <node concept="2qgKlT" id="i0vcQbF" role="2OqNvi">
                  <ref role="37wK5l" to="tpcb:i0pB9jQ" resolve="isIndentLayout" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="i0vcGr2" role="1QoVPY">
        <property role="3EZMnw" value="true" />
        <ref role="1k5W1q" node="i0pPgF8" resolve="rootCellModelStyle" />
        <node concept="PMmxH" id="i0vcGr4" role="3EZMnx">
          <ref role="PMmxG" node="h7TMiuR" resolve="_OpenTag" />
          <ref role="1ERwB7" node="heqDw3D" resolve="CellModel_Collection_Actions" />
          <ref role="1k5W1q" node="i12920y" resolve="tag" />
          <node concept="ljvvj" id="i0vcGr6" role="3F10Kt">
            <property role="VOm3f" value="true" />
            <node concept="3nzxsE" id="i0vcGr7" role="3n$kyP">
              <node concept="3clFbS" id="i0vcGr8" role="2VODD2">
                <node concept="3clFbF" id="i0vcGr9" role="3cqZAp">
                  <node concept="2OqwBi" id="i0vcGra" role="3clFbG">
                    <node concept="pncrf" id="i0vcGrb" role="2Oq$k0" />
                    <node concept="2qgKlT" id="i0vcGrc" role="2OqNvi">
                      <ref role="37wK5l" to="tpcb:i0tOX1j" resolve="isVerticalIndent" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3F2HdR" id="i0vcGrd" role="3EZMnx">
          <ref role="1NtTu8" to="tpc2:fBEZMko" />
          <node concept="l2Vlx" id="i0vcGre" role="2czzBx" />
        </node>
        <node concept="PMmxH" id="6GJhM1dDf_5" role="3EZMnx">
          <ref role="PMmxG" node="6GJhM1dCSH6" resolve="CellModelCollection_FoldedCellComponent" />
          <node concept="pkWqt" id="6GJhM1dDAyB" role="pqm2j">
            <node concept="3clFbS" id="6GJhM1dDAyC" role="2VODD2">
              <node concept="3clFbF" id="6GJhM1dDAyD" role="3cqZAp">
                <node concept="2OqwBi" id="6GJhM1dDAyF" role="3clFbG">
                  <node concept="pncrf" id="6GJhM1dDAyE" role="2Oq$k0" />
                  <node concept="2qgKlT" id="1_9L3A4DvQg" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:1_9L3A4DrOF" resolve="isFoldingEnabled" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="PMmxH" id="i0vcGrh" role="3EZMnx">
          <ref role="PMmxG" node="h7TMK$j" resolve="_CloseTag" />
          <ref role="1ERwB7" node="heqDw3D" resolve="CellModel_Collection_Actions" />
          <ref role="1k5W1q" node="i12920y" resolve="tag" />
          <node concept="pVoyu" id="i0vcGrj" role="3F10Kt">
            <property role="VOm3f" value="true" />
            <node concept="3nzxsE" id="i0vcGrk" role="3n$kyP">
              <node concept="3clFbS" id="i0vcGrl" role="2VODD2">
                <node concept="3clFbF" id="i0vcGrm" role="3cqZAp">
                  <node concept="2OqwBi" id="i0vcGrn" role="3clFbG">
                    <node concept="pncrf" id="i0vcGro" role="2Oq$k0" />
                    <node concept="2qgKlT" id="i0vcGrp" role="2OqNvi">
                      <ref role="37wK5l" to="tpcb:i0tOX1j" resolve="isVerticalIndent" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="ljvvj" id="i0vcGrq" role="3F10Kt">
            <property role="VOm3f" value="true" />
            <node concept="3nzxsE" id="i0vcGrr" role="3n$kyP">
              <node concept="3clFbS" id="i0vcGrs" role="2VODD2">
                <node concept="3clFbF" id="i0vcGrt" role="3cqZAp">
                  <node concept="2OqwBi" id="i0vcGru" role="3clFbG">
                    <node concept="pncrf" id="i0vcGrv" role="2Oq$k0" />
                    <node concept="2qgKlT" id="i0vcGrw" role="2OqNvi">
                      <ref role="37wK5l" to="tpcb:i0tOX1j" resolve="isVerticalIndent" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="l2Vlx" id="i0vcGrB" role="2iSdaV" />
        <node concept="OXEIz" id="5oMNpfTWlIo" role="P5bDN" />
      </node>
    </node>
    <node concept="3EZMnI" id="fGPlTr0" role="6VMZX">
      <property role="3EZMnw" value="true" />
      <property role="3EZMnz" value="false" />
      <node concept="PMmxH" id="hF4_9s_" role="3EZMnx">
        <ref role="PMmxG" node="hF4ssnw" resolve="_CellModel_Common" />
      </node>
      <node concept="3F0ifn" id="hF4_aGc" role="3EZMnx">
        <node concept="VPM3Z" id="hF4_bzS" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F0ifn" id="fGPA53L" role="3EZMnx">
        <property role="3F0ifm" value="Cell collection:" />
        <ref role="1k5W1q" node="hF4yUZ8" resolve="header" />
      </node>
      <node concept="3EZMnI" id="fGPAY2i" role="3EZMnx">
        <property role="3EZMnw" value="true" />
        <property role="3EZMnz" value="true" />
        <node concept="3EZMnI" id="g6iUaKB" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="g6iUaKC" role="3EZMnx">
            <property role="3F0ifm" value="cell layout" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F1sOY" id="g6iUaKD" role="3EZMnx">
            <property role="1$x2rV" value="&lt;no layout&gt;" />
            <ref role="1NtTu8" to="tpc2:g6iSdeU" />
          </node>
          <node concept="VPM3Z" id="hEU$P$a" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="hEUNSxu" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2iRfu4" id="i2IxuNn" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="g_ayTHG" role="3EZMnx">
          <node concept="3F0ifn" id="g_az6Xp" role="3EZMnx">
            <property role="3F0ifm" value="uses braces" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F0A7n" id="g_az8EO" role="3EZMnx">
            <ref role="1NtTu8" to="tpc2:g_ayjLd" resolve="usesBraces" />
            <node concept="VPXOz" id="2jfAk2L7SjA" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="VPM3Z" id="hEU$PYS" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="hEUNSqo" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2iRfu4" id="i2IxuSN" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="gSS_blL" role="3EZMnx">
          <node concept="3F0ifn" id="gSS_fgy" role="3EZMnx">
            <property role="3F0ifm" value="uses folding" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="1QoScp" id="3BBGZBHhOY5" role="3EZMnx">
            <property role="1QpmdY" value="true" />
            <node concept="pkWqt" id="3BBGZBHhOY7" role="3e4ffs">
              <node concept="3clFbS" id="3BBGZBHhOY8" role="2VODD2">
                <node concept="3clFbF" id="3BBGZBHhRLI" role="3cqZAp">
                  <node concept="2OqwBi" id="3BBGZBHhRLP" role="3clFbG">
                    <node concept="2OqwBi" id="3BBGZBHhRLK" role="2Oq$k0">
                      <node concept="pncrf" id="3BBGZBHhRLJ" role="2Oq$k0" />
                      <node concept="3TrEf2" id="3BBGZBHhRLO" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpc2:7zuBzrp_ftK" />
                      </node>
                    </node>
                    <node concept="3w_OXm" id="3BBGZBHhRLT" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3F0A7n" id="3BBGZBHhRLU" role="1QoS34">
              <ref role="1NtTu8" to="tpc2:gSS$Qof" resolve="usesFolding" />
              <node concept="OXEIz" id="3BBGZBHhRM3" role="P5bDN">
                <node concept="PvTIS" id="3BBGZBHhRM4" role="OY2wv">
                  <node concept="MLZmj" id="3BBGZBHhRM5" role="PvTIR">
                    <node concept="3clFbS" id="3BBGZBHhRM6" role="2VODD2">
                      <node concept="3clFbF" id="3BBGZBHhRM7" role="3cqZAp">
                        <node concept="2ShNRf" id="3BBGZBHhRM8" role="3clFbG">
                          <node concept="Tc6Ow" id="3BBGZBHhRM9" role="2ShVmc">
                            <node concept="17QB3L" id="3BBGZBHhRMa" role="HW$YZ" />
                            <node concept="Xl_RD" id="3BBGZBHhRMb" role="HW$Y0">
                              <property role="Xl_RC" value="true" />
                            </node>
                            <node concept="Xl_RD" id="3BBGZBHhRMc" role="HW$Y0">
                              <property role="Xl_RC" value="false" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1oHujT" id="3BBGZBHhRMd" role="OY2wv">
                  <property role="1oHujS" value="query" />
                  <node concept="1oIgkG" id="3BBGZBHhRMe" role="1oHujR">
                    <node concept="3clFbS" id="3BBGZBHhRMf" role="2VODD2">
                      <node concept="3clFbF" id="3BBGZBHhRMg" role="3cqZAp">
                        <node concept="2OqwBi" id="3BBGZBHhRMh" role="3clFbG">
                          <node concept="2OqwBi" id="3BBGZBHhRMi" role="2Oq$k0">
                            <node concept="3GMtW1" id="3BBGZBHhRMj" role="2Oq$k0" />
                            <node concept="3TrEf2" id="3BBGZBHhRMk" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpc2:7zuBzrp_ftK" />
                            </node>
                          </node>
                          <node concept="2DeJnY" id="5wUAOoBBfpB" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3F1sOY" id="3BBGZBHhRMn" role="1QoVPY">
              <ref role="1NtTu8" to="tpc2:7zuBzrp_ftK" />
            </node>
          </node>
          <node concept="VPM3Z" id="hEU$P0V" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="3BBGZBHhOY3" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2iRfu4" id="i2IxuOM" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="3Fwx_UqDK9Y" role="3EZMnx">
          <node concept="VPM3Z" id="3Fwx_UqDKa0" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="3Fwx_UqE7fq" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3F0ifn" id="3Fwx_UqDKa2" role="3EZMnx">
            <property role="3F0ifm" value="add context hints" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F1sOY" id="5lsGCnQuGgv" role="3EZMnx">
            <ref role="1NtTu8" to="tpc2:3Fwx_UqDAZ9" />
            <ref role="1ERwB7" node="5lsGCnQM$zL" resolve="CellModel_Collection_AddHint_Actions" />
          </node>
          <node concept="2iRfu4" id="3Fwx_UqDKa3" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="3Fwx_UqEOU2" role="3EZMnx">
          <node concept="VPM3Z" id="3Fwx_UqEOU3" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="3Fwx_UqEOU4" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3F0ifn" id="3Fwx_UqEOU5" role="3EZMnx">
            <property role="3F0ifm" value="remove context hints" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F1sOY" id="3Fwx_UqEOU6" role="3EZMnx">
            <ref role="1NtTu8" to="tpc2:3Fwx_UqDB8p" />
            <ref role="1ERwB7" node="5lsGCnSckUl" resolve="CellModel_Collection_RemoveHint_Actions" />
          </node>
          <node concept="2iRfu4" id="3Fwx_UqEOU7" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$PEH" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VPXOz" id="hEUNSEZ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="2EHx9g" id="i2IxuUQ" role="2iSdaV" />
      </node>
      <node concept="VPM3Z" id="hEU$OXo" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="i2IxuOw" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="fGPNMJZ">
    <property role="TrG5h" value="CellModel_Component_Editor" />
    <property role="3GE5qa" value="CellModel" />
    <ref role="1XX52x" to="tpc2:fGPMmym" resolve="CellModel_Component" />
    <node concept="3EZMnI" id="fGPO59B" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <ref role="34QXea" node="hsh$IoV" resolve="CellModel_Component_KeyMap" />
      <ref role="1k5W1q" node="i0pPgF8" resolve="rootCellModelStyle" />
      <node concept="PMmxH" id="h7TNd$C" role="3EZMnx">
        <ref role="PMmxG" node="h7TMiuR" resolve="_OpenTag" />
      </node>
      <node concept="1iCGBv" id="g_U$WEE" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no component&gt;" />
        <ref role="1NtTu8" to="tpc2:fGPMmyn" />
        <ref role="1k5W1q" node="hX1xO3O" resolve="bordered" />
        <node concept="1sVBvm" id="g_U$WED" role="1sWHZn">
          <node concept="3F0A7n" id="g_U$Y3k" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <property role="1$x2rV" value="&lt;no name&gt;" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <node concept="VPXOz" id="hEUNSsa" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="h7TNf64" role="3EZMnx">
        <ref role="PMmxG" node="h7TMK$j" resolve="_CloseTag" />
        <node concept="VPXOz" id="hEUNSmG" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2iRfu4" id="i2IxuQV" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="fGPTDNa" role="6VMZX">
      <property role="3EZMnw" value="true" />
      <node concept="PMmxH" id="hF4zOlm" role="3EZMnx">
        <ref role="PMmxG" node="hF4ssnw" resolve="_CellModel_Common" />
      </node>
      <node concept="VPM3Z" id="hEU$PdF" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="i2IxuMS" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="fGTPXmr">
    <property role="TrG5h" value="EditorComponentDeclaration_Editor" />
    <ref role="1XX52x" to="tpc2:fGPKFH7" resolve="EditorComponentDeclaration" />
    <node concept="3EZMnI" id="fGTPXmC" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="fGTPXmD" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="3F0ifn" id="fGTPXmE" role="3EZMnx">
          <property role="3F0ifm" value="editor component" />
        </node>
        <node concept="3F0A7n" id="gyQosa8" role="3EZMnx">
          <property role="1$x2rV" value="&lt;no name&gt;" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="VPM3Z" id="hEU$P0d" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IxuQf" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="2nZuqX0H6uj" role="3EZMnx">
        <node concept="VPM3Z" id="2nZuqX0H6ul" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="2nZuqX0H6uo" role="2iSdaV" />
        <node concept="3XFhqQ" id="2nZuqX0H6vy" role="3EZMnx" />
        <node concept="3EZMnI" id="2nZuqX0H6vB" role="3EZMnx">
          <node concept="3F0ifn" id="2nZuqX0H6vM" role="3EZMnx">
            <property role="3F0ifm" value="overrides:" />
          </node>
          <node concept="3EZMnI" id="2nZuqX0H6B6" role="3EZMnx">
            <node concept="3XFhqQ" id="xLfwuvnLUf" role="3EZMnx" />
            <node concept="15ARfc" id="xLfwuvinf6" role="3F10Kt">
              <property role="3$6WeP" value="0.0" />
            </node>
            <node concept="3F1sOY" id="2nZuqX0H6Gw" role="3EZMnx">
              <property role="1$x2rV" value="&lt;no EditorComponent&gt;" />
              <ref role="1NtTu8" to="tpc2:66t_lsklggO" />
            </node>
            <node concept="VPM3Z" id="2nZuqX0H6B8" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="2nZuqX0H6Bb" role="2iSdaV" />
          </node>
          <node concept="VPM3Z" id="2nZuqX0H6vD" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRkQZ" id="2nZuqX0H6vG" role="2iSdaV" />
        </node>
      </node>
      <node concept="3EZMnI" id="6nWbOYo64zE" role="3EZMnx">
        <node concept="VPM3Z" id="6nWbOYo64zF" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="6nWbOYo64zG" role="2iSdaV" />
        <node concept="3XFhqQ" id="6nWbOYo64zH" role="3EZMnx" />
        <node concept="3EZMnI" id="6nWbOYo64zI" role="3EZMnx">
          <node concept="3F0ifn" id="6nWbOYo64zJ" role="3EZMnx">
            <property role="3F0ifm" value="applicable in context:" />
          </node>
          <node concept="3EZMnI" id="6nWbOYo64zK" role="3EZMnx">
            <node concept="3XFhqQ" id="6nWbOYo64zL" role="3EZMnx" />
            <node concept="3F2HdR" id="6nWbOYo69MS" role="3EZMnx">
              <property role="2czwfO" value="&amp;" />
              <ref role="1NtTu8" to="tpc2:6nWbOYo69_Q" />
              <node concept="2iRfu4" id="6nWbOYo69MT" role="2czzBx" />
              <node concept="tppnM" id="6nWbOYo6aSz" role="sWeuL">
                <node concept="11L4FC" id="6nWbOYo6aS$" role="3F10Kt" />
                <node concept="Vb9p2" id="6nWbOYo6aS_" role="3F10Kt" />
              </node>
              <node concept="3F0ifn" id="6nWbOYo6i57" role="2czzBI">
                <property role="3F0ifm" value="&lt;default&gt;" />
                <ref role="34QXea" node="6nWbOYo6aXk" resolve="EditorComponent_DefaultContextHintLabel" />
                <node concept="VechU" id="6nWbOYo6j9W" role="3F10Kt">
                  <property role="Vb096" value="gray" />
                </node>
                <node concept="34dVlM" id="6nWbOYo6j9X" role="3F10Kt">
                  <property role="34dVlN" value="FIRST" />
                </node>
              </node>
            </node>
            <node concept="15ARfc" id="6nWbOYo64zM" role="3F10Kt">
              <property role="3$6WeP" value="0.0" />
            </node>
            <node concept="VPM3Z" id="6nWbOYo64zO" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="6nWbOYo64zP" role="2iSdaV" />
          </node>
          <node concept="VPM3Z" id="6nWbOYo64zQ" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRkQZ" id="6nWbOYo64zR" role="2iSdaV" />
        </node>
        <node concept="pkWqt" id="6nWbOYoec1d" role="pqm2j">
          <node concept="3clFbS" id="6nWbOYoec1e" role="2VODD2">
            <node concept="3clFbF" id="6nWbOYoecek" role="3cqZAp">
              <node concept="3y3z36" id="6nWbOYoehtI" role="3clFbG">
                <node concept="10Nm6u" id="6nWbOYoehtV" role="3uHU7w" />
                <node concept="2OqwBi" id="6nWbOYoeco6" role="3uHU7B">
                  <node concept="3TrEf2" id="6nWbOYoefG2" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpc2:66t_lsklggO" />
                  </node>
                  <node concept="pncrf" id="6nWbOYoecej" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="fGTPXmI" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="3XFhqQ" id="hOINf6v" role="3EZMnx" />
        <node concept="3EZMnI" id="fGTPXmK" role="3EZMnx">
          <property role="3EZMnw" value="true" />
          <node concept="3F0ifn" id="fGTPXmL" role="3EZMnx">
            <property role="3F0ifm" value="applicable concept:" />
          </node>
          <node concept="3EZMnI" id="fGTPXmM" role="3EZMnx">
            <property role="3EZMnw" value="false" />
            <node concept="3XFhqQ" id="xLfwuvtbnA" role="3EZMnx" />
            <node concept="1iCGBv" id="g6iiV0p" role="3EZMnx">
              <property role="1$x2rV" value="&lt;choose concept&gt;" />
              <ref role="1NtTu8" to="tpc2:gXXX56I" />
              <node concept="1sVBvm" id="g6iiSea" role="1sWHZn">
                <node concept="3F0A7n" id="g6iiV0q" role="2wV5jI">
                  <property role="1Intyy" value="true" />
                  <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
                  <ref role="1k5W1q" to="tpd3:hwSE21y" resolve="ReferenceOnConcept" />
                </node>
              </node>
            </node>
            <node concept="15ARfc" id="hX6pU91" role="3F10Kt">
              <property role="3$6WeP" value="0.0" />
            </node>
            <node concept="VPM3Z" id="hEU$PvP" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IxuRy" role="2iSdaV" />
          </node>
          <node concept="VPM3Z" id="hEU$P2w" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRkQZ" id="i2IxuSs" role="2iSdaV" />
        </node>
        <node concept="15ARfc" id="hX6pOUd" role="3F10Kt">
          <property role="3$6WeP" value="0.0" />
        </node>
        <node concept="VPM3Z" id="hEU$Pja" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IxuOu" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="fGTPXmP" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="3XFhqQ" id="hOINfJx" role="3EZMnx" />
        <node concept="3EZMnI" id="fGTPXmR" role="3EZMnx">
          <property role="3EZMnw" value="true" />
          <node concept="3F0ifn" id="fGTPXmS" role="3EZMnx">
            <node concept="VPM3Z" id="hEU$PJd" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F0ifn" id="fGTPXmT" role="3EZMnx">
            <property role="3F0ifm" value="component cell layout:" />
          </node>
          <node concept="3EZMnI" id="fGTPXmU" role="3EZMnx">
            <property role="3EZMnw" value="false" />
            <node concept="3XFhqQ" id="xLfwuvtbnP" role="3EZMnx" />
            <node concept="3F1sOY" id="g_TZx2p" role="3EZMnx">
              <ref role="1NtTu8" to="tpc2:fIwV5gl" />
              <ref role="34QXea" node="gtczF7b" resolve="EditorCellModel_KeyMap" />
            </node>
            <node concept="15ARfc" id="hX6pW1f" role="3F10Kt">
              <property role="3$6WeP" value="0.0" />
            </node>
            <node concept="VPM3Z" id="hEU$Prt" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IxuQc" role="2iSdaV" />
          </node>
          <node concept="VPM3Z" id="hEU$PZQ" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRkQZ" id="i2IxuMp" role="2iSdaV" />
        </node>
        <node concept="15ARfc" id="hX6pS4K" role="3F10Kt">
          <property role="3$6WeP" value="0.0" />
        </node>
        <node concept="VPM3Z" id="hEU$PhZ" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IxuTK" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2IxuMz" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="fIxiryl">
    <property role="TrG5h" value="CellModel_Constant_Editor" />
    <property role="3GE5qa" value="CellModel" />
    <ref role="1XX52x" to="tpc2:fBF0icI" resolve="CellModel_Constant" />
    <node concept="3EZMnI" id="fIxirym" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <ref role="1k5W1q" node="i0pPgF8" resolve="rootCellModelStyle" />
      <node concept="PMmxH" id="h7TNosf" role="3EZMnx">
        <ref role="PMmxG" node="h7TMiuR" resolve="_OpenTag" />
        <node concept="pkWqt" id="h7TNrJ5" role="pqm2j">
          <node concept="3clFbS" id="h7TNrJ6" role="2VODD2">
            <node concept="3cpWs6" id="h7TNrQN" role="3cqZAp">
              <node concept="3eOSWO" id="hKxXC0g" role="3cqZAk">
                <node concept="3cmrfG" id="hKxXC2w" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2OqwBi" id="hKxXBuM" role="3uHU7B">
                  <node concept="2OqwBi" id="hKxXAQF" role="2Oq$k0">
                    <node concept="pncrf" id="hKxXAKN" role="2Oq$k0" />
                    <node concept="2qgKlT" id="hKxXBpa" role="2OqNvi">
                      <ref role="37wK5l" to="tpcb:hKxXtpm" resolve="getOpeningTag" />
                    </node>
                  </node>
                  <node concept="liA8E" id="hKxXBIr" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.length():int" resolve="length" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0A7n" id="fIxiS26" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <property role="1$x2rV" value="&lt;constant&gt;" />
        <ref role="1NtTu8" to="tpc2:fBF0icJ" resolve="text" />
        <ref role="34QXea" node="h9UV7T6" resolve="_SplitConctantCellIntoWordsKeyMap" />
        <ref role="1k5W1q" node="hX1xO3O" resolve="bordered" />
        <node concept="30gYXW" id="hLnsTVk" role="3F10Kt">
          <node concept="3ZlJ5R" id="hLnsVd7" role="VblUZ">
            <node concept="3clFbS" id="hLnsVd8" role="2VODD2">
              <node concept="3clFbF" id="hLnt3H1" role="3cqZAp">
                <node concept="2OqwBi" id="hLnt4a7" role="3clFbG">
                  <node concept="pncrf" id="hLnt3H2" role="2Oq$k0" />
                  <node concept="2qgKlT" id="hLnt5Ri" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:hL7BhMP" resolve="getTextBackgroundColor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="Veino" id="hLnt7_s" role="3F10Kt">
          <node concept="3ZlJ5R" id="hLnt8QK" role="VblUZ">
            <node concept="3clFbS" id="hLnt8QL" role="2VODD2">
              <node concept="3clFbF" id="hLnt9ul" role="3cqZAp">
                <node concept="2OqwBi" id="hLnt9vP" role="3clFbG">
                  <node concept="pncrf" id="hLnt9um" role="2Oq$k0" />
                  <node concept="2qgKlT" id="hLntajD" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:hL7rNfN" resolve="getBackgroundColor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VechU" id="hLntbUt" role="3F10Kt">
          <node concept="3ZlJ5R" id="hLntcVq" role="VblUZ">
            <node concept="3clFbS" id="hLntcVr" role="2VODD2">
              <node concept="3clFbF" id="hLntdLq" role="3cqZAp">
                <node concept="2OqwBi" id="hLntdMq" role="3clFbG">
                  <node concept="pncrf" id="hLntdLr" role="2Oq$k0" />
                  <node concept="2qgKlT" id="hLnteDC" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:hL6TA5F" resolve="getForegroundColor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="Vb9p2" id="hLntjV6" role="3F10Kt">
          <node concept="17KAyr" id="hLntl72" role="17MNgL">
            <node concept="3clFbS" id="hLntl73" role="2VODD2">
              <node concept="3clFbF" id="hLntlHa" role="3cqZAp">
                <node concept="2OqwBi" id="hLntlIa" role="3clFbG">
                  <node concept="pncrf" id="hLntlHb" role="2Oq$k0" />
                  <node concept="2qgKlT" id="hLntmCk" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:hLcv3Z9" resolve="getFontStyle" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VSNWy" id="hLnAEHw" role="3F10Kt">
          <node concept="1cFabM" id="hLnAFl5" role="1d8cEk">
            <node concept="3clFbS" id="hLnAFl6" role="2VODD2">
              <node concept="3clFbF" id="hLnANKr" role="3cqZAp">
                <node concept="2OqwBi" id="hLnANP6" role="3clFbG">
                  <node concept="pncrf" id="hLnANKs" role="2Oq$k0" />
                  <node concept="2qgKlT" id="hLnAOWr" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:hLmaQwP" resolve="getFontSize" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VQ3r3" id="hLntpii" role="3F10Kt">
          <node concept="1d0yFN" id="hLntqdR" role="1mkY_M">
            <node concept="3clFbS" id="hLntqdS" role="2VODD2">
              <node concept="3clFbF" id="hLntqML" role="3cqZAp">
                <node concept="2OqwBi" id="hLntqNL" role="3clFbG">
                  <node concept="pncrf" id="hLntqMM" role="2Oq$k0" />
                  <node concept="2qgKlT" id="hLntrSF" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:hLmqR8u" resolve="isUnderlined" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3nxI2P" id="hNteflJ" role="3F10Kt">
          <node concept="3nzxsE" id="hNtefZZ" role="3n$kyP">
            <node concept="3clFbS" id="hNteg00" role="2VODD2">
              <node concept="3clFbF" id="hNteoJv" role="3cqZAp">
                <node concept="2OqwBi" id="hNtep4h" role="3clFbG">
                  <node concept="pncrf" id="hNteoJw" role="2Oq$k0" />
                  <node concept="2qgKlT" id="hNteqRk" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:hNnL8J1" resolve="isStrikeOut" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="h7TNtm9" role="3EZMnx">
        <ref role="PMmxG" node="h7TMK$j" resolve="_CloseTag" />
        <node concept="pkWqt" id="h7TNv3j" role="pqm2j">
          <node concept="3clFbS" id="h7TNv3k" role="2VODD2">
            <node concept="3cpWs6" id="h7TNvc0" role="3cqZAp">
              <node concept="3eOSWO" id="hKxXGRK" role="3cqZAk">
                <node concept="3cmrfG" id="hKxXGTK" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2OqwBi" id="hKxXFEz" role="3uHU7B">
                  <node concept="2OqwBi" id="hKxXETq" role="2Oq$k0">
                    <node concept="pncrf" id="hKxXEOh" role="2Oq$k0" />
                    <node concept="2qgKlT" id="7yIPXhIiBye" role="2OqNvi">
                      <ref role="37wK5l" to="tpcb:hKxXx_K" resolve="getClosingTag" />
                    </node>
                  </node>
                  <node concept="liA8E" id="hKxXGD_" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.length():int" resolve="length" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="i2IxuQA" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="fIxj85y" role="6VMZX">
      <property role="3EZMnw" value="true" />
      <node concept="PMmxH" id="hF4Bju4" role="3EZMnx">
        <ref role="PMmxG" node="hF4ssnw" resolve="_CellModel_Common" />
      </node>
      <node concept="3F0ifn" id="hF4Bju5" role="3EZMnx">
        <node concept="Vb9p2" id="hN2HAca" role="3F10Kt">
          <property role="Vbekb" value="BOLD" />
        </node>
      </node>
      <node concept="3F0ifn" id="fIxjeVz" role="3EZMnx">
        <property role="3F0ifm" value="Constant cell:" />
        <ref role="1k5W1q" node="hF4yUZ8" resolve="header" />
      </node>
      <node concept="3EZMnI" id="fIxjeV$" role="3EZMnx">
        <property role="3EZMnw" value="true" />
        <property role="3EZMnz" value="true" />
        <node concept="3EZMnI" id="fIxjeV_" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="fIxjeVA" role="3EZMnx">
            <property role="3F0ifm" value="text" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F0A7n" id="fIxjeVC" role="3EZMnx">
            <property role="1O74Pk" value="true" />
            <property role="1$x2rV" value="&lt;none&gt;" />
            <ref role="1NtTu8" to="tpc2:fBF0icJ" resolve="text" />
            <node concept="VPXOz" id="hEUNSPq" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="30gYXW" id="hF0kJTp" role="3F10Kt">
              <property role="Vb096" value="yellow" />
            </node>
            <node concept="30h1P$" id="hF0kJVV" role="3F10Kt">
              <property role="Vb096" value="cyan" />
            </node>
          </node>
          <node concept="VPM3Z" id="hEU$PZ7" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="hEUNStH" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2iRfu4" id="i2IxuQd" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="fKimvA7" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="fKimvA8" role="3EZMnx">
            <property role="3F0ifm" value="text*" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F0A7n" id="fKimvA9" role="3EZMnx">
            <property role="1O74Pk" value="true" />
            <property role="1$x2rV" value="&lt;none&gt;" />
            <ref role="1NtTu8" to="tpc2:fKilYwr" resolve="nullText" />
            <node concept="VPXOz" id="hEUNSwX" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="30gYXW" id="hF0kJSH" role="3F10Kt">
              <property role="Vb096" value="yellow" />
            </node>
            <node concept="30h1P$" id="hF0kJVz" role="3F10Kt">
              <property role="Vb096" value="cyan" />
            </node>
          </node>
          <node concept="VPM3Z" id="hEU$Phv" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="hEUNSBb" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2iRfu4" id="i2IxuQ2" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$Px_" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VPXOz" id="hEUNSL$" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="2EHx9g" id="i2IxuTG" role="2iSdaV" />
      </node>
      <node concept="VPM3Z" id="hEU$P9L" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="i2IxuMq" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="fIxFcfu">
    <property role="TrG5h" value="CellModel_Custom_Editor" />
    <property role="3GE5qa" value="CellModel" />
    <ref role="1XX52x" to="tpc2:fGgc7fs" resolve="CellModel_Custom" />
    <node concept="3EZMnI" id="fIxFcfv" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <ref role="1k5W1q" node="hX5ZSzR" resolve="borderedCollection" />
      <node concept="PMmxH" id="h7TNyJG" role="3EZMnx">
        <ref role="PMmxG" node="h7TMiuR" resolve="_OpenTag" />
      </node>
      <node concept="3F0ifn" id="h7YH7Ww" role="3EZMnx">
        <property role="3F0ifm" value="custom cell" />
      </node>
      <node concept="PMmxH" id="h7TN$Ex" role="3EZMnx">
        <ref role="PMmxG" node="h7TMK$j" resolve="_CloseTag" />
      </node>
      <node concept="2iRfu4" id="i2IxuT6" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="fIxGFmi" role="6VMZX">
      <property role="3EZMnw" value="true" />
      <node concept="PMmxH" id="hEUjIXL" role="3EZMnx">
        <ref role="PMmxG" node="hEUgR_Z" resolve="Style_Component" />
      </node>
      <node concept="3F0ifn" id="hF4$x8V" role="3EZMnx">
        <node concept="VPM3Z" id="hF4$yFk" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F0ifn" id="fIxH7dN" role="3EZMnx">
        <property role="3F0ifm" value="Custom cell:" />
      </node>
      <node concept="3EZMnI" id="hF4$qDk" role="3EZMnx">
        <property role="3EZMnw" value="true" />
        <property role="3EZMnz" value="true" />
        <node concept="3EZMnI" id="h7YsR5r" role="3EZMnx">
          <node concept="3F0ifn" id="h7YsRhG" role="3EZMnx">
            <property role="3F0ifm" value="cell provider" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F1sOY" id="h7YsRBk" role="3EZMnx">
            <ref role="1NtTu8" to="tpc2:h7YsKQL" />
          </node>
          <node concept="VPM3Z" id="hEU$PS$" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="2jfAk2L98ep" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2iRfu4" id="i2IxuQz" role="2iSdaV" />
        </node>
        <node concept="VPXOz" id="hF4$uMw" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="2EHx9g" id="i2IxuQk" role="2iSdaV" />
      </node>
      <node concept="VPM3Z" id="hEU$PME" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="i2IxuNs" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="fIxZuyN">
    <property role="TrG5h" value="CellModel_ModelAccess_Editor" />
    <property role="3GE5qa" value="CellModel" />
    <ref role="1XX52x" to="tpc2:fCXafTX" resolve="CellModel_ModelAccess" />
    <node concept="3EZMnI" id="fIxZuyS" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <ref role="1k5W1q" node="hX5ZSzR" resolve="borderedCollection" />
      <node concept="PMmxH" id="h7TNBI_" role="3EZMnx">
        <ref role="PMmxG" node="h7TMiuR" resolve="_OpenTag" />
      </node>
      <node concept="3F0ifn" id="h7Ugtki" role="3EZMnx">
        <property role="3F0ifm" value="model access" />
        <node concept="VPXOz" id="hEUNSFj" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="30gYXW" id="hLnuTv0" role="3F10Kt">
          <node concept="3ZlJ5R" id="hLnuTv1" role="VblUZ">
            <node concept="3clFbS" id="hLnuTv2" role="2VODD2">
              <node concept="3clFbF" id="hLnuTv3" role="3cqZAp">
                <node concept="2OqwBi" id="hLnuTv4" role="3clFbG">
                  <node concept="pncrf" id="hLnuTv5" role="2Oq$k0" />
                  <node concept="2qgKlT" id="hLnuTv6" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:hL7BhMP" resolve="getTextBackgroundColor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="Veino" id="hLnuTv7" role="3F10Kt">
          <node concept="3ZlJ5R" id="hLnuTv8" role="VblUZ">
            <node concept="3clFbS" id="hLnuTv9" role="2VODD2">
              <node concept="3clFbF" id="hLnuTva" role="3cqZAp">
                <node concept="2OqwBi" id="hLnuTvb" role="3clFbG">
                  <node concept="pncrf" id="hLnuTvc" role="2Oq$k0" />
                  <node concept="2qgKlT" id="hLnuTvd" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:hL7rNfN" resolve="getBackgroundColor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VechU" id="hLnuTve" role="3F10Kt">
          <node concept="3ZlJ5R" id="hLnuTvf" role="VblUZ">
            <node concept="3clFbS" id="hLnuTvg" role="2VODD2">
              <node concept="3clFbF" id="hLnuTvh" role="3cqZAp">
                <node concept="2OqwBi" id="hLnuTvi" role="3clFbG">
                  <node concept="pncrf" id="hLnuTvj" role="2Oq$k0" />
                  <node concept="2qgKlT" id="hLnuTvk" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:hL6TA5F" resolve="getForegroundColor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="Vb9p2" id="hLnuTvl" role="3F10Kt">
          <node concept="17KAyr" id="hLnuTvm" role="17MNgL">
            <node concept="3clFbS" id="hLnuTvn" role="2VODD2">
              <node concept="3clFbF" id="hLnuTvo" role="3cqZAp">
                <node concept="2OqwBi" id="hLnuTvp" role="3clFbG">
                  <node concept="pncrf" id="hLnuTvq" role="2Oq$k0" />
                  <node concept="2qgKlT" id="hLnuTvr" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:hLcv3Z9" resolve="getFontStyle" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VQ3r3" id="hLnuTvs" role="3F10Kt">
          <node concept="1d0yFN" id="hLnuTvt" role="1mkY_M">
            <node concept="3clFbS" id="hLnuTvu" role="2VODD2">
              <node concept="3clFbF" id="hLnuTvv" role="3cqZAp">
                <node concept="2OqwBi" id="hLnuTvw" role="3clFbG">
                  <node concept="pncrf" id="hLnuTvx" role="2Oq$k0" />
                  <node concept="2qgKlT" id="hLnuTvy" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:hLmqR8u" resolve="isUnderlined" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="h7TNCT3" role="3EZMnx">
        <ref role="PMmxG" node="h7TMK$j" resolve="_CloseTag" />
        <node concept="VPXOz" id="hEUNSV$" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2iRfu4" id="i2IxuPU" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="fIxZuyV" role="6VMZX">
      <property role="3EZMnw" value="true" />
      <node concept="PMmxH" id="hF4FuTU" role="3EZMnx">
        <ref role="PMmxG" node="hF4ssnw" resolve="_CellModel_Common" />
      </node>
      <node concept="3F0ifn" id="hF4FuTV" role="3EZMnx">
        <node concept="VPM3Z" id="hF4Fw8M" role="3F10Kt" />
        <node concept="Vb9p2" id="hN2HA3Q" role="3F10Kt">
          <property role="Vbekb" value="BOLD" />
        </node>
      </node>
      <node concept="3F0ifn" id="fIxZuyW" role="3EZMnx">
        <property role="3F0ifm" value="Model access cell:" />
        <ref role="1k5W1q" node="hF4yUZ8" resolve="header" />
      </node>
      <node concept="3EZMnI" id="hF4vN1m" role="3EZMnx">
        <property role="3EZMnw" value="true" />
        <property role="3EZMnz" value="true" />
        <node concept="3EZMnI" id="h7UiHVg" role="3EZMnx">
          <node concept="3F0ifn" id="h7UiHVh" role="3EZMnx">
            <property role="3F0ifm" value="model acessor:" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="VPM3Z" id="hEU$Pxn" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="2jfAk2L2CU1" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3F1sOY" id="h7UiHVj" role="3EZMnx">
            <ref role="1NtTu8" to="tpc2:h7TRxg_" />
          </node>
          <node concept="2iRfu4" id="i2IxuOh" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="gFd8cJA" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="gFd8cJB" role="3EZMnx">
            <property role="3F0ifm" value="text*" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F0A7n" id="gFd8cJC" role="3EZMnx">
            <property role="1$x2rV" value="&lt;none&gt;" />
            <ref role="1NtTu8" to="tpc2:fKihaHs" resolve="nullText" />
            <node concept="VPXOz" id="hEUNSvq" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="30gYXW" id="hF0kJSm" role="3F10Kt">
              <property role="Vb096" value="yellow" />
            </node>
            <node concept="30h1P$" id="hF0kJVf" role="3F10Kt">
              <property role="Vb096" value="cyan" />
            </node>
          </node>
          <node concept="VPM3Z" id="hEU$PHc" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="hEUNSnM" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2iRfu4" id="i2IxuMw" role="2iSdaV" />
        </node>
        <node concept="VPXOz" id="hF4GGwR" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="2EHx9g" id="i2IxuNH" role="2iSdaV" />
      </node>
      <node concept="VPM3Z" id="hEU$PrG" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="i2IxuMK" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="fIyaLHh">
    <property role="TrG5h" value="CellModel_Property_Editor" />
    <property role="3GE5qa" value="CellModel" />
    <ref role="1XX52x" to="tpc2:fBF0A4I" resolve="CellModel_Property" />
    <node concept="3EZMnI" id="fIyaLHm" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <ref role="1k5W1q" node="i0pPgF8" resolve="rootCellModelStyle" />
      <node concept="PMmxH" id="h7TNFCB" role="3EZMnx">
        <ref role="PMmxG" node="h7TMiuR" resolve="_OpenTag" />
        <node concept="VPXOz" id="hEUNSH7" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1iCGBv" id="g_U_RSN" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no property&gt;" />
        <ref role="1NtTu8" to="tpc2:fBF1KQc" />
        <ref role="1k5W1q" node="hX1xO3O" resolve="bordered" />
        <node concept="1sVBvm" id="g_U_RSM" role="1sWHZn">
          <node concept="3F0A7n" id="g_U_U1N" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <property role="1$x2rV" value="&lt;no name&gt;" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <node concept="VPXOz" id="hEUNSNv" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
        </node>
        <node concept="30gYXW" id="hLnxVq0" role="3F10Kt">
          <node concept="3ZlJ5R" id="hLnxVq1" role="VblUZ">
            <node concept="3clFbS" id="hLnxVq2" role="2VODD2">
              <node concept="3clFbF" id="hLnxVq3" role="3cqZAp">
                <node concept="2OqwBi" id="hLnxVq4" role="3clFbG">
                  <node concept="pncrf" id="hLnxVq5" role="2Oq$k0" />
                  <node concept="2qgKlT" id="hLnxVq6" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:hL7BhMP" resolve="getTextBackgroundColor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="Veino" id="hLnxVq7" role="3F10Kt">
          <node concept="3ZlJ5R" id="hLnxVq8" role="VblUZ">
            <node concept="3clFbS" id="hLnxVq9" role="2VODD2">
              <node concept="3clFbF" id="hLnxVqa" role="3cqZAp">
                <node concept="2OqwBi" id="hLnxVqb" role="3clFbG">
                  <node concept="pncrf" id="hLnxVqc" role="2Oq$k0" />
                  <node concept="2qgKlT" id="hLnxVqd" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:hL7rNfN" resolve="getBackgroundColor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VechU" id="hLnxVqe" role="3F10Kt">
          <node concept="3ZlJ5R" id="hLnxVqf" role="VblUZ">
            <node concept="3clFbS" id="hLnxVqg" role="2VODD2">
              <node concept="3clFbF" id="hLnxVqh" role="3cqZAp">
                <node concept="2OqwBi" id="hLnxVqi" role="3clFbG">
                  <node concept="pncrf" id="hLnxVqj" role="2Oq$k0" />
                  <node concept="2qgKlT" id="hLnxVqk" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:hL6TA5F" resolve="getForegroundColor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="Vb9p2" id="hLnxVql" role="3F10Kt">
          <property role="Vbekb" value="QUERY" />
          <node concept="17KAyr" id="hLnxVqm" role="17MNgL">
            <node concept="3clFbS" id="hLnxVqn" role="2VODD2">
              <node concept="3clFbF" id="hLnxVqo" role="3cqZAp">
                <node concept="2OqwBi" id="hLnxVqp" role="3clFbG">
                  <node concept="pncrf" id="hLnxVqq" role="2Oq$k0" />
                  <node concept="2qgKlT" id="hLnxVqr" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:hLcv3Z9" resolve="getFontStyle" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VQ3r3" id="hLnxVqs" role="3F10Kt">
          <node concept="1d0yFN" id="hLnxVqt" role="1mkY_M">
            <node concept="3clFbS" id="hLnxVqu" role="2VODD2">
              <node concept="3clFbF" id="hLnxVqv" role="3cqZAp">
                <node concept="2OqwBi" id="hLnxVqw" role="3clFbG">
                  <node concept="pncrf" id="hLnxVqx" role="2Oq$k0" />
                  <node concept="2qgKlT" id="hLnxVqy" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:hLmqR8u" resolve="isUnderlined" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3nxI2P" id="hNteHSQ" role="3F10Kt">
          <node concept="3nzxsE" id="hNteLp0" role="3n$kyP">
            <node concept="3clFbS" id="hNteLp1" role="2VODD2">
              <node concept="3clFbF" id="hNteM7b" role="3cqZAp">
                <node concept="2OqwBi" id="hNteMl8" role="3clFbG">
                  <node concept="pncrf" id="hNteM7c" role="2Oq$k0" />
                  <node concept="2qgKlT" id="hNteNBG" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:hNnL8J1" resolve="isStrikeOut" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="h7TNGSX" role="3EZMnx">
        <ref role="PMmxG" node="h7TMK$j" resolve="_CloseTag" />
        <node concept="VPXOz" id="hEUNSJT" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2iRfu4" id="i2IxuPI" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="fIyaLHq" role="6VMZX">
      <property role="3EZMnw" value="true" />
      <node concept="PMmxH" id="hF4FFz6" role="3EZMnx">
        <ref role="PMmxG" node="hF4ssnw" resolve="_CellModel_Common" />
      </node>
      <node concept="3F0ifn" id="hF4F$CU" role="3EZMnx">
        <node concept="VPM3Z" id="hF4FA9Q" role="3F10Kt" />
        <node concept="Vb9p2" id="hN2H_Wq" role="3F10Kt">
          <property role="Vbekb" value="BOLD" />
        </node>
      </node>
      <node concept="3F0ifn" id="fIyaLHr" role="3EZMnx">
        <property role="3F0ifm" value="Property cell:" />
        <ref role="1k5W1q" node="hF4yUZ8" resolve="header" />
      </node>
      <node concept="3EZMnI" id="hF4vYCT" role="3EZMnx">
        <property role="3EZMnw" value="true" />
        <property role="3EZMnz" value="true" />
        <node concept="3EZMnI" id="fIyaLHt" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="fIyaLHu" role="3EZMnx">
            <property role="3F0ifm" value="property" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="1iCGBv" id="g_UAygE" role="3EZMnx">
            <property role="1$x2rV" value="&lt;no property&gt;" />
            <ref role="1NtTu8" to="tpc2:fBF1KQc" />
            <node concept="1sVBvm" id="g_UAygF" role="1sWHZn">
              <node concept="3F0A7n" id="g_UAygG" role="2wV5jI">
                <property role="1Intyy" value="true" />
                <property role="1$x2rV" value="&lt;no name&gt;" />
                <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
                <node concept="VPXOz" id="hEUNSnE" role="3F10Kt">
                  <property role="VOm3f" value="true" />
                </node>
              </node>
            </node>
            <node concept="VPXOz" id="hEUNSRj" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="VPM3Z" id="hEU$PJ2" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="hEUNSHY" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2iRfu4" id="i2IxuQL" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="fKiuOcL" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="fKiuOcM" role="3EZMnx">
            <property role="3F0ifm" value="text*" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F0A7n" id="fKiuOcN" role="3EZMnx">
            <property role="1O74Pk" value="true" />
            <property role="1$x2rV" value="&lt;none&gt;" />
            <ref role="1NtTu8" to="tpc2:g_$x2vM" resolve="noTargetText" />
            <node concept="VPXOz" id="hEUNSIg" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="30gYXW" id="hF0kJU0" role="3F10Kt">
              <property role="Vb096" value="yellow" />
            </node>
            <node concept="30h1P$" id="hF0kJW5" role="3F10Kt">
              <property role="Vb096" value="cyan" />
            </node>
          </node>
          <node concept="VPM3Z" id="hEU$PBR" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="hEUNSkx" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pkWqt" id="hFvv_SX" role="pqm2j">
            <node concept="3clFbS" id="hFvv_SY" role="2VODD2">
              <node concept="3clFbF" id="hFvvG0U" role="3cqZAp">
                <node concept="3fqX7Q" id="hFvvG0V" role="3clFbG">
                  <node concept="2OqwBi" id="hFvvGoU" role="3fr31v">
                    <node concept="pncrf" id="hFvvGbW" role="2Oq$k0" />
                    <node concept="3TrcHB" id="hFvvGTr" role="2OqNvi">
                      <ref role="3TsBF5" to="tpc2:hF9s7y1" resolve="emptyNoTargetText" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2iRfu4" id="i2IxuOX" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="hF9sQsb" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="hF9sQsc" role="3EZMnx">
            <property role="3F0ifm" value="empty text*" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F0A7n" id="hF9sQsd" role="3EZMnx">
            <property role="1O74Pk" value="true" />
            <property role="1$x2rV" value="&lt;none&gt;" />
            <ref role="1NtTu8" to="tpc2:hF9s7y1" resolve="emptyNoTargetText" />
            <node concept="VPXOz" id="hF9sQse" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="30gYXW" id="hF9sQsf" role="3F10Kt">
              <property role="Vb096" value="yellow" />
            </node>
            <node concept="30h1P$" id="hF9sQsg" role="3F10Kt">
              <property role="Vb096" value="cyan" />
            </node>
          </node>
          <node concept="VPM3Z" id="hF9sQsh" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="hF9sQsi" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pkWqt" id="hF9sQsj" role="pqm2j">
            <node concept="3clFbS" id="hF9sQsk" role="2VODD2">
              <node concept="3clFbF" id="hF9sQsl" role="3cqZAp">
                <node concept="3clFbC" id="hF9sQsm" role="3clFbG">
                  <node concept="10Nm6u" id="hF9sQsn" role="3uHU7w" />
                  <node concept="2OqwBi" id="hF9sQso" role="3uHU7B">
                    <node concept="pncrf" id="hF9sQsp" role="2Oq$k0" />
                    <node concept="3TrcHB" id="hF9sQsq" role="2OqNvi">
                      <ref role="3TsBF5" to="tpc2:g_$x2vM" resolve="noTargetText" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2iRfu4" id="i2IxuT9" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="hF4w447" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="hF4w448" role="3EZMnx">
            <property role="3F0ifm" value="read only" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F0A7n" id="hF4w44b" role="3EZMnx">
            <ref role="1NtTu8" to="tpc2:g_IntAF" resolve="readOnly" />
            <node concept="VPXOz" id="hF4w44c" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="VPM3Z" id="hF4w44d" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="hF4w44e" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2iRfu4" id="i2IxuP5" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="hF4w44f" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="hF4w44g" role="3EZMnx">
            <property role="3F0ifm" value="allow empty" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F0A7n" id="hF4w44j" role="3EZMnx">
            <ref role="1NtTu8" to="tpc2:g_O74Lt" resolve="allowEmptyText" />
            <node concept="VPXOz" id="hF4w44k" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="VPM3Z" id="hF4w44l" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="hF4w44m" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2iRfu4" id="i2IxuQw" role="2iSdaV" />
          <node concept="pkWqt" id="59XpPRmadN_" role="pqm2j">
            <node concept="3clFbS" id="59XpPRmadNA" role="2VODD2">
              <node concept="3clFbF" id="59XpPRmafor" role="3cqZAp">
                <node concept="3fqX7Q" id="59XpPRmafo_" role="3clFbG">
                  <node concept="2OqwBi" id="59XpPRmafoA" role="3fr31v">
                    <node concept="pncrf" id="59XpPRmafoB" role="2Oq$k0" />
                    <node concept="1mIQ4w" id="59XpPRmafoC" role="2OqNvi">
                      <node concept="chp4Y" id="59XpPRmafoD" role="cj9EA">
                        <ref role="cht4Q" to="tpc2:heYWUh$" resolve="CellModel_NonEmptyProperty" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VPXOz" id="hF4GJh9" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="2EHx9g" id="i2IxuPE" role="2iSdaV" />
      </node>
      <node concept="VPM3Z" id="hEU$Ppw" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="i2IxuMn" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="fIAC36p">
    <property role="TrG5h" value="CellModel_RefNode_Editor" />
    <property role="3GE5qa" value="CellModel" />
    <ref role="1XX52x" to="tpc2:fBF1sR7" resolve="CellModel_RefNode" />
    <node concept="3EZMnI" id="fIAC36$" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <ref role="1k5W1q" node="i0pPgF8" resolve="rootCellModelStyle" />
      <node concept="PMmxH" id="h7TNJEI" role="3EZMnx">
        <ref role="PMmxG" node="h7TMiuR" resolve="_OpenTag" />
      </node>
      <node concept="1iCGBv" id="g_UCjzL" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no link&gt;" />
        <ref role="1NtTu8" to="tpc2:fBF1sR8" />
        <ref role="1k5W1q" node="hX1xO3O" resolve="bordered" />
        <node concept="1sVBvm" id="g_UCjzK" role="1sWHZn">
          <node concept="3F0A7n" id="g_UCoOH" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <property role="1$x2rV" value="&lt;no role&gt;" />
            <ref role="1NtTu8" to="tpce:fA0kJcN" resolve="role" />
            <node concept="VPXOz" id="hEUNSJS" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="h7TNL7h" role="3EZMnx">
        <ref role="PMmxG" node="h7TMK$j" resolve="_CloseTag" />
      </node>
      <node concept="2iRfu4" id="i2IxuQy" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="fIAC36C" role="6VMZX">
      <property role="3EZMnw" value="true" />
      <node concept="PMmxH" id="hF4xiEu" role="3EZMnx">
        <ref role="PMmxG" node="hF4ssnw" resolve="_CellModel_Common" />
      </node>
      <node concept="3F0ifn" id="hF4zVn6" role="3EZMnx" />
      <node concept="3F0ifn" id="fIAC36D" role="3EZMnx">
        <property role="3F0ifm" value="Ref.node cell:" />
        <ref role="1k5W1q" node="hF4yUZ8" resolve="header" />
      </node>
      <node concept="3EZMnI" id="hF4wIvO" role="3EZMnx">
        <property role="3EZMnw" value="true" />
        <property role="3EZMnz" value="true" />
        <node concept="3EZMnI" id="hF4xb40" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="hF4xb41" role="3EZMnx">
            <property role="3F0ifm" value="link" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="1iCGBv" id="hF4xb44" role="3EZMnx">
            <property role="1$x2rV" value="&lt;no link&gt;" />
            <ref role="1NtTu8" to="tpc2:fBF1sR8" />
            <node concept="1sVBvm" id="hF4xb45" role="1sWHZn">
              <node concept="3F0A7n" id="hF4xb46" role="2wV5jI">
                <property role="1Intyy" value="true" />
                <property role="1$x2rV" value="&lt;no role&gt;" />
                <ref role="1NtTu8" to="tpce:fA0kJcN" resolve="role" />
                <node concept="VPXOz" id="hF4xb47" role="3F10Kt">
                  <property role="VOm3f" value="true" />
                </node>
              </node>
            </node>
            <node concept="VPXOz" id="hF4xb48" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="VPM3Z" id="hF4xb49" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="hF4xb4a" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2iRfu4" id="i2IxuOl" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="hF4xb4b" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="hF4xb4c" role="3EZMnx">
            <property role="3F0ifm" value="text*" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F0A7n" id="hF4xb4f" role="3EZMnx">
            <property role="1O74Pk" value="true" />
            <property role="1$x2rV" value="&lt;none&gt;" />
            <ref role="1NtTu8" to="tpc2:g_$x2vM" resolve="noTargetText" />
            <node concept="VPXOz" id="hF4xb4g" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="30gYXW" id="hF4xb4h" role="3F10Kt">
              <property role="Vb096" value="yellow" />
            </node>
            <node concept="30h1P$" id="hF4xb4i" role="3F10Kt">
              <property role="Vb096" value="cyan" />
            </node>
          </node>
          <node concept="VPM3Z" id="hF4xb4j" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="hF4xb4k" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2iRfu4" id="i2IxuN4" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="hF9sT4c" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="hF9sT4d" role="3EZMnx">
            <property role="3F0ifm" value="empty text*" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F0A7n" id="hF9sT4e" role="3EZMnx">
            <property role="1O74Pk" value="true" />
            <property role="1$x2rV" value="&lt;none&gt;" />
            <ref role="1NtTu8" to="tpc2:hF9s7y1" resolve="emptyNoTargetText" />
            <node concept="VPXOz" id="hF9sT4f" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="30gYXW" id="hF9sT4g" role="3F10Kt">
              <property role="Vb096" value="yellow" />
            </node>
            <node concept="30h1P$" id="hF9sT4h" role="3F10Kt">
              <property role="Vb096" value="cyan" />
            </node>
          </node>
          <node concept="VPM3Z" id="hF9sT4i" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="hF9sT4j" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pkWqt" id="hF9sT4k" role="pqm2j">
            <node concept="3clFbS" id="hF9sT4l" role="2VODD2">
              <node concept="3clFbF" id="hF9sT4m" role="3cqZAp">
                <node concept="3clFbC" id="hF9sT4n" role="3clFbG">
                  <node concept="10Nm6u" id="hF9sT4o" role="3uHU7w" />
                  <node concept="2OqwBi" id="hF9sT4p" role="3uHU7B">
                    <node concept="pncrf" id="hF9sT4q" role="2Oq$k0" />
                    <node concept="3TrcHB" id="hF9sT4r" role="2OqNvi">
                      <ref role="3TsBF5" to="tpc2:g_$x2vM" resolve="noTargetText" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2iRfu4" id="i2IxuSg" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="55my_QKPih4" role="3EZMnx">
          <node concept="VPM3Z" id="55my_QKPih5" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="55my_QKPih6" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3F0ifn" id="55my_QKPih7" role="3EZMnx">
            <property role="3F0ifm" value="add context hints" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F1sOY" id="55my_QKPih8" role="3EZMnx">
            <ref role="1NtTu8" to="tpc2:55my_QKP5Sf" />
            <ref role="1ERwB7" node="55my_QKP_mV" resolve="CellModel_RefNode_AddHint_Actions" />
          </node>
          <node concept="2iRfu4" id="55my_QKPih9" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="55my_QKPiha" role="3EZMnx">
          <node concept="VPM3Z" id="55my_QKPihb" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="55my_QKPihc" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3F0ifn" id="55my_QKPihd" role="3EZMnx">
            <property role="3F0ifm" value="remove context hints" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F1sOY" id="55my_QKPihe" role="3EZMnx">
            <ref role="1NtTu8" to="tpc2:55my_QKP5Sg" />
            <ref role="1ERwB7" node="55my_QKPFFX" resolve="CellModel_RefNode_RemoveHint_Actions" />
          </node>
          <node concept="2iRfu4" id="55my_QKPihf" role="2iSdaV" />
        </node>
        <node concept="VPXOz" id="hF4$63F" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="2EHx9g" id="i2IxuUh" role="2iSdaV" />
      </node>
      <node concept="VPM3Z" id="hEU$PGV" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="i2IxuJC" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="fIGb0op">
    <property role="TrG5h" value="EditorCellModel_Editor" />
    <property role="3GE5qa" value="CellModel" />
    <ref role="1XX52x" to="tpc2:fBEYTCT" resolve="EditorCellModel" />
    <node concept="3EZMnI" id="fIGb0os" role="6VMZX">
      <property role="3EZMnw" value="true" />
      <node concept="3F0ifn" id="fIGb0ot" role="3EZMnx">
        <property role="3F0ifm" value="&lt; abstract cell &gt;" />
        <node concept="VPM3Z" id="hEU$Q2m" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPXOz" id="hEUNSr1" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="Vb9p2" id="hN2PFVM" role="3F10Kt">
          <property role="Vbekb" value="BOLD" />
        </node>
      </node>
      <node concept="VPM3Z" id="hEU$PoW" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="i2IxuOQ" role="2iSdaV" />
    </node>
    <node concept="1xolST" id="fIGb0ou" role="2wV5jI">
      <property role="1xolSY" value="&lt;choose cell model&gt;" />
      <ref role="1k5W1q" node="hX5ZSzR" resolve="borderedCollection" />
    </node>
  </node>
  <node concept="24kQdi" id="fJ26j0n">
    <property role="TrG5h" value="CellKeyMapDeclaration_Editor" />
    <property role="3GE5qa" value="CellKeyMap" />
    <ref role="1XX52x" to="tpc2:fJ25Fcr" resolve="CellKeyMapDeclaration" />
    <node concept="3EZMnI" id="fJ26onF" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="fJ27RWD" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="3F0ifn" id="fJ28BLe" role="3EZMnx">
          <property role="3F0ifm" value="keymap" />
        </node>
        <node concept="3F0A7n" id="gyQonyW" role="3EZMnx">
          <property role="1$x2rV" value="&lt;no name&gt;" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="OXEIz" id="huegcs$" role="P5bDN">
            <node concept="3yc0Fo" id="huekKh4" role="OY2wv">
              <node concept="3ycQeJ" id="huekKh5" role="3yc0Fp">
                <node concept="3clFbS" id="huekKh6" role="2VODD2">
                  <node concept="3cpWs8" id="huel08M" role="3cqZAp">
                    <node concept="3cpWsn" id="huel08N" role="3cpWs9">
                      <property role="TrG5h" value="prefixes" />
                      <node concept="_YKpA" id="huel08O" role="1tU5fm">
                        <node concept="17QB3L" id="hP36DmS" role="_ZDj9" />
                      </node>
                      <node concept="2ShNRf" id="huel7eB" role="33vP2m">
                        <node concept="Tc6Ow" id="huel7eC" role="2ShVmc">
                          <node concept="17QB3L" id="hP36C1b" role="HW$YZ" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="huelkZr" role="3cqZAp">
                    <node concept="2OqwBi" id="h$UNPrs" role="3clFbG">
                      <node concept="37vLTw" id="3GM_nagTz95" role="2Oq$k0">
                        <ref role="3cqZAo" node="huel08N" resolve="prefixes" />
                      </node>
                      <node concept="TSZUe" id="huellKI" role="2OqNvi">
                        <node concept="Xl_RD" id="huelmMo" role="25WWJ7">
                          <property role="Xl_RC" value="_KeyMap" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="huekYUB" role="3cqZAp">
                    <node concept="3y3z36" id="huel9N6" role="3clFbw">
                      <node concept="10Nm6u" id="hueladn" role="3uHU7w" />
                      <node concept="2OqwBi" id="hxx$USB" role="3uHU7B">
                        <node concept="3GMtW1" id="huel8gt" role="2Oq$k0" />
                        <node concept="3TrEf2" id="huel8V7" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpc2:g_chiKl" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="huekYUD" role="3clFbx">
                      <node concept="3clFbF" id="huelbfn" role="3cqZAp">
                        <node concept="2OqwBi" id="h$UNPqC" role="3clFbG">
                          <node concept="37vLTw" id="3GM_nagTANK" role="2Oq$k0">
                            <ref role="3cqZAo" node="huel08N" resolve="prefixes" />
                          </node>
                          <node concept="TSZUe" id="huelcv0" role="2OqNvi">
                            <node concept="3cpWs3" id="hueleqs" role="25WWJ7">
                              <node concept="Xl_RD" id="huelfLG" role="3uHU7w">
                                <property role="Xl_RC" value="_KeyMap" />
                              </node>
                              <node concept="2OqwBi" id="hxx$YxI" role="3uHU7B">
                                <node concept="2OqwBi" id="hxx$RgM" role="2Oq$k0">
                                  <node concept="3GMtW1" id="hueld7k" role="2Oq$k0" />
                                  <node concept="3TrEf2" id="hueldBo" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tpc2:g_chiKl" />
                                  </node>
                                </node>
                                <node concept="3TrcHB" id="huele41" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="hueljWU" role="3cqZAp">
                    <node concept="37vLTw" id="3GM_nagTtwy" role="3clFbG">
                      <ref role="3cqZAo" node="huel08N" resolve="prefixes" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$P8n" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IxuU$" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="gIXBTtc" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$P_i" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="gIXC0Gs" role="3EZMnx">
        <node concept="3F0ifn" id="gIXC1ns" role="3EZMnx">
          <property role="3F0ifm" value="everyModel" />
        </node>
        <node concept="3F0A7n" id="gIXC8jD" role="3EZMnx">
          <ref role="1NtTu8" to="tpc2:gIXBED0" resolve="everyModel" />
        </node>
        <node concept="VPM3Z" id="hEU$PRW" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IxuU2" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="gyQmZby" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$PSx" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="g_civ_S" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="3F0ifn" id="g_civ_T" role="3EZMnx">
          <property role="3F0ifm" value="applicable concept:" />
          <node concept="VPM3Z" id="hEU$PPY" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="1iCGBv" id="g_civ_U" role="3EZMnx">
          <property role="1$x2rV" value="&lt;any&gt;" />
          <ref role="1NtTu8" to="tpc2:g_chiKl" />
          <node concept="1sVBvm" id="g_civ_V" role="1sWHZn">
            <node concept="3F0A7n" id="g_civ_W" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <property role="1$x2rV" value="&lt;no name&gt;" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
              <node concept="VPXOz" id="hEUNSqH" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
              <node concept="VechU" id="hEZR8wn" role="3F10Kt">
                <property role="Vb096" value="DARK_MAGENTA" />
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$PQ6" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IxuMX" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="g_ci_BY" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$PvJ" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F0ifn" id="gyQn525" role="3EZMnx">
        <property role="3F0ifm" value="keymap items:" />
        <node concept="VPM3Z" id="hEU$OXt" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F0ifn" id="gyQng6B" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$PBI" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F2HdR" id="gyQnl1_" role="3EZMnx">
        <property role="2czwfN" value="true" />
        <ref role="1NtTu8" to="tpc2:gyQnntA" />
        <node concept="2iRkQZ" id="i2IxuV9" role="2czzBx" />
      </node>
      <node concept="2iRkQZ" id="i2IxxZw" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="fJ4QLGS">
    <property role="TrG5h" value="_CellKeyMapLnk_Component" />
    <ref role="1XX52x" to="tpc2:fBEYTCT" resolve="EditorCellModel" />
    <node concept="1iCGBv" id="g_UDlSK" role="2wV5jI">
      <property role="1$x2rV" value="&lt;default&gt;" />
      <ref role="1NtTu8" to="tpc2:fJ4QXdL" />
      <node concept="1sVBvm" id="g_UDlSL" role="1sWHZn">
        <node concept="3F0A7n" id="g_UDn98" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <property role="1$x2rV" value="&lt;no name&gt;" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="VPXOz" id="hEUNSvr" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="VPXOz" id="hEUNSOG" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="fPiEECi">
    <property role="TrG5h" value="CellModel_RefCell_Editor" />
    <property role="3GE5qa" value="CellModel" />
    <ref role="1XX52x" to="tpc2:fPiCG$y" resolve="CellModel_RefCell" />
    <node concept="3EZMnI" id="fPlWOk7" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <ref role="1k5W1q" node="i0pPgF8" resolve="rootCellModelStyle" />
      <node concept="PMmxH" id="h7TNSEw" role="3EZMnx">
        <ref role="PMmxG" node="h7TMiuR" resolve="_OpenTag" />
      </node>
      <node concept="3F0ifn" id="fPJC0zr" role="3EZMnx">
        <property role="3F0ifm" value="%" />
        <ref role="1k5W1q" node="hX1xO3O" resolve="bordered" />
      </node>
      <node concept="1iCGBv" id="g_UAAjh" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no link&gt;" />
        <ref role="1NtTu8" to="tpc2:fPiD8ey" />
        <ref role="1k5W1q" node="hX1xO3O" resolve="bordered" />
        <node concept="1sVBvm" id="g_UAAjg" role="1sWHZn">
          <node concept="3F0A7n" id="g_UAC0s" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <property role="1$x2rV" value="&lt;no role&gt;" />
            <ref role="1NtTu8" to="tpce:fA0kJcN" resolve="role" />
            <ref role="1k5W1q" to="tpd3:hwSDXQa" resolve="ReferenceDecorated" />
            <node concept="VPXOz" id="hEUNSpV" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="VPM3Z" id="hF6E_QY" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="fPJC0zt" role="3EZMnx">
        <property role="3F0ifm" value="%" />
        <ref role="1k5W1q" node="hX1xO3O" resolve="bordered" />
      </node>
      <node concept="3F1sOY" id="fPJC0zu" role="3EZMnx">
        <property role="1$x2rV" value="&lt;press ctrl-space&gt;" />
        <ref role="1NtTu8" to="tpc2:fPsWHWE" />
        <node concept="pkWqt" id="gFRPFL6" role="pqm2j">
          <node concept="3clFbS" id="gFRPFL7" role="2VODD2">
            <node concept="3clFbF" id="hF6BmtW" role="3cqZAp">
              <node concept="3y3z36" id="gFRPIlw" role="3clFbG">
                <node concept="10Nm6u" id="gFRPJi_" role="3uHU7w" />
                <node concept="2OqwBi" id="hxx$O47" role="3uHU7B">
                  <node concept="pncrf" id="gFRPGwx" role="2Oq$k0" />
                  <node concept="3TrEf2" id="gFRPHRt" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpc2:fPiD8ey" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VPXOz" id="hEUNSPR" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="h7TNUcE" role="3EZMnx">
        <ref role="PMmxG" node="h7TMK$j" resolve="_CloseTag" />
      </node>
      <node concept="2iRfu4" id="i2IxuPf" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="fPm0n96" role="6VMZX">
      <property role="3EZMnw" value="true" />
      <node concept="PMmxH" id="hF6wgcD" role="3EZMnx">
        <ref role="PMmxG" node="hF4ssnw" resolve="_CellModel_Common" />
      </node>
      <node concept="3F0ifn" id="hF4FLkh" role="3EZMnx">
        <node concept="VPM3Z" id="hF4FLXy" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="fPm0n97" role="3EZMnx">
        <property role="3F0ifm" value="Referent node cell:" />
        <ref role="1k5W1q" node="hF4yUZ8" resolve="header" />
      </node>
      <node concept="3EZMnI" id="hF4wiKU" role="3EZMnx">
        <property role="3EZMnw" value="true" />
        <property role="3EZMnz" value="true" />
        <node concept="3EZMnI" id="fPm0n99" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="fPm0n9a" role="3EZMnx">
            <property role="3F0ifm" value="link" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="1iCGBv" id="g_UBaUf" role="3EZMnx">
            <property role="1$x2rV" value="&lt;no link&gt;" />
            <ref role="1NtTu8" to="tpc2:fPiD8ey" />
            <ref role="1k5W1q" to="tpd3:hwSDXQa" resolve="ReferenceDecorated" />
            <node concept="1sVBvm" id="g_UBaUg" role="1sWHZn">
              <node concept="3F0A7n" id="g_UBaUh" role="2wV5jI">
                <property role="1Intyy" value="true" />
                <property role="1$x2rV" value="&lt;no role&gt;" />
                <ref role="1NtTu8" to="tpce:fA0kJcN" resolve="role" />
                <node concept="VPXOz" id="hEUNSVh" role="3F10Kt">
                  <property role="VOm3f" value="true" />
                </node>
              </node>
            </node>
            <node concept="VPXOz" id="hEUNSFE" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="VPM3Z" id="hEU$Pjq" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="hEUNSsW" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2iRfu4" id="i2IxuP2" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="fPGtjJX" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="fPGtjJY" role="3EZMnx">
            <property role="3F0ifm" value="effective type (deprectated)" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
            <node concept="VechU" id="yhhM3U1LKG" role="3F10Kt">
              <property role="Vb096" value="red" />
            </node>
            <node concept="Vb9p2" id="yhhM3U1LKI" role="3F10Kt">
              <property role="Vbekb" value="BOLD" />
            </node>
          </node>
          <node concept="1iCGBv" id="gGl6xXV" role="3EZMnx">
            <property role="1$x2rV" value="error! no editor component" />
            <ref role="1NtTu8" to="tpc2:fPsWHWE" />
            <node concept="1sVBvm" id="gGl6xXW" role="1sWHZn">
              <node concept="1iCGBv" id="gGl6AlZ" role="2wV5jI">
                <property role="1$x2rV" value="error! no associated concept" />
                <ref role="1NtTu8" to="tpc2:gXXX56I" />
                <node concept="1sVBvm" id="gGl6Am0" role="1sWHZn">
                  <node concept="3F0A7n" id="gGl6BGu" role="2wV5jI">
                    <property role="1Intyy" value="true" />
                    <property role="1$x2rV" value="&lt;no name&gt;" />
                    <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="VPM3Z" id="hEU$Q0D" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="hEUNSus" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2iRfu4" id="i2IxuR0" role="2iSdaV" />
          <node concept="pkWqt" id="yhhM3U1M0L" role="pqm2j">
            <node concept="3clFbS" id="yhhM3U1M0M" role="2VODD2">
              <node concept="3clFbF" id="yhhM3U1M0N" role="3cqZAp">
                <node concept="2OqwBi" id="yhhM3U1M0O" role="3clFbG">
                  <node concept="2OqwBi" id="yhhM3U1M0P" role="2Oq$k0">
                    <node concept="2OqwBi" id="yhhM3U1M0Q" role="2Oq$k0">
                      <node concept="pncrf" id="yhhM3U1M0R" role="2Oq$k0" />
                      <node concept="3TrEf2" id="yhhM3U1M0S" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpc2:fPsWHWE" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="yhhM3U1M0T" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpc2:gXXX56I" />
                    </node>
                  </node>
                  <node concept="3x8VRR" id="yhhM3U1M0U" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3EZMnI" id="g$9UmEJ" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="g$9UmEK" role="3EZMnx">
            <property role="3F0ifm" value="text*" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F0A7n" id="g$9UmEL" role="3EZMnx">
            <property role="1O74Pk" value="true" />
            <property role="1$x2rV" value="&lt;none&gt;" />
            <ref role="1NtTu8" to="tpc2:g_$x2vM" resolve="noTargetText" />
            <node concept="VPXOz" id="hEUNSt0" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="30gYXW" id="hF0kJU2" role="3F10Kt">
              <property role="Vb096" value="yellow" />
            </node>
            <node concept="30h1P$" id="hF0kJW9" role="3F10Kt">
              <property role="Vb096" value="cyan" />
            </node>
          </node>
          <node concept="VPM3Z" id="hEU$PuD" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="hEUNSMO" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2iRfu4" id="i2IxuUl" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="hF9sS1x" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="hF9sS1y" role="3EZMnx">
            <property role="3F0ifm" value="empty text*" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F0A7n" id="hF9sS1z" role="3EZMnx">
            <property role="1O74Pk" value="true" />
            <property role="1$x2rV" value="&lt;none&gt;" />
            <ref role="1NtTu8" to="tpc2:hF9s7y1" resolve="emptyNoTargetText" />
            <node concept="VPXOz" id="hF9sS1$" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="30gYXW" id="hF9sS1_" role="3F10Kt">
              <property role="Vb096" value="yellow" />
            </node>
            <node concept="30h1P$" id="hF9sS1A" role="3F10Kt">
              <property role="Vb096" value="cyan" />
            </node>
          </node>
          <node concept="VPM3Z" id="hF9sS1B" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="hF9sS1C" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pkWqt" id="hF9sS1D" role="pqm2j">
            <node concept="3clFbS" id="hF9sS1E" role="2VODD2">
              <node concept="3clFbF" id="hF9sS1F" role="3cqZAp">
                <node concept="3clFbC" id="hF9sS1G" role="3clFbG">
                  <node concept="10Nm6u" id="hF9sS1H" role="3uHU7w" />
                  <node concept="2OqwBi" id="hF9sS1I" role="3uHU7B">
                    <node concept="pncrf" id="hF9sS1J" role="2Oq$k0" />
                    <node concept="3TrcHB" id="hF9sS1K" role="2OqNvi">
                      <ref role="3TsBF5" to="tpc2:g_$x2vM" resolve="noTargetText" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2iRfu4" id="i2IxuOf" role="2iSdaV" />
        </node>
        <node concept="2EHx9g" id="i2IxuT0" role="2iSdaV" />
      </node>
      <node concept="VPM3Z" id="hF4J013" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="2iRkQZ" id="i2IxuT$" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="fPsXQ0K">
    <property role="TrG5h" value="InlineEditorComponent_Editor" />
    <ref role="1XX52x" to="tpc2:fPsVBsF" resolve="InlineEditorComponent" />
    <node concept="3EZMnI" id="fPsXQ0L" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <ref role="1k5W1q" node="i0pPgF8" resolve="rootCellModelStyle" />
      <node concept="3F0ifn" id="fPETMlA" role="3EZMnx">
        <property role="3F0ifm" value="-&gt;" />
        <ref role="1k5W1q" node="hX1xO3O" resolve="bordered" />
        <node concept="VPM3Z" id="hEU$P8e" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="g_TZsOO" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:fIwV5gl" />
        <ref role="34QXea" node="gtczF7b" resolve="EditorCellModel_KeyMap" />
      </node>
      <node concept="2iRfu4" id="i2IxuOY" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="fPQpGDB">
    <property role="TrG5h" value="CellModel_Alternation_Editor" />
    <property role="3GE5qa" value="CellModel" />
    <ref role="1XX52x" to="tpc2:fPQoSf$" resolve="CellModel_Alternation" />
    <node concept="3EZMnI" id="fPQpGDC" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <ref role="1k5W1q" node="i0pPgF8" resolve="rootCellModelStyle" />
      <node concept="PMmxH" id="h7TNWtd" role="3EZMnx">
        <ref role="PMmxG" node="h7TMiuR" resolve="_OpenTag" />
        <node concept="VPXOz" id="hEUNSql" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="fPQrr57" role="3EZMnx">
        <property role="3EZMnw" value="true" />
        <property role="3EZMnz" value="true" />
        <node concept="3EZMnI" id="fPQr5r$" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <ref role="1k5W1q" node="hX5ZSzR" resolve="borderedCollection" />
          <node concept="3F0ifn" id="fPQr5r_" role="3EZMnx">
            <property role="3F0ifm" value="true:" />
            <ref role="1k5W1q" node="hX1xO3O" resolve="bordered" />
          </node>
          <node concept="3F1sOY" id="fPQr5rA" role="3EZMnx">
            <property role="1$x2rV" value="&lt;no cell model&gt;" />
            <ref role="1NtTu8" to="tpc2:fPQoS0T" />
            <node concept="VPXOz" id="hEUNSPm" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="2iRfu4" id="i2IxuPW" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="fPQrr58" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <ref role="1k5W1q" node="hX5ZSzR" resolve="borderedCollection" />
          <node concept="3F0ifn" id="fPQrr59" role="3EZMnx">
            <property role="3F0ifm" value="false:" />
            <ref role="1k5W1q" node="hX1xO3O" resolve="bordered" />
          </node>
          <node concept="3F1sOY" id="fPQrr5a" role="3EZMnx">
            <property role="1$x2rV" value="&lt;none&gt;" />
            <ref role="1NtTu8" to="tpc2:fPQoVQ3" />
            <node concept="VPXOz" id="hEUNSRM" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="2iRfu4" id="i2IxuO3" role="2iSdaV" />
        </node>
        <node concept="pkWqt" id="gFRF$iK" role="pqm2j">
          <node concept="3clFbS" id="gFRF$iL" role="2VODD2">
            <node concept="3cpWs6" id="gFRF$A4" role="3cqZAp">
              <node concept="2OqwBi" id="hxx$TZj" role="3cqZAk">
                <node concept="pncrf" id="gFRF_uZ" role="2Oq$k0" />
                <node concept="3TrcHB" id="gFRFAcF" role="2OqNvi">
                  <ref role="3TsBF5" to="tpc2:fPQpme3" resolve="vertical" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$PAD" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VPXOz" id="hEUNSlg" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="Veino" id="hEZGwGc" role="3F10Kt">
          <node concept="3ZlJ5R" id="hEZGwGd" role="VblUZ">
            <node concept="3clFbS" id="hEZGwGe" role="2VODD2">
              <node concept="3cpWs6" id="hEZGwGf" role="3cqZAp">
                <node concept="2YIFZM" id="hEZGwGg" role="3cqZAk">
                  <ref role="1Pybhc" node="h842M7a" resolve="_EditorUtil" />
                  <ref role="37wK5l" node="h842N6q" resolve="grayIfNotSelectable" />
                  <node concept="pncrf" id="hEZGwGh" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2EHx9g" id="i2IxxZB" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="fPQrr5b" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <ref role="1k5W1q" node="hX5ZSzR" resolve="borderedCollection" />
        <node concept="3EZMnI" id="fPQrUrl" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="fPQrUrm" role="3EZMnx">
            <property role="3F0ifm" value="true:" />
            <ref role="1k5W1q" node="hX1xO3O" resolve="bordered" />
            <node concept="VPXOz" id="hEUNSpU" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F1sOY" id="fPQrUrn" role="3EZMnx">
            <property role="1$x2rV" value="&lt;no cell model&gt;" />
            <ref role="1NtTu8" to="tpc2:fPQoS0T" />
            <node concept="VPXOz" id="hEUNSE8" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="VPXOz" id="hEUNSr3" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2iRfu4" id="i2IxuUu" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="fPQrUro" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="fPQrUrp" role="3EZMnx">
            <property role="3F0ifm" value="false:" />
            <ref role="1k5W1q" node="hX1xO3O" resolve="bordered" />
          </node>
          <node concept="3F1sOY" id="fPQrUrq" role="3EZMnx">
            <property role="1$x2rV" value="&lt;no cell model&gt;" />
            <ref role="1NtTu8" to="tpc2:fPQoVQ3" />
            <node concept="VPXOz" id="hEUNSlj" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="VPXOz" id="hEUNSLZ" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2iRfu4" id="i2IxuTR" role="2iSdaV" />
        </node>
        <node concept="pkWqt" id="gFRNw25" role="pqm2j">
          <node concept="3clFbS" id="gFRNw26" role="2VODD2">
            <node concept="3cpWs6" id="gFRNwo5" role="3cqZAp">
              <node concept="3fqX7Q" id="gFRNy1P" role="3cqZAk">
                <node concept="2OqwBi" id="hxx$Ywt" role="3fr31v">
                  <node concept="pncrf" id="gFRNzLr" role="2Oq$k0" />
                  <node concept="3TrcHB" id="gFRN$vA" role="2OqNvi">
                    <ref role="3TsBF5" to="tpc2:fPQpme3" resolve="vertical" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$Py6" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="Veino" id="hEZG_vV" role="3F10Kt">
          <node concept="3ZlJ5R" id="hEZG_vW" role="VblUZ">
            <node concept="3clFbS" id="hEZG_vX" role="2VODD2">
              <node concept="3cpWs6" id="hEZG_vY" role="3cqZAp">
                <node concept="2YIFZM" id="hEZG_vZ" role="3cqZAk">
                  <ref role="1Pybhc" node="h842M7a" resolve="_EditorUtil" />
                  <ref role="37wK5l" node="h842N6q" resolve="grayIfNotSelectable" />
                  <node concept="pncrf" id="hEZG_w0" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2iRfu4" id="i2IxuTv" role="2iSdaV" />
      </node>
      <node concept="PMmxH" id="h7TNYcj" role="3EZMnx">
        <ref role="PMmxG" node="h7TMK$j" resolve="_CloseTag" />
        <node concept="VPXOz" id="hEUNSnJ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="VPXOz" id="i0vkwzS" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="2iRfu4" id="i2IxuPJ" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="fPQs5MY" role="6VMZX">
      <property role="3EZMnw" value="true" />
      <node concept="PMmxH" id="hF4tWtV" role="3EZMnx">
        <ref role="PMmxG" node="hF4ssnw" resolve="_CellModel_Common" />
      </node>
      <node concept="3F0ifn" id="hF4tU4j" role="3EZMnx" />
      <node concept="3F0ifn" id="fPQssRM" role="3EZMnx">
        <property role="3F0ifm" value="Cell alternation:" />
        <ref role="1k5W1q" node="hF4yUZ8" resolve="header" />
      </node>
      <node concept="3EZMnI" id="hF4$irl" role="3EZMnx">
        <property role="3EZMnw" value="true" />
        <property role="3EZMnz" value="true" />
        <node concept="3EZMnI" id="fPQssRR" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="fPQssRS" role="3EZMnx">
            <property role="3F0ifm" value="vertical" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F0A7n" id="fPQssRT" role="3EZMnx">
            <ref role="1NtTu8" to="tpc2:fPQpme3" resolve="vertical" />
            <node concept="VPXOz" id="hEUNSuN" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="VPM3Z" id="hEU$PuV" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="hEUNSse" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2iRfu4" id="i2IxuPc" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="hFfQESB" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="VPM3Z" id="hFfQESC" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="2jfAk2L6DPI" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3F0ifn" id="hFfQG73" role="3EZMnx">
            <property role="3F0ifm" value="alt. condition" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F1sOY" id="hFfQKc4" role="3EZMnx">
            <ref role="1NtTu8" to="tpc2:gFe4fbm" />
            <node concept="VPXOz" id="hFfQNCj" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="2iRfu4" id="i2IxuSH" role="2iSdaV" />
        </node>
        <node concept="VPXOz" id="hF4$p3H" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="2EHx9g" id="i2IxuPh" role="2iSdaV" />
      </node>
      <node concept="VPM3Z" id="hEU$Pwd" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="i2IxuP9" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="g3gUAxv">
    <property role="TrG5h" value="CellModel_JComponent_Editor" />
    <property role="3GE5qa" value="CellModel" />
    <ref role="1XX52x" to="tpc2:g3gTLMM" resolve="CellModel_JComponent" />
    <node concept="3F0ifn" id="g3gVH1c" role="2wV5jI">
      <property role="3F0ifm" value="$swing component$" />
      <ref role="1k5W1q" node="i0pPgF8" resolve="rootCellModelStyle" />
    </node>
    <node concept="3EZMnI" id="g3gUIcH" role="6VMZX">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="hF4vBE0" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="3F0ifn" id="h7FoCa2" role="3EZMnx">
          <property role="3F0ifm" value="component provider:" />
        </node>
        <node concept="3F1sOY" id="h7FoE8A" role="3EZMnx">
          <ref role="1NtTu8" to="tpc2:h7FoqVN" />
        </node>
        <node concept="2iRfu4" id="i2IxuTT" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2IxuOH" role="2iSdaV" />
    </node>
  </node>
  <node concept="325Ffw" id="gtczF7b">
    <property role="TrG5h" value="EditorCellModel_KeyMap" />
    <ref role="1chiOs" to="tpc2:fBEYTCT" resolve="EditorCellModel" />
    <node concept="2PxR9H" id="gG5Kmsv" role="2QnnpI">
      <property role="2PxWOX" value="toggle cell focus policy [attracts focus]/[no attraction]" />
      <property role="3ArL7W" value="true" />
      <node concept="2Py5lD" id="gG5Kmsw" role="2PyaAO">
        <property role="2PWKIS" value="VK_F" />
        <property role="2PWKIB" value="ctrl+shift" />
      </node>
      <node concept="2PzhpH" id="gG5Kmsz" role="2PL9iG">
        <node concept="3clFbS" id="gG5Kms$" role="2VODD2">
          <node concept="3clFbJ" id="gG5L_CJ" role="3cqZAp">
            <node concept="3fqX7Q" id="gG5N5k1" role="3clFbw">
              <node concept="2OqwBi" id="hxx_0X0" role="3fr31v">
                <node concept="2OqwBi" id="hxx$XIg" role="2Oq$k0">
                  <node concept="0GJ7k" id="gRLaYwd" role="2Oq$k0" />
                  <node concept="3TrcHB" id="gG5N5Bb" role="2OqNvi">
                    <ref role="3TsBF5" to="tpc2:gtcu_tw" resolve="attractsFocus" />
                  </node>
                </node>
                <node concept="3t7uKx" id="gG5N5Bc" role="2OqNvi">
                  <node concept="uoxfO" id="gG5N5Bd" role="3t7uKA">
                    <ref role="uo_Cq" to="tpc2:gtgu$YJ" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="gG5L_CL" role="3clFbx">
              <node concept="3clFbF" id="gG5LIBl" role="3cqZAp">
                <node concept="2OqwBi" id="hxx$Stw" role="3clFbG">
                  <node concept="2OqwBi" id="hxx$RyY" role="2Oq$k0">
                    <node concept="0GJ7k" id="gRLaYwv" role="2Oq$k0" />
                    <node concept="3TrcHB" id="gG5LJFJ" role="2OqNvi">
                      <ref role="3TsBF5" to="tpc2:gtcu_tw" resolve="attractsFocus" />
                    </node>
                  </node>
                  <node concept="tyxLq" id="gG5LLaZ" role="2OqNvi">
                    <node concept="uoxfO" id="gG5LNB1" role="tz02z">
                      <ref role="uo_Cq" to="tpc2:gtgu$YJ" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="gG5LR0P" role="9aQIa">
              <node concept="3clFbS" id="gG5LR0Q" role="9aQI4">
                <node concept="3clFbF" id="gG5LRVW" role="3cqZAp">
                  <node concept="2OqwBi" id="hxx$BOe" role="3clFbG">
                    <node concept="2OqwBi" id="hxx$VjG" role="2Oq$k0">
                      <node concept="0GJ7k" id="gRLaYwb" role="2Oq$k0" />
                      <node concept="3TrcHB" id="gG5LV8O" role="2OqNvi">
                        <ref role="3TsBF5" to="tpc2:gtcu_tw" resolve="attractsFocus" />
                      </node>
                    </node>
                    <node concept="tyxLq" id="gG5LWro" role="2OqNvi">
                      <node concept="uoxfO" id="gG5LYr_" role="tz02z">
                        <ref role="uo_Cq" to="tpc2:gtgusxG" />
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
    <node concept="2PxR9H" id="gG5M2BS" role="2QnnpI">
      <property role="2PxWOX" value="toggle cell focus policy [first editable]/[no attraction]" />
      <property role="3ArL7W" value="true" />
      <node concept="2Py5lD" id="gG5M2BT" role="2PyaAO">
        <property role="2PWKIS" value="VK_F" />
        <property role="2PWKIB" value="ctrl+alt+shift" />
      </node>
      <node concept="2PzhpH" id="gG5M2C5" role="2PL9iG">
        <node concept="3clFbS" id="gG5M2C6" role="2VODD2">
          <node concept="3clFbJ" id="gG5M2Ce" role="3cqZAp">
            <node concept="3clFbS" id="gG5M2Cl" role="3clFbx">
              <node concept="3clFbF" id="gG5M2Cm" role="3cqZAp">
                <node concept="2OqwBi" id="hxx$BMC" role="3clFbG">
                  <node concept="2OqwBi" id="hxx$XRL" role="2Oq$k0">
                    <node concept="0GJ7k" id="gRLb3Yd" role="2Oq$k0" />
                    <node concept="3TrcHB" id="gG5M2Cq" role="2OqNvi">
                      <ref role="3TsBF5" to="tpc2:gtcu_tw" resolve="attractsFocus" />
                    </node>
                  </node>
                  <node concept="tyxLq" id="gG5M2Cr" role="2OqNvi">
                    <node concept="uoxfO" id="gG5M2Cs" role="tz02z">
                      <ref role="uo_Cq" to="tpc2:gtguBGO" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="gG5M2Ct" role="9aQIa">
              <node concept="3clFbS" id="gG5M2Cu" role="9aQI4">
                <node concept="3clFbF" id="gG5M2Cv" role="3cqZAp">
                  <node concept="2OqwBi" id="hxx$K7x" role="3clFbG">
                    <node concept="2OqwBi" id="hxx$DYS" role="2Oq$k0">
                      <node concept="0GJ7k" id="gRLb3Yb" role="2Oq$k0" />
                      <node concept="3TrcHB" id="gG5M2Cz" role="2OqNvi">
                        <ref role="3TsBF5" to="tpc2:gtcu_tw" resolve="attractsFocus" />
                      </node>
                    </node>
                    <node concept="tyxLq" id="gG5M2C$" role="2OqNvi">
                      <node concept="uoxfO" id="gG5M2C_" role="tz02z">
                        <ref role="uo_Cq" to="tpc2:gtgusxG" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="gG5NaL9" role="3clFbw">
              <node concept="2OqwBi" id="hxx$QiQ" role="3fr31v">
                <node concept="2OqwBi" id="hxx$Oc2" role="2Oq$k0">
                  <node concept="0GJ7k" id="gRLb3Y9" role="2Oq$k0" />
                  <node concept="3TrcHB" id="gG5NaLd" role="2OqNvi">
                    <ref role="3TsBF5" to="tpc2:gtcu_tw" resolve="attractsFocus" />
                  </node>
                </node>
                <node concept="3t7uKx" id="gG5NaLe" role="2OqNvi">
                  <node concept="uoxfO" id="gG5NaLf" role="3t7uKA">
                    <ref role="uo_Cq" to="tpc2:gtguBGO" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="gwulh52">
    <property role="3GE5qa" value="CellModel" />
    <ref role="1XX52x" to="tpc2:gwuhnRB" resolve="CellModel_AttributedPropertyCell" />
    <node concept="3EZMnI" id="gwuliZC" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <ref role="1k5W1q" node="i0pPgF8" resolve="rootCellModelStyle" />
      <node concept="3F0ifn" id="3OSQ5wtKylz" role="3EZMnx">
        <property role="3F0ifm" value="[/&gt;" />
        <node concept="VPM3Z" id="3OSQ5wtKyl$" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VPXOz" id="3OSQ5wtKyl_" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="Vb9p2" id="3OSQ5wtKylA" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="gwulkkn" role="3EZMnx">
        <property role="3F0ifm" value="attributed property" />
        <ref role="1k5W1q" node="3OSQ5wtKyli" resolve="attributedCellLabel" />
      </node>
      <node concept="3F0ifn" id="3OSQ5wtKylB" role="3EZMnx">
        <property role="3F0ifm" value="&lt;/]" />
        <node concept="VPM3Z" id="3OSQ5wtKylC" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VPXOz" id="3OSQ5wtKylD" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="Vb9p2" id="3OSQ5wtKylE" role="3F10Kt" />
      </node>
      <node concept="2iRfu4" id="i2IxuUC" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="gISslgO" role="6VMZX">
      <property role="3EZMnw" value="true" />
      <node concept="PMmxH" id="hF4$KGP" role="3EZMnx">
        <ref role="PMmxG" node="hF4ssnw" resolve="_CellModel_Common" />
      </node>
      <node concept="VPM3Z" id="hEU$PWB" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="i2IxuP0" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="gywxKF5">
    <property role="3GE5qa" value="CellModel" />
    <ref role="1XX52x" to="tpc2:gywxxk3" resolve="CellModel_AttributedLinkCell" />
    <node concept="3EZMnI" id="gywxNOI" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <ref role="1k5W1q" node="hX5ZSzR" resolve="borderedCollection" />
      <node concept="3F0ifn" id="gywxNOJ" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <node concept="VPM3Z" id="hEU$P6X" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VPXOz" id="hEUNSQb" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3OSQ5wtKylr" role="3EZMnx">
        <property role="3F0ifm" value="[//" />
        <node concept="VPM3Z" id="3OSQ5wtKyls" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VPXOz" id="3OSQ5wtKylt" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="Vb9p2" id="3OSQ5wtKylu" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="gywxNOK" role="3EZMnx">
        <property role="3F0ifm" value="attributed link" />
        <ref role="1k5W1q" node="3OSQ5wtKyli" resolve="attributedCellLabel" />
      </node>
      <node concept="3F0ifn" id="3OSQ5wtKylv" role="3EZMnx">
        <property role="3F0ifm" value="//]" />
        <node concept="VPM3Z" id="3OSQ5wtKylw" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VPXOz" id="3OSQ5wtKylx" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="Vb9p2" id="3OSQ5wtKyly" role="3F10Kt" />
      </node>
      <node concept="2iRfu4" id="i2IxuOa" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="gISs6kf" role="6VMZX">
      <property role="3EZMnw" value="true" />
      <node concept="PMmxH" id="hF4$xZ3" role="3EZMnx">
        <ref role="PMmxG" node="hF4ssnw" resolve="_CellModel_Common" />
      </node>
      <node concept="VPM3Z" id="hEU$PQs" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="i2IxuO_" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="gyPSGdp">
    <property role="3GE5qa" value="CellKeyMap" />
    <ref role="1XX52x" to="tpc2:gyPxRd_" resolve="CellKeyMapItem" />
    <node concept="3EZMnI" id="hGCG0mJ" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="hGCG0mK" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <property role="1ayjP4" value="false" />
        <node concept="3F0ifn" id="hGCG0mL" role="3EZMnx">
          <property role="3F0ifm" value="item" />
          <node concept="VPxyj" id="hGCG0mM" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3EZMnI" id="hGCG0mN" role="3EZMnx">
          <property role="3EZMnw" value="true" />
          <property role="3EZMnz" value="true" />
          <node concept="3EZMnI" id="hGCG0mO" role="3EZMnx">
            <property role="3EZMnw" value="false" />
            <node concept="3F0ifn" id="hGCG0mP" role="3EZMnx">
              <property role="3F0ifm" value="description" />
              <node concept="VPM3Z" id="hGCG0mQ" role="3F10Kt" />
            </node>
            <node concept="3F0ifn" id="hGCG0mR" role="3EZMnx">
              <property role="3F0ifm" value=":" />
              <node concept="VPM3Z" id="hGCG0mS" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="3F0A7n" id="hGCG0mT" role="3EZMnx">
              <property role="1O74Pk" value="true" />
              <property role="1$x2rV" value="&lt;no description&gt;" />
              <ref role="1NtTu8" to="tpc2:gyPxWKP" resolve="description" />
              <node concept="Vb9p2" id="hGCG0mU" role="3F10Kt">
                <property role="Vbekb" value="BOLD" />
              </node>
              <node concept="VechU" id="hGCG0mV" role="3F10Kt">
                <property role="Vb096" value="DARK_GREEN" />
              </node>
            </node>
            <node concept="VPM3Z" id="hGCG0mW" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IxuQF" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="hGCG0mX" role="3EZMnx">
            <property role="3EZMnw" value="false" />
            <node concept="3F0ifn" id="hGCG0mY" role="3EZMnx">
              <property role="3F0ifm" value="keystrokes" />
              <node concept="VPM3Z" id="hGCG0mZ" role="3F10Kt" />
            </node>
            <node concept="3F0ifn" id="hGCG0n0" role="3EZMnx">
              <property role="3F0ifm" value=":" />
              <node concept="VPM3Z" id="hGCG0n1" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="3F2HdR" id="hGCG0n2" role="3EZMnx">
              <property role="2czwfN" value="true" />
              <property role="2czwfM" value="true" />
              <ref role="1NtTu8" to="tpc2:gyPyayW" />
              <node concept="VPM3Z" id="hGCG0n3" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
              <node concept="2EHx9g" id="i2IxuUU" role="2czzBx" />
            </node>
            <node concept="VPM3Z" id="hGCG0n4" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IxuTn" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="hGCG0n5" role="3EZMnx">
            <property role="3EZMnw" value="false" />
            <node concept="3F0ifn" id="hGCG0n6" role="3EZMnx">
              <property role="3F0ifm" value="caret policy" />
              <node concept="VPM3Z" id="hGCG0n7" role="3F10Kt" />
            </node>
            <node concept="3F0ifn" id="hGCG0n8" role="3EZMnx">
              <property role="3F0ifm" value=":" />
              <node concept="VPM3Z" id="hGCG0n9" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="3F0A7n" id="hGCG0na" role="3EZMnx">
              <property role="1O74Pk" value="true" />
              <property role="1$x2rV" value="&lt;no description&gt;" />
              <ref role="1NtTu8" to="tpc2:gAIlM1a" resolve="caretPolicy" />
              <node concept="Vb9p2" id="hGCG0nb" role="3F10Kt">
                <property role="Vbekb" value="BOLD" />
              </node>
              <node concept="VechU" id="hGCG0nc" role="3F10Kt">
                <property role="Vb096" value="DARK_MAGENTA" />
              </node>
            </node>
            <node concept="VPM3Z" id="hGCG0nd" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IxuNF" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="hGCG0ne" role="3EZMnx">
            <node concept="3F0ifn" id="hGCG0nf" role="3EZMnx">
              <property role="3F0ifm" value="show in popup" />
              <node concept="VPM3Z" id="hGCG0ng" role="3F10Kt" />
            </node>
            <node concept="3F0ifn" id="hGCG0nh" role="3EZMnx">
              <property role="3F0ifm" value=":" />
              <node concept="VPM3Z" id="hGCG0ni" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="3F0A7n" id="hGCG0nj" role="3EZMnx">
              <ref role="1NtTu8" to="tpc2:gVArL3M" resolve="showInPopup" />
            </node>
            <node concept="VPM3Z" id="hGCG0nk" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IxuPk" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="hGCG0nl" role="3EZMnx">
            <property role="3EZMnw" value="false" />
            <node concept="3F0ifn" id="hGCG0nm" role="3EZMnx">
              <property role="3F0ifm" value="menu always shown" />
              <node concept="VPM3Z" id="hGCG0nn" role="3F10Kt" />
            </node>
            <node concept="3F0ifn" id="hGCG0no" role="3EZMnx">
              <property role="3F0ifm" value=":" />
              <node concept="VPM3Z" id="hGCG0np" role="3F10Kt" />
            </node>
            <node concept="3F0A7n" id="hGCG0nq" role="3EZMnx">
              <ref role="1NtTu8" to="tpc2:heZ6dGv" resolve="menuAlwaysShown" />
            </node>
            <node concept="VPM3Z" id="hGCG0nr" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IxuNZ" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="hGCG0ns" role="3EZMnx">
            <node concept="3F0ifn" id="hGCG0nt" role="3EZMnx">
              <property role="3F0ifm" value="is applicable" />
              <node concept="VPM3Z" id="hGCG0nu" role="3F10Kt" />
            </node>
            <node concept="3F0ifn" id="hGCG0nv" role="3EZMnx">
              <property role="3F0ifm" value=":" />
              <node concept="VPM3Z" id="hGCG0nw" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="3F1sOY" id="hGCG0nx" role="3EZMnx">
              <property role="1$x2rV" value="&lt;always&gt;" />
              <ref role="1NtTu8" to="tpc2:gyPzqoq" />
            </node>
            <node concept="VPM3Z" id="hGCG0ny" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IxuRF" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="hGCG0nz" role="3EZMnx">
            <property role="3EZMnw" value="false" />
            <node concept="3F0ifn" id="hGCG0n$" role="3EZMnx">
              <property role="3F0ifm" value="execute" />
              <node concept="VPM3Z" id="hGCG0n_" role="3F10Kt" />
            </node>
            <node concept="3F0ifn" id="hGCG0nA" role="3EZMnx">
              <property role="3F0ifm" value=":" />
              <node concept="VPM3Z" id="hGCG0nB" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="3F1sOY" id="hGCG0nC" role="3EZMnx">
              <ref role="1NtTu8" to="tpc2:gyPL9m$" />
            </node>
            <node concept="VPM3Z" id="hGCG0nD" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IxuUe" role="2iSdaV" />
          </node>
          <node concept="VPM3Z" id="hGCG0nE" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2EHx9g" id="i2IxuSm" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hGCG0nF" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IxuUf" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="hGCG8wW" role="3EZMnx">
        <property role="3F0ifm" value=";" />
        <node concept="VPxyj" id="hGCGatu" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2iRkQZ" id="i2IxuTw" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="gyPUYaU">
    <property role="3GE5qa" value="CellKeyMap" />
    <ref role="1XX52x" to="tpc2:gyPy5hx" resolve="CellKeyMapKeystroke" />
    <node concept="3EZMnI" id="gyPV8i5" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="3F0ifn" id="gyPV8i6" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
        <node concept="VPM3Z" id="hEU$Pip" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="11LMrY" id="hXb$2ej" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="gyPV8i7" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <property role="1$x2rV" value="any" />
        <ref role="1NtTu8" to="tpc2:gyPWKEJ" resolve="modifiers" />
        <node concept="OXEIz" id="gWQrzwz" role="P5bDN">
          <node concept="PvTIS" id="gWQrAFe" role="OY2wv">
            <node concept="MLZmj" id="gWQrD51" role="PvTIR">
              <node concept="3clFbS" id="gWQrD52" role="2VODD2">
                <node concept="3cpWs8" id="19wSTnXYX8g" role="3cqZAp">
                  <node concept="3cpWsn" id="19wSTnXYX8h" role="3cpWs9">
                    <property role="TrG5h" value="result" />
                    <node concept="_YKpA" id="19wSTnXYX8i" role="1tU5fm">
                      <node concept="17QB3L" id="19wSTnXYX8j" role="_ZDj9" />
                    </node>
                    <node concept="2ShNRf" id="19wSTnXYX8k" role="33vP2m">
                      <node concept="Tc6Ow" id="19wSTnXYX8l" role="2ShVmc">
                        <node concept="17QB3L" id="19wSTnXYX8m" role="HW$YZ" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="19wSTnXYX8n" role="3cqZAp">
                  <node concept="2OqwBi" id="19wSTnXYX8o" role="3clFbG">
                    <node concept="X8dFx" id="19wSTnXYX8p" role="2OqNvi">
                      <node concept="2YIFZM" id="19wSTnXYXgR" role="25WWJ7">
                        <ref role="37wK5l" to="la0d:~AWTKeymapHandler.getValidModifiers():java.util.List" resolve="getValidModifiers" />
                        <ref role="1Pybhc" to="la0d:~AWTKeymapHandler" resolve="AWTKeymapHandler" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="19wSTnXYX8r" role="2Oq$k0">
                      <ref role="3cqZAo" node="19wSTnXYX8h" resolve="result" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="19wSTnXYX8s" role="3cqZAp">
                  <node concept="37vLTw" id="19wSTnXYX8t" role="3cqZAk">
                    <ref role="3cqZAo" node="19wSTnXYX8h" resolve="result" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="30gYXW" id="hF0kJSg" role="3F10Kt">
          <property role="Vb096" value="yellow" />
        </node>
        <node concept="30h1P$" id="hF0kJUX" role="3F10Kt">
          <property role="Vb096" value="cyan" />
        </node>
      </node>
      <node concept="3F0ifn" id="gyPV8i8" role="3EZMnx">
        <property role="3F0ifm" value="&gt; + &lt;" />
        <node concept="VPM3Z" id="hEU$P2V" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="11L4FC" id="hXb_9SN" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="hXb_beC" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="gyPV8i9" role="3EZMnx">
        <property role="1$x2rV" value="&lt;keycode&gt;" />
        <ref role="1NtTu8" to="tpc2:gyPWKEK" resolve="keycode" />
        <node concept="OXEIz" id="gWQqjWs" role="P5bDN">
          <node concept="PvTIS" id="gWQqmrC" role="OY2wv">
            <node concept="MLZmj" id="gWQqpNF" role="PvTIR">
              <node concept="3clFbS" id="gWQqpNG" role="2VODD2">
                <node concept="3cpWs8" id="19wSTnXYOds" role="3cqZAp">
                  <node concept="3cpWsn" id="19wSTnXYOdt" role="3cpWs9">
                    <property role="TrG5h" value="result" />
                    <node concept="_YKpA" id="19wSTnXYOdk" role="1tU5fm">
                      <node concept="17QB3L" id="19wSTnXYOdn" role="_ZDj9" />
                    </node>
                    <node concept="2ShNRf" id="19wSTnXYOdu" role="33vP2m">
                      <node concept="Tc6Ow" id="19wSTnXYOdv" role="2ShVmc">
                        <node concept="17QB3L" id="19wSTnXYOdw" role="HW$YZ" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="19wSTnXYOiq" role="3cqZAp">
                  <node concept="2OqwBi" id="19wSTnXYP1N" role="3clFbG">
                    <node concept="X8dFx" id="19wSTnXYU$V" role="2OqNvi">
                      <node concept="2YIFZM" id="19wSTnXYUHC" role="25WWJ7">
                        <ref role="1Pybhc" to="la0d:~AWTKeymapHandler" resolve="AWTKeymapHandler" />
                        <ref role="37wK5l" to="la0d:~AWTKeymapHandler.getValidKeyCodes():java.util.List" resolve="getValidKeyCodes" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="19wSTnXYOip" role="2Oq$k0">
                      <ref role="3cqZAo" node="19wSTnXYOdt" resolve="result" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="19wSTnXYVBS" role="3cqZAp">
                  <node concept="37vLTw" id="19wSTnXYOdx" role="3cqZAk">
                    <ref role="3cqZAo" node="19wSTnXYOdt" resolve="result" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="30gYXW" id="hF0kJRT" role="3F10Kt">
          <property role="Vb096" value="yellow" />
        </node>
        <node concept="30h1P$" id="hF0kJUW" role="3F10Kt">
          <property role="Vb096" value="cyan" />
        </node>
      </node>
      <node concept="3F0ifn" id="gyPV8ia" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <node concept="VPM3Z" id="hEU$PAJ" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="11L4FC" id="hXb$4c5" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="2RjnweryIMu" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="g_ht9Qu">
    <property role="TrG5h" value="CellActionMapDeclaration_Editor" />
    <ref role="1XX52x" to="tpc2:g_h_SNY" resolve="CellActionMapDeclaration" />
    <node concept="3EZMnI" id="g_ht9Qv" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="g_ht9Qw" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="3F0ifn" id="g_ht9Qx" role="3EZMnx">
          <property role="3F0ifm" value="action map" />
        </node>
        <node concept="3F0A7n" id="g_ht9Qy" role="3EZMnx">
          <property role="1$x2rV" value="&lt;no name&gt;" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="OXEIz" id="hgr_dxX" role="P5bDN">
            <node concept="PvTIS" id="hgr_eyt" role="OY2wv">
              <node concept="MLZmj" id="hgr_eyu" role="PvTIR">
                <node concept="3clFbS" id="hgr_eyv" role="2VODD2">
                  <node concept="3cpWs8" id="hgr_pY8" role="3cqZAp">
                    <node concept="3cpWsn" id="hgr_pY9" role="3cpWs9">
                      <property role="TrG5h" value="names" />
                      <node concept="_YKpA" id="hgr_pYa" role="1tU5fm">
                        <node concept="17QB3L" id="hP36FR5" role="_ZDj9" />
                      </node>
                      <node concept="2ShNRf" id="hgr_u9C" role="33vP2m">
                        <node concept="Tc6Ow" id="hgr_uun" role="2ShVmc">
                          <node concept="17QB3L" id="hP36BBE" role="HW$YZ" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="hgr_vD2" role="3cqZAp">
                    <node concept="3clFbS" id="hgr_vD3" role="3clFbx">
                      <node concept="3clFbF" id="hgr_yjo" role="3cqZAp">
                        <node concept="2OqwBi" id="h$UNPpP" role="3clFbG">
                          <node concept="37vLTw" id="3GM_nagTwF4" role="2Oq$k0">
                            <ref role="3cqZAo" node="hgr_pY9" resolve="names" />
                          </node>
                          <node concept="TSZUe" id="hgr_yQu" role="2OqNvi">
                            <node concept="3cpWs3" id="hgr__Dq" role="25WWJ7">
                              <node concept="Xl_RD" id="hgr__UO" role="3uHU7w">
                                <property role="Xl_RC" value="_Actions" />
                              </node>
                              <node concept="2OqwBi" id="hxx_3rZ" role="3uHU7B">
                                <node concept="2OqwBi" id="hxx$JY8" role="2Oq$k0">
                                  <node concept="3GMtW1" id="hgr_zT_" role="2Oq$k0" />
                                  <node concept="3TrEf2" id="hgr_$xw" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tpc2:g_h_SO0" />
                                  </node>
                                </node>
                                <node concept="3TrcHB" id="hgr__em" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="hxx_1Ez" role="3clFbw">
                      <node concept="2OqwBi" id="hxx$GmF" role="2Oq$k0">
                        <node concept="3GMtW1" id="hgr_w8$" role="2Oq$k0" />
                        <node concept="3TrEf2" id="hgr_x3b" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpc2:g_h_SO0" />
                        </node>
                      </node>
                      <node concept="3x8VRR" id="hgr_x$X" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3clFbF" id="hgr_CRb" role="3cqZAp">
                    <node concept="37vLTw" id="3GM_nagTwUH" role="3clFbG">
                      <ref role="3cqZAo" node="hgr_pY9" resolve="names" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$PzD" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IxuOC" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="g_ht9Q_" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$Pxg" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="g_ht9QA" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="3F0ifn" id="g_ht9QB" role="3EZMnx">
          <property role="3F0ifm" value="applicable concept:" />
          <node concept="VPM3Z" id="hEU$PCP" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="1iCGBv" id="g_ht9QC" role="3EZMnx">
          <property role="1$x2rV" value="&lt;any&gt;" />
          <ref role="1NtTu8" to="tpc2:g_h_SO0" />
          <node concept="1sVBvm" id="g_ht9QD" role="1sWHZn">
            <node concept="3F0A7n" id="g_ht9QE" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <property role="1$x2rV" value="&lt;no name&gt;" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
              <ref role="1k5W1q" to="tpd3:hwSE21y" resolve="ReferenceOnConcept" />
              <node concept="VPXOz" id="hEUNSN_" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$PbQ" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IxuMy" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="g_ht9QF" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$P_0" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F0ifn" id="g_ht9QG" role="3EZMnx">
        <property role="3F0ifm" value="actions:" />
        <node concept="VPM3Z" id="hEU$PYu" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F0ifn" id="g_ht9QH" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$Pgy" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F2HdR" id="g_ht9QI" role="3EZMnx">
        <property role="2czwfN" value="true" />
        <ref role="1NtTu8" to="tpc2:g_h_SO1" />
        <node concept="2iRkQZ" id="i2IxuV2" role="2czzBx" />
      </node>
      <node concept="2iRkQZ" id="i2IxxZy" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="g_hu5Ec">
    <ref role="1XX52x" to="tpc2:g_hA7BD" resolve="CellActionMapItem" />
    <node concept="3EZMnI" id="g_hu5Ed" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="3F0ifn" id="g_hu5Ee" role="3EZMnx">
        <property role="3F0ifm" value="action" />
        <node concept="VPxyj" id="hEZKQxz" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F0A7n" id="g_hucCO" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:g_hAc3q" resolve="actionId" />
        <node concept="VechU" id="hEZR8sx" role="3F10Kt">
          <property role="Vb096" value="DARK_MAGENTA" />
        </node>
      </node>
      <node concept="3EZMnI" id="g_hu5Ef" role="3EZMnx">
        <property role="3EZMnw" value="true" />
        <property role="3EZMnz" value="true" />
        <node concept="3EZMnI" id="g_hHXJu" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="g_hHXJv" role="3EZMnx">
            <property role="3F0ifm" value="description" />
          </node>
          <node concept="3F0ifn" id="g_hHXJw" role="3EZMnx">
            <property role="3F0ifm" value=":" />
            <node concept="VPM3Z" id="hEU$PVJ" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F0A7n" id="g_hHXJx" role="3EZMnx">
            <property role="1O74Pk" value="true" />
            <property role="1$x2rV" value="&lt;no description&gt;" />
            <ref role="1NtTu8" to="tpc2:g_hHOde" resolve="description" />
            <node concept="Vb9p2" id="hEUNQZv" role="3F10Kt">
              <property role="Vbekb" value="BOLD" />
            </node>
            <node concept="VechU" id="hEZR8rG" role="3F10Kt">
              <property role="Vb096" value="DARK_GREEN" />
            </node>
          </node>
          <node concept="VPM3Z" id="hEU$PMy" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IxuNC" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="301qoOzKuGZ" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="301qoOzKuH0" role="3EZMnx">
            <property role="3F0ifm" value="can execute" />
          </node>
          <node concept="3F0ifn" id="301qoOzKuH1" role="3EZMnx">
            <property role="3F0ifm" value=":" />
            <node concept="VPM3Z" id="301qoOzKuH2" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F1sOY" id="301qoOzKuH3" role="3EZMnx">
            <property role="1$x2rV" value="true" />
            <ref role="1NtTu8" to="tpc2:301qoOzKuGW" />
          </node>
          <node concept="VPM3Z" id="301qoOzKuH4" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="301qoOzKuH5" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="g_hu5Es" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="g_hu5Et" role="3EZMnx">
            <property role="3F0ifm" value="execute" />
          </node>
          <node concept="3F0ifn" id="g_hu5Eu" role="3EZMnx">
            <property role="3F0ifm" value=":" />
            <node concept="VPM3Z" id="hEU$PdD" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F1sOY" id="g_hu5Ev" role="3EZMnx">
            <ref role="1NtTu8" to="tpc2:g_hA7BG" />
          </node>
          <node concept="VPM3Z" id="hEU$PN0" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IxuNe" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$PvR" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2EHx9g" id="i2IxuTe" role="2iSdaV" />
      </node>
      <node concept="2iRfu4" id="i2IxuO6" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="g_uc0aS">
    <property role="3GE5qa" value="CellModel" />
    <ref role="1XX52x" to="tpc2:g_u4HTJ" resolve="CellModel_Image" />
    <node concept="3F0ifn" id="g_uci4a" role="2wV5jI">
      <property role="3F0ifm" value="$image$" />
      <ref role="1k5W1q" node="i0pPgF8" resolve="rootCellModelStyle" />
    </node>
    <node concept="3EZMnI" id="g_ucs4S" role="6VMZX">
      <property role="3EZMnw" value="true" />
      <property role="3EZMnz" value="true" />
      <node concept="PMmxH" id="hF4Fl_7" role="3EZMnx">
        <ref role="PMmxG" node="hF4ssnw" resolve="_CellModel_Common" />
      </node>
      <node concept="3F0ifn" id="hF4Fl_8" role="3EZMnx">
        <node concept="VPM3Z" id="hF4FnnD" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="g_ucs4T" role="3EZMnx">
        <property role="3F0ifm" value="Image cell:" />
      </node>
      <node concept="3EZMnI" id="hF4Ff3Y" role="3EZMnx">
        <property role="3EZMnw" value="true" />
        <node concept="3EZMnI" id="hF4FgO4" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="hF4FgO5" role="3EZMnx">
            <property role="3F0ifm" value="image provider : " />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F1sOY" id="hF4FgO8" role="3EZMnx">
            <property role="1$x2rV" value="&lt;no image provider&gt;" />
            <ref role="1NtTu8" to="tpc2:h84GRuh" />
          </node>
          <node concept="VPM3Z" id="hF4FgO9" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="hF4FgOa" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2iRfu4" id="i2IxuP3" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="hF4FgOb" role="3EZMnx">
          <node concept="3F0ifn" id="hF4FgOc" role="3EZMnx">
            <property role="3F0ifm" value="image file : " />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
            <node concept="VPXOz" id="1Ye$GFH9zd_" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3EZMnI" id="hF4FgOf" role="3EZMnx">
            <node concept="3F0A7n" id="hF4FgOg" role="3EZMnx">
              <ref role="1NtTu8" to="tpc2:g_ubRTz" resolve="imageFile" />
              <node concept="VPM3Z" id="hF4FgOh" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
            <node concept="3gTLQM" id="hF4FgOj" role="3EZMnx">
              <node concept="3Fmcul" id="hF4FgOk" role="3FoqZy">
                <node concept="3clFbS" id="hF4FgOl" role="2VODD2">
                  <node concept="3cpWs6" id="hF4FgOm" role="3cqZAp">
                    <node concept="2ShNRf" id="hF4FgOn" role="3cqZAk">
                      <node concept="1pGfFk" id="hF4FgOo" role="2ShVmc">
                        <ref role="37wK5l" node="i2lE2w6" resolve="SelectImageFileButton" />
                        <node concept="pncrf" id="hF4FgOq" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="VPXOz" id="hF4FgOs" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
            <node concept="VPM3Z" id="hF4FgOt" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="VPXOz" id="1Ye$GFH9$$4" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="2iRfu4" id="i2IxuPL" role="2iSdaV" />
          </node>
          <node concept="VPM3Z" id="hF4FgOv" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="5XYV_59RlLt" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2iRfu4" id="i2IxuMQ" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="hF4FgOx" role="3EZMnx">
          <node concept="3F0ifn" id="hF4FgOy" role="3EZMnx">
            <property role="3F0ifm" value="descent :" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F0A7n" id="hF4FgO_" role="3EZMnx">
            <ref role="1NtTu8" to="tpc2:g_$Qi0b" resolve="descent" />
            <node concept="VPXOz" id="hF4FgOA" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="VPM3Z" id="hF4FgOB" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="hF4FgOC" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2iRfu4" id="i2IxuUI" role="2iSdaV" />
        </node>
        <node concept="2EHx9g" id="2jfAk2Larnb" role="2iSdaV" />
      </node>
      <node concept="VPM3Z" id="hEU$Q0Q" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2EHx9g" id="i2IxuMA" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="gISsFPf">
    <property role="3GE5qa" value="CellModel" />
    <ref role="1XX52x" to="tpc2:gISsqQo" resolve="CellModel_AttributedNodeCell" />
    <node concept="3EZMnI" id="gISsM6G" role="6VMZX">
      <property role="3EZMnw" value="true" />
      <node concept="PMmxH" id="hF4$EAp" role="3EZMnx">
        <ref role="PMmxG" node="hF4ssnw" resolve="_CellModel_Common" />
      </node>
      <node concept="VPM3Z" id="hEU$PsY" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="i2IxuTl" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="gISsPxA" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <ref role="1k5W1q" node="hX5ZSzR" resolve="borderedCollection" />
      <node concept="3F0ifn" id="gISsPxB" role="3EZMnx">
        <property role="3F0ifm" value="[&gt;" />
        <node concept="VPM3Z" id="hEU$PYq" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VPXOz" id="hEUNSfK" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="Vb9p2" id="3OSQ5wtKyaO" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="gISsPxC" role="3EZMnx">
        <property role="3F0ifm" value="attributed node" />
        <ref role="1k5W1q" node="3OSQ5wtKyli" resolve="attributedCellLabel" />
      </node>
      <node concept="3F0ifn" id="gISsPxD" role="3EZMnx">
        <property role="3F0ifm" value="&lt;]" />
        <node concept="VPM3Z" id="hEU$OV3" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VPXOz" id="hEUNSzl" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="Vb9p2" id="3OSQ5wtKyaQ" role="3F10Kt" />
      </node>
      <node concept="2iRfu4" id="i2IxuQQ" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="gWP3N$O">
    <property role="3GE5qa" value="CellMenu" />
    <ref role="1XX52x" to="tpc2:gWOXEEG" resolve="CellMenuDescriptor" />
    <node concept="3EZMnI" id="gWP3OyS" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3F0ifn" id="gWP3R1Q" role="3EZMnx">
        <property role="3F0ifm" value="menu parts:" />
      </node>
      <node concept="3F2HdR" id="gWP3Ver" role="3EZMnx">
        <property role="2czwfN" value="true" />
        <ref role="1NtTu8" to="tpc2:gWOY2$g" />
        <node concept="3F0ifn" id="gWP3Zts" role="2czzBI">
          <property role="ilYzB" value="&lt;choose menu part&gt;" />
          <node concept="Vb9p2" id="hEUNR14" role="3F10Kt">
            <property role="Vbekb" value="ITALIC" />
          </node>
          <node concept="VPxyj" id="hEZKQ$h" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="VechU" id="hEZR8ot" role="3F10Kt">
            <property role="Vb096" value="darkGray" />
          </node>
        </node>
        <node concept="2iRkQZ" id="i2IxuUX" role="2czzBx" />
      </node>
      <node concept="2iRkQZ" id="i2IxuQn" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="gWP4Ex_">
    <property role="3GE5qa" value="CellMenu" />
    <ref role="1XX52x" to="tpc2:gWOYc3u" resolve="CellMenuPart_Abstract" />
    <node concept="1xolST" id="gWPXm3d" role="2wV5jI">
      <property role="1xolSY" value="&lt;choose menu part&gt;" />
      <node concept="Vb9p2" id="hEUNR0i" role="3F10Kt">
        <property role="Vbekb" value="ITALIC" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="gWPz7S6">
    <property role="3GE5qa" value="CellMenu" />
    <ref role="1XX52x" to="tpc2:gWPvTER" resolve="CellMenuPart_PropertyValues" />
    <node concept="3EZMnI" id="gXeZKlj" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="gXeZMBF" role="3EZMnx">
        <node concept="3F0ifn" id="gXeZMBG" role="3EZMnx">
          <property role="3F0ifm" value="property values" />
          <node concept="VechU" id="hEZR8sy" role="3F10Kt">
            <property role="Vb096" value="DARK_BLUE" />
          </node>
          <node concept="30gYXW" id="hF0kJTo" role="3F10Kt">
            <property role="Vb096" value="lightGray" />
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$Q0x" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IxuOS" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="gXeZKlk" role="3EZMnx">
        <node concept="3F0ifn" id="gXf03Wp" role="3EZMnx">
          <property role="3F0ifm" value="  " />
          <node concept="VPM3Z" id="hEU$PId" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F0ifn" id="gXeZKll" role="3EZMnx">
          <property role="3F0ifm" value="values" />
          <node concept="VPM3Z" id="hEU$PKt" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="gXeZKlm" role="3EZMnx">
          <property role="3F0ifm" value=":" />
          <node concept="VPM3Z" id="hEU$OX8" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F1sOY" id="gXeZKln" role="3EZMnx">
          <ref role="1NtTu8" to="tpc2:gWPvTES" />
        </node>
        <node concept="VPM3Z" id="hEU$PEK" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IxuJw" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2IxuUH" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="gWUlqwT">
    <property role="3GE5qa" value="CellMenu" />
    <ref role="1XX52x" to="tpc2:gWUkeLO" resolve="CellMenuPart_ReplaceNode_CustomNodeConcept" />
    <node concept="3EZMnI" id="gXeYZ7G" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="gXeZ13a" role="3EZMnx">
        <node concept="3F0ifn" id="gXeZ13b" role="3EZMnx">
          <property role="3F0ifm" value="replace node (custom node concept)" />
          <node concept="VechU" id="hEZR8rW" role="3F10Kt">
            <property role="Vb096" value="DARK_BLUE" />
          </node>
          <node concept="30gYXW" id="hF0kJRt" role="3F10Kt">
            <property role="Vb096" value="lightGray" />
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$PUc" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IxuP6" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="gXeYZ7H" role="3EZMnx">
        <node concept="3F0ifn" id="gXeZnwA" role="3EZMnx">
          <property role="3F0ifm" value="  " />
          <node concept="VPM3Z" id="hEU$PCl" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F0ifn" id="gXeYZ7I" role="3EZMnx">
          <property role="3F0ifm" value="replace with" />
          <node concept="VPM3Z" id="hEU$PLZ" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="gXeYZ7J" role="3EZMnx">
          <property role="3F0ifm" value=":" />
          <node concept="VPM3Z" id="hEU$Pfn" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="1iCGBv" id="gXeYZ7K" role="3EZMnx">
          <property role="1$x2rV" value="&lt;choose concept&gt;" />
          <ref role="1NtTu8" to="tpc2:gWUl1JU" />
          <node concept="1sVBvm" id="gXeYZ7L" role="1sWHZn">
            <node concept="3F0A7n" id="gXeYZ7M" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
              <node concept="VechU" id="hEZR8yS" role="3F10Kt">
                <property role="Vb096" value="DARK_MAGENTA" />
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$Ph6" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IxuSK" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2IxuUF" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="gWZdcT3">
    <property role="3GE5qa" value="CellMenu" />
    <ref role="1XX52x" to="tpc2:gWZcVFF" resolve="CellMenuPart_ReferentPrimary" />
    <node concept="3EZMnI" id="gX0sSlI" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="gX0sWNw" role="3EZMnx">
        <node concept="3F0ifn" id="gX0sWNx" role="3EZMnx">
          <property role="3F0ifm" value="primary choose referent menu" />
          <node concept="VechU" id="hEZR8$A" role="3F10Kt">
            <property role="Vb096" value="DARK_BLUE" />
          </node>
          <node concept="30gYXW" id="hF0kJTb" role="3F10Kt">
            <property role="Vb096" value="lightGray" />
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$PaB" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IxuOo" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="gX0sSlJ" role="3EZMnx">
        <node concept="3F0ifn" id="gX0tsDa" role="3EZMnx">
          <property role="3F0ifm" value="  " />
          <node concept="VPM3Z" id="hEU$PYx" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F0ifn" id="gX0sSlM" role="3EZMnx">
          <property role="3F0ifm" value="no customization needed" />
          <node concept="Vb9p2" id="hEUNQZa" role="3F10Kt">
            <property role="Vbekb" value="ITALIC" />
          </node>
          <node concept="VechU" id="hEZR8my" role="3F10Kt">
            <property role="Vb096" value="darkGray" />
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$PD2" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IxuOq" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2IxuRb" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="gWZGwME">
    <property role="3GE5qa" value="CellMenu" />
    <ref role="1XX52x" to="tpc2:gWZEnmw" resolve="CellMenuPart_ReplaceNode_Group" />
    <node concept="3EZMnI" id="gWZHe4i" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="gWZHf7F" role="3EZMnx">
        <node concept="3F0ifn" id="gWZHghE" role="3EZMnx">
          <property role="3F0ifm" value="replace node (group of custom actions)" />
          <node concept="VechU" id="hEZR8m3" role="3F10Kt">
            <property role="Vb096" value="DARK_BLUE" />
          </node>
          <node concept="30gYXW" id="hF0kJTT" role="3F10Kt">
            <property role="Vb096" value="lightGray" />
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$P3y" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IxuTE" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="gWZK50B" role="3EZMnx">
        <node concept="3F0ifn" id="gWZK7wZ" role="3EZMnx">
          <property role="3F0ifm" value="  " />
          <node concept="VPM3Z" id="hEU$PNP" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3EZMnI" id="gWZK50C" role="3EZMnx">
          <property role="3EZMnw" value="true" />
          <property role="S$Qs1" value="true" />
          <property role="3EZMnz" value="true" />
          <node concept="3EZMnI" id="gWZK50D" role="3EZMnx">
            <node concept="3F0ifn" id="gWZK50E" role="3EZMnx">
              <property role="3F0ifm" value="parameter object type" />
            </node>
            <node concept="3F0ifn" id="gWZK50F" role="3EZMnx">
              <property role="3F0ifm" value=":" />
              <node concept="VPM3Z" id="hEU$PdT" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="3F1sOY" id="gWZK50G" role="3EZMnx">
              <property role="1$x2rV" value="&lt;none&gt;" />
              <ref role="1NtTu8" to="tpc2:gXeyP6_" />
            </node>
            <node concept="VPM3Z" id="hEU$Plj" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IxuNv" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="gWZK51b" role="3EZMnx">
            <node concept="3F0ifn" id="gWZK51c" role="3EZMnx">
              <property role="3F0ifm" value="parameter objects" />
            </node>
            <node concept="3F0ifn" id="gWZK51d" role="3EZMnx">
              <property role="3F0ifm" value=":" />
              <node concept="VPM3Z" id="hEU$PYy" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="3F1sOY" id="gWZK51e" role="3EZMnx">
              <ref role="1NtTu8" to="tpc2:gWZF_Uc" />
            </node>
            <node concept="VPM3Z" id="hEU$PRj" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IxuRB" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="gWZK50H" role="3EZMnx">
            <node concept="3F0ifn" id="gWZK50I" role="3EZMnx">
              <property role="3F0ifm" value="presentation" />
            </node>
            <node concept="3F0ifn" id="gWZK50J" role="3EZMnx">
              <property role="3F0ifm" value=":" />
              <node concept="VPM3Z" id="hEU$P1c" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="3F0A7n" id="gWZK50K" role="3EZMnx">
              <ref role="1NtTu8" to="tpc2:gXezIA2" resolve="presentation" />
            </node>
            <node concept="VPM3Z" id="hEU$P0_" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IxuR_" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="gWZK50L" role="3EZMnx">
            <node concept="3F0ifn" id="gWZK50M" role="3EZMnx">
              <property role="3F0ifm" value="matching text" />
            </node>
            <node concept="3F0ifn" id="gWZK50N" role="3EZMnx">
              <property role="3F0ifm" value=":" />
              <node concept="VPM3Z" id="hEU$PAg" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="3F1sOY" id="gWZK50O" role="3EZMnx">
              <property role="1$x2rV" value="&lt;default&gt;" />
              <ref role="1NtTu8" to="tpc2:gXezQMH" />
            </node>
            <node concept="pkWqt" id="gWZK50P" role="pqm2j">
              <node concept="3clFbS" id="gWZK50Q" role="2VODD2">
                <node concept="3cpWs6" id="gWZK50R" role="3cqZAp">
                  <node concept="2OqwBi" id="hxx$Xz_" role="3cqZAk">
                    <node concept="2OqwBi" id="hxx$$fr" role="2Oq$k0">
                      <node concept="pncrf" id="gWZK50U" role="2Oq$k0" />
                      <node concept="3TrcHB" id="gWZK50V" role="2OqNvi">
                        <ref role="3TsBF5" to="tpc2:gXezIA2" resolve="presentation" />
                      </node>
                    </node>
                    <node concept="3t7uKx" id="gWZK50W" role="2OqNvi">
                      <node concept="uoxfO" id="gWZK50X" role="3t7uKA">
                        <ref role="uo_Cq" to="tpcw:gWZP3tU" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="VPM3Z" id="hEU$PKj" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IxuUr" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="gWZK50Y" role="3EZMnx">
            <node concept="3F0ifn" id="gWZK50Z" role="3EZMnx">
              <property role="3F0ifm" value="description text" />
            </node>
            <node concept="3F0ifn" id="gWZK510" role="3EZMnx">
              <property role="3F0ifm" value=":" />
              <node concept="VPM3Z" id="hEU$PBj" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="3F1sOY" id="gWZK511" role="3EZMnx">
              <property role="1$x2rV" value="&lt;default&gt;" />
              <ref role="1NtTu8" to="tpc2:gXezVV_" />
            </node>
            <node concept="pkWqt" id="gWZK512" role="pqm2j">
              <node concept="3clFbS" id="gWZK513" role="2VODD2">
                <node concept="3cpWs6" id="gWZK514" role="3cqZAp">
                  <node concept="2OqwBi" id="hxx$QUT" role="3cqZAk">
                    <node concept="2OqwBi" id="hxx_5ZU" role="2Oq$k0">
                      <node concept="pncrf" id="gWZK517" role="2Oq$k0" />
                      <node concept="3TrcHB" id="gWZK518" role="2OqNvi">
                        <ref role="3TsBF5" to="tpc2:gXezIA2" resolve="presentation" />
                      </node>
                    </node>
                    <node concept="3t7uKx" id="gWZK519" role="2OqNvi">
                      <node concept="uoxfO" id="gWZK51a" role="3t7uKA">
                        <ref role="uo_Cq" to="tpcw:gWZP3tU" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="VPM3Z" id="hEU$PJT" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IxuUk" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="gWZK51f" role="3EZMnx">
            <node concept="3F0ifn" id="gWZK51g" role="3EZMnx">
              <property role="3F0ifm" value="create new node" />
            </node>
            <node concept="3F0ifn" id="gWZK51h" role="3EZMnx">
              <property role="3F0ifm" value=":" />
              <node concept="VPM3Z" id="hEU$P$l" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="3F1sOY" id="gWZK51i" role="3EZMnx">
              <property role="1$x2rV" value="&lt;default&gt;" />
              <ref role="1NtTu8" to="tpc2:gWZF_Ud" />
            </node>
            <node concept="VPM3Z" id="hEU$Ppp" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IxuQq" role="2iSdaV" />
          </node>
          <node concept="VPM3Z" id="hEU$PVN" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2EHx9g" id="i2IxuPz" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$Pii" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IxuU8" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2IxuJr" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="gXf$HXf">
    <property role="3GE5qa" value="CellMenu" />
    <ref role="1XX52x" to="tpc2:gXfxSoH" resolve="CellMenuPart_ReplaceChild_Group" />
    <node concept="3EZMnI" id="gXf$TTZ" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="gXf$TU0" role="3EZMnx">
        <node concept="3F0ifn" id="gXf$TU1" role="3EZMnx">
          <property role="3F0ifm" value="replace child (group of custom actions)" />
          <node concept="VechU" id="hEZR8l3" role="3F10Kt">
            <property role="Vb096" value="DARK_BLUE" />
          </node>
          <node concept="30gYXW" id="hF0kJTV" role="3F10Kt">
            <property role="Vb096" value="lightGray" />
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$Pnk" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IxuNQ" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="gXf$TU2" role="3EZMnx">
        <node concept="3F0ifn" id="gXf$TU3" role="3EZMnx">
          <property role="3F0ifm" value="  " />
          <node concept="VPM3Z" id="hEU$PSt" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3EZMnI" id="gXf$TU4" role="3EZMnx">
          <property role="3EZMnw" value="true" />
          <property role="S$Qs1" value="true" />
          <property role="3EZMnz" value="true" />
          <node concept="3EZMnI" id="gXf$TU5" role="3EZMnx">
            <node concept="3F0ifn" id="gXf$TU6" role="3EZMnx">
              <property role="3F0ifm" value="parameter object type" />
            </node>
            <node concept="3F0ifn" id="gXf$TU7" role="3EZMnx">
              <property role="3F0ifm" value=":" />
              <node concept="VPM3Z" id="hEU$PwB" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="3F1sOY" id="gXf$TU8" role="3EZMnx">
              <property role="1$x2rV" value="&lt;none&gt;" />
              <ref role="1NtTu8" to="tpc2:gXeyP6_" />
            </node>
            <node concept="VPM3Z" id="hEU$OXj" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IxuU5" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="gXf$TUB" role="3EZMnx">
            <node concept="3F0ifn" id="gXf$TUC" role="3EZMnx">
              <property role="3F0ifm" value="parameter objects" />
            </node>
            <node concept="3F0ifn" id="gXf$TUD" role="3EZMnx">
              <property role="3F0ifm" value=":" />
              <node concept="VPM3Z" id="hEU$Pln" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="3F1sOY" id="gXf$TUE" role="3EZMnx">
              <ref role="1NtTu8" to="tpc2:gXfxSoJ" />
            </node>
            <node concept="VPM3Z" id="hEU$PIZ" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IxuNi" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="gXf$TU9" role="3EZMnx">
            <node concept="3F0ifn" id="gXf$TUa" role="3EZMnx">
              <property role="3F0ifm" value="presentation" />
            </node>
            <node concept="3F0ifn" id="gXf$TUb" role="3EZMnx">
              <property role="3F0ifm" value=":" />
              <node concept="VPM3Z" id="hEU$Pq6" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="3F0A7n" id="gXf$TUc" role="3EZMnx">
              <ref role="1NtTu8" to="tpc2:gXezIA2" resolve="presentation" />
            </node>
            <node concept="VPM3Z" id="hEU$Piz" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IxuN9" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="gXf$TUd" role="3EZMnx">
            <node concept="3F0ifn" id="gXf$TUe" role="3EZMnx">
              <property role="3F0ifm" value="matching text" />
            </node>
            <node concept="3F0ifn" id="gXf$TUf" role="3EZMnx">
              <property role="3F0ifm" value=":" />
              <node concept="VPM3Z" id="hEU$P2Q" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="3F1sOY" id="gXf$TUg" role="3EZMnx">
              <property role="1$x2rV" value="&lt;default&gt;" />
              <ref role="1NtTu8" to="tpc2:gXezQMH" />
            </node>
            <node concept="pkWqt" id="gXf$TUh" role="pqm2j">
              <node concept="3clFbS" id="gXf$TUi" role="2VODD2">
                <node concept="3cpWs6" id="gXf$TUj" role="3cqZAp">
                  <node concept="2OqwBi" id="hxx$OOX" role="3cqZAk">
                    <node concept="2OqwBi" id="hxx_3ds" role="2Oq$k0">
                      <node concept="pncrf" id="gXf$TUm" role="2Oq$k0" />
                      <node concept="3TrcHB" id="gXf$TUn" role="2OqNvi">
                        <ref role="3TsBF5" to="tpc2:gXezIA2" resolve="presentation" />
                      </node>
                    </node>
                    <node concept="3t7uKx" id="gXf$TUo" role="2OqNvi">
                      <node concept="uoxfO" id="gXf$TUp" role="3t7uKA">
                        <ref role="uo_Cq" to="tpcw:gWZP3tU" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="VPM3Z" id="hEU$Q11" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IxuMG" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="gXf$TUq" role="3EZMnx">
            <node concept="3F0ifn" id="gXf$TUr" role="3EZMnx">
              <property role="3F0ifm" value="description text" />
            </node>
            <node concept="3F0ifn" id="gXf$TUs" role="3EZMnx">
              <property role="3F0ifm" value=":" />
              <node concept="VPM3Z" id="hEU$Py9" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="3F1sOY" id="gXf$TUt" role="3EZMnx">
              <property role="1$x2rV" value="&lt;default&gt;" />
              <ref role="1NtTu8" to="tpc2:gXezVV_" />
            </node>
            <node concept="pkWqt" id="gXf$TUu" role="pqm2j">
              <node concept="3clFbS" id="gXf$TUv" role="2VODD2">
                <node concept="3cpWs6" id="gXf$TUw" role="3cqZAp">
                  <node concept="2OqwBi" id="hxx_0TG" role="3cqZAk">
                    <node concept="2OqwBi" id="hxx$_dR" role="2Oq$k0">
                      <node concept="pncrf" id="gXf$TUz" role="2Oq$k0" />
                      <node concept="3TrcHB" id="gXf$TU$" role="2OqNvi">
                        <ref role="3TsBF5" to="tpc2:gXezIA2" resolve="presentation" />
                      </node>
                    </node>
                    <node concept="3t7uKx" id="gXf$TU_" role="2OqNvi">
                      <node concept="uoxfO" id="gXf$TUA" role="3t7uKA">
                        <ref role="uo_Cq" to="tpcw:gWZP3tU" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="VPM3Z" id="hEU$Pv8" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IxuPO" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="gXf$TUF" role="3EZMnx">
            <node concept="3F0ifn" id="gXf$TUG" role="3EZMnx">
              <property role="3F0ifm" value="create new child" />
            </node>
            <node concept="3F0ifn" id="gXf$TUH" role="3EZMnx">
              <property role="3F0ifm" value=":" />
              <node concept="VPM3Z" id="hEU$Pma" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="3F1sOY" id="gXf$TUI" role="3EZMnx">
              <property role="1$x2rV" value="&lt;default&gt;" />
              <ref role="1NtTu8" to="tpc2:gXfxSoK" />
            </node>
            <node concept="VPM3Z" id="hEU$Pos" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IxuOe" role="2iSdaV" />
          </node>
          <node concept="VPM3Z" id="hEU$Q0U" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2EHx9g" id="i2IxuRd" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$PED" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IxuMv" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2IxuUc" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="gXgaP06">
    <property role="3GE5qa" value="CellMenu" />
    <ref role="1XX52x" to="tpc2:gXg8mte" resolve="CellMenuPart_ReplaceChild_CustomChildConcept" />
    <node concept="3EZMnI" id="gXgaZ2H" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="gXgaZ2I" role="3EZMnx">
        <node concept="3F0ifn" id="gXgaZ2J" role="3EZMnx">
          <property role="3F0ifm" value="replace child (custom child's concept)" />
          <node concept="VechU" id="hEZR8D4" role="3F10Kt">
            <property role="Vb096" value="DARK_BLUE" />
          </node>
          <node concept="30gYXW" id="hF0kJSk" role="3F10Kt">
            <property role="Vb096" value="lightGray" />
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$Pe2" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IxuRG" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="gXgaZ2K" role="3EZMnx">
        <node concept="3F0ifn" id="gXgaZ2L" role="3EZMnx">
          <property role="3F0ifm" value="  " />
          <node concept="VPM3Z" id="hEU$P_m" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F0ifn" id="gXgaZ2M" role="3EZMnx">
          <property role="3F0ifm" value="concept of child" />
          <node concept="VPM3Z" id="hEU$PGM" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="gXgaZ2N" role="3EZMnx">
          <property role="3F0ifm" value=":" />
          <node concept="VPM3Z" id="hEU$POM" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F1sOY" id="gXgaZ2O" role="3EZMnx">
          <ref role="1NtTu8" to="tpc2:gXg8mtf" />
        </node>
        <node concept="VPM3Z" id="hEU$P4c" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IxuO4" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2IxuNP" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="gXjDmov">
    <property role="3GE5qa" value="CellMenu" />
    <ref role="1XX52x" to="tpc2:gXjCaFY" resolve="CellMenuPart_ReplaceChild_Item" />
    <node concept="3EZMnI" id="gXjDqi2" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="gXjDqi3" role="3EZMnx">
        <node concept="3F0ifn" id="gXjDqi4" role="3EZMnx">
          <property role="3F0ifm" value="replace child (custom action)" />
          <node concept="VechU" id="hEZR8lv" role="3F10Kt">
            <property role="Vb096" value="DARK_BLUE" />
          </node>
          <node concept="30gYXW" id="hF0kJTR" role="3F10Kt">
            <property role="Vb096" value="lightGray" />
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$Ph8" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IxuU0" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="gXjDqi5" role="3EZMnx">
        <node concept="3F0ifn" id="gXjDqi6" role="3EZMnx">
          <property role="3F0ifm" value="  " />
          <node concept="VPM3Z" id="hEU$P7q" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3EZMnI" id="gXjDqi7" role="3EZMnx">
          <property role="3EZMnw" value="true" />
          <property role="S$Qs1" value="true" />
          <property role="3EZMnz" value="true" />
          <node concept="3EZMnI" id="gXjDOEb" role="3EZMnx">
            <node concept="3F0ifn" id="gXjDOEc" role="3EZMnx">
              <property role="3F0ifm" value="matching text" />
            </node>
            <node concept="3F0ifn" id="gXjDQZo" role="3EZMnx">
              <property role="3F0ifm" value=":" />
              <node concept="VPM3Z" id="hEU$PZX" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="3F0A7n" id="gXjDOEd" role="3EZMnx">
              <property role="1$x2rV" value="&lt;none&gt;" />
              <ref role="1NtTu8" to="tpc2:gXjDW2R" resolve="matchingText" />
              <node concept="VechU" id="hEZR8po" role="3F10Kt">
                <property role="Vb096" value="DARK_GREEN" />
              </node>
            </node>
            <node concept="VPM3Z" id="hEU$PWi" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IxuQi" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="h6qtXgz" role="3EZMnx">
            <node concept="3F0ifn" id="h6qtXg$" role="3EZMnx">
              <property role="3F0ifm" value="description text" />
            </node>
            <node concept="3F0ifn" id="h6qtXg_" role="3EZMnx">
              <property role="3F0ifm" value=":" />
              <node concept="VPM3Z" id="hEU$Q1p" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="3F0A7n" id="h6qtXgA" role="3EZMnx">
              <property role="1O74Pk" value="true" />
              <property role="1$x2rV" value="&lt;none&gt;" />
              <ref role="1NtTu8" to="tpc2:h6qtOjI" resolve="descriptionText" />
              <node concept="VechU" id="hEZR8nD" role="3F10Kt">
                <property role="Vb096" value="DARK_GREEN" />
              </node>
            </node>
            <node concept="VPM3Z" id="hEU$P81" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IxuPZ" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="gXjDqiI" role="3EZMnx">
            <node concept="3F0ifn" id="gXjDqiJ" role="3EZMnx">
              <property role="3F0ifm" value="create new child" />
            </node>
            <node concept="3F0ifn" id="gXjDqiK" role="3EZMnx">
              <property role="3F0ifm" value=":" />
              <node concept="VPM3Z" id="hEU$OVW" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="3F1sOY" id="gXjDqiL" role="3EZMnx">
              <property role="1$x2rV" value="&lt;default&gt;" />
              <ref role="1NtTu8" to="tpc2:gXjCaG0" />
            </node>
            <node concept="VPM3Z" id="hEU$PMZ" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IxuQ5" role="2iSdaV" />
          </node>
          <node concept="VPM3Z" id="hEU$PIs" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2EHx9g" id="i2IxuMU" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$PIg" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IxuU_" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2IxuUB" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="gXovYqC">
    <property role="3GE5qa" value="CellMenu" />
    <ref role="1XX52x" to="tpc2:gXou4cn" resolve="CellMenuPart_Generic_Group" />
    <node concept="3EZMnI" id="gXow3GS" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="gXow3GT" role="3EZMnx">
        <node concept="3F0ifn" id="gXow3GU" role="3EZMnx">
          <property role="3F0ifm" value="generic group" />
          <node concept="VechU" id="hEZR8y9" role="3F10Kt">
            <property role="Vb096" value="DARK_BLUE" />
          </node>
          <node concept="30gYXW" id="hF0kJSN" role="3F10Kt">
            <property role="Vb096" value="lightGray" />
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$Ppi" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IxuRT" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="gXow3GV" role="3EZMnx">
        <node concept="3F0ifn" id="gXow3GW" role="3EZMnx">
          <property role="3F0ifm" value="  " />
          <node concept="VPM3Z" id="hEU$OVF" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3EZMnI" id="gXow3GX" role="3EZMnx">
          <property role="3EZMnw" value="true" />
          <property role="S$Qs1" value="true" />
          <property role="3EZMnz" value="true" />
          <node concept="3EZMnI" id="gXow3GY" role="3EZMnx">
            <node concept="3F0ifn" id="gXow3GZ" role="3EZMnx">
              <property role="3F0ifm" value="parameter object type" />
            </node>
            <node concept="3F0ifn" id="gXow3H0" role="3EZMnx">
              <property role="3F0ifm" value=":" />
              <node concept="VPM3Z" id="hEU$Pe9" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="3F1sOY" id="gXow3H1" role="3EZMnx">
              <property role="1$x2rV" value="&lt;none&gt;" />
              <ref role="1NtTu8" to="tpc2:gXeyP6_" />
            </node>
            <node concept="VPM3Z" id="hEU$P5l" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IxuN3" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="gXow3H2" role="3EZMnx">
            <node concept="3F0ifn" id="gXow3H3" role="3EZMnx">
              <property role="3F0ifm" value="parameter objects" />
            </node>
            <node concept="3F0ifn" id="gXow3H4" role="3EZMnx">
              <property role="3F0ifm" value=":" />
              <node concept="VPM3Z" id="hEU$Pb6" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="3F1sOY" id="gXow3H5" role="3EZMnx">
              <ref role="1NtTu8" to="tpc2:gXou4co" />
            </node>
            <node concept="VPM3Z" id="hEU$PMT" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IxuQN" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="gXow3H6" role="3EZMnx">
            <node concept="3F0ifn" id="gXow3H7" role="3EZMnx">
              <property role="3F0ifm" value="presentation" />
            </node>
            <node concept="3F0ifn" id="gXow3H8" role="3EZMnx">
              <property role="3F0ifm" value=":" />
              <node concept="VPM3Z" id="hEU$PYL" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="3F0A7n" id="gXow3H9" role="3EZMnx">
              <ref role="1NtTu8" to="tpc2:gXezIA2" resolve="presentation" />
            </node>
            <node concept="VPM3Z" id="hEU$P$c" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IxuNl" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="gXow3Ha" role="3EZMnx">
            <node concept="3F0ifn" id="gXow3Hb" role="3EZMnx">
              <property role="3F0ifm" value="matching text" />
            </node>
            <node concept="3F0ifn" id="gXow3Hc" role="3EZMnx">
              <property role="3F0ifm" value=":" />
              <node concept="VPM3Z" id="hEU$PRr" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="3F1sOY" id="gXow3Hd" role="3EZMnx">
              <property role="1$x2rV" value="&lt;default&gt;" />
              <ref role="1NtTu8" to="tpc2:gXezQMH" />
            </node>
            <node concept="pkWqt" id="gXow3He" role="pqm2j">
              <node concept="3clFbS" id="gXow3Hf" role="2VODD2">
                <node concept="3cpWs6" id="gXow3Hg" role="3cqZAp">
                  <node concept="2OqwBi" id="hxx$X7A" role="3cqZAk">
                    <node concept="2OqwBi" id="hxx$REK" role="2Oq$k0">
                      <node concept="pncrf" id="gXow3Hj" role="2Oq$k0" />
                      <node concept="3TrcHB" id="gXow3Hk" role="2OqNvi">
                        <ref role="3TsBF5" to="tpc2:gXezIA2" resolve="presentation" />
                      </node>
                    </node>
                    <node concept="3t7uKx" id="gXow3Hl" role="2OqNvi">
                      <node concept="uoxfO" id="gXow3Hm" role="3t7uKA">
                        <ref role="uo_Cq" to="tpcw:gWZP3tU" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="VPM3Z" id="hEU$OXq" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IxuUt" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="gXow3Hn" role="3EZMnx">
            <node concept="3F0ifn" id="gXow3Ho" role="3EZMnx">
              <property role="3F0ifm" value="description text" />
            </node>
            <node concept="3F0ifn" id="gXow3Hp" role="3EZMnx">
              <property role="3F0ifm" value=":" />
              <node concept="VPM3Z" id="hEU$PRd" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="3F1sOY" id="gXow3Hq" role="3EZMnx">
              <property role="1$x2rV" value="&lt;default&gt;" />
              <ref role="1NtTu8" to="tpc2:gXezVV_" />
            </node>
            <node concept="pkWqt" id="gXow3Hr" role="pqm2j">
              <node concept="3clFbS" id="gXow3Hs" role="2VODD2">
                <node concept="3cpWs6" id="gXow3Ht" role="3cqZAp">
                  <node concept="2OqwBi" id="hxx$TFk" role="3cqZAk">
                    <node concept="2OqwBi" id="hxx$XtZ" role="2Oq$k0">
                      <node concept="pncrf" id="gXow3Hw" role="2Oq$k0" />
                      <node concept="3TrcHB" id="gXow3Hx" role="2OqNvi">
                        <ref role="3TsBF5" to="tpc2:gXezIA2" resolve="presentation" />
                      </node>
                    </node>
                    <node concept="3t7uKx" id="gXow3Hy" role="2OqNvi">
                      <node concept="uoxfO" id="gXow3Hz" role="3t7uKA">
                        <ref role="uo_Cq" to="tpcw:gWZP3tU" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="VPM3Z" id="hEU$PgY" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IxuPT" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="gXow3H$" role="3EZMnx">
            <node concept="3F0ifn" id="gXow3H_" role="3EZMnx">
              <property role="3F0ifm" value="handler" />
            </node>
            <node concept="3F0ifn" id="gXow3HA" role="3EZMnx">
              <property role="3F0ifm" value=":" />
              <node concept="VPM3Z" id="hEU$PhU" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="3F1sOY" id="gXow3HB" role="3EZMnx">
              <property role="1$x2rV" value="&lt;default&gt;" />
              <ref role="1NtTu8" to="tpc2:gXou4cp" />
            </node>
            <node concept="VPM3Z" id="hEU$OYS" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IxuM_" role="2iSdaV" />
          </node>
          <node concept="VPM3Z" id="hEU$PFQ" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2EHx9g" id="i2IxuO1" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$POS" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IxuUO" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2IxuRz" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="gXoIFQ2">
    <property role="3GE5qa" value="CellMenu" />
    <ref role="1XX52x" to="tpc2:gXoHunQ" resolve="CellMenuPart_Generic_Item" />
    <node concept="3EZMnI" id="gXoII35" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="gXoII36" role="3EZMnx">
        <node concept="3F0ifn" id="gXoII37" role="3EZMnx">
          <property role="3F0ifm" value="generic item" />
          <node concept="VechU" id="hEZR8rR" role="3F10Kt">
            <property role="Vb096" value="DARK_BLUE" />
          </node>
          <node concept="30gYXW" id="hF0kJUp" role="3F10Kt">
            <property role="Vb096" value="lightGray" />
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$PGU" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IxuUx" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="gXoII38" role="3EZMnx">
        <node concept="3F0ifn" id="gXoII39" role="3EZMnx">
          <property role="3F0ifm" value="  " />
          <node concept="VPM3Z" id="hEU$PDN" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3EZMnI" id="gXoII3a" role="3EZMnx">
          <property role="3EZMnw" value="true" />
          <property role="S$Qs1" value="true" />
          <property role="3EZMnz" value="true" />
          <node concept="3EZMnI" id="gXoII3b" role="3EZMnx">
            <node concept="3F0ifn" id="gXoII3c" role="3EZMnx">
              <property role="3F0ifm" value="matching text" />
            </node>
            <node concept="3F0ifn" id="gXoII3d" role="3EZMnx">
              <property role="3F0ifm" value=":" />
              <node concept="VPM3Z" id="hEU$PqC" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="3F0A7n" id="gXoII3e" role="3EZMnx">
              <property role="1$x2rV" value="&lt;none&gt;" />
              <ref role="1NtTu8" to="tpc2:gXoHunR" resolve="matchingText" />
              <node concept="VechU" id="hEZR8vQ" role="3F10Kt">
                <property role="Vb096" value="DARK_GREEN" />
              </node>
            </node>
            <node concept="VPM3Z" id="hEU$PGI" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IxuOB" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="gXoII3f" role="3EZMnx">
            <node concept="3F0ifn" id="gXoII3g" role="3EZMnx">
              <property role="3F0ifm" value="handler" />
            </node>
            <node concept="3F0ifn" id="gXoII3h" role="3EZMnx">
              <property role="3F0ifm" value=":" />
              <node concept="VPM3Z" id="hEU$PXQ" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="3F1sOY" id="gXoII3i" role="3EZMnx">
              <property role="1$x2rV" value="&lt;default&gt;" />
              <ref role="1NtTu8" to="tpc2:gXoHunS" />
            </node>
            <node concept="VPM3Z" id="hEU$PIt" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IxuPB" role="2iSdaV" />
          </node>
          <node concept="VPM3Z" id="hEU$PO6" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2EHx9g" id="i2IxuJ_" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$PE9" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IxuSF" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2IxuQo" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="gXXtVcO">
    <property role="3GE5qa" value="CellMenu" />
    <ref role="1XX52x" to="tpc2:gXXs21o" resolve="CellMenuComponent" />
    <node concept="3EZMnI" id="gXXtXfI" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="gXXu4oJ" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="3F0ifn" id="gXXu4oK" role="3EZMnx">
          <property role="3F0ifm" value="cell-menu component" />
        </node>
        <node concept="3F0A7n" id="gXXu4oL" role="3EZMnx">
          <property role="1$x2rV" value="&lt;no name&gt;" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="VPM3Z" id="hEU$PxT" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IxuUK" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="gXXujQN" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="3F0ifn" id="gXXujQO" role="3EZMnx">
          <property role="3F0ifm" value="    " />
          <node concept="VPM3Z" id="hEU$Pn3" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3EZMnI" id="gXXujQP" role="3EZMnx">
          <property role="3EZMnw" value="true" />
          <node concept="3EZMnI" id="gXXujQR" role="3EZMnx">
            <property role="3EZMnw" value="false" />
            <node concept="3F0ifn" id="gXXuocP" role="3EZMnx">
              <property role="3F0ifm" value="applicable to:" />
            </node>
            <node concept="1iCGBv" id="gXXujQT" role="3EZMnx">
              <property role="1$x2rV" value="&lt;choose concept&gt;" />
              <ref role="1NtTu8" to="tpc2:gXXX56I" />
              <node concept="1sVBvm" id="gXXujQU" role="1sWHZn">
                <node concept="3F0A7n" id="gXXujQV" role="2wV5jI">
                  <property role="1Intyy" value="true" />
                  <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
                  <node concept="VPXOz" id="hEUNSP2" role="3F10Kt">
                    <property role="VOm3f" value="true" />
                  </node>
                  <node concept="VechU" id="hEZR8_n" role="3F10Kt">
                    <property role="Vb096" value="DARK_MAGENTA" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3F0ifn" id="gXYL86S" role="3EZMnx">
              <property role="3F0ifm" value=":" />
            </node>
            <node concept="3F1sOY" id="gXYL86T" role="3EZMnx">
              <property role="1$x2rV" value="&lt;any feature&gt;" />
              <ref role="1NtTu8" to="tpc2:gXXsTFp" />
            </node>
            <node concept="VPM3Z" id="hEU$PZU" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IxuMY" role="2iSdaV" />
          </node>
          <node concept="3F0ifn" id="gXXvydF" role="3EZMnx">
            <node concept="VPM3Z" id="hEU$Pd0" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F1sOY" id="gXXvKGR" role="3EZMnx">
            <property role="1$x2rV" value="&lt;none&gt;" />
            <ref role="1NtTu8" to="tpc2:gXXvlTx" />
          </node>
          <node concept="VPM3Z" id="hEU$PZ_" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRkQZ" id="i2IxuOt" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$PdP" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IxxZ_" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2IxuMs" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="gXXwZsH">
    <property role="3GE5qa" value="CellMenu" />
    <ref role="1XX52x" to="tpc2:gXXwhgC" resolve="CellMenuComponentFeature_Property" />
    <node concept="1iCGBv" id="gXYtJ17" role="2wV5jI">
      <property role="1$x2rV" value="&lt;choose property&gt;" />
      <ref role="1NtTu8" to="tpc2:gXXwMpJ" />
      <node concept="1sVBvm" id="gXYtJ18" role="1sWHZn">
        <node concept="3F0A7n" id="gXYtJ19" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="VechU" id="hEZR8$O" role="3F10Kt">
            <property role="Vb096" value="DARK_MAGENTA" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="gXXxW5D">
    <property role="3GE5qa" value="CellMenu" />
    <ref role="1XX52x" to="tpc2:gXXxIQr" resolve="CellMenuComponentFeature_Link" />
    <node concept="1iCGBv" id="gXYtKZh" role="2wV5jI">
      <property role="1$x2rV" value="&lt;choose property&gt;" />
      <ref role="1NtTu8" to="tpc2:gXXxIQt" />
      <node concept="1sVBvm" id="gXYtKZi" role="1sWHZn">
        <node concept="3F0A7n" id="gXYtKZj" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpce:fA0kJcN" resolve="role" />
          <node concept="VechU" id="hEZR8CC" role="3F10Kt">
            <property role="Vb096" value="DARK_MAGENTA" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="gXY$Rq1">
    <property role="3GE5qa" value="CellMenu" />
    <ref role="1XX52x" to="tpc2:gXY$tNQ" resolve="CellMenuPart_CellMenuComponent" />
    <node concept="3EZMnI" id="gXY$S01" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="gXY$S02" role="3EZMnx">
        <node concept="3F0ifn" id="gXY$S03" role="3EZMnx">
          <property role="3F0ifm" value="menu component" />
          <node concept="VechU" id="hEZR8mV" role="3F10Kt">
            <property role="Vb096" value="DARK_BLUE" />
          </node>
          <node concept="30gYXW" id="hF0kJSG" role="3F10Kt">
            <property role="Vb096" value="lightGray" />
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$Pc5" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IxuPM" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="gXY$S04" role="3EZMnx">
        <node concept="3F0ifn" id="gXY$S05" role="3EZMnx">
          <property role="3F0ifm" value="  " />
          <node concept="VPM3Z" id="hEU$PfX" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F0ifn" id="gXY$S06" role="3EZMnx">
          <property role="3F0ifm" value="component" />
          <node concept="VPM3Z" id="hEU$PCw" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="gXY$S07" role="3EZMnx">
          <property role="3F0ifm" value=":" />
          <node concept="VPM3Z" id="hEU$Pha" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="1iCGBv" id="gXY$Xyp" role="3EZMnx">
          <property role="1$x2rV" value="&lt;choose menu component&gt;" />
          <ref role="1NtTu8" to="tpc2:gXY$Ez5" />
          <node concept="1sVBvm" id="gXY$Xyq" role="1sWHZn">
            <node concept="3F0A7n" id="gXY$ZAx" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <property role="1$x2rV" value="&lt;no name&gt;" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$PXh" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IxuQI" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2IxuO9" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="h5t6Ign">
    <property role="3GE5qa" value="CellMenu" />
    <ref role="1XX52x" to="tpc2:h5t6ywT" resolve="CellMenuPart_ReplaceChildPrimary" />
    <node concept="3EZMnI" id="h5t6M69" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="h5t6M6a" role="3EZMnx">
        <node concept="3F0ifn" id="h5t6M6b" role="3EZMnx">
          <property role="3F0ifm" value="primary replace child menu" />
          <node concept="VechU" id="hEZR8Ao" role="3F10Kt">
            <property role="Vb096" value="DARK_BLUE" />
          </node>
          <node concept="30gYXW" id="hF0kJUr" role="3F10Kt">
            <property role="Vb096" value="lightGray" />
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$Prj" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IxuTM" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="h5t6M6c" role="3EZMnx">
        <node concept="3F0ifn" id="h5t6M6d" role="3EZMnx">
          <property role="3F0ifm" value="  " />
          <node concept="VPM3Z" id="hEU$Pau" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F0ifn" id="h5t6M6e" role="3EZMnx">
          <property role="3F0ifm" value="no customization needed" />
          <node concept="Vb9p2" id="hEUNR1u" role="3F10Kt">
            <property role="Vbekb" value="ITALIC" />
          </node>
          <node concept="VechU" id="hEZR8pJ" role="3F10Kt">
            <property role="Vb096" value="darkGray" />
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$PU2" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IxuNY" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2IxuTX" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="h7TMiuR">
    <property role="TrG5h" value="_OpenTag" />
    <ref role="1XX52x" to="tpc2:fBEYTCT" resolve="EditorCellModel" />
    <node concept="1HlG4h" id="hPR1o5y" role="2wV5jI">
      <ref role="1k5W1q" node="hX1xO3O" resolve="bordered" />
      <node concept="Veino" id="hQ6rj0Y" role="3F10Kt">
        <node concept="3ZlJ5R" id="hQ6rj0Z" role="VblUZ">
          <node concept="3clFbS" id="hQ6rj10" role="2VODD2">
            <node concept="3clFbF" id="hQ6rj11" role="3cqZAp">
              <node concept="2YIFZM" id="hQ6rj12" role="3clFbG">
                <ref role="37wK5l" node="h842N6q" resolve="grayIfNotSelectable" />
                <ref role="1Pybhc" node="h842M7a" resolve="_EditorUtil" />
                <node concept="pncrf" id="hQ6rj13" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="VPxyj" id="hQ6rj14" role="3F10Kt" />
      <node concept="1HfYo3" id="hPR1o5z" role="1HlULh">
        <node concept="3TQlhw" id="hPR1o5$" role="1Hhtcw">
          <node concept="3clFbS" id="hPR1o5_" role="2VODD2">
            <node concept="3cpWs6" id="hPR1o5A" role="3cqZAp">
              <node concept="2OqwBi" id="hPR1o5B" role="3cqZAk">
                <node concept="pncrf" id="hPR1o5C" role="2Oq$k0" />
                <node concept="2qgKlT" id="hPR1o5D" role="2OqNvi">
                  <ref role="37wK5l" to="tpcb:hKxXtpm" resolve="getOpeningTag" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="h7TMK$j">
    <property role="TrG5h" value="_CloseTag" />
    <ref role="1XX52x" to="tpc2:fBEYTCT" resolve="EditorCellModel" />
    <node concept="1HlG4h" id="hPR1pIc" role="2wV5jI">
      <ref role="1k5W1q" node="hX1xO3O" resolve="bordered" />
      <node concept="1HfYo3" id="hPR1pId" role="1HlULh">
        <node concept="3TQlhw" id="hPR1pIe" role="1Hhtcw">
          <node concept="3clFbS" id="hPR1pIf" role="2VODD2">
            <node concept="3cpWs6" id="hPR1pIg" role="3cqZAp">
              <node concept="2OqwBi" id="hPR1pIh" role="3cqZAk">
                <node concept="pncrf" id="hPR1pIi" role="2Oq$k0" />
                <node concept="2qgKlT" id="hPR1pIj" role="2OqNvi">
                  <ref role="37wK5l" to="tpcb:hKxXx_K" resolve="getClosingTag" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="Veino" id="hQ6qDzj" role="3F10Kt">
        <node concept="3ZlJ5R" id="hQ6qHSr" role="VblUZ">
          <node concept="3clFbS" id="hQ6qHSs" role="2VODD2">
            <node concept="3clFbF" id="hQ6qZkL" role="3cqZAp">
              <node concept="2YIFZM" id="hQ6qZOy" role="3clFbG">
                <ref role="37wK5l" node="h842N6q" resolve="grayIfNotSelectable" />
                <ref role="1Pybhc" node="h842M7a" resolve="_EditorUtil" />
                <node concept="pncrf" id="hQ6r12F" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="VPxyj" id="hQ6r4co" role="3F10Kt" />
    </node>
  </node>
  <node concept="24kQdi" id="h7TR3g9">
    <ref role="1XX52x" to="tpc2:h7TQVbc" resolve="ModelAccessor" />
    <node concept="3EZMnI" id="h7TR3X_" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="h7TR6hB" role="3EZMnx">
        <node concept="3F0ifn" id="h7TR6Ab" role="3EZMnx">
          <property role="3F0ifm" value="model accessor" />
          <node concept="VechU" id="hEZR8sE" role="3F10Kt">
            <property role="Vb096" value="DARK_BLUE" />
          </node>
          <node concept="Vb9p2" id="hN2PNXA" role="3F10Kt">
            <property role="Vbekb" value="BOLD" />
          </node>
        </node>
        <node concept="3F0ifn" id="h7TR7dL" role="3EZMnx">
          <property role="3F0ifm" value="{" />
          <ref role="1k5W1q" to="tpen:hFD5onb" resolve="LeftBrace" />
          <node concept="11L4FC" id="hXbJZTt" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$PkZ" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IxuON" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="h7TR8qv" role="3EZMnx">
        <node concept="3EZMnI" id="h7TRa1P" role="3EZMnx">
          <property role="3EZMnw" value="true" />
          <node concept="3EZMnI" id="h7TRiHy" role="3EZMnx">
            <node concept="3F0ifn" id="h7TRiHz" role="3EZMnx">
              <property role="3F0ifm" value="get" />
              <node concept="VechU" id="hEZR8m5" role="3F10Kt">
                <property role="Vb096" value="DARK_BLUE" />
              </node>
              <node concept="Vb9p2" id="hN2PNXS" role="3F10Kt">
                <property role="Vbekb" value="BOLD" />
              </node>
            </node>
            <node concept="3F0ifn" id="h7TRiH$" role="3EZMnx">
              <property role="3F0ifm" value="{" />
              <ref role="1k5W1q" to="tpen:hFD5onb" resolve="LeftBrace" />
              <node concept="11L4FC" id="hXbK2bY" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
            <node concept="VPM3Z" id="hEU$Pmn" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IxuMt" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="h7TRiH_" role="3EZMnx">
            <node concept="3XFhqQ" id="hMozEtM" role="3EZMnx" />
            <node concept="3F1sOY" id="h7TRiHB" role="3EZMnx">
              <ref role="1NtTu8" to="tpc2:h7TQWri" />
            </node>
            <node concept="VPM3Z" id="hEU$PP5" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IxuTA" role="2iSdaV" />
          </node>
          <node concept="3F0ifn" id="h7TRiHC" role="3EZMnx">
            <property role="3F0ifm" value="}" />
            <ref role="1k5W1q" to="tpen:hFD5_7H" resolve="RightBrace" />
          </node>
          <node concept="3EZMnI" id="h7TRdQ_" role="3EZMnx">
            <node concept="3F0ifn" id="h7TRdQA" role="3EZMnx">
              <property role="3F0ifm" value="set" />
              <node concept="VechU" id="hEZR8u_" role="3F10Kt">
                <property role="Vb096" value="DARK_BLUE" />
              </node>
              <node concept="Vb9p2" id="hN2PNY8" role="3F10Kt">
                <property role="Vbekb" value="BOLD" />
              </node>
            </node>
            <node concept="3F0ifn" id="h7TRePC" role="3EZMnx">
              <property role="3F0ifm" value="{" />
              <ref role="1k5W1q" to="tpen:hFD5onb" resolve="LeftBrace" />
              <node concept="11L4FC" id="hXbJTZ4" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
            <node concept="VPM3Z" id="hEU$OV6" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IxuSR" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="h7TRgcA" role="3EZMnx">
            <node concept="3XFhqQ" id="hMozJ0l" role="3EZMnx" />
            <node concept="3F1sOY" id="h7TRh29" role="3EZMnx">
              <ref role="1NtTu8" to="tpc2:h7TQXU2" />
            </node>
            <node concept="VPM3Z" id="hEU$PFP" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IxuUE" role="2iSdaV" />
          </node>
          <node concept="3F0ifn" id="h7TRfh0" role="3EZMnx">
            <property role="3F0ifm" value="}" />
            <ref role="1k5W1q" to="tpen:hFD5_7H" resolve="RightBrace" />
          </node>
          <node concept="3EZMnI" id="h7TRkQH" role="3EZMnx">
            <node concept="3F0ifn" id="h7TRkQI" role="3EZMnx">
              <property role="3F0ifm" value="validate" />
              <node concept="VechU" id="hEZR8Cc" role="3F10Kt">
                <property role="Vb096" value="DARK_BLUE" />
              </node>
              <node concept="Vb9p2" id="hN2PNYC" role="3F10Kt">
                <property role="Vbekb" value="BOLD" />
              </node>
            </node>
            <node concept="3F0ifn" id="h7TRkQJ" role="3EZMnx">
              <property role="3F0ifm" value="{" />
              <ref role="1k5W1q" to="tpen:hFD5onb" resolve="LeftBrace" />
              <node concept="11L4FC" id="hXbJWVO" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
            <node concept="VPM3Z" id="hEU$PUo" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IxuNT" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="h7TRkQK" role="3EZMnx">
            <node concept="3XFhqQ" id="hMozJIJ" role="3EZMnx" />
            <node concept="3F1sOY" id="h7TRkQM" role="3EZMnx">
              <ref role="1NtTu8" to="tpc2:h7TQZuT" />
            </node>
            <node concept="VPM3Z" id="hEU$PJk" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IxuRJ" role="2iSdaV" />
          </node>
          <node concept="3F0ifn" id="h7TRkQN" role="3EZMnx">
            <property role="3F0ifm" value="}" />
            <ref role="1k5W1q" to="tpen:hFD5_7H" resolve="RightBrace" />
          </node>
          <node concept="VPM3Z" id="hEU$PdQ" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRkQZ" id="i2IxuQu" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$PPM" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IxuRX" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="h7TR7GN" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" to="tpen:hFD5_7H" resolve="RightBrace" />
      </node>
      <node concept="2iRkQZ" id="i2IxuOK" role="2iSdaV" />
    </node>
  </node>
  <node concept="312cEu" id="h842M7a">
    <property role="TrG5h" value="_EditorUtil" />
    <node concept="2YIFZL" id="h842N6q" role="jymVt">
      <property role="TrG5h" value="grayIfNotSelectable" />
      <node concept="3uibUv" id="h842Ygi" role="3clF45">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="37vLTG" id="h842ZAY" role="3clF46">
        <property role="TrG5h" value="cellModel" />
        <node concept="3Tqbb2" id="h84306K" role="1tU5fm">
          <ref role="ehGHo" to="tpc2:fBEYTCT" resolve="EditorCellModel" />
        </node>
      </node>
      <node concept="3clFbS" id="h842N6s" role="3clF47">
        <node concept="3clFbJ" id="h8433ef" role="3cqZAp">
          <node concept="3clFbS" id="h8433eh" role="3clFbx">
            <node concept="3cpWs6" id="h843mWE" role="3cqZAp">
              <node concept="2ShNRf" id="hDI_36T" role="3cqZAk">
                <node concept="1pGfFk" id="hDI_36V" role="2ShVmc">
                  <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
                  <node concept="3cmrfG" id="h843q7M" role="37wK5m">
                    <property role="3cmrfH" value="230" />
                  </node>
                  <node concept="3cmrfG" id="h843qZY" role="37wK5m">
                    <property role="3cmrfH" value="230" />
                  </node>
                  <node concept="3cmrfG" id="h843rJ8" role="37wK5m">
                    <property role="3cmrfH" value="230" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="hJF8AqZ" role="3clFbw">
            <node concept="2OqwBi" id="hJF8Ar0" role="3fr31v">
              <node concept="2qgKlT" id="hJF8Ar2" role="2OqNvi">
                <ref role="37wK5l" to="tpcb:hJF6SX1" resolve="isSelectable" />
              </node>
              <node concept="37vLTw" id="2BHiRxghgff" role="2Oq$k0">
                <ref role="3cqZAo" node="h842ZAY" resolve="cellModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="h843sq8" role="3cqZAp">
          <node concept="10Nm6u" id="h843u82" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="h9AO$K8" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="h9B3LlR" role="1B3o_S" />
  </node>
  <node concept="325Ffw" id="h9UV7T6">
    <property role="TrG5h" value="_SplitConctantCellIntoWordsKeyMap" />
    <ref role="1chiOs" to="tpc2:fBF0icI" resolve="CellModel_Constant" />
    <node concept="2PxR9H" id="h9UVnAn" role="2QnnpI">
      <property role="2PxWOX" value="split constant cell into words" />
      <property role="3ArL7W" value="true" />
      <node concept="2Py5lD" id="h9UVnAo" role="2PyaAO">
        <property role="2PWKIS" value="VK_W" />
        <property role="2PWKIB" value="ctrl+alt+shift" />
      </node>
      <node concept="2PzhpH" id="h9UVnAp" role="2PL9iG">
        <node concept="3clFbS" id="h9UVnAq" role="2VODD2">
          <node concept="3cpWs8" id="h9UVH8e" role="3cqZAp">
            <node concept="3cpWsn" id="h9UVH8f" role="3cpWs9">
              <property role="TrG5h" value="collection" />
              <node concept="3Tqbb2" id="h9UVH8g" role="1tU5fm">
                <ref role="ehGHo" to="tpc2:fBEZMkn" resolve="CellModel_Collection" />
              </node>
              <node concept="2OqwBi" id="hxx$R44" role="33vP2m">
                <node concept="2OqwBi" id="hxx_2lu" role="2Oq$k0">
                  <node concept="0GJ7k" id="h9UVNnY" role="2Oq$k0" />
                  <node concept="I4A8Y" id="h9UVOT6" role="2OqNvi" />
                </node>
                <node concept="15TzpJ" id="5wUAOoBBfos" role="2OqNvi">
                  <ref role="I8UWU" to="tpc2:fBEZMkn" resolve="CellModel_Collection" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="h9UVTIx" role="3cqZAp">
            <node concept="2OqwBi" id="hxx$Yzs" role="3clFbG">
              <node concept="2OqwBi" id="hxx$ONa" role="2Oq$k0">
                <node concept="37vLTw" id="3GM_nagTvZj" role="2Oq$k0">
                  <ref role="3cqZAo" node="h9UVH8f" resolve="collection" />
                </node>
                <node concept="3TrEf2" id="h9UW7ve" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpc2:g6iSdeU" />
                </node>
              </node>
              <node concept="2DeJnY" id="5wUAOoBBfpH" role="2OqNvi">
                <ref role="1A9B2P" to="tpc2:g6iR$Wm" resolve="CellLayout_Flow" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="h9UV$S3" role="3cqZAp">
            <node concept="2OqwBi" id="hxx$GxP" role="3clFbG">
              <node concept="0GJ7k" id="h9UV$S4" role="2Oq$k0" />
              <node concept="1P9Npp" id="h9UWlyd" role="2OqNvi">
                <node concept="37vLTw" id="3GM_nagTz0r" role="1P9ThW">
                  <ref role="3cqZAo" node="h9UVH8f" resolve="collection" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="h9UWwMf" role="3cqZAp">
            <node concept="3cpWsn" id="h9UWwMg" role="3cpWs9">
              <property role="TrG5h" value="text" />
              <node concept="17QB3L" id="hP36EVo" role="1tU5fm" />
              <node concept="2OqwBi" id="hxx$UCQ" role="33vP2m">
                <node concept="0GJ7k" id="h9UWsDC" role="2Oq$k0" />
                <node concept="3TrcHB" id="h9UWu2L" role="2OqNvi">
                  <ref role="3TsBF5" to="tpc2:fBF0icJ" resolve="text" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="h9UWXG0" role="3cqZAp">
            <node concept="3cpWsn" id="h9UWXG1" role="3cpWs9">
              <property role="TrG5h" value="strings" />
              <node concept="10Q1$e" id="h9UWXG2" role="1tU5fm">
                <node concept="17QB3L" id="hP36_AO" role="10Q1$1" />
              </node>
              <node concept="2OqwBi" id="h$UNP5u" role="33vP2m">
                <node concept="37vLTw" id="3GM_nagTzk2" role="2Oq$k0">
                  <ref role="3cqZAo" node="h9UWwMg" resolve="text" />
                </node>
                <node concept="liA8E" id="h$UNP5v" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.split(java.lang.String):java.lang.String[]" resolve="split" />
                  <node concept="Xl_RD" id="h9UWV3n" role="37wK5m">
                    <property role="Xl_RC" value=" " />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1DcWWT" id="h9UWZP6" role="3cqZAp">
            <node concept="37vLTw" id="3GM_nagTrV2" role="1DdaDG">
              <ref role="3cqZAo" node="h9UWXG1" resolve="strings" />
            </node>
            <node concept="3cpWsn" id="h9UWZP8" role="1Duv9x">
              <property role="TrG5h" value="word" />
              <node concept="17QB3L" id="hP36CAe" role="1tU5fm" />
            </node>
            <node concept="3clFbS" id="h9UWZPa" role="2LFqv$">
              <node concept="3cpWs8" id="h9UXIf7" role="3cqZAp">
                <node concept="3cpWsn" id="h9UXIf8" role="3cpWs9">
                  <property role="TrG5h" value="constantCell" />
                  <node concept="3Tqbb2" id="h9UXIf9" role="1tU5fm">
                    <ref role="ehGHo" to="tpc2:fBF0icI" resolve="CellModel_Constant" />
                  </node>
                  <node concept="2OqwBi" id="hxx$WtQ" role="33vP2m">
                    <node concept="0GJ7k" id="h9V2A4b" role="2Oq$k0" />
                    <node concept="1$rogu" id="h9V2Cqq" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="h9UYycG" role="3cqZAp">
                <node concept="2OqwBi" id="hxx$XCf" role="3clFbG">
                  <node concept="2OqwBi" id="hxx$BLM" role="2Oq$k0">
                    <node concept="37vLTw" id="3GM_nagTuR_" role="2Oq$k0">
                      <ref role="3cqZAo" node="h9UXIf8" resolve="constantCell" />
                    </node>
                    <node concept="3TrcHB" id="h9UYzgq" role="2OqNvi">
                      <ref role="3TsBF5" to="tpc2:fBF0icJ" resolve="text" />
                    </node>
                  </node>
                  <node concept="tyxLq" id="h9UYFKf" role="2OqNvi">
                    <node concept="37vLTw" id="3GM_nagTrxy" role="tz02z">
                      <ref role="3cqZAo" node="h9UWZP8" resolve="word" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="h9UX3uU" role="3cqZAp">
                <node concept="2OqwBi" id="hxx_65M" role="3clFbG">
                  <node concept="2OqwBi" id="hxx$Gjr" role="2Oq$k0">
                    <node concept="37vLTw" id="3GM_nagT$Gj" role="2Oq$k0">
                      <ref role="3cqZAo" node="h9UVH8f" resolve="collection" />
                    </node>
                    <node concept="3Tsc0h" id="h9UXb9k" role="2OqNvi">
                      <ref role="3TtcxE" to="tpc2:fBEZMko" />
                    </node>
                  </node>
                  <node concept="TSZUe" id="1$wX9nnL0Kz" role="2OqNvi">
                    <node concept="37vLTw" id="3GM_nagTzt8" role="25WWJ7">
                      <ref role="3cqZAo" node="h9UXIf8" resolve="constantCell" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2Pz7Y7" id="h9UVBUI" role="2Pzqsi">
        <node concept="3clFbS" id="h9UVBUJ" role="2VODD2">
          <node concept="3clFbF" id="h9UVCoQ" role="3cqZAp">
            <node concept="2OqwBi" id="hxx$Zeq" role="3clFbG">
              <node concept="2OqwBi" id="hxx_6mJ" role="2Oq$k0">
                <node concept="0GJ7k" id="h9UVCoR" role="2Oq$k0" />
                <node concept="1mfA1w" id="h9UVDlA" role="2OqNvi" />
              </node>
              <node concept="3x8VRR" id="h9UVEpE" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="hbychNp">
    <property role="3GE5qa" value="CellMenu" />
    <ref role="1XX52x" to="tpc2:hbyc0Ja" resolve="CellMenuPart_PropertyPostfixHints" />
    <node concept="3EZMnI" id="hbyciaZ" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="hbycib0" role="3EZMnx">
        <node concept="3F0ifn" id="hbycib1" role="3EZMnx">
          <property role="3F0ifm" value="property postfix hints" />
          <node concept="VechU" id="hEZR8tl" role="3F10Kt">
            <property role="Vb096" value="DARK_BLUE" />
          </node>
          <node concept="30gYXW" id="hF0kJSd" role="3F10Kt">
            <property role="Vb096" value="lightGray" />
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$PSA" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IxuNo" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="hbycib2" role="3EZMnx">
        <node concept="3F0ifn" id="hbycib3" role="3EZMnx">
          <property role="3F0ifm" value="  " />
          <node concept="VPM3Z" id="hEU$PWF" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F0ifn" id="hbycib4" role="3EZMnx">
          <property role="3F0ifm" value="postfixes" />
          <node concept="VPM3Z" id="hEU$P2t" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="hbycib5" role="3EZMnx">
          <property role="3F0ifm" value=":" />
          <node concept="VPM3Z" id="hEU$Pml" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F1sOY" id="hbycib6" role="3EZMnx">
          <ref role="1NtTu8" to="tpc2:hbyc0Jb" />
        </node>
        <node concept="VPM3Z" id="hEU$P1h" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IxuST" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2IxuQg" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hd05McL">
    <property role="TrG5h" value="CellModel_RefNodeList_Editor" />
    <property role="3GE5qa" value="CellModel" />
    <ref role="1XX52x" to="tpc2:fBF2Hee" resolve="CellModel_RefNodeList" />
    <node concept="3EZMnI" id="hd05McM" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <ref role="1k5W1q" node="i0pPgF8" resolve="rootCellModelStyle" />
      <node concept="PMmxH" id="hd05McN" role="3EZMnx">
        <ref role="PMmxG" node="h7TMiuR" resolve="_OpenTag" />
        <ref role="1k5W1q" node="i12920y" resolve="tag" />
      </node>
      <node concept="3F0A7n" id="hdHfl3D" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:gAczwbU" resolve="vertical" />
        <node concept="pkWqt" id="hdHfmp0" role="pqm2j">
          <node concept="3clFbS" id="hdHfmp1" role="2VODD2">
            <node concept="3clFbF" id="hI$H6pP" role="3cqZAp">
              <node concept="2YIFZM" id="hI$H9yM" role="3clFbG">
                <ref role="1Pybhc" to="w1kc:~SModelStereotype" resolve="SModelStereotype" />
                <ref role="37wK5l" to="w1kc:~SModelStereotype.isGeneratorModel(org.jetbrains.mps.openapi.model.SModel):boolean" resolve="isGeneratorModel" />
                <node concept="2OqwBi" id="hI$HaQk" role="37wK5m">
                  <node concept="pncrf" id="hI$HaqH" role="2Oq$k0" />
                  <node concept="I4A8Y" id="hI$HaYE" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="hd05McO" role="3EZMnx">
        <property role="3EZMnw" value="true" />
        <node concept="3EZMnI" id="hd05McP" role="3EZMnx">
          <property role="3EZMnw" value="true" />
          <node concept="3EZMnI" id="hd05McQ" role="3EZMnx">
            <property role="3EZMnw" value="false" />
            <ref role="1k5W1q" node="hX5ZSzR" resolve="borderedCollection" />
            <node concept="3F0ifn" id="hd05McR" role="3EZMnx">
              <property role="3F0ifm" value="%" />
              <ref role="1k5W1q" node="hX1xO3O" resolve="bordered" />
            </node>
            <node concept="1iCGBv" id="hd05McS" role="3EZMnx">
              <property role="1$x2rV" value="&lt;no link&gt;" />
              <ref role="1NtTu8" to="tpc2:fBF2Hej" />
              <node concept="1sVBvm" id="hd05McT" role="1sWHZn">
                <node concept="3F0A7n" id="hd05McU" role="2wV5jI">
                  <property role="1Intyy" value="true" />
                  <property role="1$x2rV" value="&lt;no role&gt;" />
                  <ref role="1NtTu8" to="tpce:fA0kJcN" resolve="role" />
                  <node concept="VPXOz" id="hEUNSBu" role="3F10Kt">
                    <property role="VOm3f" value="true" />
                  </node>
                </node>
              </node>
              <node concept="VPXOz" id="hEUNSC_" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
            <node concept="3F0ifn" id="hd05McV" role="3EZMnx">
              <property role="3F0ifm" value="%" />
              <ref role="1k5W1q" node="hX1xO3O" resolve="bordered" />
            </node>
            <node concept="2iRfu4" id="i2IxuRf" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="544mDfev1E8" role="3EZMnx">
            <node concept="VPM3Z" id="544mDfev1E9" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2EHx9g" id="544mDfev1Ec" role="2iSdaV" />
            <node concept="3EZMnI" id="hd05McW" role="3EZMnx">
              <property role="3EZMnw" value="false" />
              <ref role="1k5W1q" node="hX5ZSzR" resolve="borderedCollection" />
              <node concept="3F0ifn" id="hd05McX" role="3EZMnx">
                <property role="3F0ifm" value="/empty cell:" />
                <ref role="1k5W1q" node="hX1xO3O" resolve="bordered" />
              </node>
              <node concept="3F1sOY" id="hd05McY" role="3EZMnx">
                <property role="1$x2rV" value="&lt;default&gt;" />
                <ref role="1NtTu8" to="tpc2:gAczzzB" />
                <node concept="VPXOz" id="hEUNSB8" role="3F10Kt">
                  <property role="VOm3f" value="true" />
                </node>
              </node>
              <node concept="2iRfu4" id="i2IxuTU" role="2iSdaV" />
            </node>
            <node concept="PMmxH" id="5fDszETGVuc" role="3EZMnx">
              <ref role="PMmxG" node="544mDfev1E1" resolve="CellModelListWithRole_FoldedCellComponent" />
              <node concept="pkWqt" id="5fDszETGVud" role="pqm2j">
                <node concept="3clFbS" id="5fDszETGVue" role="2VODD2">
                  <node concept="3clFbF" id="5fDszETGYNb" role="3cqZAp">
                    <node concept="2OqwBi" id="5fDszETGYNd" role="3clFbG">
                      <node concept="pncrf" id="5fDszETGYNc" role="2Oq$k0" />
                      <node concept="2qgKlT" id="3DPg8zpyaAo" role="2OqNvi">
                        <ref role="37wK5l" to="tpcb:3ZqNA5Aj2vG" resolve="isFoldingEnabled" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="pkWqt" id="hd05McZ" role="pqm2j">
            <node concept="3clFbS" id="hd05Md0" role="2VODD2">
              <node concept="3cpWs6" id="hd05Md1" role="3cqZAp">
                <node concept="2OqwBi" id="hxx$XsG" role="3cqZAk">
                  <node concept="pncrf" id="hd05Md3" role="2Oq$k0" />
                  <node concept="2qgKlT" id="i2IibHT" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:i2IdWzG" resolve="isVertical" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="VPM3Z" id="hEU$OZE" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="hEUNSCe" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2iRkQZ" id="i2IxuO$" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="hd05Md5" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <ref role="1k5W1q" node="hX5ZSzR" resolve="borderedCollection" />
          <node concept="3EZMnI" id="hd05Md6" role="3EZMnx">
            <property role="3EZMnw" value="false" />
            <ref role="1k5W1q" node="hX5ZSzR" resolve="borderedCollection" />
            <node concept="3F0ifn" id="hd05Md7" role="3EZMnx">
              <property role="3F0ifm" value="%" />
              <ref role="1k5W1q" node="hX1xO3O" resolve="bordered" />
            </node>
            <node concept="1iCGBv" id="hd05Md8" role="3EZMnx">
              <property role="1$x2rV" value="&lt;no link&gt;" />
              <ref role="1NtTu8" to="tpc2:fBF2Hej" />
              <node concept="1sVBvm" id="hd05Md9" role="1sWHZn">
                <node concept="3F0A7n" id="hd05Mda" role="2wV5jI">
                  <property role="1Intyy" value="true" />
                  <property role="1$x2rV" value="&lt;no role&gt;" />
                  <ref role="1NtTu8" to="tpce:fA0kJcN" resolve="role" />
                  <node concept="VPXOz" id="hEUNSDn" role="3F10Kt">
                    <property role="VOm3f" value="true" />
                  </node>
                </node>
              </node>
              <node concept="VPXOz" id="hEUNSy$" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
            <node concept="3F0ifn" id="hd05Mdb" role="3EZMnx">
              <property role="3F0ifm" value="%" />
              <ref role="1k5W1q" node="hX1xO3O" resolve="bordered" />
            </node>
            <node concept="3F0ifn" id="hd05Mdc" role="3EZMnx">
              <property role="3F0ifm" value="/empty cell:" />
              <ref role="1k5W1q" node="hX1xO3O" resolve="bordered" />
            </node>
            <node concept="3F1sOY" id="hd05Mdd" role="3EZMnx">
              <property role="1$x2rV" value="&lt;default&gt;" />
              <ref role="1NtTu8" to="tpc2:gAczzzB" />
              <node concept="VPXOz" id="hEUNSsY" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
            <node concept="PMmxH" id="5fDszETGYNj" role="3EZMnx">
              <ref role="PMmxG" node="544mDfev1E1" resolve="CellModelListWithRole_FoldedCellComponent" />
              <node concept="pkWqt" id="5fDszETGYNk" role="pqm2j">
                <node concept="3clFbS" id="5fDszETGYNl" role="2VODD2">
                  <node concept="3clFbF" id="5fDszETGYNm" role="3cqZAp">
                    <node concept="2OqwBi" id="5fDszETGYNo" role="3clFbG">
                      <node concept="pncrf" id="5fDszETGYNn" role="2Oq$k0" />
                      <node concept="3TrcHB" id="5fDszETGYNs" role="2OqNvi">
                        <ref role="3TsBF5" to="tpc2:gSS$F7l" resolve="usesFolding" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2iRfu4" id="i2IxuPD" role="2iSdaV" />
          </node>
          <node concept="pkWqt" id="hd05Mde" role="pqm2j">
            <node concept="3clFbS" id="hd05Mdf" role="2VODD2">
              <node concept="3cpWs6" id="hd05Mdg" role="3cqZAp">
                <node concept="3fqX7Q" id="hd05Mdh" role="3cqZAk">
                  <node concept="2OqwBi" id="hxx$PoU" role="3fr31v">
                    <node concept="pncrf" id="hd05Mdj" role="2Oq$k0" />
                    <node concept="2qgKlT" id="i2IidDy" role="2OqNvi">
                      <ref role="37wK5l" to="tpcb:i2IdWzG" resolve="isVertical" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2iRfu4" id="i2IxxZD" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$P_H" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VPXOz" id="hEUNSk_" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="2iRkQZ" id="i2IxuSV" role="2iSdaV" />
      </node>
      <node concept="PMmxH" id="hd05Mdl" role="3EZMnx">
        <ref role="PMmxG" node="h7TMK$j" resolve="_CloseTag" />
        <ref role="1k5W1q" node="i12920y" resolve="tag" />
      </node>
      <node concept="2iRfu4" id="i2IxuNI" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="hd05Mdm" role="6VMZX">
      <property role="3EZMnw" value="true" />
      <node concept="PMmxH" id="hEUk2an" role="3EZMnx">
        <ref role="PMmxG" node="hF4ssnw" resolve="_CellModel_Common" />
      </node>
      <node concept="3F0ifn" id="hF4FPZT" role="3EZMnx">
        <node concept="VPM3Z" id="hF4FQr0" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="hd05Mdn" role="3EZMnx">
        <property role="3F0ifm" value="Ref.node list cell:" />
        <ref role="1k5W1q" node="hF4yUZ8" resolve="header" />
      </node>
      <node concept="3EZMnI" id="hF4wrQa" role="3EZMnx">
        <property role="3EZMnw" value="true" />
        <property role="3EZMnz" value="true" />
        <node concept="3EZMnI" id="hd05Mdp" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="hd05Mdq" role="3EZMnx">
            <property role="3F0ifm" value="link" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="1iCGBv" id="hd05Mdr" role="3EZMnx">
            <property role="1$x2rV" value="&lt;no link&gt;" />
            <ref role="1NtTu8" to="tpc2:fBF2Hej" />
            <node concept="1sVBvm" id="hd05Mds" role="1sWHZn">
              <node concept="3F0A7n" id="hd05Mdt" role="2wV5jI">
                <property role="1Intyy" value="true" />
                <property role="1$x2rV" value="&lt;no role&gt;" />
                <ref role="1NtTu8" to="tpce:fA0kJcN" resolve="role" />
                <node concept="VPXOz" id="hEUNSJ5" role="3F10Kt">
                  <property role="VOm3f" value="true" />
                </node>
              </node>
            </node>
          </node>
          <node concept="VPM3Z" id="hEU$Q23" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="hEUNSfO" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2iRfu4" id="i2IxuRD" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="hF4wv7q" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="VPM3Z" id="hWt765O" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="hWt765P" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3F0ifn" id="hF4wv7r" role="3EZMnx">
            <property role="3F0ifm" value="filter" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F1sOY" id="hF4wv7s" role="3EZMnx">
            <ref role="1NtTu8" to="tpc2:hd2AuTj" />
          </node>
          <node concept="2iRfu4" id="i2IxuQ9" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="hF4wxIh" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="hF4wxIi" role="3EZMnx">
            <property role="3F0ifm" value="cell layout" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F1sOY" id="hF4wxIl" role="3EZMnx">
            <ref role="1NtTu8" to="tpc2:gAczzzC" />
          </node>
          <node concept="VPM3Z" id="hF4wxIn" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="hF4wxIo" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2iRfu4" id="i2IxuQX" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="hF4wxIp" role="3EZMnx">
          <node concept="3F0ifn" id="hF4wxIq" role="3EZMnx">
            <property role="3F0ifm" value="uses braces" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F0A7n" id="hF4wxIt" role="3EZMnx">
            <ref role="1NtTu8" to="tpc2:gAczwbW" resolve="usesBraces" />
          </node>
          <node concept="VPM3Z" id="hF4wxIv" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="hF4wxIw" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2iRfu4" id="i2IxuTg" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="hF4wxIx" role="3EZMnx">
          <node concept="3F0ifn" id="hF4wxIy" role="3EZMnx">
            <property role="3F0ifm" value="uses folding" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="1QoScp" id="3ZqNA5AjMi5" role="3EZMnx">
            <property role="1QpmdY" value="true" />
            <node concept="pkWqt" id="3ZqNA5AjMi7" role="3e4ffs">
              <node concept="3clFbS" id="3ZqNA5AjMi8" role="2VODD2">
                <node concept="3clFbF" id="3ZqNA5AjMib" role="3cqZAp">
                  <node concept="2OqwBi" id="3ZqNA5AjMii" role="3clFbG">
                    <node concept="2OqwBi" id="3ZqNA5AjMid" role="2Oq$k0">
                      <node concept="pncrf" id="3ZqNA5AjMic" role="2Oq$k0" />
                      <node concept="3TrEf2" id="3ZqNA5AjMih" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpc2:3ZqNA5Aj2vB" />
                      </node>
                    </node>
                    <node concept="3w_OXm" id="3ZqNA5AjMim" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3F1sOY" id="3ZqNA5AjMio" role="1QoVPY">
              <ref role="1NtTu8" to="tpc2:3ZqNA5Aj2vB" />
            </node>
            <node concept="VPXOz" id="3ZqNA5AjMia" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="3F0A7n" id="3ZqNA5AjMin" role="1QoS34">
              <ref role="1NtTu8" to="tpc2:gSS$F7l" resolve="usesFolding" />
              <node concept="OXEIz" id="3ZqNA5AjMip" role="P5bDN">
                <node concept="PvTIS" id="3ZqNA5AjMiq" role="OY2wv">
                  <node concept="MLZmj" id="3ZqNA5AjMir" role="PvTIR">
                    <node concept="3clFbS" id="3ZqNA5AjMis" role="2VODD2">
                      <node concept="3clFbF" id="3ZqNA5AjMit" role="3cqZAp">
                        <node concept="2ShNRf" id="3ZqNA5AjMiu" role="3clFbG">
                          <node concept="Tc6Ow" id="3ZqNA5AjMiv" role="2ShVmc">
                            <node concept="17QB3L" id="3ZqNA5AjMiw" role="HW$YZ" />
                            <node concept="Xl_RD" id="3ZqNA5AjMix" role="HW$Y0">
                              <property role="Xl_RC" value="true" />
                            </node>
                            <node concept="Xl_RD" id="3ZqNA5AjMiy" role="HW$Y0">
                              <property role="Xl_RC" value="false" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1oHujT" id="3ZqNA5AjMiz" role="OY2wv">
                  <property role="1oHujS" value="query" />
                  <node concept="1oIgkG" id="3ZqNA5AjMi$" role="1oHujR">
                    <node concept="3clFbS" id="3ZqNA5AjMi_" role="2VODD2">
                      <node concept="3clFbF" id="3ZqNA5AjMiA" role="3cqZAp">
                        <node concept="2OqwBi" id="3ZqNA5AjMiB" role="3clFbG">
                          <node concept="2OqwBi" id="3ZqNA5AjMiC" role="2Oq$k0">
                            <node concept="3GMtW1" id="3ZqNA5AjMiD" role="2Oq$k0" />
                            <node concept="3TrEf2" id="3ZqNA5AjMiH" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpc2:3ZqNA5Aj2vB" />
                            </node>
                          </node>
                          <node concept="2DeJnY" id="5wUAOoBBfpS" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="VPM3Z" id="hF4wxI$" role="3F10Kt" />
          <node concept="VPXOz" id="3ZqNA5AjJaE" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2iRfu4" id="i2IxuSk" role="2iSdaV" />
        </node>
        <node concept="3F0ifn" id="hF4w_Se" role="3EZMnx">
          <property role="3F0ifm" value="list element:" />
          <ref role="1k5W1q" node="hF4yUZ8" resolve="header" />
        </node>
        <node concept="3EZMnI" id="hF4w_Sg" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="hF4w_Sh" role="3EZMnx">
            <property role="3F0ifm" value="separator" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F0A7n" id="hF4w_Sk" role="3EZMnx">
            <property role="1O74Pk" value="true" />
            <property role="1$x2rV" value="&lt;no separator&gt;" />
            <ref role="1NtTu8" to="tpc2:gAczwbX" resolve="separatorText" />
            <node concept="VPXOz" id="hF4w_Sl" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="30gYXW" id="hF4w_Sm" role="3F10Kt">
              <property role="Vb096" value="yellow" />
            </node>
            <node concept="30h1P$" id="hF4w_Sn" role="3F10Kt">
              <property role="Vb096" value="cyan" />
            </node>
            <node concept="pkWqt" id="Ny5pAsxF$1" role="pqm2j">
              <node concept="3clFbS" id="Ny5pAsxF$2" role="2VODD2">
                <node concept="3clFbF" id="Ny5pAsxJJi" role="3cqZAp">
                  <node concept="3clFbC" id="Ny5pAsxJQx" role="3clFbG">
                    <node concept="10Nm6u" id="Ny5pAsxJQ$" role="3uHU7w" />
                    <node concept="2OqwBi" id="Ny5pAsxJJk" role="3uHU7B">
                      <node concept="pncrf" id="Ny5pAsxJJj" role="2Oq$k0" />
                      <node concept="3TrEf2" id="Ny5pAsxJQs" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpc2:Ny5pAsx39_" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="OXEIz" id="Ny5pAszDjn" role="P5bDN">
              <node concept="1ou48o" id="3EUGuXc4M6w" role="OY2wv">
                <property role="1ezIyd" value="custom" />
                <node concept="3GJtP1" id="3EUGuXc4M6x" role="1ou48n">
                  <node concept="3clFbS" id="3EUGuXc4M6y" role="2VODD2">
                    <node concept="3cpWs8" id="3EUGuXc50LX" role="3cqZAp">
                      <node concept="3cpWsn" id="3EUGuXc50LY" role="3cpWs9">
                        <property role="TrG5h" value="result" />
                        <node concept="_YKpA" id="3EUGuXc50LZ" role="1tU5fm">
                          <node concept="3Tqbb2" id="3EUGuXc50M1" role="_ZDj9">
                            <ref role="ehGHo" to="tpc2:Bqq$mhZ7YP" resolve="QueryFunction_SeparatorText" />
                          </node>
                        </node>
                        <node concept="2ShNRf" id="3EUGuXc55$P" role="33vP2m">
                          <node concept="Tc6Ow" id="3EUGuXc55$Q" role="2ShVmc">
                            <node concept="3Tqbb2" id="3EUGuXc55$R" role="HW$YZ">
                              <ref role="ehGHo" to="tpc2:Bqq$mhZ7YP" resolve="QueryFunction_SeparatorText" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="3EUGuXc55$T" role="3cqZAp">
                      <node concept="2OqwBi" id="3EUGuXc55$V" role="3clFbG">
                        <node concept="37vLTw" id="3GM_nagTuHO" role="2Oq$k0">
                          <ref role="3cqZAo" node="3EUGuXc50LY" resolve="result" />
                        </node>
                        <node concept="TSZUe" id="3EUGuXc55$Z" role="2OqNvi">
                          <node concept="2ShNRf" id="3EUGuXc55_1" role="25WWJ7">
                            <node concept="2fJWfE" id="5wUAOoBBfl4" role="2ShVmc">
                              <node concept="3Tqbb2" id="5wUAOoBBfl5" role="3zrR0E">
                                <ref role="ehGHo" to="tpc2:Bqq$mhZ7YP" resolve="QueryFunction_SeparatorText" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="3EUGuXc4PD8" role="3cqZAp">
                      <node concept="37vLTw" id="3GM_nagT_88" role="3clFbG">
                        <ref role="3cqZAo" node="3EUGuXc50LY" resolve="result" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1ouSdP" id="3EUGuXc4M6z" role="1ou48m">
                  <node concept="3clFbS" id="3EUGuXc4M6$" role="2VODD2">
                    <node concept="3clFbF" id="3EUGuXc4PaC" role="3cqZAp">
                      <node concept="2OqwBi" id="3EUGuXc4PaJ" role="3clFbG">
                        <node concept="2OqwBi" id="3EUGuXc4PaE" role="2Oq$k0">
                          <node concept="3GMtW1" id="3EUGuXc4PaD" role="2Oq$k0" />
                          <node concept="3TrEf2" id="3EUGuXc4PaI" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpc2:Ny5pAsx39_" />
                          </node>
                        </node>
                        <node concept="2oxUTD" id="3EUGuXc4PaN" role="2OqNvi">
                          <node concept="3GLrbK" id="3EUGuXc4PaQ" role="2oxUTC" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3Tqbb2" id="3EUGuXc4PaS" role="1eyP2E">
                  <ref role="ehGHo" to="tpc2:Bqq$mhZ7YP" resolve="QueryFunction_SeparatorText" />
                </node>
                <node concept="6VE3a" id="3EUGuXc70pv" role="1ezQQy">
                  <node concept="3clFbS" id="3EUGuXc70pw" role="2VODD2">
                    <node concept="3clFbF" id="3EUGuXc73nI" role="3cqZAp">
                      <node concept="Xl_RD" id="3EUGuXc73nJ" role="3clFbG">
                        <property role="Xl_RC" value="query" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="VPM3Z" id="hF4w_So" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="hF4w_Sp" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2iRfu4" id="i2IxuT4" role="2iSdaV" />
          <node concept="3F1sOY" id="Ny5pAsxJQD" role="3EZMnx">
            <ref role="1NtTu8" to="tpc2:Ny5pAsx39_" />
            <node concept="pkWqt" id="Ny5pAsxJQE" role="pqm2j">
              <node concept="3clFbS" id="Ny5pAsxJQF" role="2VODD2">
                <node concept="3clFbF" id="Ny5pAsxJQG" role="3cqZAp">
                  <node concept="3y3z36" id="Ny5pAsxJQN" role="3clFbG">
                    <node concept="10Nm6u" id="Ny5pAsxJQQ" role="3uHU7w" />
                    <node concept="2OqwBi" id="Ny5pAsxJQI" role="3uHU7B">
                      <node concept="pncrf" id="Ny5pAsxJQH" role="2Oq$k0" />
                      <node concept="3TrEf2" id="Ny5pAsxJQM" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpc2:Ny5pAsx39_" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="OXEIz" id="3EUGuXc80Kh" role="P5bDN">
              <node concept="1ou48o" id="3EUGuXc80Ki" role="OY2wv">
                <property role="1ezIyd" value="custom" />
                <node concept="3GJtP1" id="3EUGuXc80Kj" role="1ou48n">
                  <node concept="3clFbS" id="3EUGuXc80Kk" role="2VODD2">
                    <node concept="3cpWs8" id="3EUGuXc83I_" role="3cqZAp">
                      <node concept="3cpWsn" id="3EUGuXc83IA" role="3cpWs9">
                        <property role="TrG5h" value="result" />
                        <node concept="_YKpA" id="3EUGuXc83IB" role="1tU5fm">
                          <node concept="17QB3L" id="3EUGuXc83ID" role="_ZDj9" />
                        </node>
                        <node concept="2ShNRf" id="3EUGuXc83IY" role="33vP2m">
                          <node concept="Tc6Ow" id="3EUGuXc83IZ" role="2ShVmc">
                            <node concept="17QB3L" id="3EUGuXc83J0" role="HW$YZ" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="3EUGuXc83IJ" role="3cqZAp">
                      <node concept="2OqwBi" id="3EUGuXc83IL" role="3clFbG">
                        <node concept="37vLTw" id="3GM_nagT$FS" role="2Oq$k0">
                          <ref role="3cqZAo" node="3EUGuXc83IA" resolve="result" />
                        </node>
                        <node concept="TSZUe" id="3EUGuXc83IP" role="2OqNvi">
                          <node concept="2OqwBi" id="3EUGuXc83IS" role="25WWJ7">
                            <node concept="3GMtW1" id="3EUGuXc83IR" role="2Oq$k0" />
                            <node concept="3TrcHB" id="3EUGuXc83IW" role="2OqNvi">
                              <ref role="3TsBF5" to="tpc2:gAczwbX" resolve="separatorText" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="3EUGuXc83IF" role="3cqZAp">
                      <node concept="37vLTw" id="3GM_nagTw8j" role="3cqZAk">
                        <ref role="3cqZAo" node="3EUGuXc83IA" resolve="result" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1ouSdP" id="3EUGuXc80Kl" role="1ou48m">
                  <node concept="3clFbS" id="3EUGuXc80Km" role="2VODD2">
                    <node concept="3clFbF" id="3EUGuXc83Jb" role="3cqZAp">
                      <node concept="2OqwBi" id="3EUGuXc83Ji" role="3clFbG">
                        <node concept="2OqwBi" id="3EUGuXc83Jd" role="2Oq$k0">
                          <node concept="3GMtW1" id="3EUGuXc83Jc" role="2Oq$k0" />
                          <node concept="3TrEf2" id="3EUGuXc83Jh" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpc2:Ny5pAsx39_" />
                          </node>
                        </node>
                        <node concept="1PgB_6" id="3EUGuXc83Jm" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="17QB3L" id="3EUGuXc83I$" role="1eyP2E" />
                <node concept="6WeAF" id="3EUGuXc83J4" role="1ezVZE">
                  <node concept="3clFbS" id="3EUGuXc83J8" role="2VODD2">
                    <node concept="3clFbF" id="3EUGuXc83J9" role="3cqZAp">
                      <node concept="Xl_RD" id="3EUGuXc83Ja" role="3clFbG">
                        <property role="Xl_RC" value="static text" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="6VE3a" id="3EUGuXc92xr" role="1ezQQy">
                  <node concept="3clFbS" id="3EUGuXc92xs" role="2VODD2">
                    <node concept="3clFbF" id="3EUGuXc948K" role="3cqZAp">
                      <node concept="3GLrbK" id="3EUGuXc948L" role="3clFbG" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3EZMnI" id="hF4w_Sq" role="3EZMnx">
          <node concept="3F0ifn" id="hF4w_Sr" role="3EZMnx">
            <property role="3F0ifm" value="separator constraint" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F0A7n" id="hF4w_St" role="3EZMnx">
            <ref role="1NtTu8" to="tpc2:gOQ2I60" resolve="separatorLayoutConstraint" />
            <node concept="VPXOz" id="hWt1v9X" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="VPM3Z" id="hF4w_Su" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IxuRR" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="hWsWD4u" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="VPM3Z" id="hWsWD4v" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPM3Z" id="hWsWD4x" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3F0ifn" id="hWsWH8N" role="3EZMnx">
            <property role="3F0ifm" value="separator style" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F1sOY" id="hWtqYt9" role="3EZMnx">
            <property role="1$x2rV" value="default" />
            <property role="39s7Ar" value="false" />
            <ref role="1NtTu8" to="tpc2:hWsWeqI" />
            <node concept="VPXOz" id="hWtsp9o" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="2iRfu4" id="i2IxuTZ" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="hF4w_Sv" role="3EZMnx">
          <node concept="3F0ifn" id="hF4w_Sw" role="3EZMnx">
            <property role="3F0ifm" value="reverse order" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F0A7n" id="hF4w_Sy" role="3EZMnx">
            <ref role="1NtTu8" to="tpc2:gEGOrZx" resolve="reverse" />
          </node>
          <node concept="VPM3Z" id="hF4w_Sz" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IxuSp" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="hF4w_S$" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="hF4w_S_" role="3EZMnx">
            <property role="3F0ifm" value="element factory" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F1sOY" id="hF4w_SC" role="3EZMnx">
            <property role="1$x2rV" value="&lt;no factory&gt;" />
            <ref role="1NtTu8" to="tpc2:h84_6ER" />
          </node>
          <node concept="VPM3Z" id="hF4w_SD" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="hF4w_SE" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2iRfu4" id="i2IxuTy" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="hF4w_SF" role="3EZMnx">
          <node concept="3F0ifn" id="hF4w_SG" role="3EZMnx">
            <property role="3F0ifm" value="element action map" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="1iCGBv" id="hF4w_SJ" role="3EZMnx">
            <property role="1$x2rV" value="&lt;default&gt;" />
            <ref role="1NtTu8" to="tpc2:h4APPx9" />
            <node concept="1sVBvm" id="hF4w_SK" role="1sWHZn">
              <node concept="3F0A7n" id="hF4w_SL" role="2wV5jI">
                <property role="1Intyy" value="true" />
                <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="VPXOz" id="hF4w_SM" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="VPM3Z" id="hF4w_SN" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IxuOy" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="hF4w_SO" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="hF4w_SP" role="3EZMnx">
            <property role="3F0ifm" value="element menu" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F1sOY" id="hF4w_SS" role="3EZMnx">
            <property role="1$x2rV" value="&lt;default&gt;" />
            <ref role="1NtTu8" to="tpc2:gXk68OO" />
            <node concept="VPXOz" id="hFayl71" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="VPM3Z" id="hF4w_ST" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="hF4w_SU" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2iRfu4" id="i2IxuMI" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="6k6gsLy9nOA" role="3EZMnx">
          <node concept="VPM3Z" id="6k6gsLy9nOB" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="6k6gsLy9nOC" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3F0ifn" id="6k6gsLy9nOD" role="3EZMnx">
            <property role="3F0ifm" value="add context hints" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F1sOY" id="6k6gsLy9nOE" role="3EZMnx">
            <ref role="1NtTu8" to="tpc2:6k6gsLy95p6" />
            <ref role="1ERwB7" node="6k6gsLy9Jgf" resolve="CellModel_RefNodeList_AddHint_Actions" />
          </node>
          <node concept="2iRfu4" id="6k6gsLy9nOF" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="6k6gsLy9nOG" role="3EZMnx">
          <node concept="VPM3Z" id="6k6gsLy9nOH" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="6k6gsLy9nOI" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3F0ifn" id="6k6gsLy9nOJ" role="3EZMnx">
            <property role="3F0ifm" value="remove context hints" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F1sOY" id="6k6gsLy9nOK" role="3EZMnx">
            <ref role="1NtTu8" to="tpc2:6k6gsLy95p7" />
            <ref role="1ERwB7" node="6k6gsLy9tOQ" resolve="CellModel_RefNodeList_RemoveHint_Actions" />
          </node>
          <node concept="2iRfu4" id="6k6gsLy9nOL" role="2iSdaV" />
        </node>
        <node concept="VPXOz" id="hF4FVRq" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="2EHx9g" id="i2IxuQE" role="2iSdaV" />
      </node>
      <node concept="VPM3Z" id="hEU$PnE" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="i2IxuOP" role="2iSdaV" />
    </node>
  </node>
  <node concept="1h_SRR" id="heqDw3D">
    <property role="TrG5h" value="CellModel_Collection_Actions" />
    <property role="3GE5qa" value="CellModel" />
    <ref role="1h_SK9" to="tpc2:fBEZMkn" resolve="CellModel_Collection" />
    <node concept="1hA7zw" id="heqDNOe" role="1h_SK8">
      <property role="1hHO97" value="Delete collection and copy its content to the parent collection" />
      <property role="1hAc7j" value="delete_action_id" />
      <node concept="1hAIg9" id="heqDNOf" role="1hA7z_">
        <node concept="3clFbS" id="heqDNOg" role="2VODD2">
          <node concept="3clFbJ" id="heqDXuc" role="3cqZAp">
            <node concept="2OqwBi" id="hxx_0ra" role="3clFbw">
              <node concept="2OqwBi" id="hxx$SY0" role="2Oq$k0">
                <node concept="0IXxy" id="heqDYJi" role="2Oq$k0" />
                <node concept="1mfA1w" id="heqE649" role="2OqNvi" />
              </node>
              <node concept="1mIQ4w" id="heqDZqP" role="2OqNvi">
                <node concept="chp4Y" id="heqE08L" role="cj9EA">
                  <ref role="cht4Q" to="tpc2:fBEZMkn" resolve="CellModel_Collection" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="heqDXue" role="3clFbx">
              <node concept="3cpWs8" id="heqE7L$" role="3cqZAp">
                <node concept="3cpWsn" id="heqE7L_" role="3cpWs9">
                  <property role="TrG5h" value="p" />
                  <node concept="3Tqbb2" id="heqE7LA" role="1tU5fm">
                    <ref role="ehGHo" to="tpc2:fBEZMkn" resolve="CellModel_Collection" />
                  </node>
                  <node concept="1PxgMI" id="heqEb6C" role="33vP2m">
                    <ref role="1PxNhF" to="tpc2:fBEZMkn" resolve="CellModel_Collection" />
                    <node concept="2OqwBi" id="hxx_65r" role="1PxMeX">
                      <node concept="0IXxy" id="heqEay9" role="2Oq$k0" />
                      <node concept="1mfA1w" id="heqEaRG" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="heqEmnE" role="3cqZAp">
                <node concept="3cpWsn" id="heqEmnF" role="3cpWs9">
                  <property role="TrG5h" value="children" />
                  <node concept="2I9FWS" id="heqEmnG" role="1tU5fm">
                    <ref role="2I9WkF" to="tpc2:fBEYTCT" resolve="EditorCellModel" />
                  </node>
                  <node concept="2OqwBi" id="hxx$SK1" role="33vP2m">
                    <node concept="0IXxy" id="heqEh3H" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="heqEkOi" role="2OqNvi">
                      <ref role="3TtcxE" to="tpc2:fBEZMko" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2Gpval" id="heqEu7l" role="3cqZAp">
                <node concept="2GrKxI" id="heqEu7m" role="2Gsz3X">
                  <property role="TrG5h" value="child" />
                </node>
                <node concept="37vLTw" id="3GM_nagTs7Q" role="2GsD0m">
                  <ref role="3cqZAo" node="heqEmnF" resolve="children" />
                </node>
                <node concept="3clFbS" id="heqEu7o" role="2LFqv$">
                  <node concept="3clFbF" id="heqECRc" role="3cqZAp">
                    <node concept="2OqwBi" id="hxx$DRq" role="3clFbG">
                      <node concept="0IXxy" id="heqECRd" role="2Oq$k0" />
                      <node concept="HtX7F" id="heqEGG9" role="2OqNvi">
                        <node concept="2GrUjf" id="heqEI0s" role="HtX7I">
                          <ref role="2Gs0qQ" node="heqEu7m" resolve="child" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="i3sQygk" role="3eNLev">
              <node concept="3clFbC" id="i3sRo9P" role="3eO9$A">
                <node concept="3cmrfG" id="i3sRofA" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="i3sRnhf" role="3uHU7B">
                  <node concept="2OqwBi" id="i3sQE0z" role="2Oq$k0">
                    <node concept="0IXxy" id="i3sQDxf" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="i3sQMqf" role="2OqNvi">
                      <ref role="3TtcxE" to="tpc2:fBEZMko" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="1$wX9nnL0LK" role="2OqNvi" />
                </node>
              </node>
              <node concept="3clFbS" id="i3sQygm" role="3eOfB_">
                <node concept="3cpWs8" id="i3sRr6G" role="3cqZAp">
                  <node concept="3cpWsn" id="i3sRr6H" role="3cpWs9">
                    <property role="TrG5h" value="cell" />
                    <node concept="3Tqbb2" id="i3sRr6I" role="1tU5fm">
                      <ref role="ehGHo" to="tpc2:fBEYTCT" resolve="EditorCellModel" />
                    </node>
                    <node concept="2OqwBi" id="i3sRr6J" role="33vP2m">
                      <node concept="2OqwBi" id="i3sRr6K" role="2Oq$k0">
                        <node concept="0IXxy" id="i3sRr6L" role="2Oq$k0" />
                        <node concept="3Tsc0h" id="i3sRr6M" role="2OqNvi">
                          <ref role="3TtcxE" to="tpc2:fBEZMko" />
                        </node>
                      </node>
                      <node concept="1uHKPH" id="i3sRr6N" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="i3sRsnJ" role="3cqZAp">
                  <node concept="2OqwBi" id="i3sRsos" role="3clFbG">
                    <node concept="0IXxy" id="i3sRsnK" role="2Oq$k0" />
                    <node concept="1P9Npp" id="i3sRsQL" role="2OqNvi">
                      <node concept="37vLTw" id="3GM_nagTu3f" role="1P9ThW">
                        <ref role="3cqZAo" node="i3sRr6H" resolve="cell" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="i3sRuOq" role="3cqZAp" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="heqEMKP" role="3cqZAp">
            <node concept="2OqwBi" id="hxx$Q62" role="3clFbG">
              <node concept="0IXxy" id="heqEMKS" role="2Oq$k0" />
              <node concept="1PgB_6" id="heqEMKR" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="hgV5DEa">
    <property role="3GE5qa" value="Stylesheet" />
    <ref role="1XX52x" to="tpc2:hgV5ht3" resolve="StyleSheet" />
    <node concept="3EZMnI" id="hgV5E_1" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3F0ifn" id="hgV5Fh2" role="3EZMnx">
        <property role="3F0ifm" value="stylesheet" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <node concept="pVoyu" id="3AsHGqjoF$T" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="hgV5G54" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="3AsHGqduKDm" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" to="tpen:hFD5onb" resolve="LeftBrace" />
        <node concept="ljvvj" id="6H7j4iNg6iR" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="3AsHGqdnHBg" role="3EZMnx">
        <property role="2czwfN" value="true" />
        <ref role="1NtTu8" to="tpc2:hgV6056" />
        <node concept="lj46D" id="3AsHGqdnJhz" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pj6Ft" id="44T5AkN$mQp" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="l2Vlx" id="3AsHGqdnJh_" role="2czzBx" />
        <node concept="3F0ifn" id="3AsHGqe0Mz_" role="2czzBI">
          <property role="3F0ifm" value="No styles" />
          <ref role="1k5W1q" to="tpen:hshO_Yc" resolve="Comment" />
        </node>
      </node>
      <node concept="3F0ifn" id="3AsHGqduK_A" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" to="tpen:hFD5_7H" resolve="RightBrace" />
        <node concept="ljvvj" id="44T5AkNtRWg" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="3AsHGqduKzd" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hgV5YIp">
    <property role="3GE5qa" value="Stylesheet" />
    <ref role="1XX52x" to="tpc2:hgV5SWv" resolve="StyleSheetClass" />
    <node concept="3EZMnI" id="hgV693Q" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="PMmxH" id="2VNGR_E4C$1" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="hEUz4pu" resolve="style" />
        <node concept="3nxI2P" id="7GI4nN$3QKx" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="hgV6b6z" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="2V7CMv" id="1uLauz0WyxN" role="3F10Kt">
          <property role="2V7CMs" value="ext_1_RTransform" />
        </node>
      </node>
      <node concept="3EZMnI" id="hrXq6_p" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="pkWqt" id="hrXqxko" role="pqm2j">
          <node concept="3clFbS" id="hrXqxkp" role="2VODD2">
            <node concept="3clFbF" id="hrXqxBu" role="3cqZAp">
              <node concept="3y3z36" id="hrXqyth" role="3clFbG">
                <node concept="10Nm6u" id="hrXqyGd" role="3uHU7w" />
                <node concept="2OqwBi" id="hxx$Os3" role="3uHU7B">
                  <node concept="pncrf" id="hrXqxBv" role="2Oq$k0" />
                  <node concept="3TrEf2" id="hrXqyhy" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpc2:hrXq2lC" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$P60" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="hrXq6L9" role="3EZMnx">
          <property role="3F0ifm" value="extends" />
          <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        </node>
        <node concept="3F1sOY" id="hrXqiPK" role="3EZMnx">
          <ref role="1NtTu8" to="tpc2:hrXq2lC" />
        </node>
        <node concept="l2Vlx" id="6H7j4iNBhHg" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="6H7j4iNBmfw" role="3EZMnx">
        <property role="S$Qs1" value="true" />
        <node concept="ljvvj" id="44T5AkNFoaf" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="6H7j4iNBmZv" role="3EZMnx">
          <property role="3F0ifm" value="{" />
        </node>
        <node concept="l2Vlx" id="6H7j4iNBmfx" role="2iSdaV" />
        <node concept="3F2HdR" id="hgV6nh6" role="3EZMnx">
          <property role="2czwfN" value="true" />
          <ref role="1NtTu8" to="tpc2:hJF10O6" />
          <node concept="lj46D" id="6H7j4iNBhHi" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pj6Ft" id="6H7j4iNBhHj" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="l2Vlx" id="6H7j4iNBhHk" role="2czzBx" />
          <node concept="pVoyu" id="6H7j4iNBoV$" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3F0ifn" id="6H7j4iNQIO1" role="2czzBI">
            <property role="3F0ifm" value="Add style items" />
            <ref role="1k5W1q" to="tpen:hshO_Yc" resolve="Comment" />
          </node>
        </node>
        <node concept="3F0ifn" id="6H7j4iNBn08" role="3EZMnx">
          <property role="3F0ifm" value="}" />
        </node>
        <node concept="3F0ifn" id="6H7j4iNBqB9" role="AHCbl">
          <property role="3F0ifm" value="{...}" />
          <ref role="1k5W1q" to="tpen:4vxLnq9T43C" resolve="FoldedCell" />
        </node>
      </node>
      <node concept="3F0ifn" id="44T5AkN$o7H" role="3EZMnx" />
      <node concept="l2Vlx" id="6H7j4iNBhHo" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hgVbr57">
    <property role="3GE5qa" value="Stylesheet" />
    <ref role="1XX52x" to="tpc2:hgVaVz4" resolve="ColorStyleClassItem" />
    <node concept="3EZMnI" id="hgVbtKi" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="PMmxH" id="2wdLO7KhYds" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="hoxUe05" resolve="item" />
        <node concept="OXEIz" id="2wdLO7KhYdt" role="P5bDN">
          <node concept="UkePV" id="2wdLO7KhYdu" role="OY2wv">
            <ref role="Ul1FP" to="tpc2:hgV6hR6" resolve="StyleClassItem" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="hgVbvuI" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="hgVGSu8" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:hgVb0di" resolve="color" />
        <node concept="pkWqt" id="hgVGWMz" role="pqm2j">
          <node concept="3clFbS" id="hgVGWM$" role="2VODD2">
            <node concept="3clFbF" id="hgVGX00" role="3cqZAp">
              <node concept="3clFbC" id="hgVGXQ3" role="3clFbG">
                <node concept="10Nm6u" id="hgVGY7c" role="3uHU7w" />
                <node concept="2OqwBi" id="hxx$Yj8" role="3uHU7B">
                  <node concept="pncrf" id="hgVGX01" role="2Oq$k0" />
                  <node concept="3TrEf2" id="hgVGXyw" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpc2:hgVblYF" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="OXEIz" id="hPjs8A0" role="P5bDN">
          <node concept="1ou48o" id="hPjs9OS" role="OY2wv">
            <node concept="3GJtP1" id="hPjs9OT" role="1ou48n">
              <node concept="3clFbS" id="hPjs9OU" role="2VODD2">
                <node concept="3clFbF" id="i3HmGut" role="3cqZAp">
                  <node concept="3HcIyF" id="i3HmGuu" role="3clFbG">
                    <ref role="3HcIyG" to="tpc2:fLwANPl" resolve="_Colors_Enum" />
                    <node concept="3HdYuk" id="i3HmI6Z" role="3Hdvt7" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1ouSdP" id="hPjuN1j" role="1ou48m">
              <node concept="3clFbS" id="hPjuN1k" role="2VODD2">
                <node concept="3clFbF" id="hPjxdDH" role="3cqZAp">
                  <node concept="2OqwBi" id="hPjxea1" role="3clFbG">
                    <node concept="2OqwBi" id="hPjxdEX" role="2Oq$k0">
                      <node concept="3GMtW1" id="hPjxdDI" role="2Oq$k0" />
                      <node concept="3TrEf2" id="hPjxe0v" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpc2:hgVblYF" />
                      </node>
                    </node>
                    <node concept="3YRAZt" id="hRZ2j52" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3clFbF" id="hPjxfBR" role="3cqZAp">
                  <node concept="2OqwBi" id="hPjxgrH" role="3clFbG">
                    <node concept="2OqwBi" id="hPjxfEl" role="2Oq$k0">
                      <node concept="3GMtW1" id="hPjxfBS" role="2Oq$k0" />
                      <node concept="3TrcHB" id="hPjxghG" role="2OqNvi">
                        <ref role="3TsBF5" to="tpc2:hgVb0di" resolve="color" />
                      </node>
                    </node>
                    <node concept="tyxLq" id="hPjxgLY" role="2OqNvi">
                      <node concept="2OqwBi" id="hPjxhlU" role="tz02z">
                        <node concept="3GLrbK" id="hPjxh9c" role="2Oq$k0" />
                        <node concept="2ZYiMu" id="i39oRiA" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZThk1" id="i39oPBE" role="1eyP2E">
              <ref role="2ZWj4r" to="tpc2:fLwANPl" resolve="_Colors_Enum" />
            </node>
          </node>
          <node concept="1oHujT" id="hPjw$Z0" role="OY2wv">
            <property role="1oHujS" value="#RRGGBB" />
            <node concept="1oIgkG" id="hPjw$Z1" role="1oHujR">
              <node concept="3clFbS" id="hPjw$Z2" role="2VODD2">
                <node concept="3clFbF" id="hPjxnvQ" role="3cqZAp">
                  <node concept="2OqwBi" id="hPjxoo5" role="3clFbG">
                    <node concept="2OqwBi" id="hPjxnHz" role="2Oq$k0">
                      <node concept="3GMtW1" id="hPjxnvR" role="2Oq$k0" />
                      <node concept="3TrEf2" id="hPjxo9b" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpc2:hgVblYF" />
                      </node>
                    </node>
                    <node concept="2DeJnY" id="5wUAOoBBfpG" role="2OqNvi">
                      <ref role="1A9B2P" to="tpc2:hPiSF6w" resolve="RGBColor" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1oHujT" id="hPjRdCs" role="OY2wv">
            <property role="1oHujS" value="query" />
            <node concept="1oIgkG" id="hPjRdCt" role="1oHujR">
              <node concept="3clFbS" id="hPjRdCu" role="2VODD2">
                <node concept="3clFbF" id="hPjRh7p" role="3cqZAp">
                  <node concept="2OqwBi" id="hPjRk7C" role="3clFbG">
                    <node concept="2OqwBi" id="hPjRhuR" role="2Oq$k0">
                      <node concept="3GMtW1" id="hPjRh7q" role="2Oq$k0" />
                      <node concept="3TrEf2" id="hPjRiiF" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpc2:hgVblYF" />
                      </node>
                    </node>
                    <node concept="2DeJnY" id="5wUAOoBBfpF" role="2OqNvi">
                      <ref role="1A9B2P" to="tpc2:h7ZlJ1A" resolve="QueryFunction_Color" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1oHujT" id="5xCMw4BaCdJ" role="OY2wv">
            <property role="1oHujS" value="default/dark" />
            <node concept="1oIgkG" id="5xCMw4BaCdK" role="1oHujR">
              <node concept="3clFbS" id="5xCMw4BaCdL" role="2VODD2">
                <node concept="3clFbF" id="5xCMw4BaCdM" role="3cqZAp">
                  <node concept="2OqwBi" id="5xCMw4BaCdN" role="3clFbG">
                    <node concept="2OqwBi" id="5xCMw4BaCdO" role="2Oq$k0">
                      <node concept="3GMtW1" id="5xCMw4BaCdP" role="2Oq$k0" />
                      <node concept="3TrEf2" id="5xCMw4BaCdQ" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpc2:hgVblYF" />
                      </node>
                    </node>
                    <node concept="2DeJnY" id="5xCMw4BaCdR" role="2OqNvi">
                      <ref role="1A9B2P" to="tpc2:2RDuzOVyaJU" resolve="QueryFunction_ColorComposit" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="hgVGUvk" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no query&gt;" />
        <property role="1cu_pB" value="3" />
        <ref role="1NtTu8" to="tpc2:hgVblYF" />
        <node concept="pkWqt" id="hgVGZ0P" role="pqm2j">
          <node concept="3clFbS" id="hgVGZ0Q" role="2VODD2">
            <node concept="3clFbF" id="hgVGZkC" role="3cqZAp">
              <node concept="3y3z36" id="hgVI7hU" role="3clFbG">
                <node concept="10Nm6u" id="hgVI7vC" role="3uHU7w" />
                <node concept="2OqwBi" id="hxx$YVe" role="3uHU7B">
                  <node concept="pncrf" id="hgVI6ye" role="2Oq$k0" />
                  <node concept="3TrEf2" id="hgVI788" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpc2:hgVblYF" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="OXEIz" id="hPjRqmq" role="P5bDN">
          <node concept="1ou48o" id="hPjRqtK" role="OY2wv">
            <node concept="3GJtP1" id="hPjRqtL" role="1ou48n">
              <node concept="3clFbS" id="hPjRqtM" role="2VODD2">
                <node concept="3clFbF" id="i3HmL9Q" role="3cqZAp">
                  <node concept="3HcIyF" id="i3HmL9R" role="3clFbG">
                    <ref role="3HcIyG" to="tpc2:fLwANPl" resolve="_Colors_Enum" />
                    <node concept="3HdYuk" id="i3HmMKc" role="3Hdvt7" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1ouSdP" id="hPjRqu6" role="1ou48m">
              <node concept="3clFbS" id="hPjRqu7" role="2VODD2">
                <node concept="3clFbF" id="hPjRqu8" role="3cqZAp">
                  <node concept="2OqwBi" id="hPjRqu9" role="3clFbG">
                    <node concept="2OqwBi" id="hPjRqua" role="2Oq$k0">
                      <node concept="3GMtW1" id="hPjRqub" role="2Oq$k0" />
                      <node concept="3TrEf2" id="hPjRquc" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpc2:hgVblYF" />
                      </node>
                    </node>
                    <node concept="3YRAZt" id="hRZ2j3w" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3clFbF" id="hPjRque" role="3cqZAp">
                  <node concept="2OqwBi" id="hPjRquf" role="3clFbG">
                    <node concept="2OqwBi" id="hPjRqug" role="2Oq$k0">
                      <node concept="3GMtW1" id="hPjRquh" role="2Oq$k0" />
                      <node concept="3TrcHB" id="hPjRqui" role="2OqNvi">
                        <ref role="3TsBF5" to="tpc2:hgVb0di" resolve="color" />
                      </node>
                    </node>
                    <node concept="tyxLq" id="hPjRquj" role="2OqNvi">
                      <node concept="2OqwBi" id="hPjRquk" role="tz02z">
                        <node concept="3GLrbK" id="hPjRqul" role="2Oq$k0" />
                        <node concept="2ZYiMu" id="i39oHh4" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZThk1" id="i39oA06" role="1eyP2E">
              <ref role="2ZWj4r" to="tpc2:fLwANPl" resolve="_Colors_Enum" />
            </node>
          </node>
          <node concept="1oHujT" id="hPjRquo" role="OY2wv">
            <property role="1oHujS" value="#RRGGBB" />
            <node concept="1oIgkG" id="hPjRqup" role="1oHujR">
              <node concept="3clFbS" id="hPjRquq" role="2VODD2">
                <node concept="3clFbF" id="hPjRqur" role="3cqZAp">
                  <node concept="2OqwBi" id="hPjRqus" role="3clFbG">
                    <node concept="2OqwBi" id="hPjRqut" role="2Oq$k0">
                      <node concept="3GMtW1" id="hPjRquu" role="2Oq$k0" />
                      <node concept="3TrEf2" id="hPjRquv" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpc2:hgVblYF" />
                      </node>
                    </node>
                    <node concept="2DeJnY" id="5wUAOoBBfpC" role="2OqNvi">
                      <ref role="1A9B2P" to="tpc2:hPiSF6w" resolve="RGBColor" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1oHujT" id="hPjRqux" role="OY2wv">
            <property role="1oHujS" value="query" />
            <node concept="1oIgkG" id="hPjRquy" role="1oHujR">
              <node concept="3clFbS" id="hPjRquz" role="2VODD2">
                <node concept="3clFbF" id="hPjRqu$" role="3cqZAp">
                  <node concept="2OqwBi" id="hPjRqu_" role="3clFbG">
                    <node concept="2OqwBi" id="hPjRquA" role="2Oq$k0">
                      <node concept="3GMtW1" id="hPjRquB" role="2Oq$k0" />
                      <node concept="3TrEf2" id="hPjRquC" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpc2:hgVblYF" />
                      </node>
                    </node>
                    <node concept="2DeJnY" id="5wUAOoBBfq5" role="2OqNvi">
                      <ref role="1A9B2P" to="tpc2:h7ZlJ1A" resolve="QueryFunction_Color" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1oHujT" id="5xCMw4B5qZx" role="OY2wv">
            <property role="1oHujS" value="default/dark" />
            <node concept="1oIgkG" id="5xCMw4B5qZz" role="1oHujR">
              <node concept="3clFbS" id="5xCMw4B5qZ_" role="2VODD2">
                <node concept="3clFbF" id="5xCMw4B5wX0" role="3cqZAp">
                  <node concept="2OqwBi" id="5xCMw4B5xCV" role="3clFbG">
                    <node concept="2OqwBi" id="5xCMw4B5wZ9" role="2Oq$k0">
                      <node concept="3GMtW1" id="5xCMw4B5wWZ" role="2Oq$k0" />
                      <node concept="3TrEf2" id="5xCMw4B5xso" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpc2:hgVblYF" />
                      </node>
                    </node>
                    <node concept="2DeJnY" id="5xCMw4B5xPu" role="2OqNvi">
                      <ref role="1A9B2P" to="tpc2:2RDuzOVyaJU" resolve="QueryFunction_ColorComposit" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="i2IxuQs" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hgVbE54">
    <property role="3GE5qa" value="Stylesheet" />
    <ref role="1XX52x" to="tpc2:hgVb9tm" resolve="FontStyleStyleClassItem" />
    <node concept="3EZMnI" id="hgVbF0r" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="3F0ifn" id="hgVbFcb" role="3EZMnx">
        <property role="3F0ifm" value="font-style" />
        <ref role="1k5W1q" node="hoxUe05" resolve="item" />
        <node concept="OXEIz" id="hMf_$yS" role="P5bDN">
          <node concept="UkePV" id="hMf__vV" role="OY2wv">
            <ref role="Ul1FP" to="tpc2:hgV6hR6" resolve="StyleClassItem" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="hgVbGeQ" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="hgVbGIo" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:hgVbegv" resolve="style" />
        <node concept="pkWqt" id="hL7OIDq" role="pqm2j">
          <node concept="3clFbS" id="hL7OIDr" role="2VODD2">
            <node concept="3clFbF" id="hL7ON_B" role="3cqZAp">
              <node concept="17QLQc" id="hW9mFSb" role="3clFbG">
                <node concept="2OqwBi" id="hL7ONZh" role="3uHU7B">
                  <node concept="pncrf" id="hL7ON_C" role="2Oq$k0" />
                  <node concept="3TrcHB" id="hW9mBft" role="2OqNvi">
                    <ref role="3TsBF5" to="tpc2:hgVbegv" resolve="style" />
                  </node>
                </node>
                <node concept="2OqwBi" id="i39owMK" role="3uHU7w">
                  <node concept="3HcIyF" id="i3HwoJH" role="2Oq$k0">
                    <ref role="3HcIyG" to="tpc2:g1_kr60" resolve="_FontStyle_Enum" />
                    <node concept="3HdYuL" id="i3HwoJI" role="3Hdvt7">
                      <ref role="3HdYuM" to="tpc2:hL7GYu6" />
                    </node>
                  </node>
                  <node concept="2ZYiMu" id="i3HwrUT" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="OXEIz" id="5NUbAA_JWSU" role="P5bDN">
          <node concept="1ou48o" id="5NUbAA_JWT2" role="OY2wv">
            <node concept="3GJtP1" id="5NUbAA_JWT3" role="1ou48n">
              <node concept="3clFbS" id="5NUbAA_JWT4" role="2VODD2">
                <node concept="3clFbF" id="5NUbAA_JWT5" role="3cqZAp">
                  <node concept="3HcIyF" id="5NUbAA_JWT7" role="3clFbG">
                    <ref role="3HcIyG" to="tpc2:g1_kr60" resolve="_FontStyle_Enum" />
                    <node concept="3HdYuk" id="5NUbAA_JWT8" role="3Hdvt7" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1ouSdP" id="5NUbAA_JWTj" role="1ou48m">
              <node concept="3clFbS" id="5NUbAA_JWTk" role="2VODD2">
                <node concept="3clFbF" id="5NUbAA_JWTr" role="3cqZAp">
                  <node concept="2OqwBi" id="5NUbAA_JWTs" role="3clFbG">
                    <node concept="2OqwBi" id="5NUbAA_JWTt" role="2Oq$k0">
                      <node concept="3GMtW1" id="5NUbAA_JWTu" role="2Oq$k0" />
                      <node concept="3TrcHB" id="5NUbAA_JWTv" role="2OqNvi">
                        <ref role="3TsBF5" to="tpc2:hgVbegv" resolve="style" />
                      </node>
                    </node>
                    <node concept="tyxLq" id="5NUbAA_JWTw" role="2OqNvi">
                      <node concept="2OqwBi" id="5NUbAA_JWTx" role="tz02z">
                        <node concept="3GLrbK" id="5NUbAA_JWTy" role="2Oq$k0" />
                        <node concept="2ZYiMu" id="5NUbAA_JWTz" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="5NUbAA_JWV4" role="3cqZAp">
                  <node concept="3clFbS" id="5NUbAA_JWV5" role="3clFbx">
                    <node concept="3clFbF" id="5NUbAA_JWVJ" role="3cqZAp">
                      <node concept="37vLTI" id="5NUbAA_JWVQ" role="3clFbG">
                        <node concept="2ShNRf" id="5NUbAA_JWVT" role="37vLTx">
                          <node concept="2fJWfE" id="5wUAOoBBfnq" role="2ShVmc">
                            <node concept="3Tqbb2" id="5wUAOoBBfnr" role="3zrR0E">
                              <ref role="ehGHo" to="tpc2:hL7KAA7" resolve="QueryFunction_FontStyle" />
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="5NUbAA_JWVL" role="37vLTJ">
                          <node concept="3GMtW1" id="5NUbAA_JWVK" role="2Oq$k0" />
                          <node concept="3TrEf2" id="5NUbAA_JWVP" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpc2:hL7MNkH" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="17R0WA" id="5NUbAA_JWVk" role="3clFbw">
                    <node concept="3GLrbK" id="5NUbAA_JWV8" role="3uHU7B" />
                    <node concept="3HcIyF" id="5NUbAA_JWVH" role="3uHU7w">
                      <ref role="3HcIyG" to="tpc2:g1_kr60" resolve="_FontStyle_Enum" />
                      <node concept="3HdYuL" id="5NUbAA_JWVI" role="3Hdvt7">
                        <ref role="3HdYuM" to="tpc2:hL7GYu6" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZThk1" id="5NUbAA_JWT$" role="1eyP2E">
              <ref role="2ZWj4r" to="tpc2:g1_kr60" resolve="_FontStyle_Enum" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="hL7OSeU" role="3EZMnx">
        <property role="1cu_pB" value="3" />
        <ref role="1NtTu8" to="tpc2:hL7MNkH" />
        <node concept="pkWqt" id="hL7OVAw" role="pqm2j">
          <node concept="3clFbS" id="hL7OVAx" role="2VODD2">
            <node concept="3clFbF" id="hW9mP5t" role="3cqZAp">
              <node concept="17R0WA" id="hW9mQNG" role="3clFbG">
                <node concept="2OqwBi" id="hW9mQNH" role="3uHU7B">
                  <node concept="pncrf" id="hW9mQNI" role="2Oq$k0" />
                  <node concept="3TrcHB" id="hW9mQNJ" role="2OqNvi">
                    <ref role="3TsBF5" to="tpc2:hgVbegv" resolve="style" />
                  </node>
                </node>
                <node concept="2OqwBi" id="i3Hz1JN" role="3uHU7w">
                  <node concept="3HcIyF" id="i3Hz1JO" role="2Oq$k0">
                    <ref role="3HcIyG" to="tpc2:g1_kr60" resolve="_FontStyle_Enum" />
                    <node concept="3HdYuL" id="i3Hz1JP" role="3Hdvt7">
                      <ref role="3HdYuM" to="tpc2:hL7GYu6" />
                    </node>
                  </node>
                  <node concept="2ZYiMu" id="i3Hz1JQ" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="OXEIz" id="hL__GNc" role="P5bDN">
          <node concept="1ou48o" id="hPjUcbt" role="OY2wv">
            <node concept="3GJtP1" id="hPjUcbu" role="1ou48n">
              <node concept="3clFbS" id="hPjUcbv" role="2VODD2">
                <node concept="3clFbF" id="5NUbAA_KUfn" role="3cqZAp">
                  <node concept="3HcIyF" id="5NUbAA_KUfo" role="3clFbG">
                    <ref role="3HcIyG" to="tpc2:g1_kr60" resolve="_FontStyle_Enum" />
                    <node concept="3HdYuk" id="5NUbAA_KUfp" role="3Hdvt7" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1ouSdP" id="hPjUcbN" role="1ou48m">
              <node concept="3clFbS" id="hPjUcbO" role="2VODD2">
                <node concept="3clFbF" id="hPjUcbP" role="3cqZAp">
                  <node concept="2OqwBi" id="hPjUcbQ" role="3clFbG">
                    <node concept="2OqwBi" id="hPjUcbR" role="2Oq$k0">
                      <node concept="3GMtW1" id="hPjUcbS" role="2Oq$k0" />
                      <node concept="3TrEf2" id="hPjUcbT" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpc2:hL7MNkH" />
                      </node>
                    </node>
                    <node concept="3YRAZt" id="hRZ2j4L" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3clFbF" id="hPjUcbV" role="3cqZAp">
                  <node concept="2OqwBi" id="hPjUcbW" role="3clFbG">
                    <node concept="2OqwBi" id="hPjUcbX" role="2Oq$k0">
                      <node concept="3GMtW1" id="hPjUcbY" role="2Oq$k0" />
                      <node concept="3TrcHB" id="hPjUcbZ" role="2OqNvi">
                        <ref role="3TsBF5" to="tpc2:hgVbegv" resolve="style" />
                      </node>
                    </node>
                    <node concept="tyxLq" id="hPjUcc0" role="2OqNvi">
                      <node concept="2OqwBi" id="i39odqw" role="tz02z">
                        <node concept="3GLrbK" id="hPjUcc2" role="2Oq$k0" />
                        <node concept="2ZYiMu" id="i39odFD" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZThk1" id="i39obiv" role="1eyP2E">
              <ref role="2ZWj4r" to="tpc2:g1_kr60" resolve="_FontStyle_Enum" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="i2IxuN7" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hgVOo$s">
    <property role="3GE5qa" value="Stylesheet" />
    <ref role="1XX52x" to="tpc2:hgVOiwV" resolve="BooleanStyleSheetItem" />
    <node concept="3EZMnI" id="hgVOpby" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="PMmxH" id="2wdLO7KhYa3" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="hoxUe05" resolve="item" />
        <node concept="OXEIz" id="2wdLO7KhYa4" role="P5bDN">
          <node concept="UkePV" id="2wdLO7KhYa5" role="OY2wv">
            <ref role="Ul1FP" to="tpc2:hgV6hR6" resolve="StyleClassItem" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="hgVOqdx" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="hgVOqGz" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:hgVOm7r" resolve="flag" />
        <node concept="pkWqt" id="hNs0J1L" role="pqm2j">
          <node concept="3clFbS" id="hNs0J1M" role="2VODD2">
            <node concept="3clFbF" id="hNs0Tny" role="3cqZAp">
              <node concept="2OqwBi" id="hNs0UUt" role="3clFbG">
                <node concept="2OqwBi" id="hNs0TOr" role="2Oq$k0">
                  <node concept="pncrf" id="hNs0Tnz" role="2Oq$k0" />
                  <node concept="3TrEf2" id="hNs0UCO" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpc2:hNn$kAD" />
                  </node>
                </node>
                <node concept="3w_OXm" id="hNs0WvT" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lj46D" id="36NC8ylTQE5" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="OXEIz" id="6sOCibSXwsI" role="P5bDN">
          <node concept="PvTIS" id="6sOCibSXywb" role="OY2wv">
            <node concept="MLZmj" id="6sOCibSXywc" role="PvTIR">
              <node concept="3clFbS" id="6sOCibSXywd" role="2VODD2">
                <node concept="3clFbF" id="6sOCibSXywe" role="3cqZAp">
                  <node concept="2ShNRf" id="6sOCibSXywf" role="3clFbG">
                    <node concept="Tc6Ow" id="6sOCibSXFAi" role="2ShVmc">
                      <node concept="17QB3L" id="6sOCibSXFAk" role="HW$YZ" />
                      <node concept="Xl_RD" id="6sOCibSXFAz" role="HW$Y0">
                        <property role="Xl_RC" value="true" />
                      </node>
                      <node concept="Xl_RD" id="6sOCibSXFAB" role="HW$Y0">
                        <property role="Xl_RC" value="false" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1oHujT" id="6sOCibSXFAD" role="OY2wv">
            <property role="1oHujS" value="query" />
            <node concept="1oIgkG" id="6sOCibSXFAE" role="1oHujR">
              <node concept="3clFbS" id="6sOCibSXFAF" role="2VODD2">
                <node concept="3clFbF" id="6sOCibSXFAG" role="3cqZAp">
                  <node concept="37vLTI" id="6sOCibSXFAN" role="3clFbG">
                    <node concept="2ShNRf" id="6sOCibSXFAQ" role="37vLTx">
                      <node concept="2fJWfE" id="5wUAOoBBfnC" role="2ShVmc">
                        <node concept="3Tqbb2" id="5wUAOoBBfnD" role="3zrR0E">
                          <ref role="ehGHo" to="tpc2:hNnzxoQ" resolve="QueryFunction_Boolean" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6sOCibSXFAI" role="37vLTJ">
                      <node concept="3GMtW1" id="6sOCibSXFAH" role="2Oq$k0" />
                      <node concept="3TrEf2" id="6sOCibSXFAM" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpc2:hNn$kAD" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="hNs0XVA" role="3EZMnx">
        <property role="1cu_pB" value="3" />
        <ref role="1NtTu8" to="tpc2:hNn$kAD" />
        <node concept="pkWqt" id="hNs0Z4p" role="pqm2j">
          <node concept="3clFbS" id="hNs0Z4q" role="2VODD2">
            <node concept="3clFbF" id="hNs0ZDI" role="3cqZAp">
              <node concept="1Wc70l" id="hNs1248" role="3clFbG">
                <node concept="2OqwBi" id="hNs12XD" role="3uHU7w">
                  <node concept="pncrf" id="hNs12JP" role="2Oq$k0" />
                  <node concept="2qgKlT" id="hNs13ET" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:hNn$rq2" resolve="useQuery" />
                  </node>
                </node>
                <node concept="2OqwBi" id="hNs10KN" role="3uHU7B">
                  <node concept="2OqwBi" id="hNs0ZSO" role="2Oq$k0">
                    <node concept="pncrf" id="hNs0ZDJ" role="2Oq$k0" />
                    <node concept="3TrEf2" id="hNs10xY" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpc2:hNn$kAD" />
                    </node>
                  </node>
                  <node concept="3x8VRR" id="hNs11za" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="i2IxuQU" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hgVSTgS">
    <property role="3GE5qa" value="Stylesheet" />
    <ref role="1XX52x" to="tpc2:hgVSNSQ" resolve="FontSizeStyleClassItem" />
    <node concept="3EZMnI" id="hgVSUvi" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="PMmxH" id="2wdLO7KhY9q" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="hoxUe05" resolve="item" />
        <node concept="OXEIz" id="2wdLO7KhY9r" role="P5bDN">
          <node concept="UkePV" id="2wdLO7KhY9s" role="OY2wv">
            <ref role="Ul1FP" to="tpc2:hgV6hR6" resolve="StyleClassItem" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="hgVT2Em" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="hLlMogl" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:hLlJzux" resolve="value" />
        <ref role="1k5W1q" to="tpen:hshT4rC" resolve="NumericLiteral" />
        <node concept="pkWqt" id="hLlMrTG" role="pqm2j">
          <node concept="3clFbS" id="hLlMrTH" role="2VODD2">
            <node concept="3clFbF" id="hLlMt4k" role="3cqZAp">
              <node concept="3clFbC" id="hLlMuz4" role="3clFbG">
                <node concept="10Nm6u" id="hLlMuXi" role="3uHU7w" />
                <node concept="2OqwBi" id="hLlMtrm" role="3uHU7B">
                  <node concept="pncrf" id="hLlMt4l" role="2Oq$k0" />
                  <node concept="3TrEf2" id="hLlMu22" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpc2:hLd8cI8" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="OXEIz" id="hLlPc7D" role="P5bDN">
          <node concept="1oHujT" id="hLlPdzf" role="OY2wv">
            <property role="1oHujS" value="query" />
            <node concept="1oIgkG" id="hLlPdzg" role="1oHujR">
              <node concept="3clFbS" id="hLlPdzh" role="2VODD2">
                <node concept="3clFbF" id="hLlPpbT" role="3cqZAp">
                  <node concept="2OqwBi" id="hLm2Ze5" role="3clFbG">
                    <node concept="2OqwBi" id="hLlPpB2" role="2Oq$k0">
                      <node concept="3GMtW1" id="hLlPpbU" role="2Oq$k0" />
                      <node concept="3TrEf2" id="hLm2YcS" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpc2:hLd8cI8" />
                      </node>
                    </node>
                    <node concept="2DeJnY" id="5wUAOoBBfp$" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="hLd8kdq" role="3EZMnx">
        <property role="1cu_pB" value="3" />
        <ref role="1NtTu8" to="tpc2:hLd8cI8" />
        <node concept="pkWqt" id="hLm2xOl" role="pqm2j">
          <node concept="3clFbS" id="hLm2xOm" role="2VODD2">
            <node concept="3clFbF" id="hLm2H4d" role="3cqZAp">
              <node concept="2OqwBi" id="hLm2KNR" role="3clFbG">
                <node concept="2OqwBi" id="hLm2Hog" role="2Oq$k0">
                  <node concept="pncrf" id="hLm2H4e" role="2Oq$k0" />
                  <node concept="3TrEf2" id="hLm2HZ8" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpc2:hLd8cI8" />
                  </node>
                </node>
                <node concept="3x8VRR" id="hLm2Lxk" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="i2IxuPy" role="2iSdaV" />
    </node>
  </node>
  <node concept="V5hpn" id="hoxSUwN">
    <property role="TrG5h" value="Styles" />
    <node concept="14StLt" id="i0pPgF8" role="V601i">
      <property role="TrG5h" value="rootCellModelStyle" />
      <node concept="lj46D" id="i0pPiD7" role="3F10Kt">
        <node concept="3nzxsE" id="i0pPjqd" role="3n$kyP">
          <node concept="3clFbS" id="i0pPjqe" role="2VODD2">
            <node concept="3clFbJ" id="i0qoOE5" role="3cqZAp">
              <node concept="3clFbS" id="i0qoOE6" role="3clFbx">
                <node concept="3cpWs6" id="i0qoQ$B" role="3cqZAp">
                  <node concept="3clFbT" id="i0qoQPg" role="3cqZAk">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="i0qoPcO" role="3clFbw">
                <node concept="2OqwBi" id="i0qoP$M" role="3fr31v">
                  <node concept="pncrf" id="i0qoPpM" role="2Oq$k0" />
                  <node concept="1mIQ4w" id="i0qoPV4" role="2OqNvi">
                    <node concept="chp4Y" id="i0qoQhk" role="cj9EA">
                      <ref role="cht4Q" to="tpc2:fBEYTCT" resolve="EditorCellModel" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="i0pPmWA" role="3cqZAp">
              <node concept="2OqwBi" id="i0pPpGL" role="3cqZAk">
                <node concept="1PxgMI" id="i0pPoZ$" role="2Oq$k0">
                  <ref role="1PxNhF" to="tpc2:fBEYTCT" resolve="EditorCellModel" />
                  <node concept="pncrf" id="i0pPnfF" role="1PxMeX" />
                </node>
                <node concept="2qgKlT" id="i0pPqdz" role="2OqNvi">
                  <ref role="37wK5l" to="tpcb:i0pN94$" resolve="isIndented" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="ljvvj" id="i0pPqZ9" role="3F10Kt">
        <node concept="3nzxsE" id="i0pPr_f" role="3n$kyP">
          <node concept="3clFbS" id="i0pPr_g" role="2VODD2">
            <node concept="3clFbJ" id="i0qoRyd" role="3cqZAp">
              <node concept="3clFbS" id="i0qoRye" role="3clFbx">
                <node concept="3cpWs6" id="i0qoRyf" role="3cqZAp">
                  <node concept="3clFbT" id="i0qoRyg" role="3cqZAk">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="i0qoRyh" role="3clFbw">
                <node concept="2OqwBi" id="i0qoRyi" role="3fr31v">
                  <node concept="pncrf" id="i0qoRyj" role="2Oq$k0" />
                  <node concept="1mIQ4w" id="i0qoRyk" role="2OqNvi">
                    <node concept="chp4Y" id="i0qoRyl" role="cj9EA">
                      <ref role="cht4Q" to="tpc2:fBEYTCT" resolve="EditorCellModel" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="i0vAe1D" role="3cqZAp">
              <node concept="3clFbS" id="i0vAe1E" role="3clFbx">
                <node concept="3cpWs6" id="i0vAgnt" role="3cqZAp">
                  <node concept="3clFbT" id="i0vAgFv" role="3cqZAk">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="i0vAfA3" role="3clFbw">
                <node concept="1PxgMI" id="i0vAfA4" role="2Oq$k0">
                  <ref role="1PxNhF" to="tpc2:fBEYTCT" resolve="EditorCellModel" />
                  <node concept="pncrf" id="i0vAfA5" role="1PxMeX" />
                </node>
                <node concept="2qgKlT" id="i0vAfA6" role="2OqNvi">
                  <ref role="37wK5l" to="tpcb:i0pLPAc" resolve="isNewLine" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="86hwqQpSn$" role="3cqZAp">
              <node concept="3clFbS" id="86hwqQpSn_" role="3clFbx">
                <node concept="3cpWs6" id="86hwqQpSnA" role="3cqZAp">
                  <node concept="3clFbT" id="86hwqQpSnB" role="3cqZAk">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="86hwqQpSnC" role="3clFbw">
                <node concept="1PxgMI" id="86hwqQpSnD" role="2Oq$k0">
                  <ref role="1PxNhF" to="tpc2:fBEYTCT" resolve="EditorCellModel" />
                  <node concept="pncrf" id="86hwqQpSnE" role="1PxMeX" />
                </node>
                <node concept="2qgKlT" id="86hwqQpSnG" role="2OqNvi">
                  <ref role="37wK5l" to="tpcb:i0pNGlC" resolve="isNewLineChildren" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="i0vB4ko" role="3cqZAp">
              <node concept="3clFbS" id="i0vB4kp" role="3clFbx">
                <node concept="3cpWs6" id="i0vB9vL" role="3cqZAp">
                  <node concept="2OqwBi" id="i0vBbkT" role="3cqZAk">
                    <node concept="1PxgMI" id="i0vBbkU" role="2Oq$k0">
                      <ref role="1PxNhF" to="tpc2:fBEYTCT" resolve="EditorCellModel" />
                      <node concept="2OqwBi" id="i0vBc3l" role="1PxMeX">
                        <node concept="pncrf" id="i0vBbkV" role="2Oq$k0" />
                        <node concept="1mfA1w" id="i0vBce2" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="i0vBf7A" role="2OqNvi">
                      <ref role="37wK5l" to="tpcb:i0pNGlC" resolve="isNewLineChildren" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="i0vB5ON" role="3clFbw">
                <node concept="2OqwBi" id="i0vB7_k" role="2Oq$k0">
                  <node concept="pncrf" id="i0vB5GN" role="2Oq$k0" />
                  <node concept="1mfA1w" id="i0vB7RB" role="2OqNvi" />
                </node>
                <node concept="1mIQ4w" id="i0vB6HC" role="2OqNvi">
                  <node concept="chp4Y" id="i0vB8OJ" role="cj9EA">
                    <ref role="cht4Q" to="tpc2:fBEYTCT" resolve="EditorCellModel" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="i0pPs5w" role="3cqZAp">
              <node concept="3clFbT" id="i0vBd2s" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="pVoyu" id="i0pVdTk" role="3F10Kt">
        <node concept="3nzxsE" id="i0pVe$3" role="3n$kyP">
          <node concept="3clFbS" id="i0pVe$4" role="2VODD2">
            <node concept="3clFbJ" id="i0qoRUy" role="3cqZAp">
              <node concept="3clFbS" id="i0qoRUz" role="3clFbx">
                <node concept="3cpWs6" id="i0qoRU$" role="3cqZAp">
                  <node concept="3clFbT" id="i0qoRU_" role="3cqZAk">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="i0qoRUA" role="3clFbw">
                <node concept="2OqwBi" id="i0qoRUB" role="3fr31v">
                  <node concept="pncrf" id="i0qoRUC" role="2Oq$k0" />
                  <node concept="1mIQ4w" id="i0qoRUD" role="2OqNvi">
                    <node concept="chp4Y" id="i0qoRUE" role="cj9EA">
                      <ref role="cht4Q" to="tpc2:fBEYTCT" resolve="EditorCellModel" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="i0pVnX$" role="3cqZAp">
              <node concept="2OqwBi" id="i0pVrTu" role="3cqZAk">
                <node concept="1PxgMI" id="i0pVrft" role="2Oq$k0">
                  <ref role="1PxNhF" to="tpc2:fBEYTCT" resolve="EditorCellModel" />
                  <node concept="pncrf" id="i0pVqXo" role="1PxMeX" />
                </node>
                <node concept="2qgKlT" id="i0pVsrI" role="2OqNvi">
                  <ref role="37wK5l" to="tpcb:i0pUMOG" resolve="isOnNewLine" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="VPXOz" id="i0vkLJ_" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
    <node concept="14StLt" id="hEUz4pu" role="V601i">
      <property role="TrG5h" value="style" />
      <node concept="VechU" id="hLVwxbz" role="3F10Kt">
        <property role="Vb096" value="DARK_GREEN" />
      </node>
    </node>
    <node concept="14StLt" id="hoxSXNK" role="V601i">
      <property role="TrG5h" value="reference" />
      <node concept="VechU" id="hoxT0qh" role="3F10Kt">
        <property role="Vb096" value="DARK_BLUE" />
      </node>
      <node concept="Vb9p2" id="hoxT2zw" role="3F10Kt">
        <property role="Vbekb" value="ITALIC" />
      </node>
    </node>
    <node concept="14StLt" id="hoxUe05" role="V601i">
      <property role="TrG5h" value="item" />
      <node concept="Vb9p2" id="hoxUe06" role="3F10Kt">
        <property role="Vbekb" value="ITALIC" />
      </node>
      <node concept="VechU" id="hoxUe07" role="3F10Kt">
        <property role="Vb096" value="DARK_GREEN" />
      </node>
    </node>
    <node concept="14StLt" id="hF4yUZ8" role="V601i">
      <property role="TrG5h" value="header" />
      <node concept="Vb9p2" id="hF4yVNp" role="3F10Kt">
        <property role="Vbekb" value="BOLD" />
      </node>
      <node concept="VPM3Z" id="hF4AWO$" role="3F10Kt" />
      <node concept="VQ3r3" id="hF4_jzH" role="3F10Kt">
        <property role="2USNnj" value="2" />
      </node>
      <node concept="VechU" id="hF4yXSh" role="3F10Kt">
        <property role="Vb096" value="DARK_GREEN" />
      </node>
    </node>
    <node concept="14StLt" id="hF4H1c8" role="V601i">
      <property role="TrG5h" value="property" />
      <node concept="VPM3Z" id="hF4H1Pq" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="VPXOz" id="hF4HgsF" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="Vb9p2" id="hF4H2Vg" role="3F10Kt">
        <property role="Vbekb" value="PLAIN" />
      </node>
      <node concept="VechU" id="hLVhIdY" role="3F10Kt">
        <property role="Vb096" value="DARK_MAGENTA" />
      </node>
    </node>
    <node concept="14StLt" id="hX1xO3O" role="V601i">
      <property role="TrG5h" value="bordered" />
      <node concept="VPXOz" id="hX1xQcQ" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
    <node concept="14StLt" id="hX5ZSzR" role="V601i">
      <property role="TrG5h" value="borderedCollection" />
      <node concept="VPXOz" id="hX5ZXhn" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
    <node concept="14StLt" id="i12920y" role="V601i">
      <property role="TrG5h" value="tag" />
      <node concept="3mYdg7" id="i14aUvd" role="3F10Kt">
        <property role="1413C4" value="tag" />
      </node>
    </node>
    <node concept="14StLt" id="3OSQ5wtKyli" role="V601i">
      <property role="TrG5h" value="attributedCellLabel" />
      <node concept="VPXOz" id="3OSQ5wtKylj" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="VPxyj" id="3OSQ5wtKylk" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="Vb9p2" id="3OSQ5wtKyll" role="3F10Kt">
        <property role="Vbekb" value="PLAIN" />
      </node>
      <node concept="VQ3r3" id="3OSQ5wtKylm" role="3F10Kt">
        <node concept="1d0yFN" id="3OSQ5wtKyln" role="1mkY_M">
          <node concept="3clFbS" id="3OSQ5wtKylo" role="2VODD2">
            <node concept="3clFbF" id="3OSQ5wtKylp" role="3cqZAp">
              <node concept="3clFbT" id="3OSQ5wtKylq" role="3clFbG">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="14StLt" id="1S2pyLcon66" role="V601i">
      <property role="TrG5h" value="string" />
      <node concept="3Xmtl4" id="3HPX3xRcODJ" role="3F10Kt">
        <node concept="1wgc9g" id="3HPX3xRcODK" role="3XvnJa">
          <ref role="1wgcnl" to="tpen:aeM1BF$Ukw" />
        </node>
      </node>
    </node>
    <node concept="14StLt" id="75A9veqzBnk" role="V601i">
      <property role="TrG5h" value="AnyBracket" />
      <node concept="34QqEe" id="75A9veqzBnl" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="Vb9p2" id="75A9veqzBnn" role="3F10Kt" />
    </node>
    <node concept="14StLt" id="hF$iCJm" role="V601i">
      <property role="TrG5h" value="Parenthesis" />
      <node concept="3Xmtl4" id="2jpN4Xvjl9d" role="3F10Kt">
        <node concept="1wgc9g" id="2jpN4Xvjl9e" role="3XvnJa">
          <ref role="1wgcnl" node="75A9veqzBnk" resolve="AnyBracket" />
        </node>
      </node>
      <node concept="3Xmtl4" id="2jpN4Xvjl8P" role="3F10Kt">
        <node concept="1wgc9g" id="2jpN4Xvjl8Q" role="3XvnJa">
          <ref role="1wgcnl" node="3yX4vo1QFNt" />
        </node>
      </node>
      <node concept="3mYdg7" id="i14cPte" role="3F10Kt">
        <property role="1413C4" value="parenthesis" />
      </node>
    </node>
    <node concept="14StLt" id="hFCSAw$" role="V601i">
      <property role="TrG5h" value="LeftParen" />
      <node concept="3Xmtl4" id="2jpN4Xvjl98" role="3F10Kt">
        <node concept="1wgc9g" id="2jpN4Xvjl99" role="3XvnJa">
          <ref role="1wgcnl" node="hF$iCJm" resolve="Parenthesis" />
        </node>
      </node>
      <node concept="11LMrY" id="i11Rb6B" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
    <node concept="14StLt" id="hFCSUmN" role="V601i">
      <property role="TrG5h" value="RightParen" />
      <node concept="3Xmtl4" id="2jpN4Xvjl8Y" role="3F10Kt">
        <node concept="1wgc9g" id="2jpN4Xvjl8Z" role="3XvnJa">
          <ref role="1wgcnl" node="hF$iCJm" resolve="Parenthesis" />
        </node>
      </node>
      <node concept="11L4FC" id="hX1U7Dc" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
    <node concept="14StLt" id="hY9fg1G" role="V601i">
      <property role="TrG5h" value="LeftParenAfterName" />
      <node concept="3Xmtl4" id="2jpN4Xvjl93" role="3F10Kt">
        <node concept="1wgc9g" id="2jpN4Xvjl94" role="3XvnJa">
          <ref role="1wgcnl" node="hFCSAw$" resolve="LeftParen" />
        </node>
      </node>
      <node concept="11L4FC" id="hY9fOTE" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
    <node concept="14StLt" id="2NgG6tkHXk9" role="V601i">
      <property role="TrG5h" value="KeyWord" />
      <node concept="3Xmtl4" id="2jpN4Xvjl8U" role="3F10Kt">
        <node concept="1wgc9g" id="2jpN4Xvjl8V" role="3XvnJa">
          <ref role="1wgcnl" node="2NgG6tkHvVt" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="hrXpVIs">
    <property role="3GE5qa" value="Stylesheet" />
    <ref role="1XX52x" to="tpc2:hrXp85t" resolve="StyleSheetClassReference" />
    <node concept="1iCGBv" id="hrXpWpV" role="2wV5jI">
      <ref role="1NtTu8" to="tpc2:hrXpFMu" />
      <node concept="1sVBvm" id="hrXpWpW" role="1sWHZn">
        <node concept="3F0A7n" id="hrXpWMp" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="VPRnO" id="1NIWQz0ETf0" role="3F10Kt" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="hrXFwW5">
    <property role="3GE5qa" value="CellModel" />
    <ref role="1XX52x" to="tpc2:hrXFhuw" resolve="CellModel_Indent" />
    <node concept="3F0ifn" id="hrXFzif" role="2wV5jI">
      <property role="3F0ifm" value="---&gt;" />
      <ref role="1k5W1q" node="i0pPgF8" resolve="rootCellModelStyle" />
      <node concept="VechU" id="hEZR8m0" role="3F10Kt">
        <property role="Vb096" value="lightGray" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="hrXInDs">
    <property role="3GE5qa" value="CellModel" />
    <ref role="1XX52x" to="tpc2:hrXI7r6" resolve="CellModel_BlockStart" />
    <node concept="3F0A7n" id="hsctpVH" role="2wV5jI">
      <property role="1O74Pk" value="true" />
      <property role="1$x2rV" value="{" />
      <ref role="1NtTu8" to="tpc2:hscsYn8" resolve="openBrace" />
      <ref role="1k5W1q" node="i0pPgF8" resolve="rootCellModelStyle" />
      <node concept="VechU" id="hEZR8qb" role="3F10Kt">
        <property role="Vb096" value="blue" />
      </node>
      <node concept="1I8cUB" id="hF0a6YY" role="3F10Kt">
        <property role="Vb096" value="blue" />
      </node>
    </node>
    <node concept="3EZMnI" id="hsct$pY" role="6VMZX">
      <property role="3EZMnw" value="true" />
      <node concept="PMmxH" id="hF4_0GF" role="3EZMnx">
        <ref role="PMmxG" node="hF4ssnw" resolve="_CellModel_Common" />
      </node>
      <node concept="VPM3Z" id="hEU$Q2W" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="VPXOz" id="hEUNSlh" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="2iRkQZ" id="i2IxuN6" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hrXIA$i">
    <property role="3GE5qa" value="CellModel" />
    <ref role="1XX52x" to="tpc2:hrXIzvd" resolve="CellModel_BlockEnd" />
    <node concept="3F0A7n" id="hsc$$zP" role="2wV5jI">
      <property role="1O74Pk" value="true" />
      <property role="1$x2rV" value="}" />
      <ref role="1NtTu8" to="tpc2:hsczY4V" resolve="closeBrace" />
      <ref role="1k5W1q" node="i0pPgF8" resolve="rootCellModelStyle" />
      <node concept="VechU" id="hEZR8sn" role="3F10Kt">
        <property role="Vb096" value="blue" />
      </node>
      <node concept="1I8cUB" id="hF0a6YZ" role="3F10Kt">
        <property role="Vb096" value="blue" />
      </node>
    </node>
    <node concept="3EZMnI" id="hsc$3vl" role="6VMZX">
      <property role="3EZMnw" value="true" />
      <node concept="PMmxH" id="hF4$UuS" role="3EZMnx">
        <ref role="PMmxG" node="hF4ssnw" resolve="_CellModel_Common" />
      </node>
      <node concept="VPM3Z" id="hEU$PBt" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="i2IxuNh" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hsb$_Cs">
    <property role="3GE5qa" value="CellModel" />
    <ref role="1XX52x" to="tpc2:hsb$fdm" resolve="CellModel_Block" />
    <node concept="3EZMnI" id="hsb$AkU" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <ref role="1k5W1q" node="hX5ZSzR" resolve="borderedCollection" />
      <node concept="3EZMnI" id="hsb$Dx3" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="3F1sOY" id="hsb$N6b" role="3EZMnx">
          <property role="1$x2rV" value="&lt;no header&gt;" />
          <ref role="1NtTu8" to="tpc2:hsb$u0l" />
        </node>
        <node concept="3F0A7n" id="hscG2sB" role="3EZMnx">
          <property role="1O74Pk" value="true" />
          <property role="1$x2rV" value="{" />
          <ref role="1NtTu8" to="tpc2:hscFXKA" resolve="openBrace" />
          <node concept="VPXOz" id="hEUNS_g" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="VechU" id="hEZR8z1" role="3F10Kt">
            <property role="Vb096" value="blue" />
          </node>
          <node concept="1I8cUB" id="hF0a6Z0" role="3F10Kt">
            <property role="Vb096" value="blue" />
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$Q1X" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VPXOz" id="hEUNSzk" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="2iRfu4" id="i2IxuQ_" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="hsb$EpY" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="3XFhqQ" id="hsb$KZm" role="3EZMnx" />
        <node concept="3F1sOY" id="hsb$M2x" role="3EZMnx">
          <ref role="1NtTu8" to="tpc2:hsb$w86" />
        </node>
        <node concept="VPM3Z" id="hEU$Q3n" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VPXOz" id="hEUNSBd" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="2iRfu4" id="i2IxuPj" role="2iSdaV" />
      </node>
      <node concept="3F0A7n" id="hscG3rb" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <property role="1$x2rV" value="}" />
        <ref role="1NtTu8" to="tpc2:hscFZiw" resolve="closeBrace" />
        <node concept="VPXOz" id="hEUNS$y" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VechU" id="hEZR8Ai" role="3F10Kt">
          <property role="Vb096" value="blue" />
        </node>
        <node concept="1I8cUB" id="hF0a6Z1" role="3F10Kt">
          <property role="Vb096" value="blue" />
        </node>
      </node>
      <node concept="2iRkQZ" id="i2IxuNq" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="hsck09P" role="6VMZX">
      <property role="3EZMnw" value="true" />
      <property role="3EZMnz" value="true" />
      <node concept="PMmxH" id="hF4_5d4" role="3EZMnx">
        <ref role="PMmxG" node="hF4ssnw" resolve="_CellModel_Common" />
      </node>
      <node concept="2EHx9g" id="i2IxuN1" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="hshzhgf">
    <property role="TrG5h" value="_FocusPolicy_Applicable" />
    <ref role="1XX52x" to="tpc2:fBEYTCT" resolve="EditorCellModel" />
    <node concept="3EZMnI" id="hshzhgh" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3F0ifn" id="hshzhgi" role="3EZMnx">
        <property role="3F0ifm" value="focus policy applicable:" />
      </node>
      <node concept="3EZMnI" id="hshzhgj" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="3F1sOY" id="hshzhgk" role="3EZMnx">
          <property role="1$x2rV" value="&lt;no focus policy condition&gt;" />
          <ref role="1NtTu8" to="tpc2:hscStWE" />
        </node>
        <node concept="VPM3Z" id="hEU$PUD" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IxuMV" role="2iSdaV" />
      </node>
      <node concept="pkWqt" id="hshzhgl" role="pqm2j">
        <node concept="3clFbS" id="hshzhgm" role="2VODD2">
          <node concept="3clFbF" id="hshzhgn" role="3cqZAp">
            <node concept="3fqX7Q" id="hshzhgo" role="3clFbG">
              <node concept="2OqwBi" id="hxx$VDs" role="3fr31v">
                <node concept="2OqwBi" id="hxx$W89" role="2Oq$k0">
                  <node concept="pncrf" id="hshzhgr" role="2Oq$k0" />
                  <node concept="3TrcHB" id="hshzhgs" role="2OqNvi">
                    <ref role="3TsBF5" to="tpc2:gtcu_tw" resolve="attractsFocus" />
                  </node>
                </node>
                <node concept="3t7uKx" id="hshzhgt" role="2OqNvi">
                  <node concept="uoxfO" id="hshzhgu" role="3t7uKA">
                    <ref role="uo_Cq" to="tpc2:gtgusxG" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="VPM3Z" id="hEU$P3T" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="i2IxuU9" role="2iSdaV" />
    </node>
  </node>
  <node concept="325Ffw" id="hsh$IoV">
    <property role="TrG5h" value="CellModel_Component_KeyMap" />
    <property role="3GE5qa" value="CellModel" />
    <ref role="1chiOs" to="tpc2:fGPMmym" resolve="CellModel_Component" />
    <node concept="2PxR9H" id="hsh$Lai" role="2QnnpI">
      <node concept="2Py5lD" id="hsh$Laj" role="2PyaAO">
        <property role="2PWKIS" value="VK_N" />
        <property role="2PWKIB" value="ctrl+alt" />
      </node>
      <node concept="2PzhpH" id="hsh$Lak" role="2PL9iG">
        <node concept="3clFbS" id="hsh$Lal" role="2VODD2">
          <node concept="3clFbF" id="hsh_OHf" role="3cqZAp">
            <node concept="2OqwBi" id="hxx$VTl" role="3clFbG">
              <node concept="0GJ7k" id="hsh_OHg" role="2Oq$k0" />
              <node concept="1P9Npp" id="hsh_Plo" role="2OqNvi">
                <node concept="2OqwBi" id="hxx$F2F" role="1P9ThW">
                  <node concept="2OqwBi" id="hxx_0X4" role="2Oq$k0">
                    <node concept="2OqwBi" id="hxx$Oyl" role="2Oq$k0">
                      <node concept="0GJ7k" id="hsh_P_y" role="2Oq$k0" />
                      <node concept="3TrEf2" id="hsh_TaX" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpc2:fGPMmyn" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="hsh_T$U" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpc2:fIwV5gl" />
                    </node>
                  </node>
                  <node concept="1$rogu" id="hsh_TYR" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="huLd9yu">
    <property role="3GE5qa" value="SNode" />
    <ref role="1XX52x" to="tpc2:huLcJzd" resolve="SelectPositionParameter" />
    <node concept="3EZMnI" id="huLda5E" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="3F0ifn" id="huLdagr" role="3EZMnx">
        <property role="3F0ifm" value="position" />
      </node>
      <node concept="3F0ifn" id="huLdb2w" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="3F0A7n" id="huLdbvP" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:huLd7CR" resolve="position" />
      </node>
      <node concept="2iRfu4" id="i2IxuO7" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="huLkRUf">
    <property role="3GE5qa" value="SNode" />
    <ref role="1XX52x" to="tpc2:huLkFKv" resolve="CaretPositionParameter" />
    <node concept="3EZMnI" id="huLkSy$" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="3F0ifn" id="huLkSS5" role="3EZMnx">
        <property role="3F0ifm" value="caret position" />
      </node>
      <node concept="3F0ifn" id="huLkUYq" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="3F1sOY" id="huLkVpj" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:huLkQdO" />
      </node>
      <node concept="2iRfu4" id="i2IxuUq" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="hEUgR_Z">
    <property role="TrG5h" value="Style_Component" />
    <property role="3GE5qa" value="Stylesheet" />
    <ref role="1XX52x" to="tpc2:fBEYTCT" resolve="EditorCellModel" />
    <node concept="3EZMnI" id="hEUh8Fj" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3F0ifn" id="3h9t8JndPRS" role="3EZMnx">
        <property role="3F0ifm" value="Style:" />
        <ref role="1k5W1q" node="hF4yUZ8" resolve="header" />
      </node>
      <node concept="PMmxH" id="1cEk0X7pP3m" role="3EZMnx">
        <ref role="PMmxG" node="1cEk0X7pP35" resolve="CellStyle_Component" />
      </node>
      <node concept="2iRkQZ" id="i2IxuQS" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hEUSVgc">
    <property role="3GE5qa" value="Stylesheet" />
    <ref role="1XX52x" to="tpc2:hgVQ3vn" resolve="UnderlinedStyleClassItem" />
    <node concept="3EZMnI" id="hEUT1j7" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="PMmxH" id="2wdLO7KhY9D" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="hoxUe05" resolve="item" />
        <node concept="OXEIz" id="2wdLO7KhY9E" role="P5bDN">
          <node concept="UkePV" id="2wdLO7KhY9F" role="OY2wv">
            <ref role="Ul1FP" to="tpc2:hgV6hR6" resolve="StyleClassItem" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="hEUT2pf" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="hEUT3Sv" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:hEUSNj9" resolve="underlined" />
        <node concept="pkWqt" id="hLmlewN" role="pqm2j">
          <node concept="3clFbS" id="hLmlewO" role="2VODD2">
            <node concept="3clFbF" id="hLmlkKZ" role="3cqZAp">
              <node concept="3clFbC" id="hLmllFc" role="3clFbG">
                <node concept="10Nm6u" id="hLmlmty" role="3uHU7w" />
                <node concept="2OqwBi" id="hLmllaE" role="3uHU7B">
                  <node concept="pncrf" id="hLmlkL0" role="2Oq$k0" />
                  <node concept="3TrEf2" id="hLmlls2" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpc2:hLmkYxI" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="OXEIz" id="hLmvfwG" role="P5bDN">
          <node concept="PvTIS" id="1t40TFMC8mj" role="OY2wv">
            <node concept="MLZmj" id="1t40TFMC8mk" role="PvTIR">
              <node concept="3clFbS" id="1t40TFMC8ml" role="2VODD2">
                <node concept="3clFbF" id="1t40TFMC8Le" role="3cqZAp">
                  <node concept="2ShNRf" id="1t40TFMC8Lf" role="3clFbG">
                    <node concept="Tc6Ow" id="1t40TFMChfb" role="2ShVmc">
                      <node concept="17QB3L" id="1t40TFMChfd" role="HW$YZ" />
                      <node concept="Xl_RD" id="1t40TFMChff" role="HW$Y0">
                        <property role="Xl_RC" value="0" />
                      </node>
                      <node concept="Xl_RD" id="1t40TFMChfh" role="HW$Y0">
                        <property role="Xl_RC" value="1" />
                      </node>
                      <node concept="Xl_RD" id="1t40TFMChfj" role="HW$Y0">
                        <property role="Xl_RC" value="2" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1oHujT" id="hLmybHJ" role="OY2wv">
            <property role="1oHujS" value="query" />
            <node concept="1oIgkG" id="hLmyfnI" role="1oHujR">
              <node concept="3clFbS" id="hLmyfnJ" role="2VODD2">
                <node concept="3clFbF" id="hLmz2$6" role="3cqZAp">
                  <node concept="2OqwBi" id="hLmB5mN" role="3clFbG">
                    <node concept="2OqwBi" id="hLmz2OY" role="2Oq$k0">
                      <node concept="3GMtW1" id="hLmz2$7" role="2Oq$k0" />
                      <node concept="3TrEf2" id="hLmz3cX" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpc2:hLmkYxI" />
                      </node>
                    </node>
                    <node concept="2DeJnY" id="5wUAOoBBfq0" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="hLml99i" role="3EZMnx">
        <property role="1cu_pB" value="3" />
        <ref role="1NtTu8" to="tpc2:hLmkYxI" />
        <node concept="pkWqt" id="hLmlo45" role="pqm2j">
          <node concept="3clFbS" id="hLmlo46" role="2VODD2">
            <node concept="3clFbF" id="hLmBag6" role="3cqZAp">
              <node concept="2OqwBi" id="hLmBaQy" role="3clFbG">
                <node concept="2OqwBi" id="hLmBajz" role="2Oq$k0">
                  <node concept="pncrf" id="hLmBag7" role="2Oq$k0" />
                  <node concept="3TrEf2" id="hLmBaCA" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpc2:hLmkYxI" />
                  </node>
                </node>
                <node concept="3x8VRR" id="hLmBbl_" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="i2IxuTp" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hEUZe7X">
    <property role="3GE5qa" value="Stylesheet" />
    <ref role="1XX52x" to="tpc2:hEUZ13E" resolve="LayoutConstraintStyleClassItem" />
    <node concept="3EZMnI" id="hEUZfWV" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="PMmxH" id="2wdLO7KhYby" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="hoxUe05" resolve="item" />
        <node concept="OXEIz" id="2wdLO7KhYbz" role="P5bDN">
          <node concept="UkePV" id="2wdLO7KhYb$" role="OY2wv">
            <ref role="Ul1FP" to="tpc2:hgV6hR6" resolve="StyleClassItem" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="hEUZfWX" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="hEUZfWY" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:hEUZ13F" resolve="layoutConstraint" />
      </node>
      <node concept="2iRfu4" id="i2IxuUo" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hEV7KMs">
    <property role="3GE5qa" value="Stylesheet" />
    <ref role="1XX52x" to="tpc2:hEV7CQ5" resolve="SideTransformAnchorTagStyleClassItem" />
    <node concept="3EZMnI" id="hEV7M8b" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="PMmxH" id="2wdLO7KhYdl" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="hoxUe05" resolve="item" />
        <node concept="OXEIz" id="2wdLO7KhYdm" role="P5bDN">
          <node concept="UkePV" id="2wdLO7KhYdn" role="OY2wv">
            <ref role="Ul1FP" to="tpc2:hgV6hR6" resolve="StyleClassItem" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="hEV7M8d" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="hEV7M8e" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:hEV7CQ6" resolve="tag" />
        <node concept="pkWqt" id="38iZCbb_vZH" role="pqm2j">
          <node concept="3clFbS" id="38iZCbb_vZI" role="2VODD2">
            <node concept="3clFbF" id="38iZCbb_xrQ" role="3cqZAp">
              <node concept="2OqwBi" id="38iZCbb_xrX" role="3clFbG">
                <node concept="2OqwBi" id="38iZCbb_xrS" role="2Oq$k0">
                  <node concept="pncrf" id="38iZCbb_xrR" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="38iZCbb_xrW" role="2OqNvi">
                    <ref role="3TtcxE" to="tpc2:38iZCbb_vZA" />
                  </node>
                </node>
                <node concept="1v1jN8" id="38iZCbb_xs1" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="OXEIz" id="38iZCbb_xsj" role="P5bDN">
          <node concept="1ou48o" id="38iZCbb_xsl" role="OY2wv">
            <node concept="3GJtP1" id="38iZCbb_xsm" role="1ou48n">
              <node concept="3clFbS" id="38iZCbb_xsn" role="2VODD2">
                <node concept="3clFbF" id="38iZCbb_xss" role="3cqZAp">
                  <node concept="3HcIyF" id="38iZCbb_xst" role="3clFbG">
                    <ref role="3HcIyG" to="tpc2:gAtNdpl" resolve="RightTransformAnchorTag" />
                    <node concept="3HdYuk" id="38iZCbb_xsv" role="3Hdvt7" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1ouSdP" id="38iZCbb_xso" role="1ou48m">
              <node concept="3clFbS" id="38iZCbb_xsp" role="2VODD2">
                <node concept="3clFbF" id="38iZCbb_xEa" role="3cqZAp">
                  <node concept="2OqwBi" id="38iZCbb_xEh" role="3clFbG">
                    <node concept="2OqwBi" id="38iZCbb_xEc" role="2Oq$k0">
                      <node concept="3GMtW1" id="38iZCbb_xEb" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="38iZCbb_xEg" role="2OqNvi">
                        <ref role="3TtcxE" to="tpc2:38iZCbb_vZA" />
                      </node>
                    </node>
                    <node concept="2Kehj3" id="38iZCbb_D_2" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3clFbF" id="38iZCbb_D_4" role="3cqZAp">
                  <node concept="2OqwBi" id="38iZCbb_D_f" role="3clFbG">
                    <node concept="2OqwBi" id="38iZCbb_D_6" role="2Oq$k0">
                      <node concept="3GMtW1" id="38iZCbb_D_5" role="2Oq$k0" />
                      <node concept="3TrcHB" id="38iZCbb_D_a" role="2OqNvi">
                        <ref role="3TsBF5" to="tpc2:hEV7CQ6" resolve="tag" />
                      </node>
                    </node>
                    <node concept="tyxLq" id="38iZCbb_DES" role="2OqNvi">
                      <node concept="2OqwBi" id="38iZCbb_DEX" role="tz02z">
                        <node concept="3GLrbK" id="38iZCbb_DEU" role="2Oq$k0" />
                        <node concept="2ZYiMu" id="38iZCbb_DF1" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZThk1" id="38iZCbb_xsr" role="1eyP2E">
              <ref role="2ZWj4r" to="tpc2:gAtNdpl" resolve="RightTransformAnchorTag" />
            </node>
          </node>
          <node concept="1oHujT" id="38iZCbb_DF5" role="OY2wv">
            <property role="1oHujS" value="Composite tag" />
            <node concept="1oIgkG" id="38iZCbb_DF6" role="1oHujR">
              <node concept="3clFbS" id="38iZCbb_DF7" role="2VODD2">
                <node concept="3cpWs8" id="38iZCbb_IrF" role="3cqZAp">
                  <node concept="3cpWsn" id="38iZCbb_IrG" role="3cpWs9">
                    <property role="TrG5h" value="tagWrapper" />
                    <node concept="3Tqbb2" id="38iZCbb_IrH" role="1tU5fm">
                      <ref role="ehGHo" to="tpc2:38iZCbb_vZB" resolve="RightTransformAnchorTagWrapper" />
                    </node>
                    <node concept="2ShNRf" id="38iZCbb_IrJ" role="33vP2m">
                      <node concept="2fJWfE" id="5wUAOoBBfkN" role="2ShVmc">
                        <node concept="3Tqbb2" id="5wUAOoBBfkO" role="3zrR0E">
                          <ref role="ehGHo" to="tpc2:38iZCbb_vZB" resolve="RightTransformAnchorTagWrapper" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="38iZCbb_IrN" role="3cqZAp">
                  <node concept="37vLTI" id="38iZCbb_IrU" role="3clFbG">
                    <node concept="2OqwBi" id="38iZCbb_IrY" role="37vLTx">
                      <node concept="3GMtW1" id="38iZCbb_IrX" role="2Oq$k0" />
                      <node concept="3TrcHB" id="38iZCbb_Is2" role="2OqNvi">
                        <ref role="3TsBF5" to="tpc2:hEV7CQ6" resolve="tag" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="38iZCbb_IrP" role="37vLTJ">
                      <node concept="37vLTw" id="3GM_nagTB84" role="2Oq$k0">
                        <ref role="3cqZAo" node="38iZCbb_IrG" resolve="tagWrapper" />
                      </node>
                      <node concept="3TrcHB" id="38iZCbb_IrT" role="2OqNvi">
                        <ref role="3TsBF5" to="tpc2:38iZCbb_vZE" resolve="tag" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="38iZCbb_DFa" role="3cqZAp">
                  <node concept="2OqwBi" id="38iZCbb_Irz" role="3clFbG">
                    <node concept="2OqwBi" id="38iZCbb_DFc" role="2Oq$k0">
                      <node concept="3GMtW1" id="38iZCbb_DFb" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="38iZCbb_DFg" role="2OqNvi">
                        <ref role="3TtcxE" to="tpc2:38iZCbb_vZA" />
                      </node>
                    </node>
                    <node concept="TSZUe" id="38iZCbb_Is4" role="2OqNvi">
                      <node concept="37vLTw" id="3GM_nagTt6M" role="25WWJ7">
                        <ref role="3cqZAo" node="38iZCbb_IrG" resolve="tagWrapper" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="38iZCbb_Is8" role="3cqZAp">
                  <node concept="2OqwBi" id="38iZCbb_Isf" role="3clFbG">
                    <node concept="2OqwBi" id="38iZCbb_Isa" role="2Oq$k0">
                      <node concept="3GMtW1" id="38iZCbb_Is9" role="2Oq$k0" />
                      <node concept="3TrcHB" id="38iZCbb_Ise" role="2OqNvi">
                        <ref role="3TsBF5" to="tpc2:hEV7CQ6" resolve="tag" />
                      </node>
                    </node>
                    <node concept="3ZvMEC" id="38iZCbb_Isj" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="i2IxuOJ" role="2iSdaV" />
      <node concept="3F2HdR" id="38iZCbb_xs3" role="3EZMnx">
        <property role="2czwfP" value="true" />
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="tpc2:38iZCbb_vZA" />
        <node concept="pkWqt" id="38iZCbb_xs5" role="pqm2j">
          <node concept="3clFbS" id="38iZCbb_xs6" role="2VODD2">
            <node concept="3clFbF" id="38iZCbb_xs7" role="3cqZAp">
              <node concept="2OqwBi" id="38iZCbb_xse" role="3clFbG">
                <node concept="2OqwBi" id="38iZCbb_xs9" role="2Oq$k0">
                  <node concept="pncrf" id="38iZCbb_xs8" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="38iZCbb_xsd" role="2OqNvi">
                    <ref role="3TtcxE" to="tpc2:38iZCbb_vZA" />
                  </node>
                </node>
                <node concept="3GX2aA" id="38iZCbb_xsi" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2iRfu4" id="r$IJBqnhIA" role="2czzBx" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="hF4e8tU">
    <property role="3GE5qa" value="Stylesheet" />
    <ref role="1XX52x" to="tpc2:hF4dVhC" resolve="DefaultCaretPositionStyleClassItem" />
    <node concept="3EZMnI" id="hF4ee2z" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="PMmxH" id="2wdLO7KhY86" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="hoxUe05" resolve="item" />
        <node concept="OXEIz" id="2wdLO7KhY87" role="P5bDN">
          <node concept="UkePV" id="2wdLO7KhY88" role="OY2wv">
            <ref role="Ul1FP" to="tpc2:hgV6hR6" resolve="StyleClassItem" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="hF4eeQo" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="hF4efy6" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:hF4dVhD" resolve="position" />
      </node>
      <node concept="2iRfu4" id="i2IxuQ4" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="hF4ssnw">
    <property role="TrG5h" value="_CellModel_Common" />
    <ref role="1XX52x" to="tpc2:fBEYTCT" resolve="EditorCellModel" />
    <node concept="3EZMnI" id="hF4zm1w" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="PMmxH" id="3h9t8Jngmp$" role="3EZMnx">
        <ref role="PMmxG" node="hEUgR_Z" resolve="Style_Component" />
      </node>
      <node concept="3F0ifn" id="3h9t8JngmpA" role="3EZMnx" />
      <node concept="PMmxH" id="3h9t8JngmpC" role="3EZMnx">
        <ref role="PMmxG" node="3h9t8Jnexr_" resolve="Common_Component" />
      </node>
      <node concept="2iRkQZ" id="i2IxuTb" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hF$6Z_w">
    <property role="3GE5qa" value="Stylesheet" />
    <ref role="1XX52x" to="tpc2:hF$6Mv_" resolve="FloatStyleClassItem" />
    <node concept="3EZMnI" id="hF$75X6" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="PMmxH" id="2wdLO7KhY5T" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="hoxUe05" resolve="item" />
        <node concept="OXEIz" id="2wdLO7KhY5U" role="P5bDN">
          <node concept="UkePV" id="2wdLO7KhY5V" role="OY2wv">
            <ref role="Ul1FP" to="tpc2:hgV6hR6" resolve="StyleClassItem" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="hF$76Vb" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="hF$77sD" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:hF$6WaJ" resolve="value" />
      </node>
      <node concept="2iRfu4" id="i2IxuJy" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hGLFDjs">
    <property role="3GE5qa" value="Stylesheet" />
    <ref role="1XX52x" to="tpc2:hGLD5Fn" resolve="PositionStyleClassItem" />
    <node concept="3EZMnI" id="hGLFGPj" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="PMmxH" id="2wdLO7KhY1t" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="hoxUe05" resolve="item" />
      </node>
      <node concept="3F0ifn" id="hGLFGPl" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="hGLFGPm" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:hGLDHh4" resolve="position" />
      </node>
      <node concept="2iRfu4" id="i2IxuRL" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hGPYwYi">
    <property role="3GE5qa" value="CellModel" />
    <ref role="1XX52x" to="tpc2:hGPXfkl" resolve="CellModel_TransactionalProperty" />
    <node concept="3EZMnI" id="hGPYxmf" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <ref role="1k5W1q" node="hX5ZSzR" resolve="borderedCollection" />
      <node concept="PMmxH" id="hGQ11Ly" role="3EZMnx">
        <ref role="PMmxG" node="h7TMiuR" resolve="_OpenTag" />
        <node concept="VPXOz" id="hGQ11Lz" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1iCGBv" id="hGPYxmi" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no property&gt;" />
        <ref role="1NtTu8" to="tpc2:hGPY767" />
        <node concept="1sVBvm" id="hGPYxmj" role="1sWHZn">
          <node concept="3F0A7n" id="hGPYxmk" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <property role="1$x2rV" value="&lt;no name&gt;" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <node concept="VPXOz" id="hGPYxml" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
        </node>
        <node concept="VPXOz" id="hGPYxmm" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="Veino" id="hLnshoP" role="3F10Kt">
          <node concept="3ZlJ5R" id="hLnshoQ" role="VblUZ">
            <node concept="3clFbS" id="hLnshoR" role="2VODD2">
              <node concept="3cpWs6" id="hLnshoS" role="3cqZAp">
                <node concept="2YIFZM" id="hLnshoT" role="3cqZAk">
                  <ref role="37wK5l" node="h842N6q" resolve="grayIfNotSelectable" />
                  <ref role="1Pybhc" node="h842M7a" resolve="_EditorUtil" />
                  <node concept="pncrf" id="hLnshoU" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VechU" id="hLnshoV" role="3F10Kt">
          <node concept="3ZlJ5R" id="hLnshoW" role="VblUZ">
            <node concept="3clFbS" id="hLnshoX" role="2VODD2">
              <node concept="3cpWs6" id="hLnshoY" role="3cqZAp">
                <node concept="2OqwBi" id="hLnshoZ" role="3cqZAk">
                  <node concept="pncrf" id="hLnshp0" role="2Oq$k0" />
                  <node concept="2qgKlT" id="hLnshp1" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:hL6TA5F" resolve="getForegroundColor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="Veino" id="hLnshp2" role="3F10Kt">
          <node concept="3ZlJ5R" id="hLnshp3" role="VblUZ">
            <node concept="3clFbS" id="hLnshp4" role="2VODD2">
              <node concept="3cpWs6" id="hLnshp5" role="3cqZAp">
                <node concept="2OqwBi" id="hLnshp6" role="3cqZAk">
                  <node concept="pncrf" id="hLnshp7" role="2Oq$k0" />
                  <node concept="2qgKlT" id="hLnshp8" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:hL7rNfN" resolve="getBackgroundColor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="30gYXW" id="hLnshp9" role="3F10Kt">
          <node concept="3ZlJ5R" id="hLnshpa" role="VblUZ">
            <node concept="3clFbS" id="hLnshpb" role="2VODD2">
              <node concept="3cpWs6" id="hLnshpc" role="3cqZAp">
                <node concept="2OqwBi" id="hLnshpd" role="3cqZAk">
                  <node concept="pncrf" id="hLnshpe" role="2Oq$k0" />
                  <node concept="2qgKlT" id="hLnshpf" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:hL7BhMP" resolve="getTextBackgroundColor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="Vb9p2" id="hLnshpg" role="3F10Kt">
          <property role="Vbekb" value="QUERY" />
          <node concept="17KAyr" id="hLnshph" role="17MNgL">
            <node concept="3clFbS" id="hLnshpi" role="2VODD2">
              <node concept="3cpWs6" id="hLnshpj" role="3cqZAp">
                <node concept="2OqwBi" id="hLnshpk" role="3cqZAk">
                  <node concept="pncrf" id="hLnshpl" role="2Oq$k0" />
                  <node concept="2qgKlT" id="hLnshpm" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:hLcv3Z9" resolve="getFontStyle" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VQ3r3" id="hLnshpu" role="3F10Kt">
          <node concept="1d0yFN" id="hLnshpv" role="1mkY_M">
            <node concept="3clFbS" id="hLnshpw" role="2VODD2">
              <node concept="3cpWs6" id="hLnshpx" role="3cqZAp">
                <node concept="2OqwBi" id="hLnshpy" role="3cqZAk">
                  <node concept="pncrf" id="hLnshpz" role="2Oq$k0" />
                  <node concept="2qgKlT" id="hLnshp$" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:hLmqR8u" resolve="isUnderlined" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3nxI2P" id="hNteQ5d" role="3F10Kt">
          <node concept="3nzxsE" id="hNteQTe" role="3n$kyP">
            <node concept="3clFbS" id="hNteQTf" role="2VODD2">
              <node concept="3cpWs6" id="hNteTNy" role="3cqZAp">
                <node concept="2OqwBi" id="hNteVza" role="3cqZAk">
                  <node concept="pncrf" id="hNteVle" role="2Oq$k0" />
                  <node concept="2qgKlT" id="hNteWoF" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:hNnL8J1" resolve="isStrikeOut" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="hGPYxmn" role="3EZMnx">
        <ref role="PMmxG" node="h7TMK$j" resolve="_CloseTag" />
        <node concept="VPXOz" id="hGPYxmo" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2iRfu4" id="i2IxuNV" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="hGQ1f_P" role="6VMZX">
      <property role="3EZMnw" value="true" />
      <node concept="PMmxH" id="hGQ1f_Q" role="3EZMnx">
        <ref role="PMmxG" node="hF4ssnw" resolve="_CellModel_Common" />
      </node>
      <node concept="3F0ifn" id="hGQ1f_R" role="3EZMnx">
        <node concept="VPM3Z" id="hGQ1f_S" role="3F10Kt" />
        <node concept="Vb9p2" id="hN2Hw8p" role="3F10Kt">
          <property role="Vbekb" value="BOLD" />
        </node>
      </node>
      <node concept="3F0ifn" id="hGQ1f_T" role="3EZMnx">
        <property role="3F0ifm" value="Transactional property cell:" />
        <ref role="1k5W1q" node="hF4yUZ8" resolve="header" />
      </node>
      <node concept="3EZMnI" id="hGQ1f_U" role="3EZMnx">
        <property role="3EZMnw" value="true" />
        <property role="3EZMnz" value="true" />
        <node concept="3EZMnI" id="hGQ1sgl" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="hGQ1sgm" role="3EZMnx">
            <property role="3F0ifm" value="property" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="1iCGBv" id="hGQ1sgn" role="3EZMnx">
            <property role="1$x2rV" value="&lt;no property&gt;" />
            <ref role="1NtTu8" to="tpc2:hGPY767" />
            <node concept="1sVBvm" id="hGQ1sgo" role="1sWHZn">
              <node concept="3F0A7n" id="hGQ1sgp" role="2wV5jI">
                <property role="1Intyy" value="true" />
                <property role="1$x2rV" value="&lt;no name&gt;" />
                <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
                <node concept="VPXOz" id="hGQ1sgq" role="3F10Kt">
                  <property role="VOm3f" value="true" />
                </node>
              </node>
            </node>
            <node concept="VPXOz" id="hGQ1sgr" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="VPM3Z" id="hGQ1sgs" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="hGQ1sgt" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2iRfu4" id="i2IxuN0" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="hVN98$3" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="VPM3Z" id="hVN98$4" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="2jfAk2L49su" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3F0ifn" id="hVN99no" role="3EZMnx">
            <property role="3F0ifm" value="run in command" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F0A7n" id="hVN9qBl" role="3EZMnx">
            <ref role="1NtTu8" to="tpc2:hVN9gW1" resolve="runInCommand" />
            <node concept="VPXOz" id="2jfAk2L4aC9" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="2iRfu4" id="i2IxuRZ" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="hGQ1f_V" role="3EZMnx">
          <node concept="3F0ifn" id="hGQ1f_W" role="3EZMnx">
            <property role="3F0ifm" value="handler:" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="VPM3Z" id="hGQ1f_X" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="2jfAk2L49sB" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3F1sOY" id="hGQ1f_Y" role="3EZMnx">
            <ref role="1NtTu8" to="tpc2:hGPY5io" />
          </node>
          <node concept="2iRfu4" id="i2IxuRN" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="7a3hLlC0jqg" role="3EZMnx">
          <node concept="VPM3Z" id="7a3hLlC0jqh" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="2jfAk2L49sK" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3F0ifn" id="7a3hLlC0jqk" role="3EZMnx">
            <property role="3F0ifm" value="allow empty" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F0A7n" id="7a3hLlC0jqm" role="3EZMnx">
            <ref role="1NtTu8" to="tpc2:7a3hLlC0ccL" resolve="allowEmptyText" />
            <node concept="VPXOz" id="7a3hLlC0jqn" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="2iRfu4" id="7a3hLlC0jqj" role="2iSdaV" />
        </node>
        <node concept="VPXOz" id="hGQ1fA7" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="2EHx9g" id="i2IxuQ1" role="2iSdaV" />
      </node>
      <node concept="VPM3Z" id="hGQ1fEu" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="i2IxuTQ" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hH0J3GN">
    <property role="3GE5qa" value="Stylesheet" />
    <ref role="1XX52x" to="tpc2:hH0DmCw" resolve="PositionChildrenStyleClassItem" />
    <node concept="3EZMnI" id="hH0JmQI" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="PMmxH" id="2wdLO7KhY7p" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="hoxUe05" resolve="item" />
        <node concept="OXEIz" id="2wdLO7KhY7q" role="P5bDN">
          <node concept="UkePV" id="2wdLO7KhY7r" role="OY2wv">
            <ref role="Ul1FP" to="tpc2:hgV6hR6" resolve="StyleClassItem" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="hH0JmQK" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="hH0JmQL" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:hH0E5mA" resolve="position" />
      </node>
      <node concept="2iRfu4" id="i2IxuNc" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hPiTmEc">
    <property role="3GE5qa" value="Stylesheet" />
    <ref role="1XX52x" to="tpc2:hPiSF6w" resolve="RGBColor" />
    <node concept="3EZMnI" id="hPiUgBa" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="3F0ifn" id="hPj1fU7" role="3EZMnx">
        <property role="3F0ifm" value="#" />
        <ref role="1k5W1q" to="tpen:hshT4rC" resolve="NumericLiteral" />
        <node concept="Vb9p2" id="hPj1mAA" role="3F10Kt">
          <property role="Vbekb" value="PLAIN" />
        </node>
        <node concept="3$7jql" id="hPjiF12" role="3F10Kt">
          <property role="2hoDZC" value="spaces" />
          <property role="3$6WeP" value="0.0" />
        </node>
      </node>
      <node concept="3F0A7n" id="hPiUMiH" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:hPiThsr" resolve="value" />
        <ref role="1k5W1q" to="tpen:hshT4rC" resolve="NumericLiteral" />
      </node>
      <node concept="2iRfu4" id="i2IxuQl" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hPHn2b1">
    <property role="3GE5qa" value="CellModel" />
    <ref role="1XX52x" to="tpc2:hPHlG0c" resolve="CellModel_ReadOnlyModelAccessor" />
    <node concept="3EZMnI" id="hPHn_nQ" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <ref role="1k5W1q" node="i0pPgF8" resolve="rootCellModelStyle" />
      <node concept="PMmxH" id="hPRuGXr" role="3EZMnx">
        <ref role="PMmxG" node="h7TMiuR" resolve="_OpenTag" />
      </node>
      <node concept="3F0ifn" id="hPHn_nS" role="3EZMnx">
        <property role="3F0ifm" value="R/O model access" />
        <ref role="1k5W1q" node="hX1xO3O" resolve="bordered" />
        <node concept="30gYXW" id="hPHn_nU" role="3F10Kt">
          <node concept="3ZlJ5R" id="hPHn_nV" role="VblUZ">
            <node concept="3clFbS" id="hPHn_nW" role="2VODD2">
              <node concept="3clFbF" id="hPHn_nX" role="3cqZAp">
                <node concept="2OqwBi" id="hPHn_nY" role="3clFbG">
                  <node concept="pncrf" id="hPHn_nZ" role="2Oq$k0" />
                  <node concept="2qgKlT" id="hPHn_o0" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:hL7BhMP" resolve="getTextBackgroundColor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="Veino" id="hPHn_o1" role="3F10Kt">
          <node concept="3ZlJ5R" id="hPHn_o2" role="VblUZ">
            <node concept="3clFbS" id="hPHn_o3" role="2VODD2">
              <node concept="3clFbF" id="hPHn_o4" role="3cqZAp">
                <node concept="2OqwBi" id="hPHn_o5" role="3clFbG">
                  <node concept="pncrf" id="hPHn_o6" role="2Oq$k0" />
                  <node concept="2qgKlT" id="hPHn_o7" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:hL7rNfN" resolve="getBackgroundColor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VechU" id="hPHn_o8" role="3F10Kt">
          <node concept="3ZlJ5R" id="hPHn_o9" role="VblUZ">
            <node concept="3clFbS" id="hPHn_oa" role="2VODD2">
              <node concept="3clFbF" id="hPHn_ob" role="3cqZAp">
                <node concept="2OqwBi" id="hPHn_oc" role="3clFbG">
                  <node concept="pncrf" id="hPHn_od" role="2Oq$k0" />
                  <node concept="2qgKlT" id="hPHn_oe" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:hL6TA5F" resolve="getForegroundColor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="Vb9p2" id="hPHn_of" role="3F10Kt">
          <node concept="17KAyr" id="hPHn_og" role="17MNgL">
            <node concept="3clFbS" id="hPHn_oh" role="2VODD2">
              <node concept="3clFbF" id="hPHn_oi" role="3cqZAp">
                <node concept="2OqwBi" id="hPHn_oj" role="3clFbG">
                  <node concept="pncrf" id="hPHn_ok" role="2Oq$k0" />
                  <node concept="2qgKlT" id="hPHn_ol" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:hLcv3Z9" resolve="getFontStyle" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VQ3r3" id="hPHn_om" role="3F10Kt">
          <node concept="1d0yFN" id="hPHn_on" role="1mkY_M">
            <node concept="3clFbS" id="hPHn_oo" role="2VODD2">
              <node concept="3clFbF" id="hPHn_op" role="3cqZAp">
                <node concept="2OqwBi" id="hPHn_oq" role="3clFbG">
                  <node concept="pncrf" id="hPHn_or" role="2Oq$k0" />
                  <node concept="2qgKlT" id="hPHn_os" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:hLmqR8u" resolve="isUnderlined" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="hPRuJ0j" role="3EZMnx">
        <ref role="PMmxG" node="h7TMK$j" resolve="_CloseTag" />
      </node>
      <node concept="2iRfu4" id="i2IxuPR" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="hPHnIrC" role="6VMZX">
      <property role="3EZMnw" value="true" />
      <node concept="PMmxH" id="hPRAFCa" role="3EZMnx">
        <ref role="PMmxG" node="hF4ssnw" resolve="_CellModel_Common" />
      </node>
      <node concept="3F0ifn" id="hQ7iUCa" role="3EZMnx" />
      <node concept="3F0ifn" id="hPHnIrH" role="3EZMnx">
        <property role="3F0ifm" value="Value:" />
        <ref role="1k5W1q" node="hF4yUZ8" resolve="header" />
      </node>
      <node concept="3EZMnI" id="hPRAM7h" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="3F1sOY" id="hPQWOW1" role="3EZMnx">
          <ref role="1NtTu8" to="tpc2:hPHlUPc" />
        </node>
        <node concept="2iRfu4" id="i2IxuQY" role="2iSdaV" />
      </node>
      <node concept="VPM3Z" id="hPHnIrW" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="i2IxuNa" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hPQWonK">
    <ref role="1XX52x" to="tpc2:hPHfYsu" resolve="ReadOnlyModelAccessor" />
    <node concept="3F1sOY" id="hPQX9bI" role="2wV5jI">
      <ref role="1NtTu8" to="tpc2:hPHht8X" />
    </node>
  </node>
  <node concept="24kQdi" id="hQgFfRv">
    <property role="3GE5qa" value="Stylesheet.Paddings" />
    <ref role="1XX52x" to="tpc2:hQ7zB2l" resolve="AbstractPaddingStyleClassItem" />
    <node concept="3EZMnI" id="hQgFmHh" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="PMmxH" id="2wdLO7KhY7j" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="hoxUe05" resolve="item" />
        <node concept="OXEIz" id="2wdLO7KhY7k" role="P5bDN">
          <node concept="UkePV" id="2wdLO7KhY7l" role="OY2wv">
            <ref role="Ul1FP" to="tpc2:hgV6hR6" resolve="StyleClassItem" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="hQgFmHl" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="hQgFmHm" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:hF$6WaJ" resolve="value" />
      </node>
      <node concept="3F0A7n" id="hQhoLER" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:hQhoDVP" resolve="measure" />
      </node>
      <node concept="2iRfu4" id="i2IxuS_" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hRyghPp">
    <property role="3GE5qa" value="Stylesheet" />
    <ref role="1XX52x" to="tpc2:hRyfXGv" resolve="NavigatableReferenceStyleClassItem" />
    <node concept="3EZMnI" id="hRygtDm" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="PMmxH" id="2wdLO7KhY2K" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="hoxUe05" resolve="item" />
      </node>
      <node concept="3F0ifn" id="hRygvb4" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="1iCGBv" id="hRygv$J" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:hRygfii" />
        <node concept="1sVBvm" id="hRygv$K" role="1sWHZn">
          <node concept="3F0A7n" id="hRygvTy" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpce:fA0kJcN" resolve="role" />
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="i2IxuTW" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hWtpP9M">
    <ref role="1XX52x" to="tpc2:hWtppjH" resolve="InlineStyleDeclaration" />
    <node concept="PMmxH" id="1cEk0X7pQdX" role="2wV5jI">
      <ref role="PMmxG" node="1cEk0X7pP35" resolve="CellStyle_Component" />
    </node>
  </node>
  <node concept="24kQdi" id="hYphex0">
    <property role="3GE5qa" value="CellLayout" />
    <ref role="1XX52x" to="tpc2:g6iR17a" resolve="CellLayout" />
    <node concept="PMmxH" id="2wdLO7KhY7C" role="2wV5jI">
      <property role="1cu_pB" value="0" />
      <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
    </node>
  </node>
  <node concept="24kQdi" id="hZ7l$n3">
    <property role="3GE5qa" value="Stylesheet" />
    <ref role="1XX52x" to="tpc2:hZ7jFTG" resolve="HorizontalAlign" />
    <node concept="3EZMnI" id="hZ7lIPy" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="3F0ifn" id="hZ7lIPz" role="3EZMnx">
        <property role="3F0ifm" value="horizontal-align" />
        <ref role="1k5W1q" node="hoxUe05" resolve="item" />
        <node concept="OXEIz" id="hZ7lIP$" role="P5bDN">
          <node concept="UkePV" id="hZ7lIP_" role="OY2wv">
            <ref role="Ul1FP" to="tpc2:hgV6hR6" resolve="StyleClassItem" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="hZ7lIPA" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="hZ7lIPB" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:hZ7lx26" resolve="align" />
      </node>
      <node concept="2iRfu4" id="i2IxuNk" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hZmYBGR">
    <property role="3GE5qa" value="Stylesheet" />
    <ref role="1XX52x" to="tpc2:hZmYdko" resolve="MatchingLabelStyleClassItem" />
    <node concept="3EZMnI" id="hZmYNTi" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="PMmxH" id="2wdLO7KhYd6" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="hoxUe05" resolve="item" />
      </node>
      <node concept="3F0ifn" id="hZmYR77" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="i141x$C" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:i1413G$" resolve="labelName" />
        <node concept="pkWqt" id="i148_uA" role="pqm2j">
          <node concept="3clFbS" id="i148_uB" role="2VODD2">
            <node concept="3clFbF" id="i148IUn" role="3cqZAp">
              <node concept="1Wc70l" id="58mW1s9zWbP" role="3clFbG">
                <node concept="3fqX7Q" id="58mW1s9zWbY" role="3uHU7w">
                  <node concept="2OqwBi" id="58mW1s9zWbZ" role="3fr31v">
                    <node concept="pncrf" id="58mW1s9zWc0" role="2Oq$k0" />
                    <node concept="3TrcHB" id="58mW1s9zWc1" role="2OqNvi">
                      <ref role="3TsBF5" to="tpc2:58mW1s9z$X4" resolve="hasNoLabel" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="i148JEq" role="3uHU7B">
                  <node concept="2OqwBi" id="i148Jdk" role="3uHU7B">
                    <node concept="pncrf" id="i148IUo" role="2Oq$k0" />
                    <node concept="3TrEf2" id="i148JoE" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpc2:hZxKXiv" />
                    </node>
                  </node>
                  <node concept="10Nm6u" id="i148JW1" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="OXEIz" id="58mW1s9zWch" role="P5bDN">
          <node concept="1oHujT" id="58mW1s9zWci" role="OY2wv">
            <property role="1oHujS" value="null" />
            <node concept="1oIgkG" id="58mW1s9zWcj" role="1oHujR">
              <node concept="3clFbS" id="58mW1s9zWck" role="2VODD2">
                <node concept="3clFbF" id="58mW1s9zWcl" role="3cqZAp">
                  <node concept="37vLTI" id="58mW1s9zWcs" role="3clFbG">
                    <node concept="3clFbT" id="58mW1s9zWcv" role="37vLTx">
                      <property role="3clFbU" value="true" />
                    </node>
                    <node concept="2OqwBi" id="58mW1s9zWcn" role="37vLTJ">
                      <node concept="3GMtW1" id="58mW1s9zWcm" role="2Oq$k0" />
                      <node concept="3TrcHB" id="58mW1s9zWcr" role="2OqNvi">
                        <ref role="3TsBF5" to="tpc2:58mW1s9z$X4" resolve="hasNoLabel" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="58mW1s9zJ_n" role="3EZMnx">
        <property role="3F0ifm" value="null" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <node concept="pkWqt" id="58mW1s9zJ_p" role="pqm2j">
          <node concept="3clFbS" id="58mW1s9zJ_q" role="2VODD2">
            <node concept="3clFbF" id="58mW1s9zLD9" role="3cqZAp">
              <node concept="1Wc70l" id="58mW1s9zLDh" role="3clFbG">
                <node concept="2OqwBi" id="58mW1s9zWbK" role="3uHU7B">
                  <node concept="2OqwBi" id="58mW1s9zWbF" role="2Oq$k0">
                    <node concept="pncrf" id="58mW1s9zWbE" role="2Oq$k0" />
                    <node concept="3TrEf2" id="58mW1s9zWbJ" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpc2:hZxKXiv" />
                    </node>
                  </node>
                  <node concept="3w_OXm" id="58mW1s9zWbO" role="2OqNvi" />
                </node>
                <node concept="2OqwBi" id="58mW1s9zLDb" role="3uHU7w">
                  <node concept="pncrf" id="58mW1s9zLDa" role="2Oq$k0" />
                  <node concept="3TrcHB" id="58mW1s9zLDf" role="2OqNvi">
                    <ref role="3TsBF5" to="tpc2:58mW1s9z$X4" resolve="hasNoLabel" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="OXEIz" id="58mW1s9zWc2" role="P5bDN">
          <node concept="1oHujT" id="58mW1s9zWc3" role="OY2wv">
            <property role="1oHujS" value="label name" />
            <node concept="1oIgkG" id="58mW1s9zWc4" role="1oHujR">
              <node concept="3clFbS" id="58mW1s9zWc5" role="2VODD2">
                <node concept="3clFbF" id="58mW1s9zWc6" role="3cqZAp">
                  <node concept="37vLTI" id="58mW1s9zWcd" role="3clFbG">
                    <node concept="3clFbT" id="58mW1s9zWcg" role="37vLTx">
                      <property role="3clFbU" value="false" />
                    </node>
                    <node concept="2OqwBi" id="58mW1s9zWc8" role="37vLTJ">
                      <node concept="3GMtW1" id="58mW1s9zWc7" role="2Oq$k0" />
                      <node concept="3TrcHB" id="58mW1s9zWcc" role="2OqNvi">
                        <ref role="3TsBF5" to="tpc2:58mW1s9z$X4" resolve="hasNoLabel" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="hZxMoiR" role="3EZMnx">
        <property role="1cu_pB" value="3" />
        <ref role="1NtTu8" to="tpc2:hZxKXiv" />
        <node concept="pkWqt" id="i0XDkXE" role="pqm2j">
          <node concept="3clFbS" id="i0XDkXF" role="2VODD2">
            <node concept="3clFbF" id="i0XDmd5" role="3cqZAp">
              <node concept="3y3z36" id="i0XDnH5" role="3clFbG">
                <node concept="10Nm6u" id="i0XDo18" role="3uHU7w" />
                <node concept="2OqwBi" id="i0XDmxk" role="3uHU7B">
                  <node concept="pncrf" id="i0XDmd6" role="2Oq$k0" />
                  <node concept="3TrEf2" id="i0XDn9y" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpc2:hZxKXiv" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="i2IxuTr" role="2iSdaV" />
    </node>
  </node>
  <node concept="312cEu" id="i2lE2w4">
    <property role="TrG5h" value="SelectImageFileButton" />
    <property role="3GE5qa" value="CellModel" />
    <node concept="312cEg" id="i2lEbZl" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <node concept="3Tqbb2" id="i2lEd5x" role="1tU5fm">
        <ref role="ehGHo" to="tpc2:g_u4HTJ" resolve="CellModel_Image" />
      </node>
      <node concept="3Tm6S6" id="i2lEbZm" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="i2lE2w6" role="jymVt">
      <node concept="3clFbS" id="i2lE2w9" role="3clF47">
        <node concept="3clFbF" id="i2lEklL" role="3cqZAp">
          <node concept="37vLTI" id="i2lEkTS" role="3clFbG">
            <node concept="2OqwBi" id="i2lEklM" role="37vLTJ">
              <node concept="Xjq3P" id="i2lEklO" role="2Oq$k0" />
              <node concept="2OwXpG" id="i2lEklN" role="2OqNvi">
                <ref role="2Oxat5" node="i2lEbZl" resolve="myNode" />
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxgmavY" role="37vLTx">
              <ref role="3cqZAo" node="i2lEidQ" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="i2lEs8t" role="3cqZAp">
          <node concept="2OqwBi" id="i2lEs8u" role="3clFbG">
            <node concept="Xjq3P" id="i2lEs8w" role="2Oq$k0" />
            <node concept="liA8E" id="i2lEs8v" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setFont(java.awt.Font):void" resolve="setFont" />
              <node concept="2OqwBi" id="i2lEusj" role="37wK5m">
                <node concept="2YIFZM" id="i2lEukJ" role="2Oq$k0">
                  <ref role="37wK5l" to="exr9:~EditorSettings.getInstance():jetbrains.mps.nodeEditor.EditorSettings" resolve="getInstance" />
                  <ref role="1Pybhc" to="exr9:~EditorSettings" resolve="EditorSettings" />
                </node>
                <node concept="liA8E" id="i2lEuSB" role="2OqNvi">
                  <ref role="37wK5l" to="exr9:~EditorSettings.getDefaultEditorFont():java.awt.Font" resolve="getDefaultEditorFont" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="i2lEwPl" role="3cqZAp">
          <node concept="2OqwBi" id="i2lEwPm" role="3clFbG">
            <node concept="liA8E" id="i2lEwPn" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border):void" resolve="setBorder" />
              <node concept="2ShNRf" id="i2lExlM" role="37wK5m">
                <node concept="1pGfFk" id="i2lEBok" role="2ShVmc">
                  <ref role="37wK5l" to="m4oy:~MetalBorders$ButtonBorder.&lt;init&gt;()" resolve="MetalBorders.ButtonBorder" />
                </node>
              </node>
            </node>
            <node concept="Xjq3P" id="i2lEwPo" role="2Oq$k0" />
          </node>
        </node>
        <node concept="3cpWs8" id="i2lEEoB" role="3cqZAp">
          <node concept="3cpWsn" id="i2lEEoC" role="3cpWs9">
            <property role="TrG5h" value="language" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="i2lEEoD" role="1tU5fm">
              <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
            </node>
            <node concept="2YIFZM" id="i2lETVd" role="33vP2m">
              <ref role="1Pybhc" to="w1kc:~Language" resolve="Language" />
              <ref role="37wK5l" to="w1kc:~Language.getLanguageFor(org.jetbrains.mps.openapi.model.SModel):jetbrains.mps.smodel.Language" resolve="getLanguageFor" />
              <node concept="2JrnkZ" id="i2lEU7c" role="37wK5m">
                <node concept="2OqwBi" id="i2lEU7d" role="2JrQYb">
                  <node concept="2OqwBi" id="i2lEU7e" role="2Oq$k0">
                    <node concept="2OwXpG" id="i2lEU7f" role="2OqNvi">
                      <ref role="2Oxat5" node="i2lEbZl" resolve="myNode" />
                    </node>
                    <node concept="Xjq3P" id="i2lEU7g" role="2Oq$k0" />
                  </node>
                  <node concept="I4A8Y" id="i2lEU7h" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="i2lEVpj" role="3cqZAp">
          <node concept="3cpWsn" id="i2lEVpk" role="3cpWs9">
            <property role="TrG5h" value="filename" />
            <node concept="2OqwBi" id="i2lF1vz" role="33vP2m">
              <node concept="2YIFZM" id="6tm98vZfRYl" role="2Oq$k0">
                <ref role="37wK5l" to="18ew:~MacrosFactory.forModule(jetbrains.mps.project.AbstractModule):jetbrains.mps.util.MacroHelper" resolve="forModule" />
                <ref role="1Pybhc" to="18ew:~MacrosFactory" resolve="MacrosFactory" />
                <node concept="37vLTw" id="3GM_nagTx0A" role="37wK5m">
                  <ref role="3cqZAo" node="i2lEEoC" resolve="language" />
                </node>
              </node>
              <node concept="liA8E" id="i2lF3S6" role="2OqNvi">
                <ref role="37wK5l" to="18ew:~MacroHelper.expandPath(java.lang.String):java.lang.String" resolve="expandPath" />
                <node concept="2OqwBi" id="i2lF4Kw" role="37wK5m">
                  <node concept="3TrcHB" id="i2lF59G" role="2OqNvi">
                    <ref role="3TsBF5" to="tpc2:g_ubRTz" resolve="imageFile" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxghiTY" role="2Oq$k0">
                    <ref role="3cqZAo" node="i2lEidQ" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="17QB3L" id="4druX3W0A0Q" role="1tU5fm" />
          </node>
        </node>
        <node concept="3cpWs8" id="i2lF9$Q" role="3cqZAp">
          <node concept="3cpWsn" id="i2lF9$R" role="3cpWs9">
            <property role="TrG5h" value="baseFile" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="i2lF9$S" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="3K4zz7" id="i2lFbRC" role="33vP2m">
              <node concept="3clFbC" id="i2lFbmC" role="3K4Cdx">
                <node concept="37vLTw" id="3GM_nagTvDQ" role="3uHU7B">
                  <ref role="3cqZAo" node="i2lEVpk" resolve="filename" />
                </node>
                <node concept="10Nm6u" id="i2lFbJ$" role="3uHU7w" />
              </node>
              <node concept="10Nm6u" id="i2lFc74" role="3K4E3e" />
              <node concept="2ShNRf" id="i2lFdHz" role="3K4GZi">
                <node concept="1pGfFk" id="i2lFfQB" role="2ShVmc">
                  <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                  <node concept="37vLTw" id="3GM_nagTBA2" role="37wK5m">
                    <ref role="3cqZAo" node="i2lEVpk" resolve="filename" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="i2lFjyQ" role="3cqZAp">
          <node concept="2OqwBi" id="i2lFjyR" role="3clFbG">
            <node concept="Xjq3P" id="i2lFjyT" role="2Oq$k0" />
            <node concept="liA8E" id="i2lFjyS" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.setAction(javax.swing.Action):void" resolve="setAction" />
              <node concept="2ShNRf" id="i2lFnq$" role="37wK5m">
                <node concept="YeOm9" id="i2lFoiX" role="2ShVmc">
                  <node concept="1Y3b0j" id="i2lFoiY" role="YeSDq">
                    <ref role="1Y3XeK" to="dxuu:~AbstractAction" resolve="AbstractAction" />
                    <ref role="37wK5l" to="dxuu:~AbstractAction.&lt;init&gt;(java.lang.String)" resolve="AbstractAction" />
                    <node concept="3Tm1VV" id="i2lFoiZ" role="1B3o_S" />
                    <node concept="Xl_RD" id="i2lFpvC" role="37wK5m">
                      <property role="Xl_RC" value=" ... " />
                    </node>
                    <node concept="3clFb_" id="i2lFrs6" role="jymVt">
                      <property role="TrG5h" value="actionPerformed" />
                      <node concept="3clFbS" id="i2lFrs9" role="3clF47">
                        <node concept="3cpWs8" id="i2lFNYz" role="3cqZAp">
                          <node concept="3cpWsn" id="i2lFNY$" role="3cpWs9">
                            <property role="TrG5h" value="root" />
                            <node concept="2YIFZM" id="i2lFNYA" role="33vP2m">
                              <ref role="37wK5l" to="dxuu:~SwingUtilities.getRoot(java.awt.Component):java.awt.Component" resolve="getRoot" />
                              <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
                              <node concept="Xjq3P" id="i2lFNYB" role="37wK5m">
                                <ref role="1HBi2w" node="i2lE2w4" resolve="SelectImageFileButton" />
                              </node>
                            </node>
                            <node concept="3uibUv" id="i2lFNY_" role="1tU5fm">
                              <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="i2lGaaU" role="3cqZAp">
                          <node concept="2ZW3vV" id="i2lGaZu" role="3clFbw">
                            <node concept="37vLTw" id="3GM_nagTxxe" role="2ZW6bz">
                              <ref role="3cqZAo" node="i2lFNY$" resolve="root" />
                            </node>
                            <node concept="3uibUv" id="i2lGbXj" role="2ZW6by">
                              <ref role="3uigEE" to="z60i:~Frame" resolve="Frame" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="i2lGaaV" role="3clFbx">
                            <node concept="3cpWs8" id="i2lGcL4" role="3cqZAp">
                              <node concept="3cpWsn" id="i2lGcL5" role="3cpWs9">
                                <property role="TrG5h" value="frame" />
                                <node concept="3uibUv" id="i2lGcL6" role="1tU5fm">
                                  <ref role="3uigEE" to="z60i:~Frame" resolve="Frame" />
                                </node>
                                <node concept="10QFUN" id="i2lGe6m" role="33vP2m">
                                  <node concept="37vLTw" id="3GM_nagTrVX" role="10QFUP">
                                    <ref role="3cqZAo" node="i2lFNY$" resolve="root" />
                                  </node>
                                  <node concept="3uibUv" id="i2lGe6n" role="10QFUM">
                                    <ref role="3uigEE" to="z60i:~Frame" resolve="Frame" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="i2lGj5N" role="3cqZAp">
                              <node concept="3cpWsn" id="i2lGj5O" role="3cpWs9">
                                <property role="TrG5h" value="chooser" />
                                <node concept="3uibUv" id="i2lGj5P" role="1tU5fm">
                                  <ref role="3uigEE" to="etl3:~TreeFileChooser" resolve="TreeFileChooser" />
                                </node>
                                <node concept="2ShNRf" id="i2lGkRC" role="33vP2m">
                                  <node concept="1pGfFk" id="i2lGlGD" role="2ShVmc">
                                    <ref role="37wK5l" to="etl3:~TreeFileChooser.&lt;init&gt;()" resolve="TreeFileChooser" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="i2lGmmr" role="3cqZAp">
                              <node concept="3clFbS" id="i2lGmms" role="3clFbx">
                                <node concept="3clFbF" id="i2lGqlR" role="3cqZAp">
                                  <node concept="2OqwBi" id="i2lGqz4" role="3clFbG">
                                    <node concept="liA8E" id="i2lGqUO" role="2OqNvi">
                                      <ref role="37wK5l" to="etl3:~TreeFileChooser.setInitialFile(jetbrains.mps.vfs.IFile):void" resolve="setInitialFile" />
                                      <node concept="2OqwBi" id="4Rnppgkjvek" role="37wK5m">
                                        <node concept="liA8E" id="4Rnppgkjvep" role="2OqNvi">
                                          <ref role="37wK5l" to="3ju5:~FileSystem.getFileByPath(java.lang.String):jetbrains.mps.vfs.IFile" resolve="getFileByPath" />
                                          <node concept="2OqwBi" id="4Rnppgkjveq" role="37wK5m">
                                            <node concept="liA8E" id="4Rnppgkjves" role="2OqNvi">
                                              <ref role="37wK5l" to="guwi:~File.getAbsolutePath():java.lang.String" resolve="getAbsolutePath" />
                                            </node>
                                            <node concept="37vLTw" id="3GM_nagTxSp" role="2Oq$k0">
                                              <ref role="3cqZAo" node="i2lF9$R" resolve="baseFile" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="2YIFZM" id="4Rnppgkjvej" role="2Oq$k0">
                                          <ref role="37wK5l" to="3ju5:~FileSystem.getInstance():jetbrains.mps.vfs.FileSystem" resolve="getInstance" />
                                          <ref role="1Pybhc" to="3ju5:~FileSystem" resolve="FileSystem" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="3GM_nagTtjv" role="2Oq$k0">
                                      <ref role="3cqZAo" node="i2lGj5O" resolve="chooser" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="1Wc70l" id="i2lGoa3" role="3clFbw">
                                <node concept="3y3z36" id="i2lGnui" role="3uHU7B">
                                  <node concept="10Nm6u" id="i2lGnGJ" role="3uHU7w" />
                                  <node concept="37vLTw" id="3GM_nagTsHY" role="3uHU7B">
                                    <ref role="3cqZAo" node="i2lF9$R" resolve="baseFile" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="i2lGoKW" role="3uHU7w">
                                  <node concept="37vLTw" id="3GM_nagTve0" role="2Oq$k0">
                                    <ref role="3cqZAo" node="i2lF9$R" resolve="baseFile" />
                                  </node>
                                  <node concept="liA8E" id="i2lGprf" role="2OqNvi">
                                    <ref role="37wK5l" to="guwi:~File.exists():boolean" resolve="exists" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="i2lHqX6" role="3cqZAp">
                              <node concept="3cpWsn" id="i2lHqX7" role="3cpWs9">
                                <property role="TrG5h" value="result" />
                                <node concept="2OqwBi" id="i2lHsDB" role="33vP2m">
                                  <node concept="37vLTw" id="3GM_nagTrHh" role="2Oq$k0">
                                    <ref role="3cqZAo" node="i2lGj5O" resolve="chooser" />
                                  </node>
                                  <node concept="liA8E" id="i2lHtTL" role="2OqNvi">
                                    <ref role="37wK5l" to="etl3:~TreeFileChooser.showDialog(java.awt.Frame):jetbrains.mps.vfs.IFile" resolve="showDialog" />
                                    <node concept="37vLTw" id="3GM_nagTtld" role="37wK5m">
                                      <ref role="3cqZAo" node="i2lGcL5" resolve="frame" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3uibUv" id="i2lHqX8" role="1tU5fm">
                                  <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="i2lHw7u" role="3cqZAp">
                              <node concept="3clFbC" id="i2lHx55" role="3clFbw">
                                <node concept="37vLTw" id="3GM_nagTz8e" role="3uHU7B">
                                  <ref role="3cqZAo" node="i2lHqX7" resolve="result" />
                                </node>
                                <node concept="10Nm6u" id="i2lHxl0" role="3uHU7w" />
                              </node>
                              <node concept="3clFbS" id="i2lHw7v" role="3clFbx">
                                <node concept="3cpWs6" id="i2lHxKo" role="3cqZAp" />
                              </node>
                            </node>
                            <node concept="3cpWs8" id="i2lHAI3" role="3cqZAp">
                              <node concept="3cpWsn" id="i2lHAI4" role="3cpWs9">
                                <property role="TrG5h" value="selectedPath" />
                                <node concept="2OqwBi" id="2gqOIerrz$L" role="33vP2m">
                                  <node concept="liA8E" id="2gqOIerrz$N" role="2OqNvi">
                                    <ref role="37wK5l" to="3ju5:~IFile.getPath():java.lang.String" resolve="getPath" />
                                  </node>
                                  <node concept="37vLTw" id="3GM_nagT_2P" role="2Oq$k0">
                                    <ref role="3cqZAo" node="i2lHqX7" resolve="result" />
                                  </node>
                                </node>
                                <node concept="17QB3L" id="4druX3W0A0R" role="1tU5fm" />
                              </node>
                            </node>
                            <node concept="3cpWs8" id="i2lHMai" role="3cqZAp">
                              <node concept="3cpWsn" id="i2lHMaj" role="3cpWs9">
                                <property role="TrG5h" value="pathToShow" />
                                <node concept="2OqwBi" id="i2lHSyG" role="33vP2m">
                                  <node concept="2YIFZM" id="6tm98vZfMAK" role="2Oq$k0">
                                    <ref role="37wK5l" to="18ew:~MacrosFactory.forModule(jetbrains.mps.project.AbstractModule):jetbrains.mps.util.MacroHelper" resolve="forModule" />
                                    <ref role="1Pybhc" to="18ew:~MacrosFactory" resolve="MacrosFactory" />
                                    <node concept="37vLTw" id="3GM_nagTx77" role="37wK5m">
                                      <ref role="3cqZAo" node="i2lEEoC" resolve="language" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="i2lHTD_" role="2OqNvi">
                                    <ref role="37wK5l" to="18ew:~MacroHelper.shrinkPath(java.lang.String):java.lang.String" resolve="shrinkPath" />
                                    <node concept="37vLTw" id="3GM_nagTsd3" role="37wK5m">
                                      <ref role="3cqZAo" node="i2lHAI4" resolve="selectedPath" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="17QB3L" id="4druX3W0A1b" role="1tU5fm" />
                              </node>
                            </node>
                            <node concept="3clFbF" id="1KUoCiqb7vD" role="3cqZAp">
                              <node concept="2OqwBi" id="1KUoCiqb7vE" role="3clFbG">
                                <node concept="2YIFZM" id="1KUoCiqb7vF" role="2Oq$k0">
                                  <ref role="37wK5l" to="w1kc:~ModelAccess.instance():jetbrains.mps.smodel.ModelAccess" resolve="instance" />
                                  <ref role="1Pybhc" to="w1kc:~ModelAccess" resolve="ModelAccess" />
                                </node>
                                <node concept="liA8E" id="1KUoCiqb7vH" role="2OqNvi">
                                  <ref role="37wK5l" to="w1kc:~ModelCommandExecutor.runWriteActionInCommand(java.lang.Runnable):void" resolve="runWriteActionInCommand" />
                                  <node concept="1bVj0M" id="1KUoCiqb7vI" role="37wK5m">
                                    <node concept="3clFbS" id="1KUoCiqb7vJ" role="1bW5cS">
                                      <node concept="3clFbF" id="1KUoCiqb7vK" role="3cqZAp">
                                        <node concept="2OqwBi" id="1KUoCiqb7vL" role="3clFbG">
                                          <node concept="2OqwBi" id="1KUoCiqb7vM" role="2Oq$k0">
                                            <node concept="3TrcHB" id="1KUoCiqb7vN" role="2OqNvi">
                                              <ref role="3TsBF5" to="tpc2:g_ubRTz" resolve="imageFile" />
                                            </node>
                                            <node concept="2OqwBi" id="1KUoCiqb7vO" role="2Oq$k0">
                                              <node concept="Xjq3P" id="1KUoCiqb7vP" role="2Oq$k0">
                                                <ref role="1HBi2w" node="i2lE2w4" resolve="SelectImageFileButton" />
                                              </node>
                                              <node concept="2OwXpG" id="1KUoCiqb7vQ" role="2OqNvi">
                                                <ref role="2Oxat5" node="i2lEbZl" resolve="myNode" />
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="tyxLq" id="1KUoCiqb7vS" role="2OqNvi">
                                            <node concept="37vLTw" id="3GM_nagT$LK" role="tz02z">
                                              <ref role="3cqZAo" node="i2lHMaj" resolve="pathToShow" />
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
                      <node concept="3Tm1VV" id="i2lFrs8" role="1B3o_S" />
                      <node concept="3cqZAl" id="i2lFrs7" role="3clF45" />
                      <node concept="37vLTG" id="i2lFv3H" role="3clF46">
                        <property role="TrG5h" value="e" />
                        <node concept="3uibUv" id="i2lFv3I" role="1tU5fm">
                          <ref role="3uigEE" to="hyam:~ActionEvent" resolve="ActionEvent" />
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="3tYsUK_t6j5" role="2AJF6D">
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
      <node concept="3Tm1VV" id="i2lE2w8" role="1B3o_S" />
      <node concept="3cqZAl" id="i2lE2w7" role="3clF45" />
      <node concept="37vLTG" id="i2lEidQ" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="i2lEidR" role="1tU5fm">
          <ref role="ehGHo" to="tpc2:g_u4HTJ" resolve="CellModel_Image" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="i2lE2w5" role="1B3o_S" />
    <node concept="3uibUv" id="i2lE9k7" role="1zkMxy">
      <ref role="3uigEE" to="dxuu:~JButton" resolve="JButton" />
    </node>
  </node>
  <node concept="24kQdi" id="yGThnK6rob">
    <property role="3GE5qa" value="CellModel" />
    <ref role="1XX52x" to="tpc2:yGThnK6hTI" resolve="CellModel_ReferencePresentation" />
    <node concept="3EZMnI" id="yGThnK6w3r" role="2wV5jI">
      <node concept="2iRfu4" id="yGThnK6A7R" role="2iSdaV" />
      <node concept="PMmxH" id="yGThnK6$qc" role="3EZMnx">
        <ref role="PMmxG" node="h7TMiuR" resolve="_OpenTag" />
        <node concept="pkWqt" id="yGThnK6$qd" role="pqm2j">
          <node concept="3clFbS" id="yGThnK6$qe" role="2VODD2">
            <node concept="3cpWs6" id="yGThnK6$qf" role="3cqZAp">
              <node concept="3eOSWO" id="yGThnK6$qg" role="3cqZAk">
                <node concept="3cmrfG" id="yGThnK6$qh" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2OqwBi" id="yGThnK6$qi" role="3uHU7B">
                  <node concept="2OqwBi" id="yGThnK6$qj" role="2Oq$k0">
                    <node concept="pncrf" id="yGThnK6$qk" role="2Oq$k0" />
                    <node concept="2qgKlT" id="yGThnK6$ql" role="2OqNvi">
                      <ref role="37wK5l" to="tpcb:hKxXtpm" resolve="getOpeningTag" />
                    </node>
                  </node>
                  <node concept="liA8E" id="yGThnK6$qm" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.length():int" resolve="length" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="2wdLO7KhY6V" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <node concept="Vb9p2" id="2wdLO7KhY6W" role="3F10Kt" />
      </node>
      <node concept="PMmxH" id="yGThnK6$qn" role="3EZMnx">
        <ref role="PMmxG" node="h7TMK$j" resolve="_CloseTag" />
        <node concept="pkWqt" id="yGThnK6$qo" role="pqm2j">
          <node concept="3clFbS" id="yGThnK6$qp" role="2VODD2">
            <node concept="3cpWs6" id="yGThnK6$qq" role="3cqZAp">
              <node concept="3eOSWO" id="yGThnK6$qr" role="3cqZAk">
                <node concept="3cmrfG" id="yGThnK6$qs" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2OqwBi" id="yGThnK6$qt" role="3uHU7B">
                  <node concept="2OqwBi" id="yGThnK6$qu" role="2Oq$k0">
                    <node concept="pncrf" id="yGThnK6$qv" role="2Oq$k0" />
                    <node concept="2qgKlT" id="yGThnK6$qw" role="2OqNvi">
                      <ref role="37wK5l" to="tpcb:hKxXx_K" resolve="getClosingTag" />
                    </node>
                  </node>
                  <node concept="liA8E" id="yGThnK6$qx" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.length():int" resolve="length" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="PMmxH" id="572jgSUuWr_" role="6VMZX">
      <ref role="PMmxG" node="hF4ssnw" resolve="_CellModel_Common" />
    </node>
  </node>
  <node concept="24kQdi" id="6DBCLBe1Gk0">
    <property role="3GE5qa" value="MethodParameters" />
    <ref role="1XX52x" to="tpc2:6DBCLBe1ENe" resolve="ParametersInformationQuery" />
    <node concept="3EZMnI" id="6DBCLBe1JzR" role="2wV5jI">
      <node concept="3F0ifn" id="6DBCLBe1JzU" role="3EZMnx">
        <property role="3F0ifm" value="parameters hint" />
      </node>
      <node concept="3F0A7n" id="47XGxT8xhHw" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="6DBCLBe1JzW" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" to="tpen:hFD5onb" resolve="LeftBrace" />
        <node concept="ljvvj" id="6DBCLBe1JzZ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="6DBCLBe1J$1" role="3EZMnx">
        <node concept="VPM3Z" id="6DBCLBe1J$2" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="75Z472Z0xUs" role="3EZMnx">
          <property role="3F0ifm" value="parameters type =" />
          <node concept="VechU" id="75Z472Z0xU$" role="3F10Kt">
            <property role="Vb096" value="DARK_BLUE" />
          </node>
        </node>
        <node concept="3F1sOY" id="75Z472Z0xUv" role="3EZMnx">
          <ref role="1NtTu8" to="tpc2:75Z472Z0sZ9" />
          <node concept="ljvvj" id="75Z472Z0xUw" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="75Z472Z0xUy" role="3EZMnx">
          <node concept="ljvvj" id="75Z472Z0xUz" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="3DkLjCDOMpE" role="3EZMnx">
          <property role="3F0ifm" value="applicable concept =" />
          <node concept="VechU" id="3DkLjCDOMpF" role="3F10Kt">
            <property role="Vb096" value="DARK_BLUE" />
          </node>
        </node>
        <node concept="1iCGBv" id="3DkLjCDOOus" role="3EZMnx">
          <property role="1$x2rV" value="&lt;any&gt;" />
          <property role="39s7Ar" value="true" />
          <ref role="1NtTu8" to="tpc2:3DkLjCDOMpB" />
          <node concept="1sVBvm" id="3DkLjCDOOut" role="1sWHZn">
            <node concept="3F0A7n" id="3DkLjCDOOuv" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
          <node concept="ljvvj" id="3DkLjCDOOuw" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="3DkLjCDOMpI" role="3EZMnx">
          <node concept="ljvvj" id="3DkLjCDOMpJ" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="47XGxT8wF9V" role="3EZMnx">
          <property role="3F0ifm" value="applicable parameters list" />
          <node concept="VechU" id="47XGxT8xXNG" role="3F10Kt">
            <property role="Vb096" value="DARK_BLUE" />
          </node>
        </node>
        <node concept="3F1sOY" id="6DBCLBe1J$8" role="3EZMnx">
          <ref role="1NtTu8" to="tpc2:6DBCLBe1ENf" />
          <node concept="ljvvj" id="_gTQaradMp" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="47XGxT8zo3K" role="3EZMnx">
          <node concept="ljvvj" id="47XGxT8zo3L" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="47XGxT8wF9Y" role="3EZMnx">
          <property role="3F0ifm" value="parameters presentation" />
          <node concept="VechU" id="47XGxT8xXNI" role="3F10Kt">
            <property role="Vb096" value="DARK_BLUE" />
          </node>
        </node>
        <node concept="3F1sOY" id="_gTQaraitU" role="3EZMnx">
          <ref role="1NtTu8" to="tpc2:_gTQaradMl" />
          <node concept="ljvvj" id="5$n13ICYFtX" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="47XGxT8zo3N" role="3EZMnx">
          <node concept="ljvvj" id="47XGxT8zo3O" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="47XGxT8wFa1" role="3EZMnx">
          <property role="3F0ifm" value="is current" />
          <node concept="VechU" id="47XGxT8xXNJ" role="3F10Kt">
            <property role="Vb096" value="DARK_BLUE" />
          </node>
        </node>
        <node concept="3F1sOY" id="5$n13ICYGHy" role="3EZMnx">
          <ref role="1NtTu8" to="tpc2:5$n13ICYFtU" />
          <node concept="ljvvj" id="1adq1zzRD8L" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="1adq1zzRD8K" role="3EZMnx">
          <node concept="ljvvj" id="1adq1zzRD8M" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="1adq1zzSpEH" role="3EZMnx">
          <ref role="1NtTu8" to="tpc2:1adq1zzSpEz" />
          <node concept="l2Vlx" id="1adq1zzSpEI" role="2czzBx" />
          <node concept="3F0ifn" id="1adq1zzSpEM" role="2czzBI">
            <property role="3F0ifm" value="no methods" />
            <node concept="VechU" id="1adq1zzSpEQ" role="3F10Kt">
              <property role="Vb096" value="gray" />
            </node>
            <node concept="VPxyj" id="1adq1zzSpEN" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
        </node>
        <node concept="l2Vlx" id="6DBCLBe1J$4" role="2iSdaV" />
        <node concept="ljvvj" id="6DBCLBe1J$6" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="6DBCLBe1J$7" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="6DBCLBe1JzY" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" to="tpen:hFD5_7H" resolve="RightBrace" />
      </node>
      <node concept="l2Vlx" id="6DBCLBe1JzT" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6DBCLBe1J$a">
    <property role="3GE5qa" value="Stylesheet" />
    <ref role="1XX52x" to="tpc2:6DBCLBe1wsi" resolve="ParametersInformationStyleClassItem" />
    <node concept="3EZMnI" id="6DBCLBe1J$f" role="2wV5jI">
      <node concept="PMmxH" id="2wdLO7KhY33" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="hoxUe05" resolve="item" />
      </node>
      <node concept="l2Vlx" id="6DBCLBe1J$g" role="2iSdaV" />
      <node concept="3F0ifn" id="6DBCLBe1J$l" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="1iCGBv" id="7G1kLlsveAL" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:7G1kLlsvd2s" />
        <node concept="1sVBvm" id="7G1kLlsveAM" role="1sWHZn">
          <node concept="3F0A7n" id="7G1kLlsveAO" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3V$8ZKEOgVh">
    <property role="3GE5qa" value="MethodParameters" />
    <ref role="1XX52x" to="tpc2:3V$8ZKEOgVe" resolve="AbstractStyledTextOperation" />
    <node concept="3EZMnI" id="3V$8ZKEOiGB" role="2wV5jI">
      <node concept="PMmxH" id="2wdLO7KhY9w" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="3F0ifn" id="3V$8ZKEOiGG" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
      </node>
      <node concept="3F2HdR" id="3V$8ZKEOiGK" role="3EZMnx">
        <property role="1cu_pB" value="2" />
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="tpc2:3V$8ZKEOgVg" />
        <node concept="l2Vlx" id="3V$8ZKEOiGL" role="2czzBx" />
        <node concept="3F0ifn" id="3V$8ZKEQkEd" role="2czzBI">
          <node concept="VPxyj" id="c_wvSSSkdq" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="3V$8ZKEOiGI" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="l2Vlx" id="3V$8ZKEOiGD" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6B0q9qwTb$h">
    <property role="3GE5qa" value="Stylesheet" />
    <ref role="1XX52x" to="tpc2:6B0q9qwT2Dh" resolve="DefaultBaseLine" />
    <node concept="3EZMnI" id="6B0q9qwTb$j" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="3F0ifn" id="6B0q9qwTb$k" role="3EZMnx">
        <property role="3F0ifm" value="default-baseline" />
        <ref role="1k5W1q" node="hoxUe05" resolve="item" />
        <node concept="OXEIz" id="6B0q9qwTb$l" role="P5bDN">
          <node concept="UkePV" id="6B0q9qwTb$m" role="OY2wv">
            <ref role="Ul1FP" to="tpc2:hgV6hR6" resolve="StyleClassItem" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="6B0q9qwTb$n" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="6B0q9qwTdAr" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:6B0q9qwTb$d" resolve="baseline" />
      </node>
      <node concept="2iRfu4" id="6B0q9qwTb$p" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7agyGr7xxzb">
    <property role="3GE5qa" value="Stylesheet" />
    <ref role="1XX52x" to="tpc2:7agyGr7xxz8" resolve="ScriptKindClassItem" />
    <node concept="3EZMnI" id="7agyGr7xxzd" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="3F0ifn" id="7agyGr7xxze" role="3EZMnx">
        <property role="3F0ifm" value="script-kind" />
        <ref role="1k5W1q" node="hoxUe05" resolve="item" />
        <node concept="OXEIz" id="7agyGr7xxzf" role="P5bDN">
          <node concept="UkePV" id="7agyGr7xxzg" role="OY2wv">
            <ref role="Ul1FP" to="tpc2:hgV6hR6" resolve="StyleClassItem" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="7agyGr7xxzh" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="7agyGr7xz7L" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:7agyGr7xxza" resolve="script" />
      </node>
      <node concept="2iRfu4" id="7agyGr7xxzj" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5UApK7d2wMc">
    <property role="3GE5qa" value="Stylesheet" />
    <ref role="1XX52x" to="tpc2:5UApK7d2wM6" resolve="TableComponentStyleClassItem" />
    <node concept="3EZMnI" id="5UApK7d2wMe" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="3F0ifn" id="5UApK7d2wMf" role="3EZMnx">
        <property role="3F0ifm" value="table-component" />
        <ref role="1k5W1q" node="hoxUe05" resolve="item" />
        <node concept="OXEIz" id="5UApK7d2wMg" role="P5bDN">
          <node concept="UkePV" id="5UApK7d2wMh" role="OY2wv">
            <ref role="Ul1FP" to="tpc2:hgV6hR6" resolve="StyleClassItem" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="5UApK7d2wMi" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="5UApK7d2xXa" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:5UApK7d2wMb" resolve="tableComponent" />
      </node>
      <node concept="2iRfu4" id="5UApK7d2wMk" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7dwhomQPHnc">
    <property role="3GE5qa" value="CellModel" />
    <ref role="1XX52x" to="tpc2:7dwhomQPs_N" resolve="CellModel_Empty" />
    <node concept="3EZMnI" id="7dwhomQPJwP" role="6VMZX">
      <property role="3EZMnw" value="true" />
      <node concept="PMmxH" id="7dwhomQPJwQ" role="3EZMnx">
        <ref role="PMmxG" node="hF4ssnw" resolve="_CellModel_Common" />
      </node>
      <node concept="VPM3Z" id="7dwhomQPJxg" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="7dwhomQPJxh" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="6QkX39$SEO2" role="2wV5jI">
      <node concept="PMmxH" id="2wdLO7KhY9Y" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="l2Vlx" id="6QkX39$SEO3" role="2iSdaV" />
      <node concept="VPXOz" id="6QkX39$SEO5" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6_IODUXv1gN">
    <property role="3GE5qa" value="Stylesheet" />
    <ref role="1XX52x" to="tpc2:6_IODUXv1gD" resolve="NavigatableNodeStyleClassItem" />
    <node concept="3EZMnI" id="6_IODUXv2hY" role="2wV5jI">
      <node concept="PMmxH" id="2wdLO7KhY63" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="hoxUe05" resolve="item" />
      </node>
      <node concept="l2Vlx" id="6_IODUXv2hZ" role="2iSdaV" />
      <node concept="3F0ifn" id="6_IODUXv2i3" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F1sOY" id="6_IODUXv2i4" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:6_IODUXv1gE" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3daRSMLnYD5">
    <property role="3GE5qa" value="CellModel" />
    <ref role="1XX52x" to="tpc2:3daRSMLnNZu" resolve="CellModel_URL" />
    <node concept="3EZMnI" id="3daRSMLokWb" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <ref role="1k5W1q" node="i0pPgF8" resolve="rootCellModelStyle" />
      <node concept="PMmxH" id="3daRSMLpCyv" role="3EZMnx">
        <ref role="PMmxG" node="h7TMiuR" resolve="_OpenTag" />
        <node concept="VPXOz" id="3daRSMLpCyw" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3daRSMLoEQ1" role="3EZMnx">
        <property role="3F0ifm" value="URL" />
        <node concept="VechU" id="3daRSMLoEQ2" role="3F10Kt">
          <property role="Vb096" value="blue" />
        </node>
      </node>
      <node concept="1iCGBv" id="3daRSMLokWe" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no property&gt;" />
        <ref role="1NtTu8" to="tpc2:3daRSMLnNZv" />
        <ref role="1k5W1q" node="hX1xO3O" resolve="bordered" />
        <node concept="1sVBvm" id="3daRSMLokWf" role="1sWHZn">
          <node concept="3F0A7n" id="3daRSMLokWg" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <property role="1$x2rV" value="&lt;no name&gt;" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <node concept="VPXOz" id="3daRSMLokWh" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
        </node>
        <node concept="30gYXW" id="3daRSMLokWi" role="3F10Kt">
          <node concept="3ZlJ5R" id="3daRSMLokWj" role="VblUZ">
            <node concept="3clFbS" id="3daRSMLokWk" role="2VODD2">
              <node concept="3clFbF" id="3daRSMLokWl" role="3cqZAp">
                <node concept="2OqwBi" id="3daRSMLokWm" role="3clFbG">
                  <node concept="pncrf" id="3daRSMLokWn" role="2Oq$k0" />
                  <node concept="2qgKlT" id="3daRSMLokWo" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:hL7BhMP" resolve="getTextBackgroundColor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="Veino" id="3daRSMLokWp" role="3F10Kt">
          <node concept="3ZlJ5R" id="3daRSMLokWq" role="VblUZ">
            <node concept="3clFbS" id="3daRSMLokWr" role="2VODD2">
              <node concept="3clFbF" id="3daRSMLokWs" role="3cqZAp">
                <node concept="2OqwBi" id="3daRSMLokWt" role="3clFbG">
                  <node concept="pncrf" id="3daRSMLokWu" role="2Oq$k0" />
                  <node concept="2qgKlT" id="3daRSMLokWv" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:hL7rNfN" resolve="getBackgroundColor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VechU" id="3daRSMLokWw" role="3F10Kt">
          <node concept="3ZlJ5R" id="3daRSMLokWx" role="VblUZ">
            <node concept="3clFbS" id="3daRSMLokWy" role="2VODD2">
              <node concept="3clFbF" id="3daRSMLokWz" role="3cqZAp">
                <node concept="2OqwBi" id="3daRSMLokW$" role="3clFbG">
                  <node concept="pncrf" id="3daRSMLokW_" role="2Oq$k0" />
                  <node concept="2qgKlT" id="3daRSMLokWA" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:hL6TA5F" resolve="getForegroundColor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="Vb9p2" id="3daRSMLokWB" role="3F10Kt">
          <property role="Vbekb" value="QUERY" />
          <node concept="17KAyr" id="3daRSMLokWC" role="17MNgL">
            <node concept="3clFbS" id="3daRSMLokWD" role="2VODD2">
              <node concept="3clFbF" id="3daRSMLokWE" role="3cqZAp">
                <node concept="2OqwBi" id="3daRSMLokWF" role="3clFbG">
                  <node concept="pncrf" id="3daRSMLokWG" role="2Oq$k0" />
                  <node concept="2qgKlT" id="3daRSMLokWH" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:hLcv3Z9" resolve="getFontStyle" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VQ3r3" id="3daRSMLokWI" role="3F10Kt">
          <node concept="1d0yFN" id="3daRSMLokWJ" role="1mkY_M">
            <node concept="3clFbS" id="3daRSMLokWK" role="2VODD2">
              <node concept="3clFbF" id="3daRSMLokWL" role="3cqZAp">
                <node concept="2OqwBi" id="3daRSMLokWM" role="3clFbG">
                  <node concept="pncrf" id="3daRSMLokWN" role="2Oq$k0" />
                  <node concept="2qgKlT" id="3daRSMLokWO" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:hLmqR8u" resolve="isUnderlined" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3nxI2P" id="3daRSMLokWP" role="3F10Kt">
          <node concept="3nzxsE" id="3daRSMLokWQ" role="3n$kyP">
            <node concept="3clFbS" id="3daRSMLokWR" role="2VODD2">
              <node concept="3clFbF" id="3daRSMLokWS" role="3cqZAp">
                <node concept="2OqwBi" id="3daRSMLokWT" role="3clFbG">
                  <node concept="pncrf" id="3daRSMLokWU" role="2Oq$k0" />
                  <node concept="2qgKlT" id="3daRSMLokWV" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:hNnL8J1" resolve="isStrikeOut" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="3daRSMLokWW" role="3EZMnx">
        <ref role="PMmxG" node="h7TMK$j" resolve="_CloseTag" />
        <node concept="VPXOz" id="3daRSMLokWX" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2iRfu4" id="3daRSMLokWY" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="3daRSMLoEQ3" role="6VMZX">
      <property role="3EZMnw" value="true" />
      <node concept="PMmxH" id="3daRSMLoEQ4" role="3EZMnx">
        <ref role="PMmxG" node="hF4ssnw" resolve="_CellModel_Common" />
      </node>
      <node concept="3F0ifn" id="3daRSMLoEQ5" role="3EZMnx">
        <node concept="VPM3Z" id="3daRSMLoEQ6" role="3F10Kt" />
        <node concept="Vb9p2" id="3daRSMLoEQ7" role="3F10Kt">
          <property role="Vbekb" value="BOLD" />
        </node>
      </node>
      <node concept="3F0ifn" id="3daRSMLoEQ8" role="3EZMnx">
        <property role="3F0ifm" value="URL cell:" />
        <ref role="1k5W1q" node="hF4yUZ8" resolve="header" />
      </node>
      <node concept="3EZMnI" id="3daRSMLoEQ9" role="3EZMnx">
        <property role="3EZMnw" value="true" />
        <property role="3EZMnz" value="true" />
        <node concept="3EZMnI" id="3daRSMLoEQa" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="3daRSMLoEQb" role="3EZMnx">
            <property role="3F0ifm" value="property" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="1iCGBv" id="3daRSMLoEQc" role="3EZMnx">
            <property role="1$x2rV" value="&lt;no property&gt;" />
            <ref role="1NtTu8" to="tpc2:3daRSMLnNZv" />
            <node concept="1sVBvm" id="3daRSMLoEQd" role="1sWHZn">
              <node concept="3F0A7n" id="3daRSMLoEQe" role="2wV5jI">
                <property role="1Intyy" value="true" />
                <property role="1$x2rV" value="&lt;no name&gt;" />
                <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
                <node concept="VPXOz" id="3daRSMLoEQf" role="3F10Kt">
                  <property role="VOm3f" value="true" />
                </node>
              </node>
            </node>
            <node concept="VPXOz" id="3daRSMLoEQg" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="VPM3Z" id="3daRSMLoEQh" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="3daRSMLoEQi" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2iRfu4" id="3daRSMLoEQj" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="3daRSMLoEQk" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="3daRSMLoEQl" role="3EZMnx">
            <property role="3F0ifm" value="text*" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F0A7n" id="3daRSMLoEQm" role="3EZMnx">
            <property role="1O74Pk" value="true" />
            <property role="1$x2rV" value="&lt;none&gt;" />
            <ref role="1NtTu8" to="tpc2:g_$x2vM" resolve="noTargetText" />
            <node concept="VPXOz" id="3daRSMLoEQn" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="30gYXW" id="3daRSMLoEQo" role="3F10Kt">
              <property role="Vb096" value="yellow" />
            </node>
            <node concept="30h1P$" id="3daRSMLoEQp" role="3F10Kt">
              <property role="Vb096" value="cyan" />
            </node>
          </node>
          <node concept="VPM3Z" id="3daRSMLoEQq" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="3daRSMLoEQr" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pkWqt" id="3daRSMLoEQs" role="pqm2j">
            <node concept="3clFbS" id="3daRSMLoEQt" role="2VODD2">
              <node concept="3clFbF" id="3daRSMLoEQu" role="3cqZAp">
                <node concept="3fqX7Q" id="3daRSMLoEQv" role="3clFbG">
                  <node concept="2OqwBi" id="3daRSMLoEQw" role="3fr31v">
                    <node concept="pncrf" id="3daRSMLoEQx" role="2Oq$k0" />
                    <node concept="3TrcHB" id="3daRSMLoEQy" role="2OqNvi">
                      <ref role="3TsBF5" to="tpc2:hF9s7y1" resolve="emptyNoTargetText" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2iRfu4" id="3daRSMLoEQz" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="3daRSMLoEQ$" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="3daRSMLoEQ_" role="3EZMnx">
            <property role="3F0ifm" value="empty text*" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F0A7n" id="3daRSMLoEQA" role="3EZMnx">
            <property role="1O74Pk" value="true" />
            <property role="1$x2rV" value="&lt;none&gt;" />
            <ref role="1NtTu8" to="tpc2:hF9s7y1" resolve="emptyNoTargetText" />
            <node concept="VPXOz" id="3daRSMLoEQB" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="30gYXW" id="3daRSMLoEQC" role="3F10Kt">
              <property role="Vb096" value="yellow" />
            </node>
            <node concept="30h1P$" id="3daRSMLoEQD" role="3F10Kt">
              <property role="Vb096" value="cyan" />
            </node>
          </node>
          <node concept="VPM3Z" id="3daRSMLoEQE" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="3daRSMLoEQF" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pkWqt" id="3daRSMLoEQG" role="pqm2j">
            <node concept="3clFbS" id="3daRSMLoEQH" role="2VODD2">
              <node concept="3clFbF" id="3daRSMLoEQI" role="3cqZAp">
                <node concept="3clFbC" id="3daRSMLoEQJ" role="3clFbG">
                  <node concept="10Nm6u" id="3daRSMLoEQK" role="3uHU7w" />
                  <node concept="2OqwBi" id="3daRSMLoEQL" role="3uHU7B">
                    <node concept="pncrf" id="3daRSMLoEQM" role="2Oq$k0" />
                    <node concept="3TrcHB" id="3daRSMLoEQN" role="2OqNvi">
                      <ref role="3TsBF5" to="tpc2:g_$x2vM" resolve="noTargetText" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2iRfu4" id="3daRSMLoEQO" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="3daRSMLoEQP" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="3daRSMLoEQQ" role="3EZMnx">
            <property role="3F0ifm" value="read only" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F0A7n" id="3daRSMLoEQR" role="3EZMnx">
            <ref role="1NtTu8" to="tpc2:g_IntAF" resolve="readOnly" />
            <node concept="VPXOz" id="3daRSMLoEQS" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="VPM3Z" id="3daRSMLoEQT" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="3daRSMLoEQU" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2iRfu4" id="3daRSMLoEQV" role="2iSdaV" />
        </node>
        <node concept="VPXOz" id="3daRSMLoERb" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="2EHx9g" id="3daRSMLoERc" role="2iSdaV" />
      </node>
      <node concept="VPM3Z" id="3daRSMLoERd" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRkQZ" id="3daRSMLoERe" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="38iZCbbBsTa">
    <ref role="1XX52x" to="tpc2:38iZCbb_vZB" resolve="RightTransformAnchorTagWrapper" />
    <node concept="3F0A7n" id="38iZCbbBuLn" role="2wV5jI">
      <ref role="1NtTu8" to="tpc2:38iZCbb_vZE" resolve="tag" />
    </node>
  </node>
  <node concept="PKFIW" id="3h9t8Jnexr_">
    <property role="TrG5h" value="Common_Component" />
    <property role="3GE5qa" value="CellModel" />
    <ref role="1XX52x" to="tpc2:fBEYTCT" resolve="EditorCellModel" />
    <node concept="3EZMnI" id="3h9t8JnexrB" role="2wV5jI">
      <node concept="3F0ifn" id="3h9t8JnexrE" role="3EZMnx">
        <property role="3F0ifm" value="Common:" />
        <ref role="1k5W1q" node="hF4yUZ8" resolve="header" />
      </node>
      <node concept="3EZMnI" id="3h9t8JnexrF" role="3EZMnx">
        <property role="3EZMnw" value="true" />
        <property role="3EZMnz" value="true" />
        <node concept="3EZMnI" id="3K0abI4qFqn" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="3K0abI4qFqo" role="3EZMnx">
            <property role="3F0ifm" value="cell id" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F1sOY" id="3K0abI4qKmh" role="3EZMnx">
            <property role="1$x2rV" value="&lt;default&gt;" />
            <ref role="1NtTu8" to="tpc2:3K0abI4qJr6" />
            <node concept="VPXOz" id="3K0abI4qLEh" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="VPXOz" id="3K0abI4qFqr" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2iRfu4" id="3K0abI4qFqs" role="2iSdaV" />
          <node concept="pkWqt" id="4cR5jP$IY3X" role="pqm2j">
            <node concept="3clFbS" id="4cR5jP$IY3Y" role="2VODD2">
              <node concept="3clFbF" id="4cR5jP$Ji_p" role="3cqZAp">
                <node concept="3fqX7Q" id="4cR5jP$Jm7U" role="3clFbG">
                  <node concept="2OqwBi" id="4cR5jP$Jm7W" role="3fr31v">
                    <node concept="pncrf" id="4cR5jP$Jm7X" role="2Oq$k0" />
                    <node concept="2qgKlT" id="4cR5jP$Jm7Y" role="2OqNvi">
                      <ref role="37wK5l" to="tpcb:hTuDsSD" resolve="isCellIdInitialized" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3EZMnI" id="3h9t8JnexrG" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="3h9t8JnexrH" role="3EZMnx">
            <property role="3F0ifm" value="action map" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="1iCGBv" id="3h9t8JnexrI" role="3EZMnx">
            <property role="1$x2rV" value="&lt;default&gt;" />
            <ref role="1NtTu8" to="tpc2:g_ERwze" />
            <node concept="1sVBvm" id="3h9t8JnexrJ" role="1sWHZn">
              <node concept="3F0A7n" id="3h9t8JnexrK" role="2wV5jI">
                <property role="1Intyy" value="true" />
                <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
                <node concept="VPXOz" id="3h9t8JnexrL" role="3F10Kt">
                  <property role="VOm3f" value="true" />
                </node>
              </node>
            </node>
            <node concept="VPXOz" id="3h9t8JnexrM" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="VPM3Z" id="3h9t8JnexrN" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="3h9t8JnexrO" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2iRfu4" id="3h9t8JnexrP" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="3h9t8JnexrQ" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="3h9t8JnexrR" role="3EZMnx">
            <property role="3F0ifm" value="keymap" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="1iCGBv" id="3h9t8JnexrS" role="3EZMnx">
            <property role="1$x2rV" value="&lt;default&gt;" />
            <ref role="1NtTu8" to="tpc2:fJ4QXdL" />
            <node concept="1sVBvm" id="3h9t8JnexrT" role="1sWHZn">
              <node concept="3F0A7n" id="3h9t8JnexrU" role="2wV5jI">
                <property role="1Intyy" value="true" />
                <property role="1$x2rV" value="&lt;no name&gt;" />
                <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
                <node concept="VPXOz" id="3h9t8JnexrV" role="3F10Kt">
                  <property role="VOm3f" value="true" />
                </node>
              </node>
            </node>
            <node concept="VPXOz" id="3h9t8JnexrW" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="VPM3Z" id="3h9t8JnexrX" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="3h9t8JnexrY" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2iRfu4" id="3h9t8JnexrZ" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="3h9t8Jnexs0" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="3h9t8Jnexs1" role="3EZMnx">
            <property role="3F0ifm" value="menu" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F1sOY" id="3h9t8Jnexs2" role="3EZMnx">
            <property role="1$x2rV" value="&lt;none&gt;" />
            <ref role="1NtTu8" to="tpc2:gWP5bHW" />
            <node concept="VPXOz" id="3h9t8Jnexs3" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="VPM3Z" id="3h9t8Jnexs4" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="3h9t8Jnexs5" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="3h9t8Jnexs6" role="3EZMnx">
          <node concept="3F0ifn" id="3h9t8Jnexs7" role="3EZMnx">
            <property role="3F0ifm" value="attracts focus" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F0A7n" id="3h9t8Jnexs8" role="3EZMnx">
            <ref role="1NtTu8" to="tpc2:gtcu_tw" resolve="attractsFocus" />
            <node concept="VPXOz" id="3h9t8Jnexs9" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="VPM3Z" id="3h9t8Jnexsa" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPXOz" id="3h9t8Jnexsb" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2iRfu4" id="3h9t8Jnexsc" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="3h9t8Jnexsd" role="3EZMnx">
          <node concept="3F0ifn" id="3h9t8Jnexse" role="3EZMnx">
            <property role="3F0ifm" value="focus policy condition" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F1sOY" id="3h9t8Jnexsf" role="3EZMnx">
            <ref role="1NtTu8" to="tpc2:hscStWE" />
          </node>
          <node concept="pkWqt" id="3h9t8Jnexsg" role="pqm2j">
            <node concept="3clFbS" id="3h9t8Jnexsh" role="2VODD2">
              <node concept="3clFbF" id="3h9t8Jnexsi" role="3cqZAp">
                <node concept="3fqX7Q" id="3h9t8Jnexsj" role="3clFbG">
                  <node concept="2OqwBi" id="3h9t8Jnexsk" role="3fr31v">
                    <node concept="2OqwBi" id="3h9t8Jnexsl" role="2Oq$k0">
                      <node concept="pncrf" id="3h9t8Jnexsm" role="2Oq$k0" />
                      <node concept="3TrcHB" id="3h9t8Jnexsn" role="2OqNvi">
                        <ref role="3TsBF5" to="tpc2:gtcu_tw" resolve="attractsFocus" />
                      </node>
                    </node>
                    <node concept="3t7uKx" id="3h9t8Jnexso" role="2OqNvi">
                      <node concept="uoxfO" id="3h9t8Jnexsp" role="3t7uKA">
                        <ref role="uo_Cq" to="tpc2:gtgusxG" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="VPM3Z" id="3h9t8Jnexsq" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="3h9t8Jnexsr" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="3h9t8Jnexss" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="3h9t8Jnexst" role="3EZMnx">
            <property role="3F0ifm" value="show if" />
            <ref role="1k5W1q" node="hF4H1c8" resolve="property" />
          </node>
          <node concept="3F1sOY" id="3h9t8Jnexsu" role="3EZMnx">
            <property role="1$x2rV" value="&lt;no condition&gt;" />
            <ref role="1NtTu8" to="tpc2:gCpqm6p" />
          </node>
          <node concept="VPXOz" id="3h9t8Jnexsv" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2iRfu4" id="3h9t8Jnexsw" role="2iSdaV" />
        </node>
        <node concept="2EHx9g" id="3h9t8Jnexsx" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="3h9t8JnexrD" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="6GJhM1dCSH6">
    <property role="TrG5h" value="CellModelCollection_FoldedCellComponent" />
    <property role="3GE5qa" value="CellModel" />
    <ref role="1XX52x" to="tpc2:fBEZMkn" resolve="CellModel_Collection" />
    <node concept="3EZMnI" id="6GJhM1dCSH8" role="2wV5jI">
      <ref role="1k5W1q" node="hX5ZSzR" resolve="borderedCollection" />
      <node concept="3F0ifn" id="6GJhM1dCSH9" role="3EZMnx">
        <property role="3F0ifm" value="/folded cell:" />
        <ref role="1k5W1q" node="hX1xO3O" resolve="bordered" />
      </node>
      <node concept="2iRfu4" id="6GJhM1dCSHa" role="2iSdaV" />
      <node concept="3F1sOY" id="6GJhM1dCSHb" role="3EZMnx">
        <property role="1$x2rV" value="&lt;default&gt;" />
        <ref role="1NtTu8" to="tpc2:6GJhM1dAsnP" />
        <ref role="1k5W1q" node="hX1xO3O" resolve="bordered" />
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="544mDfev1E1">
    <property role="TrG5h" value="CellModelListWithRole_FoldedCellComponent" />
    <property role="3GE5qa" value="CellModel" />
    <ref role="1XX52x" to="tpc2:gAczfia" resolve="CellModel_ListWithRole" />
    <node concept="3EZMnI" id="544mDfev1E3" role="2wV5jI">
      <ref role="1k5W1q" node="hX5ZSzR" resolve="borderedCollection" />
      <node concept="3F0ifn" id="544mDfev1E4" role="3EZMnx">
        <property role="3F0ifm" value="/folded cell:" />
        <ref role="1k5W1q" node="hX1xO3O" resolve="bordered" />
      </node>
      <node concept="3F1sOY" id="544mDfev1E5" role="3EZMnx">
        <property role="1$x2rV" value="&lt;default&gt;" />
        <ref role="1NtTu8" to="tpc2:5fDszETGVtQ" />
        <ref role="1k5W1q" node="hX1xO3O" resolve="bordered" />
      </node>
      <node concept="2iRfu4" id="544mDfev1E6" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6CJUZdX4TKc">
    <property role="3GE5qa" value="Stylesheet.Layout" />
    <ref role="1XX52x" to="tpc2:6CJUZdX4Rce" resolve="MaxWidthStyleClassItem" />
    <node concept="3EZMnI" id="6CJUZdX4TKf" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="PMmxH" id="2wdLO7KhY6I" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="hoxUe05" resolve="item" />
        <node concept="OXEIz" id="2wdLO7KhY6J" role="P5bDN">
          <node concept="UkePV" id="2wdLO7KhY6K" role="OY2wv">
            <ref role="Ul1FP" to="tpc2:hgV6hR6" resolve="StyleClassItem" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="6CJUZdX4TKj" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="6CJUZdX4TKk" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:6CJUZdX4Rcf" resolve="value" />
        <ref role="1k5W1q" to="tpen:hshT4rC" resolve="NumericLiteral" />
        <node concept="pkWqt" id="6CJUZdX4TKl" role="pqm2j">
          <node concept="3clFbS" id="6CJUZdX4TKm" role="2VODD2">
            <node concept="3clFbF" id="6CJUZdX4TKn" role="3cqZAp">
              <node concept="3clFbC" id="6CJUZdX4TKo" role="3clFbG">
                <node concept="10Nm6u" id="6CJUZdX4TKp" role="3uHU7w" />
                <node concept="2OqwBi" id="6CJUZdX4TKq" role="3uHU7B">
                  <node concept="pncrf" id="6CJUZdX4TKr" role="2Oq$k0" />
                  <node concept="3TrEf2" id="6CJUZdX4TKN" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpc2:6CJUZdX4Rcg" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="OXEIz" id="6CJUZdX4TKt" role="P5bDN">
          <node concept="1oHujT" id="6CJUZdX4TKu" role="OY2wv">
            <property role="1oHujS" value="query" />
            <node concept="1oIgkG" id="6CJUZdX4TKv" role="1oHujR">
              <node concept="3clFbS" id="6CJUZdX4TKw" role="2VODD2">
                <node concept="3clFbF" id="6CJUZdX4TKx" role="3cqZAp">
                  <node concept="2OqwBi" id="6CJUZdX4TKy" role="3clFbG">
                    <node concept="2OqwBi" id="6CJUZdX4TKz" role="2Oq$k0">
                      <node concept="3GMtW1" id="6CJUZdX4TK$" role="2Oq$k0" />
                      <node concept="3TrEf2" id="6CJUZdX4TKP" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpc2:6CJUZdX4Rcg" />
                      </node>
                    </node>
                    <node concept="2DeJnY" id="6CJUZdX4TKA" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="6CJUZdX4TKB" role="3EZMnx">
        <property role="1cu_pB" value="3" />
        <ref role="1NtTu8" to="tpc2:6CJUZdX4Rcg" />
        <node concept="pkWqt" id="6CJUZdX4TKC" role="pqm2j">
          <node concept="3clFbS" id="6CJUZdX4TKD" role="2VODD2">
            <node concept="3clFbF" id="6CJUZdX4TKE" role="3cqZAp">
              <node concept="2OqwBi" id="6CJUZdX4TKF" role="3clFbG">
                <node concept="2OqwBi" id="6CJUZdX4TKG" role="2Oq$k0">
                  <node concept="pncrf" id="6CJUZdX4TKH" role="2Oq$k0" />
                  <node concept="3TrEf2" id="6CJUZdX4TKS" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpc2:6CJUZdX4Rcg" />
                  </node>
                </node>
                <node concept="3x8VRR" id="6CJUZdX4TKJ" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="6CJUZdX4TKK" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3AsHGqaEqV2">
    <property role="3GE5qa" value="Stylesheet" />
    <ref role="1XX52x" to="tpc2:3AsHGqaEqUE" resolve="StyleKey" />
    <node concept="3F0A7n" id="3AsHGqbeRYf" role="2wV5jI">
      <ref role="1NtTu8" to="tpee:f$Xl_Oh" resolve="value" />
      <ref role="1k5W1q" to="tpen:hshQ_OE" resolve="Field" />
    </node>
  </node>
  <node concept="24kQdi" id="3AsHGqaEOid">
    <property role="3GE5qa" value="Stylesheet" />
    <ref role="1XX52x" to="tpc2:3AsHGqaEqW2" resolve="StyleKeyPack" />
    <node concept="3EZMnI" id="3AsHGqaEOiq" role="2wV5jI">
      <property role="S$Qs1" value="false" />
      <node concept="3EZMnI" id="3AsHGqaEOi_" role="3EZMnx">
        <node concept="3F0ifn" id="3AsHGqaEOiK" role="3EZMnx">
          <property role="3F0ifm" value="stylekeypack" />
          <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        </node>
        <node concept="3F0A7n" id="3AsHGqaEOiS" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="VPM3Z" id="3AsHGqaEOiB" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="3AsHGqaEOiE" role="2iSdaV" />
        <node concept="lj46D" id="3AsHGqaEOj8" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="3AsHGqaEOjr" role="3EZMnx">
        <property role="S$Qs1" value="true" />
        <node concept="VPM3Z" id="3AsHGqaEOjt" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="lj46D" id="3AsHGqaEOjH" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="3AsHGqaRMfi" role="3EZMnx">
          <property role="3F0ifm" value="{" />
          <ref role="1k5W1q" to="tpen:hFD5onb" resolve="LeftBrace" />
        </node>
        <node concept="3F2HdR" id="3AsHGqaEOjX" role="3EZMnx">
          <ref role="1NtTu8" to="tpc2:3AsHGqaEOhK" />
          <node concept="VPM3Z" id="3AsHGqaEOk1" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="lj46D" id="3AsHGqaV1An" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pj6Ft" id="3AsHGqaV1Ao" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="l2Vlx" id="3AsHGqaV1Ap" role="2czzBx" />
          <node concept="pVoyu" id="3AsHGqaV1AF" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="3AsHGqaV1Dx" role="3EZMnx">
          <property role="3F0ifm" value="}" />
          <ref role="1k5W1q" to="tpen:hFD5_7H" resolve="RightBrace" />
        </node>
        <node concept="l2Vlx" id="3AsHGqaV1Aq" role="2iSdaV" />
        <node concept="3F0ifn" id="3AsHGqb4zYf" role="AHCbl">
          <property role="3F0ifm" value="{...}" />
          <ref role="1k5W1q" to="tpen:4vxLnq9T43C" resolve="FoldedCell" />
        </node>
      </node>
      <node concept="l2Vlx" id="3AsHGqaEOit" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3AsHGqcs9oZ">
    <property role="3GE5qa" value="Stylesheet" />
    <ref role="1XX52x" to="tpc2:3AsHGqcs7JR" resolve="PreDefinedStyleClassItem" />
    <node concept="3EZMnI" id="3AsHGqcsHxj" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="PMmxH" id="3AsHGqcsHxk" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="hoxUe05" resolve="item" />
        <node concept="OXEIz" id="3AsHGqcsHxl" role="P5bDN">
          <node concept="UkePV" id="3AsHGqcsHxm" role="OY2wv">
            <ref role="Ul1FP" to="tpc2:hgV6hR6" resolve="StyleClassItem" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="3AsHGqcsHxn" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="1iCGBv" id="3AsHGqct$2i" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:3AsHGqct7Fj" />
        <node concept="1sVBvm" id="3AsHGqct$2j" role="1sWHZn">
          <node concept="3F0A7n" id="3AsHGqct$2s" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpee:f$Xl_Oh" resolve="value" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="7$EBLgK4Sox" role="3EZMnx">
        <property role="3F0ifm" value="apply condition:" />
      </node>
      <node concept="3F1sOY" id="7$EBLgJN4kY" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <property role="1$x2rV" value="always" />
        <property role="39s7Ar" value="true" />
        <ref role="1NtTu8" to="tpc2:7$EBLgJMZo3" />
      </node>
      <node concept="2iRfu4" id="3AsHGqcsHz0" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="794AQ2t3Rsd">
    <property role="3GE5qa" value="CellMenu" />
    <ref role="1XX52x" to="tpc2:794AQ2t3BuV" resolve="CellMenuPart_ApplySideTransforms" />
    <node concept="3EZMnI" id="794AQ2t3Ssl" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="794AQ2t3Ssm" role="3EZMnx">
        <node concept="3F0ifn" id="794AQ2t3Ssn" role="3EZMnx">
          <property role="3F0ifm" value="apply side transforms" />
          <node concept="VechU" id="4N4i$z69S7T" role="3F10Kt">
            <property role="Vb096" value="DARK_BLUE" />
          </node>
          <node concept="30gYXW" id="4N4i$z69S7U" role="3F10Kt">
            <property role="Vb096" value="lightGray" />
          </node>
        </node>
        <node concept="VPM3Z" id="794AQ2t3Ssq" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="794AQ2t3Ssr" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="4N4i$z6a2WK" role="3EZMnx">
        <node concept="3F0ifn" id="4N4i$z6a3rn" role="3EZMnx">
          <property role="3F0ifm" value="  " />
        </node>
        <node concept="3F0ifn" id="4N4i$z6a3r_" role="3EZMnx">
          <property role="3F0ifm" value="side:" />
        </node>
        <node concept="3F0A7n" id="794AQ2t3UtQ" role="3EZMnx">
          <ref role="1NtTu8" to="tpc2:794AQ2t3LhP" resolve="side" />
        </node>
        <node concept="VPM3Z" id="4N4i$z6a2WM" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="4N4i$z6a2WP" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="KkUvIDjcYF" role="3EZMnx">
        <node concept="3F0ifn" id="KkUvIDjcYG" role="3EZMnx">
          <property role="3F0ifm" value="  " />
        </node>
        <node concept="3F0ifn" id="KkUvIDjcYH" role="3EZMnx">
          <property role="3F0ifm" value="tag:" />
        </node>
        <node concept="3F0A7n" id="KkUvIDjcYI" role="3EZMnx">
          <ref role="1NtTu8" to="tpc2:KkUvIDjbq2" resolve="tag" />
        </node>
        <node concept="VPM3Z" id="KkUvIDjcYJ" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="KkUvIDjcYK" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="794AQ2t3SsD" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2gbCHSchDXk">
    <property role="3GE5qa" value="EditorContextHints" />
    <ref role="1XX52x" to="tpc2:5UHFGFk4ozs" resolve="ConceptEditorHintDeclarationReference" />
    <node concept="3EZMnI" id="2gbCHSchJUQ" role="2wV5jI">
      <node concept="1iCGBv" id="59ZEGVQrrJT" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:59ZEGVQrrtd" />
        <node concept="1sVBvm" id="59ZEGVQrrJU" role="1sWHZn">
          <node concept="3F0A7n" id="59ZEGVQruC0" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <node concept="VPRnO" id="1NIWQz0_6ZV" role="3F10Kt" />
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="79Jw74JFJys" role="2iSdaV" />
    </node>
  </node>
  <node concept="325Ffw" id="3Nez1fVxdLf">
    <property role="TrG5h" value="ConceptEditor_DefaultContextHintLabel" />
    <ref role="1chiOs" to="tpc2:fA4kQeF" resolve="ConceptEditorDeclaration" />
    <node concept="2PxR9H" id="3Nez1fVxdLg" role="2QnnpI">
      <node concept="2Py5lD" id="3Nez1fVxdLh" role="2PyaAO">
        <property role="2PWKIS" value="letter or digit" />
      </node>
      <node concept="2PzhpH" id="3Nez1fVxdLi" role="2PL9iG">
        <node concept="3clFbS" id="3Nez1fVxdLj" role="2VODD2">
          <node concept="3clFbF" id="3Nez1fVxfLl" role="3cqZAp">
            <node concept="2OqwBi" id="3Nez1fVxm6Z" role="3clFbG">
              <node concept="2DeJg1" id="3Nez1fVxwFt" role="2OqNvi" />
              <node concept="2OqwBi" id="3Nez1fVxgXx" role="2Oq$k0">
                <node concept="3Tsc0h" id="3Nez1fVxjAv" role="2OqNvi">
                  <ref role="3TtcxE" to="tpc2:2gbCHScr0HI" />
                </node>
                <node concept="0GJ7k" id="3Nez1fVxfLk" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3Fwx_UqsiIF">
    <property role="3GE5qa" value="EditorContextHints" />
    <ref role="1XX52x" to="tpc2:3Fwx_Uqsisi" resolve="ExplicitHintsSpecification" />
    <node concept="3EZMnI" id="3Fwx_UqsjQu" role="2wV5jI">
      <node concept="3F2HdR" id="3Fwx_UqsjQ_" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="tpc2:3Fwx_Uqsi_r" />
        <node concept="l2Vlx" id="3Fwx_UqsjQA" role="2czzBx" />
      </node>
      <node concept="l2Vlx" id="3Fwx_UqsjQx" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="59ZEGVOSRUs">
    <property role="3GE5qa" value="EditorContextHints" />
    <ref role="1XX52x" to="tpc2:59ZEGVOSPtB" resolve="ConceptEditorContextHints" />
    <node concept="3EZMnI" id="59ZEGVP3eyr" role="2wV5jI">
      <node concept="l2Vlx" id="59ZEGVP3eys" role="2iSdaV" />
      <node concept="3F0ifn" id="59ZEGVP3eyt" role="3EZMnx">
        <property role="3F0ifm" value="concept editor context hints" />
      </node>
      <node concept="3F0A7n" id="59ZEGVR0VSg" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="ljvvj" id="59ZEGVR0VU1" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="59ZEGVP3eyx" role="3EZMnx">
        <node concept="l2Vlx" id="59ZEGVP3eyy" role="2iSdaV" />
        <node concept="lj46D" id="59ZEGVP3eyz" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="59ZEGVP3ey$" role="3EZMnx">
          <property role="3F0ifm" value="hints" />
        </node>
        <node concept="3F0ifn" id="59ZEGVP3ey_" role="3EZMnx">
          <property role="3F0ifm" value=":" />
          <node concept="11L4FC" id="59ZEGVP3eyA" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="59ZEGVP3eyB" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="59ZEGVP3eyC" role="3EZMnx">
          <ref role="1NtTu8" to="tpc2:59ZEGVOSRBV" />
          <node concept="l2Vlx" id="59ZEGVP3eyD" role="2czzBx" />
          <node concept="pj6Ft" id="59ZEGVP3eyE" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="59ZEGVP3eyF" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="59ZEGVP3eyG" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3F0ifn" id="59ZEGVPqW8r" role="2czzBI">
            <property role="3F0ifm" value="&lt;no hints specified&gt;" />
            <ref role="34QXea" node="59ZEGVPl25V" resolve="ConceptEditorContextHints_hintKeymap" />
            <node concept="34dVlM" id="59ZEGVPr0fX" role="3F10Kt">
              <property role="34dVlN" value="FIRST" />
            </node>
            <node concept="VechU" id="59ZEGVPqYci" role="3F10Kt">
              <property role="Vb096" value="gray" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3EZMnI" id="59ZEGVQaMCG" role="6VMZX">
      <node concept="l2Vlx" id="59ZEGVQaMCH" role="2iSdaV" />
      <node concept="3F0ifn" id="59ZEGVQaMCK" role="3EZMnx">
        <property role="3F0ifm" value="ConceptEditor context hints container" />
        <node concept="ljvvj" id="59ZEGVQaMIR" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="59ZEGVQaPQi" role="3EZMnx">
        <property role="3F0ifm" value="" />
        <node concept="ljvvj" id="59ZEGVQaPRP" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="59ZEGVQaPS7" role="3EZMnx">
        <node concept="3F0ifn" id="59ZEGVQaQWF" role="3EZMnx">
          <property role="3F0ifm" value="Can be used to define ConceptEditor context hints with basic UI aspects." />
          <node concept="Vb9p2" id="59ZEGVQaT0b" role="3F10Kt" />
        </node>
        <node concept="lj46D" id="59ZEGVQaPTU" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="59ZEGVQaPV_" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPM3Z" id="59ZEGVQaPS9" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="l2Vlx" id="59ZEGVQaPSc" role="2iSdaV" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="59ZEGVP3hWF">
    <property role="3GE5qa" value="EditorContextHints" />
    <ref role="1XX52x" to="tpc2:59ZEGVP3g_u" resolve="ConceptEditorHintDeclaration" />
    <node concept="3EZMnI" id="59ZEGVP3hWH" role="2wV5jI">
      <node concept="3F0ifn" id="59ZEGVPwmXu" role="3EZMnx">
        <property role="3F0ifm" value="ID:" />
      </node>
      <node concept="l2Vlx" id="59ZEGVP3hWI" role="2iSdaV" />
      <node concept="3F0A7n" id="59ZEGVP3hWK" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="59ZEGVPwmXA" role="3EZMnx">
        <property role="3F0ifm" value="Presentation:" />
      </node>
      <node concept="3F0A7n" id="59ZEGVP_H01" role="3EZMnx">
        <property role="1$x2rV" value="&lt;default&gt;" />
        <property role="1O74Pk" value="true" />
        <ref role="1NtTu8" to="tpc2:59ZEGVP_GL8" resolve="presentation" />
      </node>
    </node>
    <node concept="3EZMnI" id="59ZEGVPSPaB" role="6VMZX">
      <node concept="3F0ifn" id="59ZEGVPSWWW" role="3EZMnx">
        <property role="3F0ifm" value="ConceptEditor context hint declaration" />
        <node concept="ljvvj" id="59ZEGVPSWYD" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="5lsGCnRF1Fj" role="3EZMnx">
        <property role="3F0ifm" value="" />
        <node concept="ljvvj" id="5lsGCnRF1H8" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="59ZEGVPSPaC" role="2iSdaV" />
      <node concept="3EZMnI" id="59ZEGVPSPb7" role="3EZMnx">
        <node concept="ljvvj" id="59ZEGVPSPcL" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="59ZEGVPSQeY" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="l2Vlx" id="59ZEGVPSPb8" role="2iSdaV" />
        <node concept="VPM3Z" id="59ZEGVPSPb9" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="59ZEGVPSSgY" role="3EZMnx">
          <property role="3F0ifm" value="ID:" />
        </node>
        <node concept="3F0ifn" id="59ZEGVPT01d" role="3EZMnx">
          <property role="3F0ifm" value="A unique identifier of the hint. Only letters, digits and '_' characters are allowed" />
          <node concept="Vb9p2" id="59ZEGVPT2zS" role="3F10Kt" />
        </node>
      </node>
      <node concept="3EZMnI" id="59ZEGVPSRg4" role="3EZMnx">
        <node concept="ljvvj" id="59ZEGVPSRg5" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="59ZEGVPSRg6" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="l2Vlx" id="59ZEGVPSRg7" role="2iSdaV" />
        <node concept="VPM3Z" id="59ZEGVPSRg8" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="59ZEGVPSSh3" role="3EZMnx">
          <property role="3F0ifm" value="Presentation:" />
        </node>
        <node concept="3F0ifn" id="59ZEGVPUAkQ" role="3EZMnx">
          <property role="3F0ifm" value="a short description of this hint. Will be used in UI." />
          <node concept="Vb9p2" id="59ZEGVPUAl1" role="3F10Kt" />
        </node>
      </node>
      <node concept="3EZMnI" id="9m9wQickKk" role="3EZMnx">
        <node concept="ljvvj" id="9m9wQickKl" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="9m9wQickKm" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="l2Vlx" id="9m9wQickKn" role="2iSdaV" />
        <node concept="VPM3Z" id="9m9wQickKo" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="9m9wQickKp" role="3EZMnx">
          <property role="3F0ifm" value="Can be used as a default hint" />
        </node>
        <node concept="3F0A7n" id="9m9wQito$s" role="3EZMnx">
          <ref role="1NtTu8" to="tpc2:9m9wQicfXR" resolve="showInUI" />
        </node>
      </node>
    </node>
  </node>
  <node concept="325Ffw" id="59ZEGVPl25V">
    <property role="3GE5qa" value="EditorContextHints" />
    <property role="TrG5h" value="ConceptEditorContextHints_hintKeymap" />
    <ref role="1chiOs" to="tpc2:59ZEGVOSPtB" resolve="ConceptEditorContextHints" />
    <node concept="2PxR9H" id="59ZEGVPl3cn" role="2QnnpI">
      <node concept="2Py5lD" id="59ZEGVPl3co" role="2PyaAO">
        <property role="2PWKIS" value="letter or digit" />
      </node>
      <node concept="2PzhpH" id="59ZEGVPl3cp" role="2PL9iG">
        <node concept="3clFbS" id="59ZEGVPl3cq" role="2VODD2">
          <node concept="3clFbF" id="59ZEGVPl3xu" role="3cqZAp">
            <node concept="2OqwBi" id="59ZEGVPl6Sg" role="3clFbG">
              <node concept="2DeJg1" id="59ZEGVPlws2" role="2OqNvi" />
              <node concept="2OqwBi" id="59ZEGVPl3JD" role="2Oq$k0">
                <node concept="3Tsc0h" id="59ZEGVPl4Vd" role="2OqNvi">
                  <ref role="3TtcxE" to="tpc2:59ZEGVOSRBV" />
                </node>
                <node concept="0GJ7k" id="59ZEGVPl3xs" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="5lsGCnQM$zL">
    <property role="TrG5h" value="CellModel_Collection_AddHint_Actions" />
    <property role="3GE5qa" value="CellModel" />
    <ref role="1h_SK9" to="tpc2:fBEZMkn" resolve="CellModel_Collection" />
    <node concept="1hA7zw" id="5lsGCnQMPuC" role="1h_SK8">
      <property role="1hAc7j" value="insert_action_id" />
      <node concept="1hAIg9" id="5lsGCnQMPuD" role="1hA7z_">
        <node concept="3clFbS" id="5lsGCnQMPuE" role="2VODD2">
          <node concept="3clFbF" id="5lsGCnQXQXY" role="3cqZAp">
            <node concept="37vLTI" id="5lsGCnQXWQZ" role="3clFbG">
              <node concept="2ShNRf" id="5lsGCnQYk6H" role="37vLTx">
                <node concept="3zrR0B" id="5lsGCnQYk6c" role="2ShVmc">
                  <node concept="3Tqbb2" id="5lsGCnQYk6d" role="3zrR0E">
                    <ref role="ehGHo" to="tpc2:3Fwx_Uqsisi" resolve="ExplicitHintsSpecification" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="5lsGCnQXR5a" role="37vLTJ">
                <node concept="3TrEf2" id="5lsGCnQXT1u" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpc2:3Fwx_UqDAZ9" />
                </node>
                <node concept="0IXxy" id="5lsGCnQXQXS" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1hA7zw" id="5lsGCnQXQTF" role="1h_SK8">
      <property role="1hAc7j" value="insert_before_action_id" />
      <node concept="1hAIg9" id="5lsGCnQXQTG" role="1hA7z_">
        <node concept="3clFbS" id="5lsGCnQXQTH" role="2VODD2">
          <node concept="3clFbF" id="5lsGCnQYlBd" role="3cqZAp">
            <node concept="37vLTI" id="5lsGCnQYlBe" role="3clFbG">
              <node concept="2ShNRf" id="5lsGCnQYlBf" role="37vLTx">
                <node concept="3zrR0B" id="5lsGCnQYlBg" role="2ShVmc">
                  <node concept="3Tqbb2" id="5lsGCnQYlBh" role="3zrR0E">
                    <ref role="ehGHo" to="tpc2:3Fwx_Uqsisi" resolve="ExplicitHintsSpecification" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="5lsGCnQYlBi" role="37vLTJ">
                <node concept="3TrEf2" id="5lsGCnQYlBj" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpc2:3Fwx_UqDAZ9" />
                </node>
                <node concept="0IXxy" id="5lsGCnQYlBk" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="5lsGCnSckUl">
    <property role="TrG5h" value="CellModel_Collection_RemoveHint_Actions" />
    <property role="3GE5qa" value="CellModel" />
    <ref role="1h_SK9" to="tpc2:fBEZMkn" resolve="CellModel_Collection" />
    <node concept="1hA7zw" id="5lsGCnSckUm" role="1h_SK8">
      <property role="1hAc7j" value="insert_action_id" />
      <node concept="1hAIg9" id="5lsGCnSckUn" role="1hA7z_">
        <node concept="3clFbS" id="5lsGCnSckUo" role="2VODD2">
          <node concept="3clFbF" id="5lsGCnSckUp" role="3cqZAp">
            <node concept="37vLTI" id="5lsGCnSckUq" role="3clFbG">
              <node concept="2ShNRf" id="5lsGCnSckUr" role="37vLTx">
                <node concept="3zrR0B" id="5lsGCnSckUs" role="2ShVmc">
                  <node concept="3Tqbb2" id="5lsGCnSckUt" role="3zrR0E">
                    <ref role="ehGHo" to="tpc2:3Fwx_Uqsisi" resolve="ExplicitHintsSpecification" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="5lsGCnSckUu" role="37vLTJ">
                <node concept="3TrEf2" id="5lsGCnScuf3" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpc2:3Fwx_UqDB8p" />
                </node>
                <node concept="0IXxy" id="5lsGCnSckUw" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1hA7zw" id="5lsGCnSckUx" role="1h_SK8">
      <property role="1hAc7j" value="insert_before_action_id" />
      <node concept="1hAIg9" id="5lsGCnSckUy" role="1hA7z_">
        <node concept="3clFbS" id="5lsGCnSckUz" role="2VODD2">
          <node concept="3clFbF" id="5lsGCnSckU$" role="3cqZAp">
            <node concept="37vLTI" id="5lsGCnSckU_" role="3clFbG">
              <node concept="2ShNRf" id="5lsGCnSckUA" role="37vLTx">
                <node concept="3zrR0B" id="5lsGCnSckUB" role="2ShVmc">
                  <node concept="3Tqbb2" id="5lsGCnSckUC" role="3zrR0E">
                    <ref role="ehGHo" to="tpc2:3Fwx_Uqsisi" resolve="ExplicitHintsSpecification" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="5lsGCnSckUD" role="37vLTJ">
                <node concept="3TrEf2" id="5lsGCnScxoA" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpc2:3Fwx_UqDB8p" />
                </node>
                <node concept="0IXxy" id="5lsGCnSckUF" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4b_Ukfr7OGN">
    <property role="3GE5qa" value="EditorContextHints" />
    <ref role="1XX52x" to="tpc2:4b_Ukfr7MRg" resolve="ConceptEditorHintDeclarationReferenceExpression" />
    <node concept="3EZMnI" id="4b_Ukfr7OGP" role="2wV5jI">
      <node concept="3F0ifn" id="4b_Ukfr7PIK" role="3EZMnx">
        <property role="3F0ifm" value="concept editor hint" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F0ifn" id="4b_Ukfrhjmi" role="3EZMnx">
        <property role="3F0ifm" value="/" />
        <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
      </node>
      <node concept="1iCGBv" id="4b_Ukfr7PJ8" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:4b_Ukfr7N0F" />
        <node concept="1sVBvm" id="4b_Ukfr7PJ9" role="1sWHZn">
          <node concept="3F0A7n" id="4b_Ukfr7QL6" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="4b_Ukfr7RN5" role="3EZMnx">
        <property role="3F0ifm" value="/" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="l2Vlx" id="4b_Ukfr7OGS" role="2iSdaV" />
    </node>
  </node>
  <node concept="1h_SRR" id="6k6gsLy9tOQ">
    <property role="TrG5h" value="CellModel_RefNodeList_RemoveHint_Actions" />
    <property role="3GE5qa" value="CellModel" />
    <ref role="1h_SK9" to="tpc2:fBF2Hee" resolve="CellModel_RefNodeList" />
    <node concept="1hA7zw" id="6k6gsLy9tOR" role="1h_SK8">
      <property role="1hAc7j" value="insert_action_id" />
      <node concept="1hAIg9" id="6k6gsLy9tOS" role="1hA7z_">
        <node concept="3clFbS" id="6k6gsLy9tOT" role="2VODD2">
          <node concept="3clFbF" id="6k6gsLy9tOU" role="3cqZAp">
            <node concept="37vLTI" id="6k6gsLy9tOV" role="3clFbG">
              <node concept="2ShNRf" id="6k6gsLy9tOW" role="37vLTx">
                <node concept="3zrR0B" id="6k6gsLy9tOX" role="2ShVmc">
                  <node concept="3Tqbb2" id="6k6gsLy9tOY" role="3zrR0E">
                    <ref role="ehGHo" to="tpc2:3Fwx_Uqsisi" resolve="ExplicitHintsSpecification" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6k6gsLy9tOZ" role="37vLTJ">
                <node concept="3TrEf2" id="6k6gsLy9xLD" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpc2:6k6gsLy95p7" />
                </node>
                <node concept="0IXxy" id="6k6gsLy9tP1" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1hA7zw" id="6k6gsLy9tP2" role="1h_SK8">
      <property role="1hAc7j" value="insert_before_action_id" />
      <node concept="1hAIg9" id="6k6gsLy9tP3" role="1hA7z_">
        <node concept="3clFbS" id="6k6gsLy9tP4" role="2VODD2">
          <node concept="3clFbF" id="6k6gsLy9tP5" role="3cqZAp">
            <node concept="37vLTI" id="6k6gsLy9tP6" role="3clFbG">
              <node concept="2ShNRf" id="6k6gsLy9tP7" role="37vLTx">
                <node concept="3zrR0B" id="6k6gsLy9tP8" role="2ShVmc">
                  <node concept="3Tqbb2" id="6k6gsLy9tP9" role="3zrR0E">
                    <ref role="ehGHo" to="tpc2:3Fwx_Uqsisi" resolve="ExplicitHintsSpecification" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6k6gsLy9tPa" role="37vLTJ">
                <node concept="3TrEf2" id="6k6gsLy9zoX" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpc2:6k6gsLy95p7" />
                </node>
                <node concept="0IXxy" id="6k6gsLy9tPc" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="6k6gsLy9Jgf">
    <property role="TrG5h" value="CellModel_RefNodeList_AddHint_Actions" />
    <property role="3GE5qa" value="CellModel" />
    <ref role="1h_SK9" to="tpc2:fBF2Hee" resolve="CellModel_RefNodeList" />
    <node concept="1hA7zw" id="6k6gsLy9Jgg" role="1h_SK8">
      <property role="1hAc7j" value="insert_action_id" />
      <node concept="1hAIg9" id="6k6gsLy9Jgh" role="1hA7z_">
        <node concept="3clFbS" id="6k6gsLy9Jgi" role="2VODD2">
          <node concept="3clFbF" id="6k6gsLy9Jgj" role="3cqZAp">
            <node concept="37vLTI" id="6k6gsLy9Jgk" role="3clFbG">
              <node concept="2ShNRf" id="6k6gsLy9Jgl" role="37vLTx">
                <node concept="3zrR0B" id="6k6gsLy9Jgm" role="2ShVmc">
                  <node concept="3Tqbb2" id="6k6gsLy9Jgn" role="3zrR0E">
                    <ref role="ehGHo" to="tpc2:3Fwx_Uqsisi" resolve="ExplicitHintsSpecification" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6k6gsLy9Jgo" role="37vLTJ">
                <node concept="3TrEf2" id="6k6gsLy9M8G" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpc2:6k6gsLy95p6" />
                </node>
                <node concept="0IXxy" id="6k6gsLy9Jgq" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1hA7zw" id="6k6gsLy9Jgr" role="1h_SK8">
      <property role="1hAc7j" value="insert_before_action_id" />
      <node concept="1hAIg9" id="6k6gsLy9Jgs" role="1hA7z_">
        <node concept="3clFbS" id="6k6gsLy9Jgt" role="2VODD2">
          <node concept="3clFbF" id="6k6gsLy9Jgu" role="3cqZAp">
            <node concept="37vLTI" id="6k6gsLy9Jgv" role="3clFbG">
              <node concept="2ShNRf" id="6k6gsLy9Jgw" role="37vLTx">
                <node concept="3zrR0B" id="6k6gsLy9Jgx" role="2ShVmc">
                  <node concept="3Tqbb2" id="6k6gsLy9Jgy" role="3zrR0E">
                    <ref role="ehGHo" to="tpc2:3Fwx_Uqsisi" resolve="ExplicitHintsSpecification" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6k6gsLy9Jgz" role="37vLTJ">
                <node concept="3TrEf2" id="6k6gsLy9NK0" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpc2:6k6gsLy95p6" />
                </node>
                <node concept="0IXxy" id="6k6gsLy9Jg_" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="55my_QKP_mV">
    <property role="TrG5h" value="CellModel_RefNode_AddHint_Actions" />
    <property role="3GE5qa" value="CellModel" />
    <ref role="1h_SK9" to="tpc2:fBF1sR7" resolve="CellModel_RefNode" />
    <node concept="1hA7zw" id="55my_QKP_mW" role="1h_SK8">
      <property role="1hAc7j" value="insert_action_id" />
      <node concept="1hAIg9" id="55my_QKP_mX" role="1hA7z_">
        <node concept="3clFbS" id="55my_QKP_mY" role="2VODD2">
          <node concept="3clFbF" id="55my_QKP_mZ" role="3cqZAp">
            <node concept="37vLTI" id="55my_QKP_n0" role="3clFbG">
              <node concept="2ShNRf" id="55my_QKP_n1" role="37vLTx">
                <node concept="3zrR0B" id="55my_QKP_n2" role="2ShVmc">
                  <node concept="3Tqbb2" id="55my_QKP_n3" role="3zrR0E">
                    <ref role="ehGHo" to="tpc2:3Fwx_Uqsisi" resolve="ExplicitHintsSpecification" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="55my_QKP_n4" role="37vLTJ">
                <node concept="3TrEf2" id="55my_QKPD8g" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpc2:55my_QKP5Sf" />
                </node>
                <node concept="0IXxy" id="55my_QKP_n6" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1hA7zw" id="55my_QKP_n7" role="1h_SK8">
      <property role="1hAc7j" value="insert_before_action_id" />
      <node concept="1hAIg9" id="55my_QKP_n8" role="1hA7z_">
        <node concept="3clFbS" id="55my_QKP_n9" role="2VODD2">
          <node concept="3clFbF" id="55my_QKP_na" role="3cqZAp">
            <node concept="37vLTI" id="55my_QKP_nb" role="3clFbG">
              <node concept="2ShNRf" id="55my_QKP_nc" role="37vLTx">
                <node concept="3zrR0B" id="55my_QKP_nd" role="2ShVmc">
                  <node concept="3Tqbb2" id="55my_QKP_ne" role="3zrR0E">
                    <ref role="ehGHo" to="tpc2:3Fwx_Uqsisi" resolve="ExplicitHintsSpecification" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="55my_QKP_nf" role="37vLTJ">
                <node concept="3TrEf2" id="55my_QKPEyQ" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpc2:55my_QKP5Sf" />
                </node>
                <node concept="0IXxy" id="55my_QKP_nh" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="55my_QKPFFX">
    <property role="TrG5h" value="CellModel_RefNode_RemoveHint_Actions" />
    <property role="3GE5qa" value="CellModel" />
    <ref role="1h_SK9" to="tpc2:fBF1sR7" resolve="CellModel_RefNode" />
    <node concept="1hA7zw" id="55my_QKPFFY" role="1h_SK8">
      <property role="1hAc7j" value="insert_action_id" />
      <node concept="1hAIg9" id="55my_QKPFFZ" role="1hA7z_">
        <node concept="3clFbS" id="55my_QKPFG0" role="2VODD2">
          <node concept="3clFbF" id="55my_QKPFG1" role="3cqZAp">
            <node concept="37vLTI" id="55my_QKPFG2" role="3clFbG">
              <node concept="2ShNRf" id="55my_QKPFG3" role="37vLTx">
                <node concept="3zrR0B" id="55my_QKPFG4" role="2ShVmc">
                  <node concept="3Tqbb2" id="55my_QKPFG5" role="3zrR0E">
                    <ref role="ehGHo" to="tpc2:3Fwx_Uqsisi" resolve="ExplicitHintsSpecification" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="55my_QKPFG6" role="37vLTJ">
                <node concept="3TrEf2" id="55my_QKPIna" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpc2:55my_QKP5Sg" />
                </node>
                <node concept="0IXxy" id="55my_QKPFG8" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1hA7zw" id="55my_QKPFG9" role="1h_SK8">
      <property role="1hAc7j" value="insert_before_action_id" />
      <node concept="1hAIg9" id="55my_QKPFGa" role="1hA7z_">
        <node concept="3clFbS" id="55my_QKPFGb" role="2VODD2">
          <node concept="3clFbF" id="55my_QKPFGc" role="3cqZAp">
            <node concept="37vLTI" id="55my_QKPFGd" role="3clFbG">
              <node concept="2ShNRf" id="55my_QKPFGe" role="37vLTx">
                <node concept="3zrR0B" id="55my_QKPFGf" role="2ShVmc">
                  <node concept="3Tqbb2" id="55my_QKPFGg" role="3zrR0E">
                    <ref role="ehGHo" to="tpc2:3Fwx_Uqsisi" resolve="ExplicitHintsSpecification" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="55my_QKPFGh" role="37vLTJ">
                <node concept="3TrEf2" id="55my_QKPJLK" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpc2:55my_QKP5Sg" />
                </node>
                <node concept="0IXxy" id="55my_QKPFGj" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="66t_lskdusi">
    <ref role="1XX52x" to="tpc2:66t_lskdtZC" resolve="EditorComponentDeclarationReference" />
    <node concept="1iCGBv" id="66t_lskdvza" role="2wV5jI">
      <ref role="1NtTu8" to="tpc2:66t_lskdu99" />
      <node concept="1sVBvm" id="66t_lskdvzb" role="1sWHZn">
        <node concept="3F0A7n" id="66t_lskdzIa" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
  <node concept="325Ffw" id="6nWbOYo6aXk">
    <property role="TrG5h" value="EditorComponent_DefaultContextHintLabel" />
    <ref role="1chiOs" to="tpc2:fGPKFH7" resolve="EditorComponentDeclaration" />
    <node concept="2PxR9H" id="6nWbOYo6aXl" role="2QnnpI">
      <node concept="2Py5lD" id="6nWbOYo6aXm" role="2PyaAO">
        <property role="2PWKIS" value="letter or digit" />
      </node>
      <node concept="2PzhpH" id="6nWbOYo6aXn" role="2PL9iG">
        <node concept="3clFbS" id="6nWbOYo6aXo" role="2VODD2">
          <node concept="3clFbF" id="6nWbOYo6aXp" role="3cqZAp">
            <node concept="2OqwBi" id="6nWbOYo6aXq" role="3clFbG">
              <node concept="2DeJg1" id="6nWbOYo6aXr" role="2OqNvi" />
              <node concept="2OqwBi" id="6nWbOYo6aXs" role="2Oq$k0">
                <node concept="3Tsc0h" id="6nWbOYo6fOV" role="2OqNvi">
                  <ref role="3TtcxE" to="tpc2:6nWbOYo69_Q" />
                </node>
                <node concept="0GJ7k" id="6nWbOYo6aXu" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="76F8Lg7DLiR">
    <property role="3GE5qa" value="SNode.select" />
    <property role="TrG5h" value="CellSelectorReference_Actions" />
    <ref role="1h_SK9" to="tpc2:3ath0p6n6ew" resolve="SelectInEditorOperation" />
    <node concept="1hA7zw" id="76F8Lg7DOyP" role="1h_SK8">
      <property role="1hAc7j" value="delete_action_id" />
      <node concept="1hAIg9" id="76F8Lg7DOyQ" role="1hA7z_">
        <node concept="3clFbS" id="76F8Lg7DOyR" role="2VODD2">
          <node concept="3clFbJ" id="76F8Lg7EiEz" role="3cqZAp">
            <node concept="3clFbS" id="76F8Lg7EiEA" role="3clFbx">
              <node concept="3clFbF" id="76F8Lg7EiOA" role="3cqZAp">
                <node concept="37vLTI" id="385mdrZAFXG" role="3clFbG">
                  <node concept="10Nm6u" id="385mdrZAFY6" role="37vLTx" />
                  <node concept="2OqwBi" id="76F8Lg7EiVM" role="37vLTJ">
                    <node concept="0IXxy" id="76F8Lg7EiO_" role="2Oq$k0" />
                    <node concept="3TrEf2" id="76F8Lg7EjVm" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpc2:1GaASKeIgJu" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3ilcQI6T$LD" role="3cqZAp">
                <node concept="2OqwBi" id="3ilcQI6T$LE" role="3clFbG">
                  <node concept="0IXxy" id="3ilcQI6T$LF" role="2Oq$k0" />
                  <node concept="1OKiuA" id="3ilcQI6T$LG" role="2OqNvi">
                    <node concept="1Q80Hx" id="3ilcQI6T$LH" role="lBI5i" />
                    <node concept="2TlHUq" id="3K0abI70xQp" role="lGT1i">
                      <ref role="2TlMyj" node="3K0abI55kAI" resolve="closingBracket" />
                    </node>
                    <node concept="3cmrfG" id="3RDgp_AR0sp" role="3dN3m$">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="76F8Lg7Ecua" role="3clFbw">
              <node concept="3TUQnm" id="76F8Lg7Ecj5" role="2Oq$k0">
                <ref role="3TV0OU" to="tpc2:1GaASKeIesA" resolve="AbstractCellSelector" />
              </node>
              <node concept="3O6GUB" id="76F8Lg7EdBu" role="2OqNvi">
                <node concept="25Kdxt" id="76F8Lg7EdId" role="3QVz_e">
                  <node concept="2OqwBi" id="76F8Lg7EgVl" role="25KhWn">
                    <node concept="2OqwBi" id="76F8Lg7EdQ6" role="2Oq$k0">
                      <node concept="0IXxy" id="76F8Lg7EdIU" role="2Oq$k0" />
                      <node concept="3TrEf2" id="76F8Lg7EfQ1" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpc2:1GaASKeIgJu" />
                      </node>
                    </node>
                    <node concept="3NT_Vc" id="76F8Lg7Eiw_" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="76F8Lg7EmI7" role="9aQIa">
              <node concept="3clFbS" id="76F8Lg7EmI8" role="9aQI4">
                <node concept="3clFbF" id="76F8Lg7EmRy" role="3cqZAp">
                  <node concept="37vLTI" id="76F8Lg7ExfR" role="3clFbG">
                    <node concept="2ShNRf" id="76F8Lg7Exh8" role="37vLTx">
                      <node concept="3zrR0B" id="76F8Lg7ExgB" role="2ShVmc">
                        <node concept="3Tqbb2" id="76F8Lg7ExgC" role="3zrR0E">
                          <ref role="ehGHo" to="tpc2:1GaASKeIesA" resolve="AbstractCellSelector" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="76F8Lg7EmYI" role="37vLTJ">
                      <node concept="0IXxy" id="76F8Lg7EmRx" role="2Oq$k0" />
                      <node concept="3TrEf2" id="76F8Lg7EnX6" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpc2:1GaASKeIgJu" />
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
    <node concept="1hA7zw" id="7CRKobUogg4" role="1h_SK8">
      <property role="1hAc7j" value="insert_action_id" />
      <node concept="1hAIg9" id="7CRKobUogg5" role="1hA7z_">
        <node concept="3clFbS" id="7CRKobUogg6" role="2VODD2">
          <node concept="3clFbJ" id="7CRKobUtY4R" role="3cqZAp">
            <node concept="3clFbS" id="7CRKobUtY4U" role="3clFbx">
              <node concept="3clFbF" id="7CRKobUogg7" role="3cqZAp">
                <node concept="37vLTI" id="7CRKobUu4tf" role="3clFbG">
                  <node concept="2ShNRf" id="7CRKobUu4uB" role="37vLTx">
                    <node concept="3zrR0B" id="7CRKobUu4tX" role="2ShVmc">
                      <node concept="3Tqbb2" id="7CRKobUu4tY" role="3zrR0E">
                        <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7CRKobUogg9" role="37vLTJ">
                    <node concept="0IXxy" id="7CRKobUogga" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7CRKobUu3cI" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpc2:385mdrZMmPM" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="7CRKobUu1SD" role="3clFbw">
              <node concept="10Nm6u" id="7CRKobUu1SO" role="3uHU7w" />
              <node concept="2OqwBi" id="7CRKobUtYgw" role="3uHU7B">
                <node concept="0IXxy" id="7CRKobUtY8u" role="2Oq$k0" />
                <node concept="3TrEf2" id="7CRKobUu0_F" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpc2:385mdrZMmPM" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="385mdrZMESR">
    <property role="3GE5qa" value="SNode.select" />
    <property role="TrG5h" value="SelectionStartSelectorLabel_Actions" />
    <ref role="1h_SK9" to="tpc2:3ath0p6n6ew" resolve="SelectInEditorOperation" />
    <node concept="1hA7zw" id="385mdrZMESS" role="1h_SK8">
      <property role="1hAc7j" value="delete_action_id" />
      <node concept="1hAIg9" id="385mdrZMEST" role="1hA7z_">
        <node concept="3clFbS" id="385mdrZMESU" role="2VODD2">
          <node concept="3clFbF" id="385mdrZMESV" role="3cqZAp">
            <node concept="37vLTI" id="385mdrZMESW" role="3clFbG">
              <node concept="10Nm6u" id="385mdrZMESX" role="37vLTx" />
              <node concept="2OqwBi" id="385mdrZMESY" role="37vLTJ">
                <node concept="0IXxy" id="385mdrZMESZ" role="2Oq$k0" />
                <node concept="3TrEf2" id="385mdrZMHzj" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpc2:385mdrZMmPM" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3ilcQI6TXFZ" role="3cqZAp">
            <node concept="2OqwBi" id="3ilcQI6TXG0" role="3clFbG">
              <node concept="0IXxy" id="3ilcQI6TXG1" role="2Oq$k0" />
              <node concept="1OKiuA" id="3ilcQI6TXG2" role="2OqNvi">
                <node concept="1Q80Hx" id="3ilcQI6TXG3" role="lBI5i" />
                <node concept="2TlHUq" id="3K0abI70BHR" role="lGT1i">
                  <ref role="2TlMyj" node="3K0abI55kAI" resolve="closingBracket" />
                </node>
                <node concept="3cmrfG" id="3RDgp_AR5bG" role="3dN3m$">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1hA7zw" id="385mdrZMET7" role="1h_SK8">
      <property role="1hAc7j" value="backspace_action_id" />
      <node concept="1hAIg9" id="385mdrZMET8" role="1hA7z_">
        <node concept="3clFbS" id="385mdrZMET9" role="2VODD2">
          <node concept="3clFbF" id="385mdrZMETa" role="3cqZAp">
            <node concept="37vLTI" id="385mdrZMETb" role="3clFbG">
              <node concept="10Nm6u" id="385mdrZMETc" role="37vLTx" />
              <node concept="2OqwBi" id="385mdrZMETd" role="37vLTJ">
                <node concept="0IXxy" id="385mdrZMETe" role="2Oq$k0" />
                <node concept="3TrEf2" id="385mdrZMJTh" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpc2:385mdrZMmPM" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3ilcQI6TXMA" role="3cqZAp">
            <node concept="2OqwBi" id="3ilcQI6TXMB" role="3clFbG">
              <node concept="0IXxy" id="3ilcQI6TXMC" role="2Oq$k0" />
              <node concept="1OKiuA" id="3ilcQI6TXMD" role="2OqNvi">
                <node concept="1Q80Hx" id="3ilcQI6TXME" role="lBI5i" />
                <node concept="2TlHUq" id="3K0abI70CU0" role="lGT1i">
                  <ref role="2TlMyj" node="3K0abI55kAI" resolve="closingBracket" />
                </node>
                <node concept="3cmrfG" id="3RDgp_AR5f7" role="3dN3m$">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="34UidAlVlCU">
    <property role="3GE5qa" value="SNode.select" />
    <ref role="1XX52x" to="tpc2:1GaASKeIesA" resolve="AbstractCellSelector" />
    <node concept="1xolST" id="34UidAlVwn4" role="2wV5jI">
      <property role="1xolSY" value="&lt;no cell selector&gt;" />
    </node>
  </node>
  <node concept="24kQdi" id="3Un2VKK5m8I">
    <property role="3GE5qa" value="SNode.select" />
    <ref role="1XX52x" to="tpc2:3Un2VKK2uez" resolve="PropertyDeclarationCellSelector" />
    <node concept="3EZMnI" id="3Un2VKK5m8K" role="2wV5jI">
      <node concept="3F0ifn" id="3Un2VKK5m8R" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <node concept="11LMrY" id="3Un2VKKbfkw" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="Vb9p2" id="3Un2VKKbfm6" role="3F10Kt" />
        <node concept="3mYdg7" id="3Un2VKKbjFw" role="3F10Kt">
          <property role="1413C4" value="curl" />
        </node>
        <node concept="OXEIz" id="3Un2VKKVVob" role="P5bDN">
          <node concept="UkePV" id="3Un2VKKVVp$" role="OY2wv">
            <ref role="Ul1FP" to="tpc2:1GaASKeIesA" resolve="AbstractCellSelector" />
          </node>
        </node>
      </node>
      <node concept="1iCGBv" id="3Un2VKL7rv4" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:3Un2VKL7rkv" />
        <ref role="1ERwB7" node="1S2pyLdCTfX" resolve="AbstractCellSelector_Actions" />
        <node concept="1sVBvm" id="3Un2VKL7rv5" role="1sWHZn">
          <node concept="3F0A7n" id="3Un2VKLeSk0" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
        <node concept="2V7CMv" id="3Un2VKL_U9z" role="3F10Kt">
          <property role="2V7CMs" value="ext_1_RTransform" />
        </node>
        <node concept="OXEIz" id="3Un2VKMmy1D" role="P5bDN">
          <node concept="ZcVJ$" id="3Un2VKMmy1G" role="OY2wv" />
          <node concept="1ou48o" id="3Un2VKMTiGQ" role="OY2wv">
            <property role="1ezIyd" value="custom" />
            <node concept="3GJtP1" id="3Un2VKMTiGS" role="1ou48n">
              <node concept="3clFbS" id="3Un2VKMTiGU" role="2VODD2">
                <node concept="3clFbF" id="3Un2VKMTkOl" role="3cqZAp">
                  <node concept="2YIFZM" id="3Un2VKMTliA" role="3clFbG">
                    <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object):java.util.List" resolve="singletonList" />
                    <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                    <node concept="Xl_RD" id="3Un2VKMTjk_" role="37wK5m">
                      <property role="Xl_RC" value="#" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1ouSdP" id="3Un2VKMTiGW" role="1ou48m">
              <node concept="3clFbS" id="3Un2VKMTiGY" role="2VODD2">
                <node concept="3cpWs8" id="385mdrZkJWa" role="3cqZAp">
                  <node concept="3cpWsn" id="385mdrZkJWb" role="3cpWs9">
                    <property role="TrG5h" value="propertyExpression" />
                    <node concept="3Tqbb2" id="385mdrZkJW9" role="1tU5fm">
                      <ref role="ehGHo" to="tpc2:3Un2VKKh3Ca" resolve="PropertyExpressionCellSelector" />
                    </node>
                    <node concept="2OqwBi" id="385mdrZkJWc" role="33vP2m">
                      <node concept="3GMtW1" id="385mdrZkJWd" role="2Oq$k0" />
                      <node concept="1_qnLN" id="385mdrZkJWe" role="2OqNvi">
                        <ref role="1_rbq0" to="tpc2:3Un2VKKh3Ca" resolve="PropertyExpressionCellSelector" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3ilcQI6TZa6" role="3cqZAp">
                  <node concept="2OqwBi" id="3ilcQI6TZa7" role="3clFbG">
                    <node concept="37vLTw" id="3ilcQI70$WH" role="2Oq$k0">
                      <ref role="3cqZAo" node="385mdrZkJWb" resolve="propertyExpression" />
                    </node>
                    <node concept="1OKiuA" id="3ilcQI6TZa9" role="2OqNvi">
                      <node concept="1Q80Hx" id="3ilcQI6TZaa" role="lBI5i" />
                      <node concept="2TlHUq" id="3K0abI70zSv" role="lGT1i">
                        <ref role="2TlMyj" node="3K0abI55iDH" resolve="sharp" />
                      </node>
                      <node concept="3cmrfG" id="3RDgp_AR2wi" role="3dN3m$">
                        <property role="3cmrfH" value="-1" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="17QB3L" id="3Un2VKMTj3R" role="1eyP2E" />
            <node concept="6VE3a" id="3Un2VKMTqfT" role="1ezQQy">
              <node concept="3clFbS" id="3Un2VKMTqfU" role="2VODD2">
                <node concept="3clFbF" id="3Un2VKMTqSh" role="3cqZAp">
                  <node concept="Xl_RD" id="3Un2VKMTqSg" role="3clFbG">
                    <property role="Xl_RC" value="#" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="6WeAF" id="3Un2VKMTsY$" role="1ezVZE">
              <node concept="3clFbS" id="3Un2VKMTsY_" role="2VODD2">
                <node concept="3clFbF" id="3Un2VKMTtAz" role="3cqZAp">
                  <node concept="Xl_RD" id="3Un2VKMTtAy" role="3clFbG">
                    <property role="Xl_RC" value="specify property declaration by expression" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="3Un2VKK5m8X" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <node concept="11L4FC" id="3Un2VKKbfnE" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="Vb9p2" id="3Un2VKKbfpg" role="3F10Kt" />
        <node concept="3mYdg7" id="3Un2VKKbjFL" role="3F10Kt">
          <property role="1413C4" value="curl" />
        </node>
      </node>
      <node concept="l2Vlx" id="3Un2VKK5m8N" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3Un2VKKh3Mj">
    <property role="3GE5qa" value="SNode.select" />
    <ref role="1XX52x" to="tpc2:3Un2VKKh3Ca" resolve="PropertyExpressionCellSelector" />
    <node concept="3EZMnI" id="3Un2VKKh3MQ" role="2wV5jI">
      <node concept="3F0ifn" id="3Un2VKKh3MR" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <node concept="11LMrY" id="3Un2VKKh3MS" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="Vb9p2" id="3Un2VKKh3MT" role="3F10Kt" />
        <node concept="3mYdg7" id="3Un2VKKh3MU" role="3F10Kt">
          <property role="1413C4" value="curl" />
        </node>
        <node concept="OXEIz" id="3Un2VKL1Eyj" role="P5bDN">
          <node concept="UkePV" id="3Un2VKL1Eyo" role="OY2wv">
            <ref role="Ul1FP" to="tpc2:1GaASKeIesA" resolve="AbstractCellSelector" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="3Un2VKKpdyq" role="3EZMnx">
        <property role="3F0ifm" value="#" />
        <ref role="1ERwB7" node="3Un2VKKuWkG" resolve="PropertyExpressionDelete_Actions" />
        <node concept="11LMrY" id="3Un2VKKpdyO" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="Vb9p2" id="3Un2VKKpdyP" role="3F10Kt" />
        <node concept="OXEIz" id="7CRKobUDGSb" role="P5bDN">
          <node concept="UkePV" id="7CRKobUDGSi" role="OY2wv">
            <ref role="Ul1FP" to="tpc2:1GaASKeIesA" resolve="AbstractCellSelector" />
          </node>
        </node>
        <node concept="2SqB2G" id="3K0abI55iDH" role="2SqHTX">
          <property role="TrG5h" value="sharp" />
        </node>
      </node>
      <node concept="3F1sOY" id="3Un2VKN5E7M" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:3Un2VKMR8zw" />
        <ref role="1ERwB7" node="3Un2VKKuWkG" resolve="PropertyExpressionDelete_Actions" />
      </node>
      <node concept="3F0ifn" id="3Un2VKKh3MW" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <node concept="11L4FC" id="3Un2VKKh3MX" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="Vb9p2" id="3Un2VKKh3MY" role="3F10Kt" />
        <node concept="3mYdg7" id="3Un2VKKh3MZ" role="3F10Kt">
          <property role="1413C4" value="curl" />
        </node>
      </node>
      <node concept="l2Vlx" id="3Un2VKKh3N0" role="2iSdaV" />
    </node>
  </node>
  <node concept="1h_SRR" id="1S2pyLdCTfX">
    <property role="3GE5qa" value="SNode.select" />
    <property role="TrG5h" value="AbstractCellSelector_Actions" />
    <ref role="1h_SK9" to="tpc2:1GaASKeIesA" resolve="AbstractCellSelector" />
    <node concept="1hA7zw" id="1S2pyLdCUm1" role="1h_SK8">
      <property role="1hAc7j" value="delete_action_id" />
      <node concept="1hAIg9" id="1S2pyLdCUm2" role="1hA7z_">
        <node concept="3clFbS" id="1S2pyLdCUm3" role="2VODD2">
          <node concept="3clFbF" id="1S2pyLdCVse" role="3cqZAp">
            <node concept="2OqwBi" id="1S2pyLdCVyG" role="3clFbG">
              <node concept="0IXxy" id="1S2pyLdCVsd" role="2Oq$k0" />
              <node concept="1_qnLN" id="1S2pyLdCX68" role="2OqNvi">
                <ref role="1_rbq0" to="tpc2:1GaASKeIesA" resolve="AbstractCellSelector" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1hA7zw" id="2oUeaj9UO6J" role="1h_SK8">
      <property role="1hAc7j" value="backspace_action_id" />
      <node concept="1hAIg9" id="2oUeaj9UO6K" role="1hA7z_">
        <node concept="3clFbS" id="2oUeaj9UO6L" role="2VODD2">
          <node concept="3clFbF" id="2oUeaj9UO6M" role="3cqZAp">
            <node concept="2OqwBi" id="2oUeaj9UO6N" role="3clFbG">
              <node concept="0IXxy" id="2oUeaj9UO6O" role="2Oq$k0" />
              <node concept="1_qnLN" id="2oUeaj9UO6P" role="2OqNvi">
                <ref role="1_rbq0" to="tpc2:1GaASKeIesA" resolve="AbstractCellSelector" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="3Un2VKKuWkG">
    <property role="3GE5qa" value="SNode.select" />
    <property role="TrG5h" value="PropertyExpressionDelete_Actions" />
    <ref role="1h_SK9" to="tpc2:3Un2VKKh3Ca" resolve="PropertyExpressionCellSelector" />
    <node concept="1hA7zw" id="3Un2VKKv0rt" role="1h_SK8">
      <property role="1hAc7j" value="delete_action_id" />
      <node concept="1hAIg9" id="3Un2VKKv0ru" role="1hA7z_">
        <node concept="3clFbS" id="3Un2VKKv0rv" role="2VODD2">
          <node concept="3clFbF" id="3Un2VKKv0r$" role="3cqZAp">
            <node concept="2OqwBi" id="3Un2VKKv0yK" role="3clFbG">
              <node concept="0IXxy" id="3Un2VKKv0rz" role="2Oq$k0" />
              <node concept="1_qnLN" id="3Un2VKKv2v4" role="2OqNvi">
                <ref role="1_rbq0" to="tpc2:3Un2VKK2uez" resolve="PropertyDeclarationCellSelector" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1S2pyLbUblX">
    <property role="3GE5qa" value="SNode.select" />
    <ref role="1XX52x" to="tpc2:1S2pyLby0tg" resolve="IdSelector" />
    <node concept="3EZMnI" id="1S2pyLbUblZ" role="2wV5jI">
      <node concept="3F0ifn" id="1S2pyLbUbm6" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
        <ref role="1ERwB7" node="1S2pyLdCTfX" resolve="AbstractCellSelector_Actions" />
        <ref role="1k5W1q" node="1S2pyLcon66" resolve="string" />
        <node concept="11LMrY" id="1S2pyLcohpk" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="OXEIz" id="7CRKobUzRtU" role="P5bDN">
          <node concept="UkePV" id="7CRKobUzRtX" role="OY2wv">
            <ref role="Ul1FP" to="tpc2:1GaASKeIesA" resolve="AbstractCellSelector" />
          </node>
        </node>
      </node>
      <node concept="3F0A7n" id="1S2pyLbUbmk" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:1S2pyLbUahm" resolve="cellId" />
        <ref role="1ERwB7" node="1S2pyLdCTfX" resolve="AbstractCellSelector_Actions" />
        <ref role="1k5W1q" node="1S2pyLcon66" resolve="string" />
        <node concept="34QqEe" id="1S2pyLcoiEM" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="1S2pyLbUbmc" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
        <ref role="1ERwB7" node="1S2pyLdCTfX" resolve="AbstractCellSelector_Actions" />
        <ref role="1k5W1q" node="1S2pyLcon66" resolve="string" />
        <node concept="11L4FC" id="1S2pyLcohqP" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="34QqEe" id="1S2pyLcojM5" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="1S2pyLbUbm2" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1GaASKe_e2k">
    <property role="3GE5qa" value="SNode.select" />
    <ref role="1XX52x" to="tpc2:3ath0p6n6ew" resolve="SelectInEditorOperation" />
    <node concept="3EZMnI" id="1GaASKe_VFM" role="2wV5jI">
      <node concept="3F0ifn" id="1S2pyLcJBsZ" role="3EZMnx">
        <property role="3F0ifm" value="select" />
        <node concept="11LMrY" id="1S2pyLd0Nfo" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="Vb9p2" id="1S2pyLdnKsd" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="1S2pyLcV2qZ" role="3EZMnx">
        <property role="3F0ifm" value="[" />
        <node concept="34QqEe" id="1S2pyLcV3MS" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3mYdg7" id="1S2pyLd6Ch0" role="3F10Kt">
          <property role="1413C4" value="bracket" />
        </node>
        <node concept="Vb9p2" id="1S2pyLdnKsp" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="1S2pyLcJBOt" role="3EZMnx">
        <property role="3F0ifm" value="in:" />
        <node concept="11L4FC" id="1S2pyLcV4VS" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="Vb9p2" id="1S2pyLdi3Qt" role="3F10Kt" />
      </node>
      <node concept="3F1sOY" id="1GaASKe_WL7" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:1GaASKe_7Fu" />
        <ref role="1ERwB7" node="7CRKobUcgo3" resolve="SelectInEditorOperation_editorContextActions" />
        <node concept="34QqEe" id="1S2pyLcPnDN" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="1GaASKe_VFP" role="2iSdaV" />
      <node concept="3EZMnI" id="1GaASKeIgTh" role="3EZMnx">
        <node concept="VPM3Z" id="1GaASKeIgTj" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="34UidAlEc8c" role="3EZMnx">
          <property role="3F0ifm" value="," />
          <ref role="1ERwB7" node="34UidAlPvow" resolve="CellSelectorLabel_Actions" />
          <node concept="11L4FC" id="34UidAlJQd3" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="34QqEe" id="1S2pyLcofjP" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="Vb9p2" id="1S2pyLdi4WB" role="3F10Kt" />
        </node>
        <node concept="3F0ifn" id="1GaASKeIm_H" role="3EZMnx">
          <property role="3F0ifm" value="cell:" />
          <ref role="1ERwB7" node="34UidAlPvow" resolve="CellSelectorLabel_Actions" />
          <node concept="Vb9p2" id="1S2pyLdi4WL" role="3F10Kt" />
        </node>
        <node concept="3F1sOY" id="1GaASKeInEr" role="3EZMnx">
          <ref role="1NtTu8" to="tpc2:1GaASKeIgJu" />
          <ref role="1ERwB7" node="76F8Lg7DLiR" resolve="CellSelectorReference_Actions" />
        </node>
        <node concept="l2Vlx" id="1GaASKeIgTm" role="2iSdaV" />
        <node concept="pkWqt" id="1GaASKeIgTv" role="pqm2j">
          <node concept="3clFbS" id="1GaASKeIgTw" role="2VODD2">
            <node concept="3clFbF" id="1GaASKeIh6A" role="3cqZAp">
              <node concept="2OqwBi" id="1GaASKeIkzF" role="3clFbG">
                <node concept="2OqwBi" id="1GaASKeIhdQ" role="2Oq$k0">
                  <node concept="pncrf" id="1GaASKeIh6_" role="2Oq$k0" />
                  <node concept="3TrEf2" id="1GaASKeIjnm" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpc2:1GaASKeIgJu" />
                  </node>
                </node>
                <node concept="3x8VRR" id="1GaASKeIlg$" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3EZMnI" id="385mdrZMrGt" role="3EZMnx">
          <node concept="VPM3Z" id="385mdrZMrGv" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3F0ifn" id="385mdrZMAT3" role="3EZMnx">
            <property role="3F0ifm" value="," />
            <ref role="1ERwB7" node="385mdrZMESR" resolve="SelectionStartSelectorLabel_Actions" />
            <node concept="11L4FC" id="385mdrZMCKJ" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="34QqEe" id="385mdrZMCKK" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="Vb9p2" id="385mdrZMCKL" role="3F10Kt" />
          </node>
          <node concept="3F0ifn" id="385mdrZMBov" role="3EZMnx">
            <property role="3F0ifm" value="selectionStart:" />
            <ref role="1ERwB7" node="385mdrZMESR" resolve="SelectionStartSelectorLabel_Actions" />
            <node concept="Vb9p2" id="385mdrZMCKW" role="3F10Kt" />
          </node>
          <node concept="3F1sOY" id="385mds07gbG" role="3EZMnx">
            <ref role="1NtTu8" to="tpc2:385mdrZMmPM" />
            <ref role="1ERwB7" node="2lZ9M0NUuPG" resolve="SelectInEditorOperation_selectionStartActions" />
            <node concept="VPRnO" id="54ZpPwDgmSv" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="l2Vlx" id="385mdrZMrGy" role="2iSdaV" />
          <node concept="pkWqt" id="385mdrZMuuX" role="pqm2j">
            <node concept="3clFbS" id="385mdrZMuuY" role="2VODD2">
              <node concept="3clFbF" id="385mdrZMu_T" role="3cqZAp">
                <node concept="2OqwBi" id="385mdrZM_bQ" role="3clFbG">
                  <node concept="2OqwBi" id="385mdrZMuHZ" role="2Oq$k0">
                    <node concept="pncrf" id="385mdrZMu_S" role="2Oq$k0" />
                    <node concept="3TrEf2" id="385mdrZMx9P" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpc2:385mdrZMmPM" />
                    </node>
                  </node>
                  <node concept="3x8VRR" id="385mdrZM_Du" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3EZMnI" id="2lZ9M0NGg8i" role="3EZMnx">
            <node concept="VPM3Z" id="2lZ9M0NGg8k" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="3F0ifn" id="2lZ9M0NGn9x" role="3EZMnx">
              <property role="3F0ifm" value="," />
              <ref role="1ERwB7" node="2lZ9M0NOzCv" resolve="SelectionEndSelectorLabel_Actions" />
              <node concept="11L4FC" id="2lZ9M0NGn9y" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
              <node concept="34QqEe" id="2lZ9M0NGn9z" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
              <node concept="Vb9p2" id="2lZ9M0NGn9$" role="3F10Kt" />
            </node>
            <node concept="3F0ifn" id="2lZ9M0NGn9_" role="3EZMnx">
              <property role="3F0ifm" value="selectionEnd:" />
              <ref role="1ERwB7" node="2lZ9M0NOzCv" resolve="SelectionEndSelectorLabel_Actions" />
              <node concept="Vb9p2" id="2lZ9M0NGn9A" role="3F10Kt" />
            </node>
            <node concept="3F1sOY" id="2lZ9M0NGn9B" role="3EZMnx">
              <ref role="1NtTu8" to="tpc2:2lZ9M0NGdI8" />
              <node concept="VPRnO" id="54ZpPwDmJaq" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="l2Vlx" id="2lZ9M0NGg8n" role="2iSdaV" />
            <node concept="pkWqt" id="2lZ9M0NGgpa" role="pqm2j">
              <node concept="3clFbS" id="2lZ9M0NGgpb" role="2VODD2">
                <node concept="3clFbF" id="2lZ9M0NGgvQ" role="3cqZAp">
                  <node concept="3y3z36" id="2lZ9M0NGksx" role="3clFbG">
                    <node concept="10Nm6u" id="2lZ9M0NGkzV" role="3uHU7w" />
                    <node concept="2OqwBi" id="2lZ9M0NGgBW" role="3uHU7B">
                      <node concept="pncrf" id="2lZ9M0NGgvP" role="2Oq$k0" />
                      <node concept="3TrEf2" id="2lZ9M0NGj3M" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpc2:2lZ9M0NGdI8" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="1S2pyLcJDTR" role="3EZMnx">
        <property role="3F0ifm" value="]" />
        <node concept="34QqEe" id="1S2pyLd6E9v" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3mYdg7" id="1S2pyLd6Chb" role="3F10Kt">
          <property role="1413C4" value="bracket" />
        </node>
        <node concept="11L4FC" id="1S2pyLd6FjD" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="Vb9p2" id="1S2pyLdtrQj" role="3F10Kt" />
        <node concept="2SqB2G" id="3K0abI55kAI" role="2SqHTX">
          <property role="TrG5h" value="closingBracket" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="34UidAlPvow">
    <property role="3GE5qa" value="SNode.select" />
    <property role="TrG5h" value="CellSelectorLabel_Actions" />
    <ref role="1h_SK9" to="tpc2:3ath0p6n6ew" resolve="SelectInEditorOperation" />
    <node concept="1hA7zw" id="34UidAlPBRT" role="1h_SK8">
      <property role="1hAc7j" value="delete_action_id" />
      <node concept="1hAIg9" id="34UidAlPBRU" role="1hA7z_">
        <node concept="3clFbS" id="34UidAlPBRV" role="2VODD2">
          <node concept="3clFbF" id="34UidAlPBS0" role="3cqZAp">
            <node concept="37vLTI" id="34UidAlPEZB" role="3clFbG">
              <node concept="10Nm6u" id="34UidAlPF01" role="37vLTx" />
              <node concept="2OqwBi" id="34UidAlPBZc" role="37vLTJ">
                <node concept="0IXxy" id="34UidAlPBRZ" role="2Oq$k0" />
                <node concept="3TrEf2" id="34UidAlPDVw" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpc2:1GaASKeIgJu" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3K0abI5lKfa" role="3cqZAp">
            <node concept="2OqwBi" id="3K0abI5lKnc" role="3clFbG">
              <node concept="0IXxy" id="3K0abI5lKf8" role="2Oq$k0" />
              <node concept="1OKiuA" id="3K0abI5lMKr" role="2OqNvi">
                <node concept="1Q80Hx" id="3K0abI5lML_" role="lBI5i" />
                <node concept="2TlHUq" id="3K0abI6UJ8i" role="lGT1i">
                  <ref role="2TlMyj" node="3K0abI55kAI" resolve="closingBracket" />
                </node>
                <node concept="3cmrfG" id="3RDgp_AQZ3f" role="3dN3m$">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1hA7zw" id="34UidAlPG5Y" role="1h_SK8">
      <property role="1hAc7j" value="backspace_action_id" />
      <node concept="1hAIg9" id="34UidAlPG5Z" role="1hA7z_">
        <node concept="3clFbS" id="34UidAlPG60" role="2VODD2">
          <node concept="3clFbF" id="34UidAlPG6X" role="3cqZAp">
            <node concept="37vLTI" id="34UidAlPG6Y" role="3clFbG">
              <node concept="10Nm6u" id="34UidAlPG6Z" role="37vLTx" />
              <node concept="2OqwBi" id="34UidAlPG70" role="37vLTJ">
                <node concept="0IXxy" id="34UidAlPG71" role="2Oq$k0" />
                <node concept="3TrEf2" id="34UidAlPG72" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpc2:1GaASKeIgJu" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="385mdrZABUV" role="3cqZAp">
            <node concept="2OqwBi" id="385mdrZABUW" role="3clFbG">
              <node concept="0IXxy" id="385mdrZABUX" role="2Oq$k0" />
              <node concept="1OKiuA" id="385mdrZABUY" role="2OqNvi">
                <node concept="1Q80Hx" id="385mdrZABUZ" role="lBI5i" />
                <node concept="2TlHUq" id="3K0abI6UL$1" role="lGT1i">
                  <ref role="2TlMyj" node="3K0abI55kAI" resolve="closingBracket" />
                </node>
                <node concept="3cmrfG" id="3RDgp_AQZ3V" role="3dN3m$">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1S2pyLby22J">
    <property role="3GE5qa" value="SNode.select" />
    <ref role="1XX52x" to="tpc2:34UidAm8QMj" resolve="PredefinedSelector" />
    <node concept="3F0A7n" id="1S2pyLby8T2" role="2wV5jI">
      <ref role="1NtTu8" to="tpc2:1S2pyLby1SO" resolve="cellId" />
      <ref role="1ERwB7" node="1S2pyLdCTfX" resolve="AbstractCellSelector_Actions" />
    </node>
  </node>
  <node concept="1h_SRR" id="7CRKobUcgo3">
    <property role="3GE5qa" value="SNode.select" />
    <property role="TrG5h" value="SelectInEditorOperation_editorContextActions" />
    <ref role="1h_SK9" to="tpc2:3ath0p6n6ew" resolve="SelectInEditorOperation" />
    <node concept="1hA7zw" id="7CRKobUcr6i" role="1h_SK8">
      <property role="1hAc7j" value="insert_action_id" />
      <node concept="1hAIg9" id="7CRKobUcr6j" role="1hA7z_">
        <node concept="3clFbS" id="7CRKobUcr6k" role="2VODD2">
          <node concept="3clFbJ" id="7CRKobUtWwl" role="3cqZAp">
            <node concept="3clFbS" id="7CRKobUtWwo" role="3clFbx">
              <node concept="3clFbF" id="7CRKobUo1ou" role="3cqZAp">
                <node concept="37vLTI" id="7CRKobUo2In" role="3clFbG">
                  <node concept="2OqwBi" id="7CRKobUo1ow" role="37vLTJ">
                    <node concept="0IXxy" id="7CRKobUo1ox" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7CRKobUo1oy" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpc2:1GaASKeIgJu" />
                    </node>
                  </node>
                  <node concept="2ShNRf" id="7CRKobUcwhZ" role="37vLTx">
                    <node concept="3zrR0B" id="7CRKobUcweW" role="2ShVmc">
                      <node concept="3Tqbb2" id="7CRKobUcweX" role="3zrR0E">
                        <ref role="ehGHo" to="tpc2:1GaASKeIesA" resolve="AbstractCellSelector" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="7CRKobUtWEm" role="3clFbw">
              <node concept="10Nm6u" id="7CRKobUtWEx" role="3uHU7w" />
              <node concept="2OqwBi" id="7CRKobUtWzV" role="3uHU7B">
                <node concept="0IXxy" id="7CRKobUtWzW" role="2Oq$k0" />
                <node concept="3TrEf2" id="7CRKobUtWzX" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpc2:1GaASKeIgJu" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="2lZ9M0NOzCv">
    <property role="3GE5qa" value="SNode.select" />
    <property role="TrG5h" value="SelectionEndSelectorLabel_Actions" />
    <ref role="1h_SK9" to="tpc2:3ath0p6n6ew" resolve="SelectInEditorOperation" />
    <node concept="1hA7zw" id="2lZ9M0NOzCw" role="1h_SK8">
      <property role="1hAc7j" value="delete_action_id" />
      <node concept="1hAIg9" id="2lZ9M0NOzCx" role="1hA7z_">
        <node concept="3clFbS" id="2lZ9M0NOzCy" role="2VODD2">
          <node concept="3clFbF" id="2lZ9M0NOzCz" role="3cqZAp">
            <node concept="37vLTI" id="2lZ9M0NOzC$" role="3clFbG">
              <node concept="10Nm6u" id="2lZ9M0NOzC_" role="37vLTx" />
              <node concept="2OqwBi" id="2lZ9M0NOzCA" role="37vLTJ">
                <node concept="0IXxy" id="2lZ9M0NOzCB" role="2Oq$k0" />
                <node concept="3TrEf2" id="2lZ9M0NOAcd" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpc2:2lZ9M0NGdI8" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2lZ9M0NOzCD" role="3cqZAp">
            <node concept="2OqwBi" id="2lZ9M0NOzCE" role="3clFbG">
              <node concept="0IXxy" id="2lZ9M0NOzCF" role="2Oq$k0" />
              <node concept="1OKiuA" id="2lZ9M0NOzCG" role="2OqNvi">
                <node concept="1Q80Hx" id="2lZ9M0NOzCH" role="lBI5i" />
                <node concept="2TlHUq" id="3K0abI70_d0" role="lGT1i">
                  <ref role="2TlMyj" node="3K0abI55kAI" resolve="closingBracket" />
                </node>
                <node concept="3cmrfG" id="3RDgp_AR4pC" role="3dN3m$">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1hA7zw" id="2lZ9M0NOzCK" role="1h_SK8">
      <property role="1hAc7j" value="backspace_action_id" />
      <node concept="1hAIg9" id="2lZ9M0NOzCL" role="1hA7z_">
        <node concept="3clFbS" id="2lZ9M0NOzCM" role="2VODD2">
          <node concept="3clFbF" id="2lZ9M0NOzCN" role="3cqZAp">
            <node concept="37vLTI" id="2lZ9M0NOzCO" role="3clFbG">
              <node concept="10Nm6u" id="2lZ9M0NOzCP" role="37vLTx" />
              <node concept="2OqwBi" id="2lZ9M0NOzCQ" role="37vLTJ">
                <node concept="0IXxy" id="2lZ9M0NOzCR" role="2Oq$k0" />
                <node concept="3TrEf2" id="2lZ9M0NOBpN" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpc2:2lZ9M0NGdI8" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2lZ9M0NOzCT" role="3cqZAp">
            <node concept="2OqwBi" id="2lZ9M0NOzCU" role="3clFbG">
              <node concept="0IXxy" id="2lZ9M0NOzCV" role="2Oq$k0" />
              <node concept="1OKiuA" id="2lZ9M0NOzCW" role="2OqNvi">
                <node concept="1Q80Hx" id="2lZ9M0NOzCX" role="lBI5i" />
                <node concept="2TlHUq" id="3K0abI70Ap9" role="lGT1i">
                  <ref role="2TlMyj" node="3K0abI55kAI" resolve="closingBracket" />
                </node>
                <node concept="3cmrfG" id="3RDgp_AR4sT" role="3dN3m$">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="2lZ9M0NUuPG">
    <property role="3GE5qa" value="SNode.select" />
    <property role="TrG5h" value="SelectInEditorOperation_selectionStartActions" />
    <ref role="1h_SK9" to="tpc2:3ath0p6n6ew" resolve="SelectInEditorOperation" />
    <node concept="1hA7zw" id="2lZ9M0NUuPH" role="1h_SK8">
      <property role="1hAc7j" value="insert_action_id" />
      <node concept="1hAIg9" id="2lZ9M0NUuPI" role="1hA7z_">
        <node concept="3clFbS" id="2lZ9M0NUuPJ" role="2VODD2">
          <node concept="3clFbJ" id="2lZ9M0NUuPK" role="3cqZAp">
            <node concept="3clFbS" id="2lZ9M0NUuPL" role="3clFbx">
              <node concept="3clFbF" id="2lZ9M0NUuPM" role="3cqZAp">
                <node concept="37vLTI" id="2lZ9M0NUR1i" role="3clFbG">
                  <node concept="2ShNRf" id="2lZ9M0NUR2t" role="37vLTx">
                    <node concept="3zrR0B" id="2lZ9M0NUR1H" role="2ShVmc">
                      <node concept="3Tqbb2" id="2lZ9M0NUR1I" role="3zrR0E">
                        <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2lZ9M0NUuPO" role="37vLTJ">
                    <node concept="0IXxy" id="2lZ9M0NUuPP" role="2Oq$k0" />
                    <node concept="3TrEf2" id="2lZ9M0NUAVA" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpc2:2lZ9M0NGdI8" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="2lZ9M0NUuPU" role="3clFbw">
              <node concept="10Nm6u" id="2lZ9M0NUuPV" role="3uHU7w" />
              <node concept="2OqwBi" id="2lZ9M0NUuPW" role="3uHU7B">
                <node concept="0IXxy" id="2lZ9M0NUuPX" role="2Oq$k0" />
                <node concept="3TrEf2" id="2lZ9M0NUzp7" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpc2:2lZ9M0NGdI8" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3K0abI4qA1N">
    <property role="3GE5qa" value="CellModel" />
    <ref role="1XX52x" to="tpc2:3K0abI4q_wn" resolve="EditorCellId" />
    <node concept="3F0A7n" id="3K0abI4qDFY" role="2wV5jI">
      <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
    </node>
  </node>
  <node concept="24kQdi" id="3K0abI5KzVO">
    <property role="3GE5qa" value="SNode.select" />
    <ref role="1XX52x" to="tpc2:3K0abI5lJox" resolve="CellIdReferenceSelector" />
    <node concept="1iCGBv" id="3K0abI5KzVY" role="2wV5jI">
      <ref role="1NtTu8" to="tpc2:3K0abI5lK0C" />
      <node concept="1sVBvm" id="3K0abI5KzVZ" role="1sWHZn">
        <node concept="3F0A7n" id="3K0abI5KzW4" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1GhovrAzvGO">
    <property role="3GE5qa" value="Stylesheet" />
    <ref role="1XX52x" to="tpc2:1GhovrAzvFz" resolve="UnapplyStyle" />
    <node concept="3EZMnI" id="1GhovrAzvHi" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="PMmxH" id="1GhovrAzvHj" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="hoxUe05" resolve="item" />
        <node concept="OXEIz" id="1GhovrAzvHk" role="P5bDN">
          <node concept="UkePV" id="1GhovrAzvHl" role="OY2wv">
            <ref role="Ul1FP" to="tpc2:hgV6hR6" resolve="StyleClassItem" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="1GhovrAzvHm" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F1sOY" id="1GhovrAzvHn" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:1GhovrAzvGr" />
      </node>
      <node concept="2iRfu4" id="1GhovrAzvHo" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1GhovrAijPq">
    <property role="3GE5qa" value="Stylesheet" />
    <ref role="1XX52x" to="tpc2:1GhovrAibiM" resolve="ApplyStyleClass" />
    <node concept="3EZMnI" id="1GhovrAikYU" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="PMmxH" id="1GhovrAikYV" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="hoxUe05" resolve="item" />
        <node concept="OXEIz" id="1GhovrAikYW" role="P5bDN">
          <node concept="UkePV" id="1GhovrAikYX" role="OY2wv">
            <ref role="Ul1FP" to="tpc2:hgV6hR6" resolve="StyleClassItem" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="1GhovrAikYY" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F1sOY" id="1GhovrAriKt" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:1GhovrAr1CW" />
      </node>
      <node concept="2iRfu4" id="1GhovrAikZF" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2VNGR_E4KKB">
    <property role="3GE5qa" value="Stylesheet" />
    <ref role="1XX52x" to="tpc2:2VNGR_E4KKd" resolve="StyleClassReference" />
    <node concept="1iCGBv" id="2VNGR_E4KKD" role="2wV5jI">
      <ref role="1NtTu8" to="tpc2:2VNGR_E4KKe" />
      <node concept="1sVBvm" id="2VNGR_E4KKE" role="1sWHZn">
        <node concept="3F0A7n" id="2VNGR_E4KKJ" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2VNGR_E4CPc">
    <property role="3GE5qa" value="Stylesheet" />
    <ref role="1XX52x" to="tpc2:2VNGR_E4AW$" resolve="StyleClass" />
    <node concept="3EZMnI" id="2VNGR_E4CZr" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="PMmxH" id="2VNGR_E4CZu" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="hEUz4pu" resolve="style" />
      </node>
      <node concept="3F0A7n" id="2VNGR_E4CZv" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="2V7CMv" id="1uLauz13iS4" role="3F10Kt">
          <property role="2V7CMs" value="ext_1_RTransform" />
        </node>
      </node>
      <node concept="3EZMnI" id="2VNGR_E4CZw" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="3F1sOY" id="2airAaRPdhn" role="3EZMnx">
          <ref role="1NtTu8" to="tpc2:2VNGR_E4KJo" />
        </node>
        <node concept="pkWqt" id="2VNGR_E4CZx" role="pqm2j">
          <node concept="3clFbS" id="2VNGR_E4CZy" role="2VODD2">
            <node concept="3clFbF" id="2VNGR_E4CZz" role="3cqZAp">
              <node concept="2OqwBi" id="66WhX$60MNu" role="3clFbG">
                <node concept="2OqwBi" id="2VNGR_E4CZA" role="2Oq$k0">
                  <node concept="pncrf" id="2VNGR_E4CZB" role="2Oq$k0" />
                  <node concept="3TrEf2" id="7Ur4aGsHtFH" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpc2:2VNGR_E4KJo" />
                  </node>
                </node>
                <node concept="3x8VRR" id="7Ur4aGsHtZV" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="2VNGR_E4CZD" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="l2Vlx" id="2VNGR_E4CZG" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="2VNGR_E4CZH" role="3EZMnx">
        <property role="S$Qs1" value="true" />
        <node concept="3F0ifn" id="2VNGR_E4CZI" role="3EZMnx">
          <property role="3F0ifm" value="{" />
        </node>
        <node concept="l2Vlx" id="2VNGR_E4CZJ" role="2iSdaV" />
        <node concept="3F2HdR" id="2VNGR_E4CZK" role="3EZMnx">
          <property role="2czwfN" value="true" />
          <ref role="1NtTu8" to="tpc2:hJF10O6" />
          <node concept="lj46D" id="2VNGR_E4CZL" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pj6Ft" id="2VNGR_E4CZM" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="l2Vlx" id="2VNGR_E4CZN" role="2czzBx" />
          <node concept="pVoyu" id="2VNGR_E4CZO" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3F0ifn" id="2VNGR_E4CZP" role="2czzBI">
            <property role="3F0ifm" value="Add style items" />
            <ref role="1k5W1q" to="tpen:hshO_Yc" resolve="Comment" />
          </node>
        </node>
        <node concept="3F0ifn" id="2VNGR_E4CZQ" role="3EZMnx">
          <property role="3F0ifm" value="}" />
        </node>
        <node concept="3F0ifn" id="2VNGR_E4CZR" role="AHCbl">
          <property role="3F0ifm" value="{...}" />
          <ref role="1k5W1q" to="tpen:4vxLnq9T43C" resolve="FoldedCell" />
        </node>
        <node concept="ljvvj" id="44T5AkNFnVe" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="44T5AkN_wtI" role="3EZMnx" />
      <node concept="l2Vlx" id="2VNGR_E4CZS" role="2iSdaV" />
    </node>
  </node>
  <node concept="2NdhB4" id="3yX4vo1Qwgl">
    <property role="TrG5h" value="EditorLanguageKeyPack" />
    <node concept="2NdhxG" id="3yX4vo1QFNt" role="2NdZaQ">
      <property role="Xl_RC" value="PARENTH" />
    </node>
    <node concept="2NdhxG" id="2NgG6tkHvVt" role="2NdZaQ">
      <property role="Xl_RC" value="KEYWORD" />
    </node>
  </node>
  <node concept="24kQdi" id="7Ur4aGsRNiD">
    <property role="3GE5qa" value="Stylesheet" />
    <ref role="1XX52x" to="tpc2:7Ur4aGsHrro" resolve="StyleClassReferenceList" />
    <node concept="3F2HdR" id="7Ur4aGsRNju" role="2wV5jI">
      <property role="2czwfO" value="," />
      <ref role="1NtTu8" to="tpc2:7Ur4aGsHr_p" />
      <node concept="l2Vlx" id="7Ur4aGsW2Cp" role="2czzBx" />
    </node>
  </node>
  <node concept="24kQdi" id="2airAaRPccz">
    <property role="3GE5qa" value="Stylesheet" />
    <ref role="1XX52x" to="tpc2:2airAaRP9mw" resolve="DominatesRecord" />
    <node concept="3EZMnI" id="2airAaRPcrp" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="VPM3Z" id="2airAaRPcry" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="PMmxH" id="1cEk0X85$lR" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="hEUz4pu" resolve="style" />
      </node>
      <node concept="3F1sOY" id="2airAaRPcr$" role="3EZMnx">
        <property role="1$x2rV" value="&lt;all&gt;" />
        <ref role="1NtTu8" to="tpc2:2airAaRPcca" />
      </node>
      <node concept="l2Vlx" id="2airAaRPcr_" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7Ur4aGwilos">
    <property role="3GE5qa" value="Stylesheet" />
    <ref role="1XX52x" to="tpc2:7Ur4aGwilo0" resolve="ApplyStyleClassCondition" />
    <node concept="3EZMnI" id="7Ur4aGwilpX" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="PMmxH" id="7Ur4aGwilpY" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="hoxUe05" resolve="item" />
        <node concept="OXEIz" id="7Ur4aGwilpZ" role="P5bDN">
          <node concept="UkePV" id="7Ur4aGwilq0" role="OY2wv">
            <ref role="Ul1FP" to="tpc2:hgV6hR6" resolve="StyleClassItem" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="7Ur4aGwilq1" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F1sOY" id="7Ur4aGwilqt" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:1GhovrAr1CW" />
      </node>
      <node concept="3F0ifn" id="7Ur4aGwilq5" role="3EZMnx">
        <property role="3F0ifm" value="condition:" />
      </node>
      <node concept="3F1sOY" id="7Ur4aGwilq6" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <property role="39s7Ar" value="true" />
        <ref role="1NtTu8" to="tpc2:7Ur4aGwilo2" />
      </node>
      <node concept="2iRfu4" id="7Ur4aGwilq7" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="1cEk0X7pP35">
    <property role="TrG5h" value="CellStyle_Component" />
    <ref role="1XX52x" to="tpc2:1cEk0X7fm5O" resolve="ICellStyle" />
    <node concept="3EZMnI" id="1cEk0X7pP36" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="1cEk0X7pP37" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="1iCGBv" id="1cEk0X7pP38" role="3EZMnx">
          <property role="1$x2rV" value="&lt;no base style&gt;" />
          <ref role="1NtTu8" to="tpc2:1cEk0X7fp1l" />
          <node concept="1sVBvm" id="1cEk0X7pP39" role="1sWHZn">
            <node concept="3F0A7n" id="1cEk0X7pP3a" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="1cEk0X7pP3b" role="3EZMnx">
          <property role="3F0ifm" value="{" />
          <ref role="1k5W1q" to="tpen:hFD5onb" resolve="LeftBrace" />
        </node>
        <node concept="VPM3Z" id="1cEk0X7pP3c" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="1cEk0X7pP3d" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="1cEk0X7pP3e" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="3XFhqQ" id="1cEk0X7pP3f" role="3EZMnx" />
        <node concept="3F2HdR" id="1cEk0X7pP3g" role="3EZMnx">
          <property role="2czwfN" value="true" />
          <ref role="1NtTu8" to="tpc2:hJF10O6" />
          <node concept="2iRkQZ" id="1cEk0X7pP3h" role="2czzBx" />
        </node>
        <node concept="VPM3Z" id="1cEk0X7pP3i" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="1cEk0X7pP3j" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="1cEk0X7pP3k" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" to="tpen:hFD5_7H" resolve="RightBrace" />
      </node>
      <node concept="2iRkQZ" id="1cEk0X7pP3l" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7Ur4aGuQXmn">
    <property role="3GE5qa" value="Stylesheet" />
    <ref role="1XX52x" to="tpc2:7Ur4aGuQXbV" resolve="StyleReference" />
    <node concept="1iCGBv" id="7Ur4aGvElfY" role="2wV5jI">
      <ref role="1NtTu8" to="tpc2:7Ur4aGuQXlY" />
      <node concept="1sVBvm" id="7Ur4aGvElfZ" role="1sWHZn">
        <node concept="3SHvHV" id="7Ur4aGvElg4" role="2wV5jI" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3t4KfBESaSg">
    <property role="3GE5qa" value="Stylesheet" />
    <ref role="1XX52x" to="tpc2:3t4KfBESag2" resolve="AttributeStyleClassItem" />
    <node concept="3EZMnI" id="3t4KfBESaUC" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="1iCGBv" id="3t4KfBESc9Q" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:3t4KfBESbzj" />
        <ref role="1k5W1q" node="hoxUe05" resolve="item" />
        <node concept="1sVBvm" id="3t4KfBESc9R" role="1sWHZn">
          <node concept="3F0A7n" id="3t4KfBEScpD" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
        <node concept="OXEIz" id="3t4KfBEScpF" role="P5bDN">
          <node concept="UkePV" id="3t4KfBEScpH" role="OY2wv">
            <ref role="Ul1FP" to="tpc2:hgV6hR6" resolve="StyleClassItem" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="3t4KfBESaUG" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F1sOY" id="3t4KfBESaVc" role="3EZMnx">
        <property role="1cu_pB" value="3" />
        <ref role="1NtTu8" to="tpc2:3t4KfBESag3" />
      </node>
      <node concept="2iRfu4" id="3t4KfBESaVp" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3t4KfBEkYKg">
    <property role="3GE5qa" value="Stylesheet" />
    <ref role="1XX52x" to="tpc2:3t4KfBEkQvF" resolve="StyleAttributeDeclaration" />
    <node concept="3EZMnI" id="3t4KfBEkYLe" role="2wV5jI">
      <node concept="3F0A7n" id="7zL4upErSkM" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:7zL4upErSkK" resolve="inherited" />
      </node>
      <node concept="PMmxH" id="7zL4upErSk$" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="hEUz4pu" resolve="style" />
      </node>
      <node concept="3F0A7n" id="3t4KfBEl4vY" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="ljvvj" id="3t4KfBEl5Fd" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3t4KfBEl5EE" role="3EZMnx">
        <property role="3F0ifm" value="of type" />
        <ref role="1k5W1q" node="hEUz4pu" resolve="style" />
        <node concept="lj46D" id="3t4KfBEl5Fg" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="3t4KfBEl5EO" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:3t4KfBEkS9I" />
        <node concept="ljvvj" id="3t4KfBEl5FE" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3t4KfBEl5Fx" role="3EZMnx">
        <property role="3F0ifm" value="default" />
        <ref role="1k5W1q" node="hEUz4pu" resolve="style" />
        <node concept="lj46D" id="3t4KfBEl5FH" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="3t4KfBEl5FY" role="3EZMnx">
        <ref role="1NtTu8" to="tpc2:3t4KfBEl5FV" />
        <node concept="ljvvj" id="7zL4upEwR3V" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="7zL4upEwR3E" role="3EZMnx">
        <node concept="ljvvj" id="7zL4upEwR3S" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="3t4KfBEl5F6" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5eGiGGGHINb">
    <property role="3GE5qa" value="Stylesheet" />
    <ref role="1XX52x" to="tpc2:5eGiGGGHIBn" resolve="StyleAttributeReferenceExpression" />
    <node concept="3EZMnI" id="hJB7pa_" role="2wV5jI">
      <node concept="PMmxH" id="5eGiGGGOTpt" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F0ifn" id="hJB7paC" role="3EZMnx">
        <property role="3F0ifm" value="/" />
        <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
      </node>
      <node concept="1iCGBv" id="hJB7t8s" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no name&gt;" />
        <ref role="1NtTu8" to="tpc2:5eGiGGGHIMM" />
        <node concept="1sVBvm" id="hJB7t8t" role="1sWHZn">
          <node concept="3F0A7n" id="hJB7ylJ" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <property role="1$x2rV" value="&lt;null&gt;" />
            <ref role="1k5W1q" to="tpd3:hwSDXQa" resolve="ReferenceDecorated" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
        <node concept="3$7jql" id="hJBbk$z" role="3F10Kt">
          <property role="3$6WeP" value="0.0" />
        </node>
      </node>
      <node concept="3F0ifn" id="hJB7paK" role="3EZMnx">
        <property role="3F0ifm" value="/" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="l2Vlx" id="i0NEeO2" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="CzpafHMSVN">
    <property role="3GE5qa" value="CellModel" />
    <ref role="1XX52x" to="tpc2:CzpafHMSVi" resolve="StubEditorCellModel" />
    <node concept="PMmxH" id="CzpafHMSVP" role="2wV5jI">
      <ref role="PMmxG" to="tpco:37EzmTDC95l" resolve="ImplementationRemovedInStubMessage" />
    </node>
  </node>
</model>

