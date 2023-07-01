<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c2efc59f-ffa2-4b76-9ead-44ec8fc6c8ba(com.spclngs.projsync.buildext.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="5" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="o3n2" ref="r:26eadcf0-f275-4e90-be37-e4432772a74d(jetbrains.mps.build.util)" />
    <import index="3njg" ref="r:eadca9c5-6cd8-4ad8-84f3-0b28137040d9(com.spclngs.projsync.buildext.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="95xo" ref="r:682764f9-ae55-4c0f-8223-7e504f7203ea(com.spclngs.projectconventions.buildext.check)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="et5u" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.messages(MPS.Core/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
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
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
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
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
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
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1207055528241" name="jetbrains.mps.lang.typesystem.structure.WarningStatement" flags="nn" index="a7r0C">
        <child id="1207055552304" name="warningText" index="a7wSD" />
      </concept>
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
      <concept id="3937244445246642777" name="jetbrains.mps.lang.typesystem.structure.AbstractReportStatement" flags="ng" index="1urrMJ">
        <child id="3937244445246642781" name="nodeToReport" index="1urrMF" />
      </concept>
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="18kY7G" id="6ZbResPSdZE">
    <property role="TrG5h" value="check_BuildAspect_ExternalProjectDescription" />
    <node concept="3clFbS" id="6ZbResPSdZF" role="18ibNy">
      <node concept="3cpWs8" id="6ZbResPUbRd" role="3cqZAp">
        <node concept="3cpWsn" id="6ZbResPUbRe" role="3cpWs9">
          <property role="TrG5h" value="defaultContext" />
          <node concept="3uibUv" id="6ZbResPUbPq" role="1tU5fm">
            <ref role="3uigEE" to="o3n2:4jjtc7WZOAv" resolve="Context" />
          </node>
          <node concept="2YIFZM" id="6ZbResPUbRf" role="33vP2m">
            <ref role="37wK5l" to="o3n2:4jjtc7WZTjd" resolve="defaultContext" />
            <ref role="1Pybhc" to="o3n2:4jjtc7WZOAv" resolve="Context" />
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="6ZbResQdURn" role="3cqZAp" />
      <node concept="3cpWs8" id="6ZbResQdXhx" role="3cqZAp">
        <node concept="3cpWsn" id="6ZbResQdXhy" role="3cpWs9">
          <property role="TrG5h" value="repo" />
          <property role="3TUv4t" value="true" />
          <node concept="3uibUv" id="6ZbResQdXhz" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
          </node>
          <node concept="2OqwBi" id="6ZbResQe2s_" role="33vP2m">
            <node concept="2JrnkZ" id="6ZbResQe1gf" role="2Oq$k0">
              <node concept="2OqwBi" id="6ZbResQdXYw" role="2JrQYb">
                <node concept="1YBJjd" id="6ZbResQdXNj" role="2Oq$k0">
                  <ref role="1YBMHb" node="6ZbResPSdZH" resolve="aspect" />
                </node>
                <node concept="I4A8Y" id="6ZbResQdZqM" role="2OqNvi" />
              </node>
            </node>
            <node concept="liA8E" id="6ZbResQe30f" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbF" id="6ZbResQdNE5" role="3cqZAp">
        <node concept="2YIFZM" id="6ZbResQdOjl" role="3clFbG">
          <ref role="37wK5l" to="95xo:6ZbResQbE6T" resolve="check" />
          <ref role="1Pybhc" to="95xo:6ZbResQbCNP" resolve="CheckBuildProject" />
          <node concept="1YBJjd" id="6ZbResQdOki" role="37wK5m">
            <ref role="1YBMHb" node="6ZbResPSdZH" resolve="aspect" />
          </node>
          <node concept="37vLTw" id="6ZbResQdOlK" role="37wK5m">
            <ref role="3cqZAo" node="6ZbResPUbRe" resolve="defaultContext" />
          </node>
          <node concept="2ShNRf" id="6cqWk79_tqk" role="37wK5m">
            <node concept="YeOm9" id="6cqWk79_tql" role="2ShVmc">
              <node concept="1Y3b0j" id="6cqWk79_tqm" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                <ref role="1Y3XeK" to="et5u:~IMessageHandler" resolve="IMessageHandler" />
                <node concept="3Tm1VV" id="6cqWk79_tqn" role="1B3o_S" />
                <node concept="3clFb_" id="6cqWk79_tqo" role="jymVt">
                  <property role="1EzhhJ" value="false" />
                  <property role="TrG5h" value="handle" />
                  <property role="DiZV1" value="false" />
                  <property role="od$2w" value="false" />
                  <node concept="3Tm1VV" id="6cqWk79_tqp" role="1B3o_S" />
                  <node concept="3cqZAl" id="6cqWk79_tqq" role="3clF45" />
                  <node concept="37vLTG" id="6cqWk79_tqr" role="3clF46">
                    <property role="TrG5h" value="msg" />
                    <node concept="3uibUv" id="6cqWk79_tqs" role="1tU5fm">
                      <ref role="3uigEE" to="et5u:~IMessage" resolve="IMessage" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="6cqWk79_tqt" role="3clF47">
                    <node concept="3cpWs8" id="6ZbResQe4by" role="3cqZAp">
                      <node concept="3cpWsn" id="6ZbResQe4b_" role="3cpWs9">
                        <property role="TrG5h" value="location" />
                        <node concept="3Tqbb2" id="6ZbResQe4bw" role="1tU5fm" />
                      </node>
                    </node>
                    <node concept="3clFbJ" id="6cqWk79_FTc" role="3cqZAp">
                      <node concept="3clFbS" id="6cqWk79_FTe" role="3clFbx">
                        <node concept="3clFbF" id="6cqWk79_Go_" role="3cqZAp">
                          <node concept="37vLTI" id="6cqWk79_Gvu" role="3clFbG">
                            <node concept="37vLTw" id="6cqWk79_Goz" role="37vLTJ">
                              <ref role="3cqZAo" node="6ZbResQe4b_" resolve="location" />
                            </node>
                            <node concept="2OqwBi" id="6cqWk79_Huo" role="37vLTx">
                              <node concept="1eOMI4" id="6cqWk79_Hlh" role="2Oq$k0">
                                <node concept="10QFUN" id="6cqWk79_Hle" role="1eOMHV">
                                  <node concept="3uibUv" id="6cqWk79_Hlj" role="10QFUM">
                                    <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                                  </node>
                                  <node concept="2OqwBi" id="6cqWk79_Hlk" role="10QFUP">
                                    <node concept="37vLTw" id="6cqWk79_Hll" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6cqWk79_tqr" resolve="msg" />
                                    </node>
                                    <node concept="liA8E" id="6cqWk79_Hlm" role="2OqNvi">
                                      <ref role="37wK5l" to="et5u:~IMessage.getHintObject()" resolve="getHintObject" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="6cqWk79_HCi" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                                <node concept="37vLTw" id="6cqWk79_M0n" role="37wK5m">
                                  <ref role="3cqZAo" node="6ZbResQdXhy" resolve="repo" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1Wc70l" id="6cqWk79_PSg" role="3clFbw">
                        <node concept="3y3z36" id="6cqWk79_Qq7" role="3uHU7B">
                          <node concept="10Nm6u" id="6cqWk79_Qrq" role="3uHU7w" />
                          <node concept="37vLTw" id="6cqWk79_Qin" role="3uHU7B">
                            <ref role="3cqZAo" node="6ZbResQdXhy" resolve="repo" />
                          </node>
                        </node>
                        <node concept="2ZW3vV" id="6cqWk79_Fha" role="3uHU7w">
                          <node concept="3uibUv" id="6cqWk79_FRD" role="2ZW6by">
                            <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                          </node>
                          <node concept="2OqwBi" id="6cqWk79_ENK" role="2ZW6bz">
                            <node concept="37vLTw" id="6cqWk79_EGk" role="2Oq$k0">
                              <ref role="3cqZAo" node="6cqWk79_tqr" resolve="msg" />
                            </node>
                            <node concept="liA8E" id="6cqWk79_EUU" role="2OqNvi">
                              <ref role="37wK5l" to="et5u:~IMessage.getHintObject()" resolve="getHintObject" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="9aQIb" id="6ZbResQe6d1" role="9aQIa">
                        <node concept="3clFbS" id="6ZbResQe6d2" role="9aQI4">
                          <node concept="3clFbF" id="6ZbResQe6Ev" role="3cqZAp">
                            <node concept="37vLTI" id="6ZbResQe7jJ" role="3clFbG">
                              <node concept="10Nm6u" id="6ZbResQe7Cn" role="37vLTx" />
                              <node concept="37vLTw" id="6ZbResQe6Eu" role="37vLTJ">
                                <ref role="3cqZAo" node="6ZbResQe4b_" resolve="location" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="2rr9SDxzpyW" role="3cqZAp">
                      <node concept="3clFbS" id="2rr9SDxzpyY" role="3clFbx">
                        <node concept="2MkqsV" id="6cqWk79_tqu" role="3cqZAp">
                          <node concept="2OqwBi" id="6cqWk79_Gdb" role="2MkJ7o">
                            <node concept="37vLTw" id="6cqWk79_G5D" role="2Oq$k0">
                              <ref role="3cqZAo" node="6cqWk79_tqr" resolve="msg" />
                            </node>
                            <node concept="liA8E" id="6cqWk79_GkK" role="2OqNvi">
                              <ref role="37wK5l" to="et5u:~IMessage.getText()" resolve="getText" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="6cqWk79_G4z" role="1urrMF">
                            <ref role="3cqZAo" node="6ZbResQe4b_" resolve="location" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbC" id="2rr9SDxzqml" role="3clFbw">
                        <node concept="Rm8GO" id="2rr9SDxzqTw" role="3uHU7w">
                          <ref role="1Px2BO" to="et5u:~MessageKind" resolve="MessageKind" />
                          <ref role="Rm8GQ" to="et5u:~MessageKind.ERROR" resolve="ERROR" />
                        </node>
                        <node concept="2OqwBi" id="2rr9SDxzpLv" role="3uHU7B">
                          <node concept="37vLTw" id="2rr9SDxzpBi" role="2Oq$k0">
                            <ref role="3cqZAo" node="6cqWk79_tqr" resolve="msg" />
                          </node>
                          <node concept="liA8E" id="2rr9SDxzpVR" role="2OqNvi">
                            <ref role="37wK5l" to="et5u:~IMessage.getKind()" resolve="getKind" />
                          </node>
                        </node>
                      </node>
                      <node concept="3eNFk2" id="2rr9SDxzrq6" role="3eNLev">
                        <node concept="3clFbC" id="2rr9SDxzsW_" role="3eO9$A">
                          <node concept="Rm8GO" id="2rr9SDxztbo" role="3uHU7w">
                            <ref role="1Px2BO" to="et5u:~MessageKind" resolve="MessageKind" />
                            <ref role="Rm8GQ" to="et5u:~MessageKind.WARNING" resolve="WARNING" />
                          </node>
                          <node concept="2OqwBi" id="2rr9SDxzrEv" role="3uHU7B">
                            <node concept="37vLTw" id="2rr9SDxzrzi" role="2Oq$k0">
                              <ref role="3cqZAo" node="6cqWk79_tqr" resolve="msg" />
                            </node>
                            <node concept="liA8E" id="2rr9SDxzrLR" role="2OqNvi">
                              <ref role="37wK5l" to="et5u:~IMessage.getKind()" resolve="getKind" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="2rr9SDxzrq8" role="3eOfB_">
                          <node concept="a7r0C" id="2rr9SDxzti0" role="3cqZAp">
                            <node concept="2OqwBi" id="2rr9SDxzttn" role="a7wSD">
                              <node concept="37vLTw" id="2rr9SDxztm4" role="2Oq$k0">
                                <ref role="3cqZAo" node="6cqWk79_tqr" resolve="msg" />
                              </node>
                              <node concept="liA8E" id="2rr9SDxztEj" role="2OqNvi">
                                <ref role="37wK5l" to="et5u:~IMessage.getText()" resolve="getText" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="2rr9SDxztGH" role="1urrMF">
                              <ref role="3cqZAo" node="6ZbResQe4b_" resolve="location" />
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
    </node>
    <node concept="1YaCAy" id="6ZbResPSdZH" role="1YuTPh">
      <property role="TrG5h" value="aspect" />
      <ref role="1YaFvo" to="3njg:6ZbResPSdOk" resolve="BuildAspect_ExternalProjectDescription" />
    </node>
  </node>
</model>

