<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:571180f9-384f-4b91-9156-90f744b1dd61(test.build)">
  <persistence version="9" />
  <languages>
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="7" />
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
    <use id="4dafe081-e8e5-4580-a546-0ff88688fe77" name="com.specificlanguages.projectsync.buildext" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="4dafe081-e8e5-4580-a546-0ff88688fe77" name="com.specificlanguages.projectsync.buildext">
      <concept id="8055775244081749268" name="com.specificlanguages.projectsync.buildext.structure.BuildAspect_ExternalProjectDescription" flags="ng" index="1qaK7N">
        <child id="8055775244081749957" name="path" index="1qaKcy" />
      </concept>
    </language>
    <language id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build">
      <concept id="5481553824944787378" name="jetbrains.mps.build.structure.BuildSourceProjectRelativePath" flags="ng" index="55IIr" />
      <concept id="7321017245476976379" name="jetbrains.mps.build.structure.BuildRelativePath" flags="ng" index="iG8Mu">
        <child id="7321017245477039051" name="compositePart" index="iGT6I" />
      </concept>
      <concept id="8618885170173601777" name="jetbrains.mps.build.structure.BuildCompositePath" flags="nn" index="2Ry0Ak">
        <property id="8618885170173601779" name="head" index="2Ry0Am" />
        <child id="8618885170173601778" name="tail" index="2Ry0An" />
      </concept>
      <concept id="5617550519002745364" name="jetbrains.mps.build.structure.BuildLayout" flags="ng" index="1l3spV" />
      <concept id="5617550519002745363" name="jetbrains.mps.build.structure.BuildProject" flags="ng" index="1l3spW">
        <property id="5204048710541015587" name="internalBaseDirectory" index="2DA0ip" />
        <child id="4796668409958418110" name="scriptsDir" index="auvoZ" />
        <child id="6647099934206700656" name="plugins" index="10PD9s" />
        <child id="7389400916848080626" name="parts" index="3989C9" />
        <child id="3542413272732620719" name="aspects" index="1hWBAP" />
        <child id="5617550519002745372" name="layout" index="1l3spN" />
      </concept>
      <concept id="8654221991637384182" name="jetbrains.mps.build.structure.BuildFileIncludesSelector" flags="ng" index="3qWCbU">
        <property id="8654221991637384184" name="pattern" index="3qWCbO" />
      </concept>
      <concept id="5248329904287794596" name="jetbrains.mps.build.structure.BuildInputFiles" flags="ng" index="3LXTmp">
        <child id="5248329904287794598" name="dir" index="3LXTmr" />
        <child id="5248329904287794679" name="selectors" index="3LXTna" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps">
      <concept id="868032131020265945" name="jetbrains.mps.build.mps.structure.BuildMPSPlugin" flags="ng" index="3b7kt6" />
      <concept id="5253498789149381388" name="jetbrains.mps.build.mps.structure.BuildMps_Module" flags="ng" index="3bQrTs">
        <child id="5253498789149547825" name="sources" index="3bR31x" />
      </concept>
      <concept id="4278635856200817744" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleModelRoot" flags="ng" index="1BupzO">
        <property id="8137134783396907368" name="convert2binary" index="1Hdu6h" />
        <property id="8137134783396676838" name="extracted" index="1HemKv" />
        <property id="2889113830911481881" name="deployFolderName" index="3ZfqAx" />
        <child id="8137134783396676835" name="location" index="1HemKq" />
      </concept>
      <concept id="3189788309731840247" name="jetbrains.mps.build.mps.structure.BuildMps_Solution" flags="ng" index="1E1JtA" />
      <concept id="322010710375871467" name="jetbrains.mps.build.mps.structure.BuildMps_AbstractModule" flags="ng" index="3LEN3z">
        <property id="8369506495128725901" name="compact" index="BnDLt" />
        <property id="322010710375892619" name="uuid" index="3LESm3" />
        <child id="322010710375956261" name="path" index="3LF7KH" />
      </concept>
    </language>
  </registry>
  <node concept="1l3spW" id="1ebdOvY9RLk">
    <property role="2DA0ip" value="../.." />
    <property role="TrG5h" value="simple" />
    <node concept="1qaK7N" id="1ebdOvY9RMr" role="1hWBAP">
      <node concept="55IIr" id="1ebdOvY9RMx" role="1qaKcy">
        <node concept="2Ry0Ak" id="1ebdOvY9RMB" role="iGT6I">
          <property role="2Ry0Am" value="project.xml" />
        </node>
      </node>
    </node>
    <node concept="1E1JtA" id="1ebdOvY9RLG" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="ignored" />
      <property role="3LESm3" value="4d52a835-e8cb-4f45-93e3-974ca63997d5" />
      <node concept="55IIr" id="1ebdOvY9RLI" role="3LF7KH">
        <node concept="2Ry0Ak" id="1ebdOvY9RLO" role="iGT6I">
          <property role="2Ry0Am" value="solutions" />
          <node concept="2Ry0Ak" id="1ebdOvY9RLT" role="2Ry0An">
            <property role="2Ry0Am" value="ignored" />
            <node concept="2Ry0Ak" id="1ebdOvY9RLY" role="2Ry0An">
              <property role="2Ry0Am" value="ignored.msd" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1BupzO" id="1ebdOvY9RM4" role="3bR31x">
        <property role="3ZfqAx" value="models" />
        <property role="1Hdu6h" value="true" />
        <property role="1HemKv" value="true" />
        <node concept="3LXTmp" id="1ebdOvY9RM5" role="1HemKq">
          <node concept="55IIr" id="1ebdOvY9RM0" role="3LXTmr">
            <node concept="2Ry0Ak" id="1ebdOvY9RM1" role="iGT6I">
              <property role="2Ry0Am" value="solutions" />
              <node concept="2Ry0Ak" id="1ebdOvY9RM2" role="2Ry0An">
                <property role="2Ry0Am" value="ignored" />
                <node concept="2Ry0Ak" id="1ebdOvY9RM3" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3qWCbU" id="1ebdOvY9RM6" role="3LXTna">
            <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3b7kt6" id="1ebdOvY9RLv" role="10PD9s" />
    <node concept="55IIr" id="1ebdOvY9RLl" role="auvoZ" />
    <node concept="1l3spV" id="1ebdOvY9RLm" role="1l3spN" />
  </node>
</model>

