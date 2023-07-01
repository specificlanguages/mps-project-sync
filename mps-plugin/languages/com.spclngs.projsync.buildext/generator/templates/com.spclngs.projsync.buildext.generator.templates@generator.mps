<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d1deba6a-9192-4787-99e2-0f7cd19b27dc(com.spclngs.projsync.buildext.generator.templates@generator)">
  <persistence version="9" />
  <languages>
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="4" />
    <use id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext" version="2" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="0" />
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="3njg" ref="r:eadca9c5-6cd8-4ad8-84f3-0b28137040d9(com.spclngs.projectconventions.buildext.structure)" />
    <import index="95xo" ref="r:682764f9-ae55-4c0f-8223-7e504f7203ea(com.spclngs.projectconventions.buildext.check)" />
    <import index="o3n2" ref="r:26eadcf0-f275-4e90-be37-e4432772a74d(jetbrains.mps.build.util)" />
    <import index="et5u" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.messages(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts">
      <concept id="1161622665029" name="jetbrains.mps.lang.sharedConcepts.structure.ConceptFunctionParameter_model" flags="nn" index="1Q6Npb" />
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
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
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
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
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
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
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
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
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
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1202776937179" name="jetbrains.mps.lang.generator.structure.AbandonInput_RuleConsequence" flags="lg" index="b5Tf3" />
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <property id="1184950341882" name="topPriorityGroup" index="3$yP7D" />
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
        <child id="1195502100749" name="preMappingScript" index="1puA0r" />
      </concept>
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="1195499912406" name="jetbrains.mps.lang.generator.structure.MappingScript" flags="lg" index="1pmfR0">
        <property id="1195595592106" name="scriptKind" index="1v3f2W" />
        <child id="1195501105008" name="codeBlock" index="1pqMTA" />
      </concept>
      <concept id="1195500722856" name="jetbrains.mps.lang.generator.structure.MappingScript_CodeBlock" flags="in" index="1pplIY" />
      <concept id="1195502151594" name="jetbrains.mps.lang.generator.structure.MappingScriptReference" flags="lg" index="1puMqW">
        <reference id="1195502167610" name="mappingScript" index="1puQsG" />
      </concept>
    </language>
    <language id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext">
      <concept id="1217960179967" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_ShowErrorMessage" flags="nn" index="2k5nB$" />
      <concept id="1217960314443" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_ShowMessageBase" flags="nn" index="2k5Stg">
        <child id="1217960314448" name="messageText" index="2k5Stb" />
        <child id="1217960407512" name="referenceNode" index="2k6f33" />
      </concept>
      <concept id="1217969995796" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_ShowWarningMessage" flags="nn" index="2kEO4f" />
      <concept id="1217970068025" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_ShowInfoMessage" flags="nn" index="2kF5Gy" />
      <concept id="1216860049635" name="jetbrains.mps.lang.generator.generationContext.structure.TemplateFunctionParameter_generationContext" flags="nn" index="1iwH7S" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171323947159" name="jetbrains.mps.lang.smodel.structure.Model_NodesOperation" flags="nn" index="2SmgA7">
        <child id="1758937410080001570" name="conceptArgument" index="1dBWTz" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
    </language>
  </registry>
  <node concept="bUwia" id="6ZbResPSdLt">
    <property role="TrG5h" value="check" />
    <property role="3$yP7D" value="true" />
    <node concept="3aamgX" id="4JzFrdT$c4e" role="3acgRq">
      <ref role="30HIoZ" to="3njg:6ZbResPSdOk" resolve="BuildAspect_ExternalProjectDescription" />
      <node concept="b5Tf3" id="4JzFrdT$c4g" role="1lVwrX" />
    </node>
    <node concept="1puMqW" id="4JzFrdT$aS3" role="1puA0r">
      <ref role="1puQsG" node="4JzFrdT$aS4" resolve="pre_check" />
    </node>
  </node>
  <node concept="1pmfR0" id="4JzFrdT$aS4">
    <property role="TrG5h" value="pre_check" />
    <property role="1v3f2W" value="hpv1Zf2/pre_processing" />
    <node concept="1pplIY" id="4JzFrdT$aS5" role="1pqMTA">
      <node concept="3clFbS" id="4JzFrdT$aS6" role="2VODD2">
        <node concept="2Gpval" id="4JzFrdT$b7J" role="3cqZAp">
          <node concept="2GrKxI" id="4JzFrdT$b7L" role="2Gsz3X">
            <property role="TrG5h" value="node" />
          </node>
          <node concept="2OqwBi" id="4JzFrdT$bhC" role="2GsD0m">
            <node concept="1Q6Npb" id="4JzFrdT$b95" role="2Oq$k0" />
            <node concept="2SmgA7" id="4JzFrdT$bnm" role="2OqNvi">
              <node concept="chp4Y" id="4JzFrdT$bob" role="1dBWTz">
                <ref role="cht4Q" to="3njg:6ZbResPSdOk" resolve="BuildAspect_ExternalProjectDescription" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4JzFrdT$b7P" role="2LFqv$">
            <node concept="3clFbF" id="4JzFrdT$b50" role="3cqZAp">
              <node concept="2YIFZM" id="4JzFrdT$b5P" role="3clFbG">
                <ref role="37wK5l" to="95xo:6ZbResQbE6T" resolve="check" />
                <ref role="1Pybhc" to="95xo:6ZbResQbCNP" resolve="CheckBuildProject" />
                <node concept="2GrUjf" id="4JzFrdT$bqo" role="37wK5m">
                  <ref role="2Gs0qQ" node="4JzFrdT$b7L" resolve="node" />
                </node>
                <node concept="2YIFZM" id="4JzFrdT$bAt" role="37wK5m">
                  <ref role="37wK5l" to="o3n2:19KdqCVerNJ" resolve="defaultContext" />
                  <ref role="1Pybhc" to="o3n2:4jjtc7WZOAv" resolve="Context" />
                  <node concept="1iwH7S" id="4JzFrdT$bBV" role="37wK5m" />
                </node>
                <node concept="2ShNRf" id="4JzFrdT$bDG" role="37wK5m">
                  <node concept="YeOm9" id="6cqWk79_Ys1" role="2ShVmc">
                    <node concept="1Y3b0j" id="6cqWk79_Ys4" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                      <ref role="1Y3XeK" to="et5u:~IMessageHandler" resolve="IMessageHandler" />
                      <node concept="3Tm1VV" id="6cqWk79_Ys5" role="1B3o_S" />
                      <node concept="3clFb_" id="6cqWk79_Ys6" role="jymVt">
                        <property role="1EzhhJ" value="false" />
                        <property role="TrG5h" value="handle" />
                        <property role="DiZV1" value="false" />
                        <property role="od$2w" value="false" />
                        <node concept="3Tm1VV" id="6cqWk79_Ys7" role="1B3o_S" />
                        <node concept="3cqZAl" id="6cqWk79_Ys9" role="3clF45" />
                        <node concept="37vLTG" id="6cqWk79_Ysa" role="3clF46">
                          <property role="TrG5h" value="msg" />
                          <node concept="3uibUv" id="6cqWk79_Ysb" role="1tU5fm">
                            <ref role="3uigEE" to="et5u:~IMessage" resolve="IMessage" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="6cqWk79_Ysd" role="3clF47">
                          <node concept="3cpWs8" id="6cqWk79AUiV" role="3cqZAp">
                            <node concept="3cpWsn" id="6cqWk79AUiY" role="3cpWs9">
                              <property role="TrG5h" value="location" />
                              <node concept="3Tqbb2" id="6cqWk79AUiT" role="1tU5fm" />
                              <node concept="2GrUjf" id="4JzFrdT$bT8" role="33vP2m">
                                <ref role="2Gs0qQ" node="4JzFrdT$b7L" resolve="node" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="6cqWk79AUof" role="3cqZAp">
                            <node concept="3clFbS" id="6cqWk79AUoh" role="3clFbx">
                              <node concept="3cpWs8" id="6cqWk79AVO7" role="3cqZAp">
                                <node concept="3cpWsn" id="6cqWk79AVO8" role="3cpWs9">
                                  <property role="TrG5h" value="nodePtr" />
                                  <node concept="3uibUv" id="6cqWk79AVO6" role="1tU5fm">
                                    <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                                  </node>
                                  <node concept="10QFUN" id="6cqWk79AVO9" role="33vP2m">
                                    <node concept="3uibUv" id="6cqWk79AVOa" role="10QFUM">
                                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                                    </node>
                                    <node concept="2OqwBi" id="6cqWk79AVOb" role="10QFUP">
                                      <node concept="37vLTw" id="6cqWk79AVOc" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6cqWk79_Ysa" resolve="msg" />
                                      </node>
                                      <node concept="liA8E" id="6cqWk79AVOd" role="2OqNvi">
                                        <ref role="37wK5l" to="et5u:~IMessage.getHintObject()" resolve="getHintObject" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbJ" id="6cqWk79AVVt" role="3cqZAp">
                                <node concept="3clFbS" id="6cqWk79AVVv" role="3clFbx">
                                  <node concept="3clFbF" id="6cqWk79AZ2N" role="3cqZAp">
                                    <node concept="37vLTI" id="6cqWk79AZ9E" role="3clFbG">
                                      <node concept="2OqwBi" id="6cqWk79AZjl" role="37vLTx">
                                        <node concept="2JrnkZ" id="6cqWk79AZAM" role="2Oq$k0">
                                          <node concept="1Q6Npb" id="6cqWk79AZaN" role="2JrQYb" />
                                        </node>
                                        <node concept="liA8E" id="6cqWk79AZGU" role="2OqNvi">
                                          <ref role="37wK5l" to="mhbf:~SModel.getNode(org.jetbrains.mps.openapi.model.SNodeId)" resolve="getNode" />
                                          <node concept="2OqwBi" id="6cqWk79AZRs" role="37wK5m">
                                            <node concept="37vLTw" id="6cqWk79AZK1" role="2Oq$k0">
                                              <ref role="3cqZAo" node="6cqWk79AVO8" resolve="nodePtr" />
                                            </node>
                                            <node concept="liA8E" id="6cqWk79AZZK" role="2OqNvi">
                                              <ref role="37wK5l" to="mhbf:~SNodeReference.getNodeId()" resolve="getNodeId" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="37vLTw" id="6cqWk79AZ2L" role="37vLTJ">
                                        <ref role="3cqZAo" node="6cqWk79AUiY" resolve="location" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="6cqWk79AYwW" role="3clFbw">
                                  <node concept="2OqwBi" id="6cqWk79AXXc" role="2Oq$k0">
                                    <node concept="2JrnkZ" id="6cqWk79AYjj" role="2Oq$k0">
                                      <node concept="1Q6Npb" id="6cqWk79AXOK" role="2JrQYb" />
                                    </node>
                                    <node concept="liA8E" id="6cqWk79AYpo" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="6cqWk79AYIl" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                                    <node concept="2OqwBi" id="6cqWk79AYSa" role="37wK5m">
                                      <node concept="37vLTw" id="6cqWk79AYKA" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6cqWk79AVO8" resolve="nodePtr" />
                                      </node>
                                      <node concept="liA8E" id="6cqWk79AZ0b" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SNodeReference.getModelReference()" resolve="getModelReference" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2ZW3vV" id="6cqWk79AV6q" role="3clFbw">
                              <node concept="3uibUv" id="6cqWk79AVbC" role="2ZW6by">
                                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                              </node>
                              <node concept="2OqwBi" id="6cqWk79AU$8" role="2ZW6bz">
                                <node concept="37vLTw" id="6cqWk79AUqo" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6cqWk79_Ysa" resolve="msg" />
                                </node>
                                <node concept="liA8E" id="6cqWk79AULx" role="2OqNvi">
                                  <ref role="37wK5l" to="et5u:~IMessage.getHintObject()" resolve="getHintObject" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="5IzazlwScnf" role="3cqZAp">
                            <node concept="3clFbS" id="5IzazlwScnh" role="3clFbx">
                              <node concept="3clFbF" id="6cqWk79_ZEk" role="3cqZAp">
                                <node concept="2OqwBi" id="6cqWk79_ZL5" role="3clFbG">
                                  <node concept="1iwH7S" id="6cqWk79_ZEj" role="2Oq$k0" />
                                  <node concept="2k5nB$" id="6cqWk79_ZTO" role="2OqNvi">
                                    <node concept="2OqwBi" id="6cqWk79A03g" role="2k5Stb">
                                      <node concept="37vLTw" id="6cqWk79_ZU$" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6cqWk79_Ysa" resolve="msg" />
                                      </node>
                                      <node concept="liA8E" id="6cqWk79A0fY" role="2OqNvi">
                                        <ref role="37wK5l" to="et5u:~IMessage.getText()" resolve="getText" />
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="6cqWk79B07i" role="2k6f33">
                                      <ref role="3cqZAo" node="6cqWk79AUiY" resolve="location" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="5IzazlwSdlr" role="3clFbw">
                              <node concept="Rm8GO" id="5IzazlwScMB" role="2Oq$k0">
                                <ref role="Rm8GQ" to="et5u:~MessageKind.ERROR" resolve="ERROR" />
                                <ref role="1Px2BO" to="et5u:~MessageKind" resolve="MessageKind" />
                              </node>
                              <node concept="liA8E" id="5IzazlwSeei" role="2OqNvi">
                                <ref role="37wK5l" to="et5u:~MessageKind.is(jetbrains.mps.messages.IMessage)" resolve="is" />
                                <node concept="37vLTw" id="5IzazlwSefP" role="37wK5m">
                                  <ref role="3cqZAo" node="6cqWk79_Ysa" resolve="msg" />
                                </node>
                              </node>
                            </node>
                            <node concept="3eNFk2" id="5IzazlwSeiN" role="3eNLev">
                              <node concept="3clFbS" id="5IzazlwSeiP" role="3eOfB_">
                                <node concept="3clFbF" id="5IzazlwSePd" role="3cqZAp">
                                  <node concept="2OqwBi" id="5IzazlwSePe" role="3clFbG">
                                    <node concept="1iwH7S" id="5IzazlwSePf" role="2Oq$k0" />
                                    <node concept="2kEO4f" id="5IzazlwSfg9" role="2OqNvi">
                                      <node concept="2OqwBi" id="5IzazlwSfgb" role="2k5Stb">
                                        <node concept="37vLTw" id="5IzazlwSfgc" role="2Oq$k0">
                                          <ref role="3cqZAo" node="6cqWk79_Ysa" resolve="msg" />
                                        </node>
                                        <node concept="liA8E" id="5IzazlwSfgd" role="2OqNvi">
                                          <ref role="37wK5l" to="et5u:~IMessage.getText()" resolve="getText" />
                                        </node>
                                      </node>
                                      <node concept="37vLTw" id="5IzazlwSfge" role="2k6f33">
                                        <ref role="3cqZAo" node="6cqWk79AUiY" resolve="location" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="5IzazlwSf53" role="3eO9$A">
                                <node concept="Rm8GO" id="5IzazlwSfdA" role="2Oq$k0">
                                  <ref role="Rm8GQ" to="et5u:~MessageKind.WARNING" resolve="WARNING" />
                                  <ref role="1Px2BO" to="et5u:~MessageKind" resolve="MessageKind" />
                                </node>
                                <node concept="liA8E" id="5IzazlwSf55" role="2OqNvi">
                                  <ref role="37wK5l" to="et5u:~MessageKind.is(jetbrains.mps.messages.IMessage)" resolve="is" />
                                  <node concept="37vLTw" id="5IzazlwSf56" role="37wK5m">
                                    <ref role="3cqZAo" node="6cqWk79_Ysa" resolve="msg" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="9aQIb" id="5IzazlwSfmQ" role="9aQIa">
                              <node concept="3clFbS" id="5IzazlwSfmR" role="9aQI4">
                                <node concept="3clFbF" id="5IzazlwSeHS" role="3cqZAp">
                                  <node concept="2OqwBi" id="5IzazlwSeHT" role="3clFbG">
                                    <node concept="1iwH7S" id="5IzazlwSeHU" role="2Oq$k0" />
                                    <node concept="2kF5Gy" id="5IzazlwSgbt" role="2OqNvi">
                                      <node concept="2OqwBi" id="5IzazlwSgbv" role="2k5Stb">
                                        <node concept="37vLTw" id="5IzazlwSgbw" role="2Oq$k0">
                                          <ref role="3cqZAo" node="6cqWk79_Ysa" resolve="msg" />
                                        </node>
                                        <node concept="liA8E" id="5IzazlwSgbx" role="2OqNvi">
                                          <ref role="37wK5l" to="et5u:~IMessage.getText()" resolve="getText" />
                                        </node>
                                      </node>
                                      <node concept="37vLTw" id="5IzazlwSgby" role="2k6f33">
                                        <ref role="3cqZAo" node="6cqWk79AUiY" resolve="location" />
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
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

