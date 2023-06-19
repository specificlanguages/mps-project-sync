<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:682764f9-ae55-4c0f-8223-7e504f7203ea(com.specificlanguages.projectsync.buildext.check)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="5" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="vbkb" ref="r:08f2b659-8469-4592-93bf-a6edb46ec86d(jetbrains.mps.build.behavior)" />
    <import index="3ior" ref="r:e9081cad-d8c3-45f2-b4ad-1dabd5ff82af(jetbrains.mps.build.structure)" />
    <import index="o3n2" ref="r:26eadcf0-f275-4e90-be37-e4432772a74d(jetbrains.mps.build.util)" />
    <import index="kdzh" ref="r:0353b795-df17-4050-9687-ee47eeb7094f(jetbrains.mps.build.mps.structure)" />
    <import index="3ju5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs(MPS.Core/)" />
    <import index="3njg" ref="r:eadca9c5-6cd8-4ad8-84f3-0b28137040d9(com.spclngs.projectconventions.buildext.structure)" />
    <import index="eoo2" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.nio.file(JDK/)" />
    <import index="et5u" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.messages(MPS.Core/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="kart" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:org.xml.sax(JDK/)" />
    <import index="vpqd" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.xml.parsers(JDK/)" />
    <import index="gmde" ref="7eb68773-0c91-4dc5-a5a6-0fd3dd31f774/java:com.specificlanguages.projectsync(com.specificlanguages.projectsync.logic/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
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
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
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
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1164879685961" name="throwsItem" index="Sfmx6" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
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
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="5351203823916832286" name="jetbrains.mps.baseLanguage.structure.ResourceVariable" flags="ng" index="3J1hQo" />
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
        <child id="5351203823916750334" name="resource" index="3J1_TS" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="5045161044515397667" name="jetbrains.mps.lang.smodel.structure.Node_PointerOperation" flags="ng" index="iZEcu" />
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="3562215692195599741" name="jetbrains.mps.lang.smodel.structure.SLinkImplicitSelect" flags="nn" index="13MTOL">
        <reference id="3562215692195600259" name="link" index="13MTZf" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="1176923520476" name="jetbrains.mps.baseLanguage.collections.structure.ExcludeOperation" flags="nn" index="66VNe" />
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
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
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1205679737078" name="jetbrains.mps.baseLanguage.collections.structure.SortOperation" flags="nn" index="2S7cBI">
        <child id="1205679832066" name="ascending" index="2S7zOq" />
      </concept>
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1201872418428" name="jetbrains.mps.baseLanguage.collections.structure.GetKeysOperation" flags="nn" index="3lbrtF" />
      <concept id="1178286324487" name="jetbrains.mps.baseLanguage.collections.structure.SortDirection" flags="nn" index="1nlBCl" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1240687580870" name="jetbrains.mps.baseLanguage.collections.structure.JoinOperation" flags="nn" index="3uJxvA">
        <child id="1240687658305" name="delimiter" index="3uJOhx" />
      </concept>
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="1180964022718" name="jetbrains.mps.baseLanguage.collections.structure.ConcatOperation" flags="nn" index="3QWeyG" />
    </language>
  </registry>
  <node concept="312cEu" id="6ZbResQbCNP">
    <property role="TrG5h" value="CheckBuildProject" />
    <node concept="2YIFZL" id="6ZbResQbE6T" role="jymVt">
      <property role="TrG5h" value="check" />
      <node concept="3clFbS" id="6ZbResQbE6W" role="3clF47">
        <node concept="3cpWs8" id="6ZbResPSEOG" role="3cqZAp">
          <node concept="3cpWsn" id="6ZbResPSEOH" role="3cpWs9">
            <property role="TrG5h" value="projectDescriptionPathString" />
            <node concept="17QB3L" id="6ZbResPSEOc" role="1tU5fm" />
            <node concept="2OqwBi" id="6ZbResPSEOI" role="33vP2m">
              <node concept="2OqwBi" id="6ZbResPSEOJ" role="2Oq$k0">
                <node concept="37vLTw" id="6ZbResQbHQG" role="2Oq$k0">
                  <ref role="3cqZAo" node="6ZbResQbHbM" resolve="aspect" />
                </node>
                <node concept="3TrEf2" id="6ZbResPSEOL" role="2OqNvi">
                  <ref role="3Tt5mk" to="3njg:6ZbResPSdZ5" resolve="path" />
                </node>
              </node>
              <node concept="2qgKlT" id="6ZbResPSEOM" role="2OqNvi">
                <ref role="37wK5l" to="vbkb:4Kip2_918Y$" resolve="getLocalPath" />
                <node concept="37vLTw" id="6ZbResPUbRg" role="37wK5m">
                  <ref role="3cqZAo" node="6ZbResQdHXf" resolve="context" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6ZbResPSEXL" role="3cqZAp">
          <node concept="3clFbS" id="6ZbResPSEXN" role="3clFbx">
            <node concept="3cpWs6" id="6ZbResPSIIr" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="6ZbResPSII7" role="3clFbw">
            <node concept="37vLTw" id="6ZbResPSEYK" role="3uHU7B">
              <ref role="3cqZAo" node="6ZbResPSEOH" resolve="projectDescriptionPathString" />
            </node>
            <node concept="10Nm6u" id="6ZbResPSFkL" role="3uHU7w" />
          </node>
        </node>
        <node concept="3clFbH" id="6ZbResPUoyS" role="3cqZAp" />
        <node concept="3cpWs8" id="6ZbResPUpbv" role="3cqZAp">
          <node concept="3cpWsn" id="6ZbResPUpbw" role="3cpWs9">
            <property role="TrG5h" value="projectDir" />
            <node concept="3uibUv" id="6ZbResPUpbx" role="1tU5fm">
              <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
            </node>
            <node concept="2OqwBi" id="6ZbResQ4irr" role="33vP2m">
              <node concept="2OqwBi" id="6ZbResQ4oeG" role="2Oq$k0">
                <node concept="2YIFZM" id="6ZbResPUpso" role="2Oq$k0">
                  <ref role="1Pybhc" to="eoo2:~Paths" resolve="Paths" />
                  <ref role="37wK5l" to="eoo2:~Paths.get(java.lang.String,java.lang.String...)" resolve="get" />
                  <node concept="37vLTw" id="6ZbResPUpsC" role="37wK5m">
                    <ref role="3cqZAo" node="6ZbResPSEOH" resolve="projectDescriptionPathString" />
                  </node>
                </node>
                <node concept="liA8E" id="6ZbResQ4pCe" role="2OqNvi">
                  <ref role="37wK5l" to="eoo2:~Path.normalize()" resolve="normalize" />
                </node>
              </node>
              <node concept="liA8E" id="6ZbResQ4jOA" role="2OqNvi">
                <ref role="37wK5l" to="eoo2:~Path.getParent()" resolve="getParent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6ZbResQ4miK" role="3cqZAp">
          <node concept="3clFbS" id="6ZbResQ4miM" role="3clFbx">
            <node concept="3cpWs6" id="6ZbResQ4qwm" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="6ZbResQ4nWI" role="3clFbw">
            <node concept="10Nm6u" id="6ZbResQ4o87" role="3uHU7w" />
            <node concept="37vLTw" id="6ZbResQ4nLq" role="3uHU7B">
              <ref role="3cqZAo" node="6ZbResPUpbw" resolve="projectDir" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6ZbResPT$to" role="3cqZAp" />
        <node concept="3cpWs8" id="6ZbResPT$xx" role="3cqZAp">
          <node concept="3cpWsn" id="6ZbResPT$x$" role="3cpWs9">
            <property role="TrG5h" value="buildProject" />
            <node concept="3Tqbb2" id="6ZbResPT$xv" role="1tU5fm">
              <ref role="ehGHo" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
            </node>
            <node concept="1PxgMI" id="6ZbResPTD8S" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="6ZbResPTD99" role="3oSUPX">
                <ref role="cht4Q" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
              </node>
              <node concept="2OqwBi" id="6ZbResPT$JS" role="1m5AlR">
                <node concept="37vLTw" id="6ZbResQbL5e" role="2Oq$k0">
                  <ref role="3cqZAo" node="6ZbResQbHbM" resolve="aspect" />
                </node>
                <node concept="1mfA1w" id="6ZbResPTCYm" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6ZbResPT_gh" role="3cqZAp" />
        <node concept="3cpWs8" id="6ZbResPU6rV" role="3cqZAp">
          <node concept="3cpWsn" id="6ZbResPU6rW" role="3cpWs9">
            <property role="TrG5h" value="modulesInBuildProject" />
            <node concept="A3Dl8" id="6ZbResPU6qE" role="1tU5fm">
              <node concept="3Tqbb2" id="6ZbResPU6qH" role="A3Ik2">
                <ref role="ehGHo" to="kdzh:hS0KzPONfF" resolve="BuildMps_AbstractModule" />
              </node>
            </node>
            <node concept="2OqwBi" id="6ZbResPU6rX" role="33vP2m">
              <node concept="2OqwBi" id="6ZbResPU6rY" role="2Oq$k0">
                <node concept="2OqwBi" id="6ZbResPU6rZ" role="2Oq$k0">
                  <node concept="37vLTw" id="6ZbResPU6s0" role="2Oq$k0">
                    <ref role="3cqZAo" node="6ZbResPT$x$" resolve="buildProject" />
                  </node>
                  <node concept="3Tsc0h" id="6ZbResPU6s1" role="2OqNvi">
                    <ref role="3TtcxE" to="3ior:6qcrfIJFfrM" resolve="parts" />
                  </node>
                </node>
                <node concept="v3k3i" id="6ZbResPU6s2" role="2OqNvi">
                  <node concept="chp4Y" id="6ZbResPU6s3" role="v3oSu">
                    <ref role="cht4Q" to="kdzh:4zCbl23cpcc" resolve="BuildMps_Module" />
                  </node>
                </node>
              </node>
              <node concept="3QWeyG" id="6ZbResPU6s4" role="2OqNvi">
                <node concept="2OqwBi" id="6ZbResPU6s5" role="576Qk">
                  <node concept="2OqwBi" id="6ZbResPU6s6" role="2Oq$k0">
                    <node concept="2OqwBi" id="6ZbResPU6s7" role="2Oq$k0">
                      <node concept="37vLTw" id="6ZbResPU6s8" role="2Oq$k0">
                        <ref role="3cqZAo" node="6ZbResPT$x$" resolve="buildProject" />
                      </node>
                      <node concept="3Tsc0h" id="6ZbResPU6s9" role="2OqNvi">
                        <ref role="3TtcxE" to="3ior:6qcrfIJFfrM" resolve="parts" />
                      </node>
                    </node>
                    <node concept="v3k3i" id="6ZbResPU6sa" role="2OqNvi">
                      <node concept="chp4Y" id="6ZbResPU6sb" role="v3oSu">
                        <ref role="cht4Q" to="kdzh:1jjYQYSgYJt" resolve="BuildMps_Group" />
                      </node>
                    </node>
                  </node>
                  <node concept="13MTOL" id="6ZbResPU6sc" role="2OqNvi">
                    <ref role="13MTZf" to="kdzh:1jjYQYSgYJu" resolve="modules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6ZbResPU7lJ" role="3cqZAp" />
        <node concept="3cpWs8" id="6ZbResQ4EiE" role="3cqZAp">
          <node concept="3cpWsn" id="6ZbResQ4EiK" role="3cpWs9">
            <property role="TrG5h" value="inMps" />
            <node concept="3rvAFt" id="6ZbResQ4EiM" role="1tU5fm">
              <node concept="3uibUv" id="6ZbResQ4FNv" role="3rvQeY">
                <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
              </node>
              <node concept="3Tqbb2" id="6ZbResQ4FPB" role="3rvSg0">
                <ref role="ehGHo" to="kdzh:hS0KzPONfF" resolve="BuildMps_AbstractModule" />
              </node>
            </node>
            <node concept="2ShNRf" id="6ZbResQ4Tnh" role="33vP2m">
              <node concept="3rGOSV" id="6ZbResQ4T$q" role="2ShVmc">
                <node concept="3uibUv" id="6ZbResQ4THn" role="3rHrn6">
                  <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
                </node>
                <node concept="3Tqbb2" id="6ZbResQ4TNZ" role="3rHtpV">
                  <ref role="ehGHo" to="kdzh:hS0KzPONfF" resolve="BuildMps_AbstractModule" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6ZbResQ4Vtn" role="3cqZAp" />
        <node concept="2Gpval" id="6ZbResQ4X30" role="3cqZAp">
          <node concept="2GrKxI" id="6ZbResQ4X32" role="2Gsz3X">
            <property role="TrG5h" value="module" />
          </node>
          <node concept="37vLTw" id="6ZbResQ4XMQ" role="2GsD0m">
            <ref role="3cqZAo" node="6ZbResPU6rW" resolve="modulesInBuildProject" />
          </node>
          <node concept="3clFbS" id="6ZbResQ4X36" role="2LFqv$">
            <node concept="3cpWs8" id="6ZbResQ4Z2H" role="3cqZAp">
              <node concept="3cpWsn" id="6ZbResQ4Z2I" role="3cpWs9">
                <property role="TrG5h" value="localPath" />
                <node concept="17QB3L" id="6ZbResQ4Z01" role="1tU5fm" />
                <node concept="2OqwBi" id="6ZbResQ4Z2J" role="33vP2m">
                  <node concept="2OqwBi" id="6ZbResQ4Z2K" role="2Oq$k0">
                    <node concept="2GrUjf" id="6ZbResQ4Z2L" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="6ZbResQ4X32" resolve="module" />
                    </node>
                    <node concept="3TrEf2" id="6ZbResQ4Z2M" role="2OqNvi">
                      <ref role="3Tt5mk" to="kdzh:hS0KzPP7W_" resolve="path" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="6ZbResQ4Z2N" role="2OqNvi">
                    <ref role="37wK5l" to="vbkb:4Kip2_918Y$" resolve="getLocalPath" />
                    <node concept="37vLTw" id="6ZbResQ4Z2O" role="37wK5m">
                      <ref role="3cqZAo" node="6ZbResQdHXf" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6ZbResQ4Zd_" role="3cqZAp">
              <node concept="3clFbS" id="6ZbResQ4ZdB" role="3clFbx">
                <node concept="3N13vt" id="6ZbResQ4ZkE" role="3cqZAp" />
              </node>
              <node concept="3clFbC" id="6ZbResQ4ZjS" role="3clFbw">
                <node concept="10Nm6u" id="6ZbResQ4ZjZ" role="3uHU7w" />
                <node concept="37vLTw" id="6ZbResQ4ZeJ" role="3uHU7B">
                  <ref role="3cqZAo" node="6ZbResQ4Z2I" resolve="localPath" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6ZbResQ50hL" role="3cqZAp" />
            <node concept="3cpWs8" id="6ZbResQ50pZ" role="3cqZAp">
              <node concept="3cpWsn" id="6ZbResQ50q0" role="3cpWs9">
                <property role="TrG5h" value="relativePath" />
                <node concept="3uibUv" id="6ZbResQ50q1" role="1tU5fm">
                  <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
                </node>
                <node concept="2OqwBi" id="6ZbResQ50$9" role="33vP2m">
                  <node concept="37vLTw" id="6ZbResQ50tW" role="2Oq$k0">
                    <ref role="3cqZAo" node="6ZbResPUpbw" resolve="projectDir" />
                  </node>
                  <node concept="liA8E" id="6ZbResQ50OK" role="2OqNvi">
                    <ref role="37wK5l" to="eoo2:~Path.relativize(java.nio.file.Path)" resolve="relativize" />
                    <node concept="2YIFZM" id="6ZbResQ511Y" role="37wK5m">
                      <ref role="37wK5l" to="eoo2:~Paths.get(java.lang.String,java.lang.String...)" resolve="get" />
                      <ref role="1Pybhc" to="eoo2:~Paths" resolve="Paths" />
                      <node concept="37vLTw" id="6ZbResQ5179" role="37wK5m">
                        <ref role="3cqZAo" node="6ZbResQ4Z2I" resolve="localPath" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6ZbResQ4Zuc" role="3cqZAp" />
            <node concept="3clFbF" id="6ZbResQ4ZvG" role="3cqZAp">
              <node concept="37vLTI" id="6ZbResQ51tO" role="3clFbG">
                <node concept="2GrUjf" id="6ZbResQ51vo" role="37vLTx">
                  <ref role="2Gs0qQ" node="6ZbResQ4X32" resolve="module" />
                </node>
                <node concept="3EllGN" id="6ZbResQ50eA" role="37vLTJ">
                  <node concept="37vLTw" id="6ZbResQ51jf" role="3ElVtu">
                    <ref role="3cqZAo" node="6ZbResQ50q0" resolve="relativePath" />
                  </node>
                  <node concept="37vLTw" id="6ZbResQ4ZvE" role="3ElQJh">
                    <ref role="3cqZAo" node="6ZbResQ4EiK" resolve="inMps" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6ZbResQ4R0x" role="3cqZAp" />
        <node concept="3cpWs8" id="6ZbResPUEch" role="3cqZAp">
          <node concept="3cpWsn" id="6ZbResPUEck" role="3cpWs9">
            <property role="TrG5h" value="inProjectDescription" />
            <node concept="2hMVRd" id="6ZbResPUEcd" role="1tU5fm">
              <node concept="3uibUv" id="6ZbResPUEqT" role="2hN53Y">
                <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6ZbResQ3YrQ" role="3cqZAp" />
        <node concept="3cpWs8" id="6ZbResQ4qGc" role="3cqZAp">
          <node concept="3cpWsn" id="6ZbResQ4qGd" role="3cpWs9">
            <property role="TrG5h" value="projectDescriptionFile" />
            <node concept="3uibUv" id="6ZbResQ4qbY" role="1tU5fm">
              <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
            </node>
            <node concept="2OqwBi" id="6ZbResQ4qGe" role="33vP2m">
              <node concept="2YIFZM" id="6ZbResQ4qGf" role="2Oq$k0">
                <ref role="1Pybhc" to="3ju5:~FileSystem" resolve="FileSystem" />
                <ref role="37wK5l" to="3ju5:~FileSystem.getInstance()" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="6ZbResQ4qGg" role="2OqNvi">
                <ref role="37wK5l" to="3ju5:~FileSystem.getFile(java.lang.String)" resolve="getFile" />
                <node concept="37vLTw" id="6ZbResQ4qGh" role="37wK5m">
                  <ref role="3cqZAo" node="6ZbResPSEOH" resolve="projectDescriptionPathString" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="6ZbResQ3ZeB" role="3cqZAp">
          <node concept="3uVAMA" id="6ZbResQ4236" role="1zxBo5">
            <node concept="XOnhg" id="6ZbResQ4237" role="1zc67B">
              <property role="TrG5h" value="fnfe" />
              <node concept="nSUau" id="6ZbResQ4238" role="1tU5fm">
                <node concept="3uibUv" id="6ZbResQ42JA" role="nSUat">
                  <ref role="3uigEE" to="guwi:~FileNotFoundException" resolve="FileNotFoundException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="6ZbResQ4239" role="1zc67A">
              <node concept="3clFbF" id="6ZbResQcRHy" role="3cqZAp">
                <node concept="1rXfSq" id="6ZbResQcRHw" role="3clFbG">
                  <ref role="37wK5l" node="6ZbResQcRhQ" resolve="report" />
                  <node concept="37vLTw" id="6ZbResQcTo2" role="37wK5m">
                    <ref role="3cqZAo" node="6ZbResQcPVC" resolve="handler" />
                  </node>
                  <node concept="3cpWs3" id="6ZbResQcSp5" role="37wK5m">
                    <node concept="2OqwBi" id="6ZbResQcSp6" role="3uHU7w">
                      <node concept="37vLTw" id="6ZbResQcSp7" role="2Oq$k0">
                        <ref role="3cqZAo" node="6ZbResQ4qGd" resolve="projectDescriptionFile" />
                      </node>
                      <node concept="liA8E" id="6ZbResQcSp8" role="2OqNvi">
                        <ref role="37wK5l" to="3ju5:~IFile.getPath()" resolve="getPath" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="6ZbResQcSp9" role="3uHU7B">
                      <property role="Xl_RC" value="File not found: " />
                    </node>
                  </node>
                  <node concept="37vLTw" id="6ZbResQcUYY" role="37wK5m">
                    <ref role="3cqZAo" node="6ZbResQbHbM" resolve="aspect" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="6ZbResQ42QU" role="3cqZAp" />
            </node>
          </node>
          <node concept="3uVAMA" id="6ZbResQ72fi" role="1zxBo5">
            <node concept="XOnhg" id="6ZbResQ72fj" role="1zc67B">
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="6ZbResQ72fk" role="1tU5fm">
                <node concept="3uibUv" id="6ZbResQ73we" role="nSUat">
                  <ref role="3uigEE" to="kart:~SAXException" resolve="SAXException" />
                </node>
                <node concept="3uibUv" id="3iGXiMnQQbo" role="nSUat">
                  <ref role="3uigEE" to="vpqd:~ParserConfigurationException" resolve="ParserConfigurationException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="6ZbResQ72fl" role="1zc67A">
              <node concept="3clFbF" id="6ZbResQcXoK" role="3cqZAp">
                <node concept="1rXfSq" id="6ZbResQcXoI" role="3clFbG">
                  <ref role="37wK5l" node="6ZbResQd3_r" resolve="report" />
                  <node concept="37vLTw" id="6ZbResQcXIu" role="37wK5m">
                    <ref role="3cqZAo" node="6ZbResQcPVC" resolve="handler" />
                  </node>
                  <node concept="3cpWs3" id="6ZbResQcZ0S" role="37wK5m">
                    <node concept="2OqwBi" id="6ZbResQcZ0T" role="3uHU7w">
                      <node concept="37vLTw" id="6ZbResQcZ0U" role="2Oq$k0">
                        <ref role="3cqZAo" node="6ZbResQ72fj" resolve="e" />
                      </node>
                      <node concept="liA8E" id="6ZbResQcZ0V" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="6ZbResQcZ0W" role="3uHU7B">
                      <property role="Xl_RC" value="Error parsing file: " />
                    </node>
                  </node>
                  <node concept="37vLTw" id="6ZbResQd2oH" role="37wK5m">
                    <ref role="3cqZAo" node="6ZbResQbHbM" resolve="aspect" />
                  </node>
                  <node concept="37vLTw" id="6ZbResQd3a7" role="37wK5m">
                    <ref role="3cqZAo" node="6ZbResQ72fj" resolve="e" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="6ZbResQ77a2" role="3cqZAp" />
            </node>
          </node>
          <node concept="3uVAMA" id="6ZbResQ4x89" role="1zxBo5">
            <node concept="XOnhg" id="6ZbResQ4x8a" role="1zc67B">
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="6ZbResQ4x8b" role="1tU5fm">
                <node concept="3uibUv" id="6ZbResQ4y_I" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="6ZbResQ4x8c" role="1zc67A">
              <node concept="3clFbF" id="6ZbResQduSt" role="3cqZAp">
                <node concept="1rXfSq" id="6ZbResQduSr" role="3clFbG">
                  <ref role="37wK5l" node="6ZbResQd3_r" resolve="report" />
                  <node concept="37vLTw" id="6ZbResQdxM8" role="37wK5m">
                    <ref role="3cqZAo" node="6ZbResQcPVC" resolve="handler" />
                  </node>
                  <node concept="3cpWs3" id="6ZbResQdvkr" role="37wK5m">
                    <node concept="2OqwBi" id="6ZbResQdvks" role="3uHU7w">
                      <node concept="37vLTw" id="6ZbResQdvkt" role="2Oq$k0">
                        <ref role="3cqZAo" node="6ZbResQ4x8a" resolve="e" />
                      </node>
                      <node concept="liA8E" id="6ZbResQdvku" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="6ZbResQdvkv" role="3uHU7B">
                      <property role="Xl_RC" value="Error reading file: " />
                    </node>
                  </node>
                  <node concept="37vLTw" id="6ZbResQdyFW" role="37wK5m">
                    <ref role="3cqZAo" node="6ZbResQbHbM" resolve="aspect" />
                  </node>
                  <node concept="37vLTw" id="6ZbResQdwhK" role="37wK5m">
                    <ref role="3cqZAo" node="6ZbResQ4x8a" resolve="e" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="6ZbResQ4_MH" role="3cqZAp" />
            </node>
          </node>
          <node concept="3clFbS" id="6ZbResQ3ZeD" role="1zxBo7">
            <node concept="3clFbF" id="6ZbResQ3WXn" role="3cqZAp">
              <node concept="37vLTI" id="6ZbResQ3WXp" role="3clFbG">
                <node concept="2ShNRf" id="6ZbResPVlN6" role="37vLTx">
                  <node concept="2i4dXS" id="6ZbResPVlV5" role="2ShVmc">
                    <node concept="3uibUv" id="6ZbResPVm2M" role="HW$YZ">
                      <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
                    </node>
                    <node concept="2OqwBi" id="6ZbResPVjuI" role="I$8f6">
                      <node concept="2YIFZM" id="4JzFrdTyBC8" role="2Oq$k0">
                        <ref role="37wK5l" node="6ZbResPUHa1" resolve="collectModuleFilesFromProjectDescription" />
                        <ref role="1Pybhc" node="6ZbResPUGXt" resolve="CollectModuleFiles" />
                        <node concept="37vLTw" id="6ZbResQ4qGi" role="37wK5m">
                          <ref role="3cqZAo" node="6ZbResQ4qGd" resolve="projectDescriptionFile" />
                        </node>
                      </node>
                      <node concept="3$u5V9" id="6ZbResPVjLl" role="2OqNvi">
                        <node concept="1bVj0M" id="6ZbResPVjLn" role="23t8la">
                          <node concept="3clFbS" id="6ZbResPVjLo" role="1bW5cS">
                            <node concept="3clFbF" id="6ZbResPVjQc" role="3cqZAp">
                              <node concept="2OqwBi" id="6ZbResPVkge" role="3clFbG">
                                <node concept="37vLTw" id="6ZbResPVjQb" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6ZbResPUpbw" resolve="projectDir" />
                                </node>
                                <node concept="liA8E" id="6ZbResPVkFQ" role="2OqNvi">
                                  <ref role="37wK5l" to="eoo2:~Path.relativize(java.nio.file.Path)" resolve="relativize" />
                                  <node concept="2YIFZM" id="6ZbResPVkX3" role="37wK5m">
                                    <ref role="37wK5l" to="eoo2:~Paths.get(java.lang.String,java.lang.String...)" resolve="get" />
                                    <ref role="1Pybhc" to="eoo2:~Paths" resolve="Paths" />
                                    <node concept="2OqwBi" id="6ZbResPVlc9" role="37wK5m">
                                      <node concept="37vLTw" id="6ZbResPVl31" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6ZbResPVjLp" resolve="it" />
                                      </node>
                                      <node concept="liA8E" id="6ZbResPVloy" role="2OqNvi">
                                        <ref role="37wK5l" to="3ju5:~IFile.getPath()" resolve="getPath" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="6ZbResPVjLp" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="6ZbResPVjLq" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="6ZbResQ3WXt" role="37vLTJ">
                  <ref role="3cqZAo" node="6ZbResPUEck" resolve="inProjectDescription" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6ZbResPXYob" role="3cqZAp" />
        <node concept="3cpWs8" id="6ZbResPVoxx" role="3cqZAp">
          <node concept="3cpWsn" id="6ZbResPVox$" role="3cpWs9">
            <property role="TrG5h" value="notInBuildProject" />
            <node concept="A3Dl8" id="6ZbResPW339" role="1tU5fm">
              <node concept="3uibUv" id="6ZbResPW33b" role="A3Ik2">
                <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
              </node>
            </node>
            <node concept="2OqwBi" id="6ZbResPVp_7" role="33vP2m">
              <node concept="37vLTw" id="6ZbResPVp0I" role="2Oq$k0">
                <ref role="3cqZAo" node="6ZbResPUEck" resolve="inProjectDescription" />
              </node>
              <node concept="66VNe" id="6ZbResPVqg1" role="2OqNvi">
                <node concept="2OqwBi" id="6ZbResQ54AP" role="576Qk">
                  <node concept="37vLTw" id="6ZbResPVqki" role="2Oq$k0">
                    <ref role="3cqZAo" node="6ZbResQ4EiK" resolve="inMps" />
                  </node>
                  <node concept="3lbrtF" id="6ZbResQ55lq" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6ZbResPW0r8" role="3cqZAp">
          <node concept="3cpWsn" id="6ZbResPW0rb" role="3cpWs9">
            <property role="TrG5h" value="notInProjectDescription" />
            <node concept="A3Dl8" id="6ZbResPW36T" role="1tU5fm">
              <node concept="3uibUv" id="6ZbResPW36V" role="A3Ik2">
                <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
              </node>
            </node>
            <node concept="2OqwBi" id="6ZbResPW1B6" role="33vP2m">
              <node concept="2OqwBi" id="6ZbResQ55Vr" role="2Oq$k0">
                <node concept="37vLTw" id="6ZbResPW12a" role="2Oq$k0">
                  <ref role="3cqZAo" node="6ZbResQ4EiK" resolve="inMps" />
                </node>
                <node concept="3lbrtF" id="6ZbResQ56Lh" role="2OqNvi" />
              </node>
              <node concept="66VNe" id="6ZbResPW2dh" role="2OqNvi">
                <node concept="37vLTw" id="6ZbResPW2hy" role="576Qk">
                  <ref role="3cqZAo" node="6ZbResPUEck" resolve="inProjectDescription" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6ZbResPW2qq" role="3cqZAp" />
        <node concept="3clFbJ" id="6ZbResPW3bE" role="3cqZAp">
          <node concept="3clFbS" id="6ZbResPW3bG" role="3clFbx">
            <node concept="3clFbF" id="6ZbResQd$K4" role="3cqZAp">
              <node concept="1rXfSq" id="6ZbResQd$K2" role="3clFbG">
                <ref role="37wK5l" node="6ZbResQcRhQ" resolve="report" />
                <node concept="37vLTw" id="6ZbResQd_bN" role="37wK5m">
                  <ref role="3cqZAo" node="6ZbResQcPVC" resolve="handler" />
                </node>
                <node concept="3cpWs3" id="6ZbResQdAn2" role="37wK5m">
                  <node concept="Xl_RD" id="6ZbResQdA3P" role="3uHU7B">
                    <property role="Xl_RC" value="Modules missing from the project: " />
                  </node>
                  <node concept="2OqwBi" id="6ZbResQdAWD" role="3uHU7w">
                    <node concept="2OqwBi" id="6ZbResQdAWE" role="2Oq$k0">
                      <node concept="2OqwBi" id="6ZbResQdAWF" role="2Oq$k0">
                        <node concept="37vLTw" id="6ZbResQdAWG" role="2Oq$k0">
                          <ref role="3cqZAo" node="6ZbResPVox$" resolve="notInBuildProject" />
                        </node>
                        <node concept="2S7cBI" id="6ZbResQdAWH" role="2OqNvi">
                          <node concept="1bVj0M" id="6ZbResQdAWI" role="23t8la">
                            <node concept="3clFbS" id="6ZbResQdAWJ" role="1bW5cS">
                              <node concept="3clFbF" id="6ZbResQdAWK" role="3cqZAp">
                                <node concept="37vLTw" id="6ZbResQdAWL" role="3clFbG">
                                  <ref role="3cqZAo" node="6ZbResQdAWM" resolve="it" />
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="6ZbResQdAWM" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="6ZbResQdAWN" role="1tU5fm" />
                            </node>
                          </node>
                          <node concept="1nlBCl" id="6ZbResQdAWO" role="2S7zOq">
                            <property role="3clFbU" value="true" />
                          </node>
                        </node>
                      </node>
                      <node concept="3$u5V9" id="6ZbResQdAWP" role="2OqNvi">
                        <node concept="1bVj0M" id="6ZbResQdAWQ" role="23t8la">
                          <node concept="3clFbS" id="6ZbResQdAWR" role="1bW5cS">
                            <node concept="3clFbF" id="6ZbResQdAWS" role="3cqZAp">
                              <node concept="2OqwBi" id="6ZbResQdAWT" role="3clFbG">
                                <node concept="37vLTw" id="6ZbResQdAWU" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6ZbResQdAWW" resolve="it" />
                                </node>
                                <node concept="liA8E" id="6ZbResQdAWV" role="2OqNvi">
                                  <ref role="37wK5l" to="eoo2:~Path.toString()" resolve="toString" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="6ZbResQdAWW" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="6ZbResQdAWX" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3uJxvA" id="6ZbResQdAWY" role="2OqNvi">
                      <node concept="Xl_RD" id="6ZbResQdAWZ" role="3uJOhx">
                        <property role="Xl_RC" value=", " />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="6ZbResQdC0K" role="37wK5m">
                  <ref role="3cqZAo" node="6ZbResQbHbM" resolve="aspect" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6ZbResPW3V0" role="3clFbw">
            <node concept="37vLTw" id="6ZbResPW3Hh" role="2Oq$k0">
              <ref role="3cqZAo" node="6ZbResPVox$" resolve="notInBuildProject" />
            </node>
            <node concept="3GX2aA" id="6ZbResPW4hg" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="6ZbResPXaM$" role="3cqZAp" />
        <node concept="2Gpval" id="6ZbResQ5hDI" role="3cqZAp">
          <node concept="2GrKxI" id="6ZbResQ5hDK" role="2Gsz3X">
            <property role="TrG5h" value="path" />
          </node>
          <node concept="37vLTw" id="6ZbResQ5ihI" role="2GsD0m">
            <ref role="3cqZAo" node="6ZbResPW0rb" resolve="notInProjectDescription" />
          </node>
          <node concept="3clFbS" id="6ZbResQ5hDO" role="2LFqv$">
            <node concept="3cpWs8" id="6ZbResQ5k$F" role="3cqZAp">
              <node concept="3cpWsn" id="6ZbResQ5k$I" role="3cpWs9">
                <property role="TrG5h" value="module" />
                <node concept="3Tqbb2" id="6ZbResQ5k$E" role="1tU5fm">
                  <ref role="ehGHo" to="kdzh:hS0KzPONfF" resolve="BuildMps_AbstractModule" />
                </node>
                <node concept="3EllGN" id="6ZbResQ5kYP" role="33vP2m">
                  <node concept="2GrUjf" id="6ZbResQ5kZW" role="3ElVtu">
                    <ref role="2Gs0qQ" node="6ZbResQ5hDK" resolve="path" />
                  </node>
                  <node concept="37vLTw" id="6ZbResQ5kAi" role="3ElQJh">
                    <ref role="3cqZAo" node="6ZbResQ4EiK" resolve="inMps" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6ZbResQdDCx" role="3cqZAp">
              <node concept="1rXfSq" id="6ZbResQdDCv" role="3clFbG">
                <ref role="37wK5l" node="6ZbResQcRhQ" resolve="report" />
                <node concept="37vLTw" id="6ZbResQdEn0" role="37wK5m">
                  <ref role="3cqZAo" node="6ZbResQcPVC" resolve="handler" />
                </node>
                <node concept="Xl_RD" id="6ZbResQdF0P" role="37wK5m">
                  <property role="Xl_RC" value="Module is not part of the project according to project description" />
                </node>
                <node concept="37vLTw" id="6ZbResQdGQj" role="37wK5m">
                  <ref role="3cqZAo" node="6ZbResQ5k$I" resolve="module" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6ZbResQbE6L" role="1B3o_S" />
      <node concept="3cqZAl" id="6ZbResQbE6R" role="3clF45" />
      <node concept="37vLTG" id="6ZbResQbHbM" role="3clF46">
        <property role="TrG5h" value="aspect" />
        <node concept="3Tqbb2" id="6ZbResQbHbL" role="1tU5fm">
          <ref role="ehGHo" to="3njg:6ZbResPSdOk" resolve="BuildAspect_ExternalProjectDescription" />
        </node>
      </node>
      <node concept="37vLTG" id="6ZbResQdHXf" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="6ZbResQdIFb" role="1tU5fm">
          <ref role="3uigEE" to="o3n2:4jjtc7WZOAv" resolve="Context" />
        </node>
      </node>
      <node concept="37vLTG" id="6ZbResQcPVC" role="3clF46">
        <property role="TrG5h" value="handler" />
        <node concept="3uibUv" id="6ZbResQcQz7" role="1tU5fm">
          <ref role="3uigEE" to="et5u:~IMessageHandler" resolve="IMessageHandler" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6ZbResQbE6e" role="jymVt" />
    <node concept="2YIFZL" id="6ZbResQcRhQ" role="jymVt">
      <property role="TrG5h" value="report" />
      <node concept="3clFbS" id="6ZbResQcRi0" role="3clF47">
        <node concept="3clFbF" id="6ZbResQcRi1" role="3cqZAp">
          <node concept="2OqwBi" id="6ZbResQcRi2" role="3clFbG">
            <node concept="liA8E" id="6ZbResQcRi3" role="2OqNvi">
              <ref role="37wK5l" to="et5u:~IMessageHandler.handle(jetbrains.mps.messages.IMessage)" resolve="handle" />
              <node concept="2OqwBi" id="6ZbResQdhCC" role="37wK5m">
                <node concept="2ShNRf" id="6ZbResQdbfY" role="2Oq$k0">
                  <node concept="1pGfFk" id="6ZbResQdcf_" role="2ShVmc">
                    <ref role="37wK5l" to="et5u:~Message.&lt;init&gt;(jetbrains.mps.messages.MessageKind,java.lang.Class,java.lang.String)" resolve="Message" />
                    <node concept="Rm8GO" id="6ZbResQcRi5" role="37wK5m">
                      <ref role="1Px2BO" to="et5u:~MessageKind" resolve="MessageKind" />
                      <ref role="Rm8GQ" to="et5u:~MessageKind.ERROR" resolve="ERROR" />
                    </node>
                    <node concept="3VsKOn" id="6ZbResQd0RW" role="37wK5m">
                      <ref role="3VsUkX" node="6ZbResQbCNP" resolve="CheckBuildProject" />
                    </node>
                    <node concept="37vLTw" id="6ZbResQdgeU" role="37wK5m">
                      <ref role="3cqZAo" node="6ZbResQcRhV" resolve="text" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="6ZbResQdiGM" role="2OqNvi">
                  <ref role="37wK5l" to="et5u:~Message.setHintObject(java.lang.Object)" resolve="setHintObject" />
                  <node concept="2OqwBi" id="6ZbResQdkdy" role="37wK5m">
                    <node concept="37vLTw" id="6ZbResQdjBf" role="2Oq$k0">
                      <ref role="3cqZAo" node="6ZbResQcRhX" resolve="node" />
                    </node>
                    <node concept="iZEcu" id="6ZbResQdkL7" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="6ZbResQcRid" role="2Oq$k0">
              <ref role="3cqZAo" node="6ZbResQcRhT" resolve="handler" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="6ZbResQcRhZ" role="3clF45" />
      <node concept="37vLTG" id="6ZbResQcRhT" role="3clF46">
        <property role="TrG5h" value="handler" />
        <node concept="3uibUv" id="6ZbResQcRhU" role="1tU5fm">
          <ref role="3uigEE" to="et5u:~IMessageHandler" resolve="IMessageHandler" />
        </node>
      </node>
      <node concept="37vLTG" id="6ZbResQcRhV" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="6ZbResQcRhW" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6ZbResQcRhX" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="6ZbResQcRhY" role="1tU5fm" />
      </node>
      <node concept="3Tm6S6" id="6ZbResQcRhS" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6ZbResQd4uP" role="jymVt" />
    <node concept="2YIFZL" id="6ZbResQd3_r" role="jymVt">
      <property role="TrG5h" value="report" />
      <node concept="3clFbS" id="6ZbResQd3_s" role="3clF47">
        <node concept="3clFbF" id="6ZbResQd3_t" role="3cqZAp">
          <node concept="2OqwBi" id="6ZbResQd3_u" role="3clFbG">
            <node concept="liA8E" id="6ZbResQd3_v" role="2OqNvi">
              <ref role="37wK5l" to="et5u:~IMessageHandler.handle(jetbrains.mps.messages.IMessage)" resolve="handle" />
              <node concept="2OqwBi" id="6ZbResQdpBH" role="37wK5m">
                <node concept="2OqwBi" id="6ZbResQdn9n" role="2Oq$k0">
                  <node concept="2ShNRf" id="6ZbResQdn9o" role="2Oq$k0">
                    <node concept="1pGfFk" id="6ZbResQdn9p" role="2ShVmc">
                      <ref role="37wK5l" to="et5u:~Message.&lt;init&gt;(jetbrains.mps.messages.MessageKind,java.lang.Class,java.lang.String)" resolve="Message" />
                      <node concept="Rm8GO" id="6ZbResQdn9q" role="37wK5m">
                        <ref role="1Px2BO" to="et5u:~MessageKind" resolve="MessageKind" />
                        <ref role="Rm8GQ" to="et5u:~MessageKind.ERROR" resolve="ERROR" />
                      </node>
                      <node concept="3VsKOn" id="6ZbResQdn9r" role="37wK5m">
                        <ref role="3VsUkX" node="6ZbResQbCNP" resolve="CheckBuildProject" />
                      </node>
                      <node concept="37vLTw" id="6ZbResQdn9s" role="37wK5m">
                        <ref role="3cqZAo" node="6ZbResQd3_H" resolve="text" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="6ZbResQdn9t" role="2OqNvi">
                    <ref role="37wK5l" to="et5u:~Message.setHintObject(java.lang.Object)" resolve="setHintObject" />
                    <node concept="2OqwBi" id="6ZbResQdn9u" role="37wK5m">
                      <node concept="37vLTw" id="6ZbResQdn9v" role="2Oq$k0">
                        <ref role="3cqZAo" node="6ZbResQd3_J" resolve="node" />
                      </node>
                      <node concept="iZEcu" id="6ZbResQdn9w" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="6ZbResQdqes" role="2OqNvi">
                  <ref role="37wK5l" to="et5u:~Message.setException(java.lang.Throwable)" resolve="setException" />
                  <node concept="37vLTw" id="6ZbResQdr0N" role="37wK5m">
                    <ref role="3cqZAo" node="6ZbResQd4Y6" resolve="exception" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="6ZbResQd3_D" role="2Oq$k0">
              <ref role="3cqZAo" node="6ZbResQd3_F" resolve="handler" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="6ZbResQd3_E" role="3clF45" />
      <node concept="37vLTG" id="6ZbResQd3_F" role="3clF46">
        <property role="TrG5h" value="handler" />
        <node concept="3uibUv" id="6ZbResQd3_G" role="1tU5fm">
          <ref role="3uigEE" to="et5u:~IMessageHandler" resolve="IMessageHandler" />
        </node>
      </node>
      <node concept="37vLTG" id="6ZbResQd3_H" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="6ZbResQd3_I" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6ZbResQd3_J" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="6ZbResQd3_K" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6ZbResQd4Y6" role="3clF46">
        <property role="TrG5h" value="exception" />
        <node concept="3uibUv" id="6ZbResQd5fl" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
        </node>
      </node>
      <node concept="3Tm6S6" id="6ZbResQd3_L" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6ZbResQcME6" role="jymVt" />
    <node concept="3Tm1VV" id="6ZbResQbCNQ" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="6ZbResPUGXt">
    <property role="TrG5h" value="CollectModuleFiles" />
    <node concept="2YIFZL" id="6ZbResPUHa1" role="jymVt">
      <property role="TrG5h" value="collectModuleFilesFromProjectDescription" />
      <node concept="3clFbS" id="6ZbResPUHa4" role="3clF47">
        <node concept="3cpWs8" id="6ZbResQ1xN$" role="3cqZAp">
          <node concept="3cpWsn" id="6ZbResQ1xN_" role="3cpWs9">
            <property role="TrG5h" value="description" />
            <node concept="3uibUv" id="6ZbResQ1xNA" role="1tU5fm">
              <ref role="3uigEE" to="gmde:~ProjectDescription" resolve="ProjectDescription" />
            </node>
            <node concept="1rXfSq" id="6ZbResQ7Kx4" role="33vP2m">
              <ref role="37wK5l" node="6ZbResPZqis" resolve="readProjectDescription" />
              <node concept="37vLTw" id="6ZbResQ1yRr" role="37wK5m">
                <ref role="3cqZAo" node="6ZbResPUHas" resolve="projectDescriptionFile" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6ZbResQ1$3c" role="3cqZAp" />
        <node concept="3cpWs8" id="6ZbResQ1$s$" role="3cqZAp">
          <node concept="3cpWsn" id="6ZbResQ1$s_" role="3cpWs9">
            <property role="TrG5h" value="projectDir" />
            <node concept="3uibUv" id="6ZbResQ1$sA" role="1tU5fm">
              <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
            </node>
            <node concept="2OqwBi" id="6ZbResQ1$ZN" role="33vP2m">
              <node concept="37vLTw" id="6ZbResQ1$GA" role="2Oq$k0">
                <ref role="3cqZAo" node="6ZbResPUHas" resolve="projectDescriptionFile" />
              </node>
              <node concept="liA8E" id="6ZbResQ1_je" role="2OqNvi">
                <ref role="37wK5l" to="3ju5:~IFile.getParent()" resolve="getParent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6ZbResQ2ryE" role="3cqZAp" />
        <node concept="3cpWs8" id="6ZbResQ2s$d" role="3cqZAp">
          <node concept="3cpWsn" id="6ZbResQ2s$e" role="3cpWs9">
            <property role="TrG5h" value="projectPath" />
            <node concept="3uibUv" id="6ZbResQ2s$f" role="1tU5fm">
              <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
            </node>
            <node concept="1rXfSq" id="6ZbResQ2D1S" role="33vP2m">
              <ref role="37wK5l" node="6ZbResQ2BvN" resolve="toNioPath" />
              <node concept="37vLTw" id="6ZbResQ2DMp" role="37wK5m">
                <ref role="3cqZAo" node="6ZbResQ1$s_" resolve="projectDir" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6ZbResQ2GDj" role="3cqZAp" />
        <node concept="3cpWs8" id="6ZbResQ3sra" role="3cqZAp">
          <node concept="3cpWsn" id="6ZbResQ3srd" role="3cpWs9">
            <property role="TrG5h" value="fs" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="6ZbResQ26sq" role="1tU5fm">
              <ref role="3uigEE" to="eoo2:~FileSystem" resolve="FileSystem" />
            </node>
            <node concept="2OqwBi" id="6ZbResQ3vzV" role="33vP2m">
              <node concept="37vLTw" id="6ZbResQ3v8l" role="2Oq$k0">
                <ref role="3cqZAo" node="6ZbResQ2s$e" resolve="projectPath" />
              </node>
              <node concept="liA8E" id="6ZbResQ3vXP" role="2OqNvi">
                <ref role="37wK5l" to="eoo2:~Path.getFileSystem()" resolve="getFileSystem" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3iGXiMnQD7v" role="3cqZAp">
          <node concept="3cpWsn" id="3iGXiMnQD7w" role="3cpWs9">
            <property role="TrG5h" value="moduleExcludePatterns" />
            <node concept="2hMVRd" id="3iGXiMnQDUX" role="1tU5fm">
              <node concept="3uibUv" id="3iGXiMnQDUZ" role="2hN53Y">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2OqwBi" id="3iGXiMnQD7x" role="33vP2m">
              <node concept="37vLTw" id="3iGXiMnQD7y" role="2Oq$k0">
                <ref role="3cqZAo" node="6ZbResQ1xN_" resolve="description" />
              </node>
              <node concept="2OwXpG" id="3iGXiMnQD7z" role="2OqNvi">
                <ref role="2Oxat5" to="gmde:~ProjectDescription.moduleExcludePatterns" resolve="moduleExcludePatterns" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6ZbResQ3srf" role="3cqZAp">
          <node concept="3cpWsn" id="6ZbResQ3sri" role="3cpWs9">
            <property role="TrG5h" value="excludeMatchers" />
            <property role="3TUv4t" value="true" />
            <node concept="_YKpA" id="6ZbResQ2cPf" role="1tU5fm">
              <node concept="3uibUv" id="6ZbResQ2cPh" role="_ZDj9">
                <ref role="3uigEE" to="eoo2:~PathMatcher" resolve="PathMatcher" />
              </node>
            </node>
            <node concept="2OqwBi" id="6ZbResQ3A4l" role="33vP2m">
              <node concept="2OqwBi" id="6ZbResQ3yEX" role="2Oq$k0">
                <node concept="37vLTw" id="3iGXiMnQD7$" role="2Oq$k0">
                  <ref role="3cqZAo" node="3iGXiMnQD7w" resolve="moduleExcludePatterns" />
                </node>
                <node concept="3$u5V9" id="6ZbResQ3zF9" role="2OqNvi">
                  <node concept="1bVj0M" id="6ZbResQ3zFb" role="23t8la">
                    <node concept="3clFbS" id="6ZbResQ3zFc" role="1bW5cS">
                      <node concept="3clFbF" id="6ZbResQ3zZF" role="3cqZAp">
                        <node concept="2OqwBi" id="6ZbResQ3$zr" role="3clFbG">
                          <node concept="37vLTw" id="6ZbResQ3zZE" role="2Oq$k0">
                            <ref role="3cqZAo" node="6ZbResQ3srd" resolve="fs" />
                          </node>
                          <node concept="liA8E" id="6ZbResQ3_cD" role="2OqNvi">
                            <ref role="37wK5l" to="eoo2:~FileSystem.getPathMatcher(java.lang.String)" resolve="getPathMatcher" />
                            <node concept="3cpWs3" id="6ZbResQ6IJB" role="37wK5m">
                              <node concept="Xl_RD" id="6ZbResQ6Jkt" role="3uHU7B">
                                <property role="Xl_RC" value="glob:" />
                              </node>
                              <node concept="37vLTw" id="6ZbResQ3_H9" role="3uHU7w">
                                <ref role="3cqZAo" node="6ZbResQ3zFd" resolve="it" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="6ZbResQ3zFd" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="6ZbResQ3zFe" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="6ZbResQ3AP9" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6ZbResQ5I4e" role="3cqZAp" />
        <node concept="3cpWs8" id="6ZbResQ5J2x" role="3cqZAp">
          <node concept="3cpWsn" id="6ZbResQ5J2y" role="3cpWs9">
            <property role="TrG5h" value="shouldExclude" />
            <node concept="3uibUv" id="6ZbResQ5J2z" role="1tU5fm">
              <ref role="3uigEE" to="eoo2:~PathMatcher" resolve="PathMatcher" />
            </node>
            <node concept="2ShNRf" id="6ZbResQ5JCr" role="33vP2m">
              <node concept="YeOm9" id="6ZbResQ5Kug" role="2ShVmc">
                <node concept="1Y3b0j" id="6ZbResQ5Kuj" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="eoo2:~PathMatcher" resolve="PathMatcher" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <node concept="3Tm1VV" id="6ZbResQ5Kuk" role="1B3o_S" />
                  <node concept="3clFb_" id="6ZbResQ5Kup" role="jymVt">
                    <property role="TrG5h" value="matches" />
                    <node concept="3Tm1VV" id="6ZbResQ5Kuq" role="1B3o_S" />
                    <node concept="10P_77" id="6ZbResQ5Kus" role="3clF45" />
                    <node concept="37vLTG" id="6ZbResQ5Kut" role="3clF46">
                      <property role="TrG5h" value="path" />
                      <node concept="3uibUv" id="6ZbResQ5Kuu" role="1tU5fm">
                        <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="6ZbResQ5Kuv" role="3clF47">
                      <node concept="3clFbJ" id="6ZbResQ7pcU" role="3cqZAp">
                        <node concept="3clFbS" id="6ZbResQ7pcW" role="3clFbx">
                          <node concept="3cpWs6" id="6ZbResQ7pRd" role="3cqZAp">
                            <node concept="3clFbT" id="6ZbResQ7qkA" role="3cqZAk">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="6ZbResQ7pdn" role="3clFbw">
                          <node concept="37vLTw" id="6ZbResQ7pdo" role="2Oq$k0">
                            <ref role="3cqZAo" node="6ZbResQ3sri" resolve="excludeMatchers" />
                          </node>
                          <node concept="2HwmR7" id="6ZbResQ7pdp" role="2OqNvi">
                            <node concept="1bVj0M" id="6ZbResQ7pdq" role="23t8la">
                              <node concept="3clFbS" id="6ZbResQ7pdr" role="1bW5cS">
                                <node concept="3clFbF" id="6ZbResQ7pds" role="3cqZAp">
                                  <node concept="2OqwBi" id="6ZbResQ7pdt" role="3clFbG">
                                    <node concept="37vLTw" id="6ZbResQ7pdu" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6ZbResQ7pdx" resolve="it" />
                                    </node>
                                    <node concept="liA8E" id="6ZbResQ7pdv" role="2OqNvi">
                                      <ref role="37wK5l" to="eoo2:~PathMatcher.matches(java.nio.file.Path)" resolve="matches" />
                                      <node concept="37vLTw" id="6ZbResQ7pdw" role="37wK5m">
                                        <ref role="3cqZAo" node="6ZbResQ5Kut" resolve="path" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="6ZbResQ7pdx" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="6ZbResQ7pdy" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="6ZbResQ7zsw" role="3cqZAp">
                        <node concept="3clFbT" id="6ZbResQ7ztx" role="3cqZAk" />
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="6ZbResQ5Kux" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6ZbResQ3s1k" role="3cqZAp" />
        <node concept="3cpWs8" id="3iGXiMnQEyM" role="3cqZAp">
          <node concept="3cpWsn" id="3iGXiMnQEyN" role="3cpWs9">
            <property role="TrG5h" value="moduleLocations" />
            <node concept="2hMVRd" id="3iGXiMnQF7y" role="1tU5fm">
              <node concept="3uibUv" id="3iGXiMnQF7$" role="2hN53Y">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2OqwBi" id="3iGXiMnQEyO" role="33vP2m">
              <node concept="37vLTw" id="3iGXiMnQEyP" role="2Oq$k0">
                <ref role="3cqZAo" node="6ZbResQ1xN_" resolve="description" />
              </node>
              <node concept="2OwXpG" id="3iGXiMnQEyQ" role="2OqNvi">
                <ref role="2Oxat5" to="gmde:~ProjectDescription.moduleLocations" resolve="moduleLocations" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ZbResQ2Lgh" role="3cqZAp">
          <node concept="2OqwBi" id="6ZbResQ3k_E" role="3clFbG">
            <node concept="2OqwBi" id="6ZbResQ32hB" role="2Oq$k0">
              <node concept="37vLTw" id="3iGXiMnQEyR" role="2Oq$k0">
                <ref role="3cqZAo" node="3iGXiMnQEyN" resolve="moduleLocations" />
              </node>
              <node concept="3goQfb" id="6ZbResQ33yW" role="2OqNvi">
                <node concept="1bVj0M" id="6ZbResQ33yY" role="23t8la">
                  <node concept="3clFbS" id="6ZbResQ33yZ" role="1bW5cS">
                    <node concept="3clFbF" id="6ZbResQ34sa" role="3cqZAp">
                      <node concept="1rXfSq" id="6ZbResQ34s9" role="3clFbG">
                        <ref role="37wK5l" node="6ZbResPUNqN" resolve="collectModuleDescriptorsFrom" />
                        <node concept="2YIFZM" id="6ZbResQ2Ys9" role="37wK5m">
                          <ref role="1Pybhc" to="18ew:~IFileUtil" resolve="IFileUtil" />
                          <ref role="37wK5l" to="18ew:~IFileUtil.getDescendant(jetbrains.mps.vfs.IFile,java.lang.String)" resolve="getDescendant" />
                          <node concept="37vLTw" id="6ZbResQ2ZeG" role="37wK5m">
                            <ref role="3cqZAo" node="6ZbResQ1$s_" resolve="projectDir" />
                          </node>
                          <node concept="37vLTw" id="6ZbResQ302N" role="37wK5m">
                            <ref role="3cqZAo" node="6ZbResQ33z0" resolve="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="6ZbResQ33z0" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="6ZbResQ33z1" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3zZkjj" id="6ZbResQ3myb" role="2OqNvi">
              <node concept="1bVj0M" id="6ZbResQ3myd" role="23t8la">
                <node concept="3clFbS" id="6ZbResQ3mye" role="1bW5cS">
                  <node concept="3cpWs8" id="6ZbResQ7P60" role="3cqZAp">
                    <node concept="3cpWsn" id="6ZbResQ7P61" role="3cpWs9">
                      <property role="TrG5h" value="descriptorPath" />
                      <node concept="3uibUv" id="6ZbResQ7OOj" role="1tU5fm">
                        <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
                      </node>
                      <node concept="2OqwBi" id="6ZbResQ7P62" role="33vP2m">
                        <node concept="37vLTw" id="6ZbResQ7P63" role="2Oq$k0">
                          <ref role="3cqZAo" node="6ZbResQ2s$e" resolve="projectPath" />
                        </node>
                        <node concept="liA8E" id="6ZbResQ7P64" role="2OqNvi">
                          <ref role="37wK5l" to="eoo2:~Path.relativize(java.nio.file.Path)" resolve="relativize" />
                          <node concept="2YIFZM" id="6ZbResQ7P65" role="37wK5m">
                            <ref role="37wK5l" to="eoo2:~Paths.get(java.lang.String,java.lang.String...)" resolve="get" />
                            <ref role="1Pybhc" to="eoo2:~Paths" resolve="Paths" />
                            <node concept="2OqwBi" id="6ZbResQ7P66" role="37wK5m">
                              <node concept="37vLTw" id="6ZbResQ7P67" role="2Oq$k0">
                                <ref role="3cqZAo" node="6ZbResQ3myf" resolve="descriptor" />
                              </node>
                              <node concept="liA8E" id="6ZbResQ7P68" role="2OqNvi">
                                <ref role="37wK5l" to="3ju5:~IFile.getPath()" resolve="getPath" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="6ZbResQ7SdX" role="3cqZAp" />
                  <node concept="3cpWs8" id="6ZbResQ7SFG" role="3cqZAp">
                    <node concept="3cpWsn" id="6ZbResQ7SFH" role="3cpWs9">
                      <property role="TrG5h" value="parentPath" />
                      <node concept="3uibUv" id="6ZbResQ7SFI" role="1tU5fm">
                        <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
                      </node>
                      <node concept="2OqwBi" id="6ZbResQ7U6y" role="33vP2m">
                        <node concept="37vLTw" id="6ZbResQ7TvC" role="2Oq$k0">
                          <ref role="3cqZAo" node="6ZbResQ7P61" resolve="descriptorPath" />
                        </node>
                        <node concept="liA8E" id="6ZbResQ7UPK" role="2OqNvi">
                          <ref role="37wK5l" to="eoo2:~Path.getParent()" resolve="getParent" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="6ZbResQ7RCu" role="3cqZAp" />
                  <node concept="3clFbF" id="6ZbResQ6rDm" role="3cqZAp">
                    <node concept="1Wc70l" id="6ZbResQ7VHY" role="3clFbG">
                      <node concept="3fqX7Q" id="6ZbResQ81Wa" role="3uHU7w">
                        <node concept="1eOMI4" id="6ZbResQ81Wc" role="3fr31v">
                          <node concept="1Wc70l" id="6ZbResQ84Sk" role="1eOMHV">
                            <node concept="3y3z36" id="6ZbResQ82z_" role="3uHU7B">
                              <node concept="37vLTw" id="6ZbResQ81Wk" role="3uHU7B">
                                <ref role="3cqZAo" node="6ZbResQ7SFH" resolve="parentPath" />
                              </node>
                              <node concept="10Nm6u" id="6ZbResQ81Wl" role="3uHU7w" />
                            </node>
                            <node concept="2OqwBi" id="6ZbResQ81Wf" role="3uHU7w">
                              <node concept="37vLTw" id="6ZbResQ81Wg" role="2Oq$k0">
                                <ref role="3cqZAo" node="6ZbResQ5J2y" resolve="shouldExclude" />
                              </node>
                              <node concept="liA8E" id="6ZbResQ81Wh" role="2OqNvi">
                                <ref role="37wK5l" to="eoo2:~PathMatcher.matches(java.nio.file.Path)" resolve="matches" />
                                <node concept="37vLTw" id="6ZbResQ81Wi" role="37wK5m">
                                  <ref role="3cqZAo" node="6ZbResQ7SFH" resolve="parentPath" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3fqX7Q" id="6ZbResQ6qU7" role="3uHU7B">
                        <node concept="2OqwBi" id="6ZbResQ6qU9" role="3fr31v">
                          <node concept="37vLTw" id="6ZbResQ6qUa" role="2Oq$k0">
                            <ref role="3cqZAo" node="6ZbResQ5J2y" resolve="shouldExclude" />
                          </node>
                          <node concept="liA8E" id="6ZbResQ6qUb" role="2OqNvi">
                            <ref role="37wK5l" to="eoo2:~PathMatcher.matches(java.nio.file.Path)" resolve="matches" />
                            <node concept="37vLTw" id="6ZbResQ7P69" role="37wK5m">
                              <ref role="3cqZAo" node="6ZbResQ7P61" resolve="descriptorPath" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="6ZbResQ3myf" role="1bW2Oz">
                  <property role="TrG5h" value="descriptor" />
                  <node concept="2jxLKc" id="6ZbResQ3myg" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6ZbResPUGYp" role="1B3o_S" />
      <node concept="A3Dl8" id="6ZbResPUHcH" role="3clF45">
        <node concept="3uibUv" id="6ZbResPUHd3" role="A3Ik2">
          <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
        </node>
      </node>
      <node concept="37vLTG" id="6ZbResPUHas" role="3clF46">
        <property role="TrG5h" value="projectDescriptionFile" />
        <node concept="3uibUv" id="6ZbResPUHar" role="1tU5fm">
          <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
        </node>
      </node>
      <node concept="3uibUv" id="6ZbResQ1zTQ" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
      <node concept="3uibUv" id="3iGXiMnP32U" role="Sfmx6">
        <ref role="3uigEE" to="vpqd:~ParserConfigurationException" resolve="ParserConfigurationException" />
      </node>
      <node concept="3uibUv" id="3iGXiMnP3Gf" role="Sfmx6">
        <ref role="3uigEE" to="kart:~SAXException" resolve="SAXException" />
      </node>
    </node>
    <node concept="2tJIrI" id="6ZbResQ7MZU" role="jymVt" />
    <node concept="2YIFZL" id="6ZbResPZqis" role="jymVt">
      <property role="TrG5h" value="readProjectDescription" />
      <node concept="3clFbS" id="6ZbResPZqiv" role="3clF47">
        <node concept="3cpWs8" id="3iGXiMnOtni" role="3cqZAp">
          <node concept="3cpWsn" id="3iGXiMnOtnj" role="3cpWs9">
            <property role="TrG5h" value="source" />
            <node concept="3uibUv" id="3iGXiMnOt7a" role="1tU5fm">
              <ref role="3uigEE" to="kart:~InputSource" resolve="InputSource" />
            </node>
            <node concept="2ShNRf" id="3iGXiMnOtnk" role="33vP2m">
              <node concept="1pGfFk" id="3iGXiMnOtnl" role="2ShVmc">
                <ref role="37wK5l" to="kart:~InputSource.&lt;init&gt;(java.lang.String)" resolve="InputSource" />
                <node concept="2OqwBi" id="3iGXiMnP1eb" role="37wK5m">
                  <node concept="37vLTw" id="3iGXiMnP1ec" role="2Oq$k0">
                    <ref role="3cqZAo" node="6ZbResPZqiR" resolve="file" />
                  </node>
                  <node concept="liA8E" id="3iGXiMnP1ed" role="2OqNvi">
                    <ref role="37wK5l" to="3ju5:~IFile.getPath()" resolve="getPath" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="6ZbResQ1s8C" role="3cqZAp">
          <node concept="3clFbS" id="6ZbResQ1s8E" role="1zxBo7">
            <node concept="3clFbF" id="3iGXiMnOF$S" role="3cqZAp">
              <node concept="2OqwBi" id="3iGXiMnOGjI" role="3clFbG">
                <node concept="37vLTw" id="3iGXiMnOF$Q" role="2Oq$k0">
                  <ref role="3cqZAo" node="3iGXiMnOtnj" resolve="source" />
                </node>
                <node concept="liA8E" id="3iGXiMnOH4x" role="2OqNvi">
                  <ref role="37wK5l" to="kart:~InputSource.setByteStream(java.io.InputStream)" resolve="setByteStream" />
                  <node concept="37vLTw" id="3iGXiMnOHSw" role="37wK5m">
                    <ref role="3cqZAo" node="6ZbResQ1s8F" resolve="is" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="3iGXiMnOnn2" role="3cqZAp">
              <node concept="2YIFZM" id="3iGXiMnOoQ0" role="3cqZAk">
                <ref role="1Pybhc" to="gmde:~ProjectDescriptionIO" resolve="ProjectDescriptionIO" />
                <ref role="37wK5l" to="gmde:~ProjectDescriptionIO.read(org.xml.sax.InputSource)" resolve="read" />
                <node concept="37vLTw" id="3iGXiMnOtnn" role="37wK5m">
                  <ref role="3cqZAo" node="3iGXiMnOtnj" resolve="source" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3J1hQo" id="6ZbResQ1s8F" role="3J1_TS">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="is" />
            <node concept="3uibUv" id="6ZbResQ1sfA" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~InputStream" resolve="InputStream" />
            </node>
            <node concept="2OqwBi" id="6ZbResQ1s$2" role="33vP2m">
              <node concept="37vLTw" id="6ZbResQ1sl2" role="2Oq$k0">
                <ref role="3cqZAo" node="6ZbResPZqiR" resolve="file" />
              </node>
              <node concept="liA8E" id="6ZbResQ1sNC" role="2OqNvi">
                <ref role="37wK5l" to="3ju5:~IFile.openInputStream()" resolve="openInputStream" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6ZbResPZpNm" role="1B3o_S" />
      <node concept="3uibUv" id="6ZbResPZqih" role="3clF45">
        <ref role="3uigEE" to="gmde:~ProjectDescription" resolve="ProjectDescription" />
      </node>
      <node concept="37vLTG" id="6ZbResPZqiR" role="3clF46">
        <property role="TrG5h" value="file" />
        <node concept="3uibUv" id="6ZbResPZqiQ" role="1tU5fm">
          <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
        </node>
      </node>
      <node concept="3uibUv" id="6ZbResPZJoc" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
      <node concept="3uibUv" id="3iGXiMnOKTb" role="Sfmx6">
        <ref role="3uigEE" to="kart:~SAXException" resolve="SAXException" />
      </node>
      <node concept="3uibUv" id="3iGXiMnOLHZ" role="Sfmx6">
        <ref role="3uigEE" to="vpqd:~ParserConfigurationException" resolve="ParserConfigurationException" />
      </node>
    </node>
    <node concept="2tJIrI" id="6ZbResQ2A9s" role="jymVt" />
    <node concept="2YIFZL" id="6ZbResQ2BvN" role="jymVt">
      <property role="TrG5h" value="toNioPath" />
      <node concept="3clFbS" id="6ZbResQ2BvQ" role="3clF47">
        <node concept="3cpWs6" id="6ZbResQ2Cmx" role="3cqZAp">
          <node concept="2YIFZM" id="6ZbResQ2Cve" role="3cqZAk">
            <ref role="37wK5l" to="eoo2:~Paths.get(java.lang.String,java.lang.String...)" resolve="get" />
            <ref role="1Pybhc" to="eoo2:~Paths" resolve="Paths" />
            <node concept="2OqwBi" id="6ZbResQ2CE6" role="37wK5m">
              <node concept="37vLTw" id="6ZbResQ2CzS" role="2Oq$k0">
                <ref role="3cqZAo" node="6ZbResQ2Che" resolve="file" />
              </node>
              <node concept="liA8E" id="6ZbResQ2CW1" role="2OqNvi">
                <ref role="37wK5l" to="3ju5:~IFile.getPath()" resolve="getPath" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6ZbResQ2AZ4" role="1B3o_S" />
      <node concept="3uibUv" id="6ZbResQ2Bto" role="3clF45">
        <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
      </node>
      <node concept="37vLTG" id="6ZbResQ2Che" role="3clF46">
        <property role="TrG5h" value="file" />
        <node concept="3uibUv" id="6ZbResQ2Chd" role="1tU5fm">
          <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6ZbResPUNwt" role="jymVt" />
    <node concept="2YIFZL" id="6ZbResPUNzR" role="jymVt">
      <property role="TrG5h" value="isModuleDescriptor" />
      <node concept="3clFbS" id="6ZbResPUNzU" role="3clF47">
        <node concept="3clFbJ" id="6ZbResPUSHz" role="3cqZAp">
          <node concept="3clFbS" id="6ZbResPUSH_" role="3clFbx">
            <node concept="3cpWs6" id="6ZbResPUTbH" role="3cqZAp">
              <node concept="3clFbT" id="6ZbResPUTbV" role="3cqZAk" />
            </node>
          </node>
          <node concept="2OqwBi" id="6ZbResPUSWF" role="3clFbw">
            <node concept="37vLTw" id="6ZbResPUSMr" role="2Oq$k0">
              <ref role="3cqZAo" node="6ZbResPUN_l" resolve="file" />
            </node>
            <node concept="liA8E" id="6ZbResPUT6M" role="2OqNvi">
              <ref role="37wK5l" to="3ju5:~IFile.isDirectory()" resolve="isDirectory" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6ZbResPUTgx" role="3cqZAp" />
        <node concept="3cpWs8" id="6ZbResPUPkh" role="3cqZAp">
          <node concept="3cpWsn" id="6ZbResPUPki" role="3cpWs9">
            <property role="TrG5h" value="name" />
            <node concept="17QB3L" id="6ZbResPURqs" role="1tU5fm" />
            <node concept="2OqwBi" id="6ZbResPUPkj" role="33vP2m">
              <node concept="2OqwBi" id="6ZbResPUPkk" role="2Oq$k0">
                <node concept="37vLTw" id="6ZbResPUPkl" role="2Oq$k0">
                  <ref role="3cqZAo" node="6ZbResPUN_l" resolve="file" />
                </node>
                <node concept="liA8E" id="6ZbResPUPkm" role="2OqNvi">
                  <ref role="37wK5l" to="3ju5:~IFile.getName()" resolve="getName" />
                </node>
              </node>
              <node concept="liA8E" id="6ZbResPUPkn" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.toLowerCase(java.util.Locale)" resolve="toLowerCase" />
                <node concept="10M0yZ" id="6ZbResPUPsn" role="37wK5m">
                  <ref role="3cqZAo" to="33ny:~Locale.ENGLISH" resolve="ENGLISH" />
                  <ref role="1PxDUh" to="33ny:~Locale" resolve="Locale" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6ZbResPUN_W" role="3cqZAp">
          <node concept="22lmx$" id="6ZbResPUQ$n" role="3cqZAk">
            <node concept="2OqwBi" id="6ZbResPUQVL" role="3uHU7w">
              <node concept="37vLTw" id="6ZbResPUQBA" role="2Oq$k0">
                <ref role="3cqZAo" node="6ZbResPUPki" resolve="name" />
              </node>
              <node concept="liA8E" id="6ZbResPURfA" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
                <node concept="Xl_RD" id="6ZbResPURit" role="37wK5m">
                  <property role="Xl_RC" value=".devkit" />
                </node>
              </node>
            </node>
            <node concept="22lmx$" id="6ZbResPUOP9" role="3uHU7B">
              <node concept="2OqwBi" id="6ZbResPUO79" role="3uHU7B">
                <node concept="37vLTw" id="6ZbResPUPko" role="2Oq$k0">
                  <ref role="3cqZAo" node="6ZbResPUPki" resolve="name" />
                </node>
                <node concept="liA8E" id="6ZbResPUOvf" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
                  <node concept="Xl_RD" id="6ZbResPUOwH" role="37wK5m">
                    <property role="Xl_RC" value=".msd" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6ZbResPUPMk" role="3uHU7w">
                <node concept="37vLTw" id="6ZbResPUPuB" role="2Oq$k0">
                  <ref role="3cqZAo" node="6ZbResPUPki" resolve="name" />
                </node>
                <node concept="liA8E" id="6ZbResPUQ9L" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
                  <node concept="Xl_RD" id="6ZbResPUQc6" role="37wK5m">
                    <property role="Xl_RC" value=".mpl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6ZbResPUNyo" role="1B3o_S" />
      <node concept="10P_77" id="6ZbResPUNzE" role="3clF45" />
      <node concept="37vLTG" id="6ZbResPUN_l" role="3clF46">
        <property role="TrG5h" value="file" />
        <node concept="3uibUv" id="6ZbResPUN_k" role="1tU5fm">
          <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6ZbResPUNny" role="jymVt" />
    <node concept="2YIFZL" id="6ZbResPUNqN" role="jymVt">
      <property role="TrG5h" value="collectModuleDescriptorsFrom" />
      <node concept="3clFbS" id="6ZbResPUNqQ" role="3clF47">
        <node concept="3cpWs8" id="6ZbResPUTK3" role="3cqZAp">
          <node concept="3cpWsn" id="6ZbResPUTK4" role="3cpWs9">
            <property role="TrG5h" value="children" />
            <node concept="A3Dl8" id="6ZbResPUU4N" role="1tU5fm">
              <node concept="3uibUv" id="6ZbResPUU4P" role="A3Ik2">
                <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
              </node>
            </node>
            <node concept="2OqwBi" id="6ZbResPUTK5" role="33vP2m">
              <node concept="37vLTw" id="6ZbResPUTK6" role="2Oq$k0">
                <ref role="3cqZAo" node="6ZbResPUNsa" resolve="file" />
              </node>
              <node concept="liA8E" id="6ZbResPUTK7" role="2OqNvi">
                <ref role="37wK5l" to="3ju5:~IFile.getChildren()" resolve="getChildren" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6ZbResPUSgi" role="3cqZAp">
          <node concept="3y3z36" id="6ZbResPV1RK" role="3clFbw">
            <node concept="10Nm6u" id="6ZbResPV1RZ" role="3uHU7w" />
            <node concept="37vLTw" id="6ZbResPV1q7" role="3uHU7B">
              <ref role="3cqZAo" node="6ZbResPUTK4" resolve="children" />
            </node>
          </node>
          <node concept="3clFbS" id="6ZbResPUSgk" role="3clFbx">
            <node concept="3SKdUt" id="6ZbResPV2Rt" role="3cqZAp">
              <node concept="1PaTwC" id="6ZbResPV2Ru" role="1aUNEU">
                <node concept="3oM_SD" id="6ZbResPV2RI" role="1PaTwD">
                  <property role="3oM_SC" value="Is" />
                </node>
                <node concept="3oM_SD" id="6ZbResPV2RK" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="6ZbResPV2RN" role="1PaTwD">
                  <property role="3oM_SC" value="directory" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6ZbResPV8Ec" role="3cqZAp" />
            <node concept="3cpWs8" id="6ZbResPVdp8" role="3cqZAp">
              <node concept="3cpWsn" id="6ZbResPVdp9" role="3cpWs9">
                <property role="TrG5h" value="moduleFilesInDirectory" />
                <node concept="A3Dl8" id="6ZbResPVdli" role="1tU5fm">
                  <node concept="3uibUv" id="6ZbResPVdll" role="A3Ik2">
                    <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6ZbResPVdpa" role="33vP2m">
                  <node concept="37vLTw" id="6ZbResPVdpb" role="2Oq$k0">
                    <ref role="3cqZAo" node="6ZbResPUTK4" resolve="children" />
                  </node>
                  <node concept="3zZkjj" id="6ZbResPVdpc" role="2OqNvi">
                    <node concept="1bVj0M" id="6ZbResPVdpd" role="23t8la">
                      <node concept="3clFbS" id="6ZbResPVdpe" role="1bW5cS">
                        <node concept="3clFbF" id="6ZbResPVdpf" role="3cqZAp">
                          <node concept="1rXfSq" id="6ZbResPVdpg" role="3clFbG">
                            <ref role="37wK5l" node="6ZbResPUNzR" resolve="isModuleDescriptor" />
                            <node concept="37vLTw" id="6ZbResPVdph" role="37wK5m">
                              <ref role="3cqZAo" node="6ZbResPVdpi" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="6ZbResPVdpi" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="6ZbResPVdpj" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6ZbResPV8U4" role="3cqZAp">
              <node concept="3clFbS" id="6ZbResPV8U6" role="3clFbx">
                <node concept="3SKdUt" id="6ZbResPVgMg" role="3cqZAp">
                  <node concept="1PaTwC" id="6ZbResPVgMh" role="1aUNEU">
                    <node concept="3oM_SD" id="6ZbResPVh3V" role="1PaTwD">
                      <property role="3oM_SC" value="Return" />
                    </node>
                    <node concept="3oM_SD" id="6ZbResPVh3X" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="6ZbResPVh40" role="1PaTwD">
                      <property role="3oM_SC" value="module" />
                    </node>
                    <node concept="3oM_SD" id="6ZbResPVhCG" role="1PaTwD">
                      <property role="3oM_SC" value="files" />
                    </node>
                    <node concept="3oM_SD" id="6ZbResPVh44" role="1PaTwD">
                      <property role="3oM_SC" value="and" />
                    </node>
                    <node concept="3oM_SD" id="6ZbResPVh49" role="1PaTwD">
                      <property role="3oM_SC" value="don't" />
                    </node>
                    <node concept="3oM_SD" id="6ZbResPVh4u" role="1PaTwD">
                      <property role="3oM_SC" value="descend" />
                    </node>
                    <node concept="3oM_SD" id="6ZbResPVh4_" role="1PaTwD">
                      <property role="3oM_SC" value="into" />
                    </node>
                    <node concept="3oM_SD" id="6ZbResPVhPl" role="1PaTwD">
                      <property role="3oM_SC" value="subdirectories." />
                    </node>
                    <node concept="3oM_SD" id="6ZbResPVhPQ" role="1PaTwD">
                      <property role="3oM_SC" value="We" />
                    </node>
                    <node concept="3oM_SD" id="6ZbResPVhD9" role="1PaTwD">
                      <property role="3oM_SC" value="can't" />
                    </node>
                    <node concept="3oM_SD" id="6ZbResPVhDl" role="1PaTwD">
                      <property role="3oM_SC" value="have" />
                    </node>
                    <node concept="3oM_SD" id="6ZbResPVhDy" role="1PaTwD">
                      <property role="3oM_SC" value="modules" />
                    </node>
                    <node concept="3oM_SD" id="6ZbResPVhDK" role="1PaTwD">
                      <property role="3oM_SC" value="inside" />
                    </node>
                    <node concept="3oM_SD" id="6ZbResPVhDZ" role="1PaTwD">
                      <property role="3oM_SC" value="modules" />
                    </node>
                    <node concept="3oM_SD" id="6ZbResPVhEv" role="1PaTwD">
                      <property role="3oM_SC" value="so" />
                    </node>
                    <node concept="3oM_SD" id="6ZbResPVhGP" role="1PaTwD">
                      <property role="3oM_SC" value="let's" />
                    </node>
                    <node concept="3oM_SD" id="6ZbResPVhHf" role="1PaTwD">
                      <property role="3oM_SC" value="not" />
                    </node>
                    <node concept="3oM_SD" id="6ZbResPVhKx" role="1PaTwD">
                      <property role="3oM_SC" value="waste" />
                    </node>
                    <node concept="3oM_SD" id="6ZbResPVhL3" role="1PaTwD">
                      <property role="3oM_SC" value="time" />
                    </node>
                    <node concept="3oM_SD" id="6ZbResPVhHy" role="1PaTwD">
                      <property role="3oM_SC" value="traversing" />
                    </node>
                    <node concept="3oM_SD" id="6ZbResPVhMB" role="1PaTwD">
                      <property role="3oM_SC" value="models," />
                    </node>
                    <node concept="3oM_SD" id="6ZbResPVhI6" role="1PaTwD">
                      <property role="3oM_SC" value="source_gen," />
                    </node>
                    <node concept="3oM_SD" id="6ZbResPVhNI" role="1PaTwD">
                      <property role="3oM_SC" value="classes_gen," />
                    </node>
                    <node concept="3oM_SD" id="6ZbResPVhON" role="1PaTwD">
                      <property role="3oM_SC" value="etc." />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="6ZbResPVfzv" role="3cqZAp">
                  <node concept="37vLTw" id="6ZbResPVfPl" role="3cqZAk">
                    <ref role="3cqZAo" node="6ZbResPVdp9" resolve="moduleFilesInDirectory" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6ZbResPVeB_" role="3clFbw">
                <node concept="37vLTw" id="6ZbResPVdpk" role="2Oq$k0">
                  <ref role="3cqZAo" node="6ZbResPVdp9" resolve="moduleFilesInDirectory" />
                </node>
                <node concept="3GX2aA" id="6ZbResPVfaM" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbH" id="6ZbResPVg9z" role="3cqZAp" />
            <node concept="3cpWs6" id="6ZbResPUTr3" role="3cqZAp">
              <node concept="2OqwBi" id="6ZbResPUUoF" role="3cqZAk">
                <node concept="37vLTw" id="6ZbResPUTK8" role="2Oq$k0">
                  <ref role="3cqZAo" node="6ZbResPUTK4" resolve="children" />
                </node>
                <node concept="3goQfb" id="6ZbResPUUAq" role="2OqNvi">
                  <node concept="1bVj0M" id="6ZbResPUUAs" role="23t8la">
                    <node concept="3clFbS" id="6ZbResPUUAt" role="1bW5cS">
                      <node concept="3clFbF" id="6ZbResPUUIq" role="3cqZAp">
                        <node concept="1rXfSq" id="6ZbResPUUIp" role="3clFbG">
                          <ref role="37wK5l" node="6ZbResPUNqN" resolve="collectModuleDescriptorsFrom" />
                          <node concept="37vLTw" id="6ZbResPUUQv" role="37wK5m">
                            <ref role="3cqZAo" node="6ZbResPUUAu" resolve="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="6ZbResPUUAu" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="6ZbResPUUAv" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6ZbResPV4kI" role="3cqZAp" />
        <node concept="3SKdUt" id="6ZbResPV4KC" role="3cqZAp">
          <node concept="1PaTwC" id="6ZbResPV4KD" role="1aUNEU">
            <node concept="3oM_SD" id="6ZbResPV52V" role="1PaTwD">
              <property role="3oM_SC" value="Is" />
            </node>
            <node concept="3oM_SD" id="6ZbResPV52X" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="6ZbResPV530" role="1PaTwD">
              <property role="3oM_SC" value="file" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6ZbResPV46i" role="3cqZAp">
          <node concept="1rXfSq" id="6ZbResPV46l" role="3clFbw">
            <ref role="37wK5l" node="6ZbResPUNzR" resolve="isModuleDescriptor" />
            <node concept="37vLTw" id="6ZbResPV46m" role="37wK5m">
              <ref role="3cqZAo" node="6ZbResPUNsa" resolve="file" />
            </node>
          </node>
          <node concept="3clFbS" id="6ZbResPV46n" role="3clFbx">
            <node concept="3cpWs6" id="6ZbResPV46o" role="3cqZAp">
              <node concept="2YIFZM" id="6ZbResPV46p" role="3cqZAk">
                <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
                <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                <node concept="37vLTw" id="6ZbResPV46q" role="37wK5m">
                  <ref role="3cqZAo" node="6ZbResPUNsa" resolve="file" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6ZbResPV4yi" role="3cqZAp" />
        <node concept="3cpWs6" id="6ZbResPUVKY" role="3cqZAp">
          <node concept="2YIFZM" id="6ZbResPUW1v" role="3cqZAk">
            <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6ZbResPUNpd" role="1B3o_S" />
      <node concept="A3Dl8" id="6ZbResPUNqn" role="3clF45">
        <node concept="3uibUv" id="6ZbResPUNqA" role="A3Ik2">
          <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
        </node>
      </node>
      <node concept="37vLTG" id="6ZbResPUNsa" role="3clF46">
        <property role="TrG5h" value="file" />
        <node concept="3uibUv" id="6ZbResPUNs9" role="1tU5fm">
          <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="6ZbResPUGXu" role="1B3o_S" />
  </node>
</model>

