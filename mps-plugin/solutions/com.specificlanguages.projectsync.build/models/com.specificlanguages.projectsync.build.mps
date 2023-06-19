<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3ec12387-afe1-46c2-bf87-6a2a7a7195ef(com.specificlanguages.projectsync.build)">
  <persistence version="9" />
  <languages>
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="7" />
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
  </imports>
  <registry>
    <language id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build">
      <concept id="5481553824944787378" name="jetbrains.mps.build.structure.BuildSourceProjectRelativePath" flags="ng" index="55IIr" />
      <concept id="2755237150521975431" name="jetbrains.mps.build.structure.BuildVariableMacroInitWithString" flags="ng" index="aVJcg">
        <child id="2755237150521975437" name="value" index="aVJcq" />
      </concept>
      <concept id="7321017245476976379" name="jetbrains.mps.build.structure.BuildRelativePath" flags="ng" index="iG8Mu">
        <child id="7321017245477039051" name="compositePart" index="iGT6I" />
      </concept>
      <concept id="3767587139141066978" name="jetbrains.mps.build.structure.BuildVariableMacro" flags="ng" index="2kB4xC">
        <child id="2755237150521975432" name="initialValue" index="aVJcv" />
      </concept>
      <concept id="4993211115183325728" name="jetbrains.mps.build.structure.BuildProjectDependency" flags="ng" index="2sgV4H">
        <reference id="5617550519002745380" name="script" index="1l3spb" />
        <child id="4129895186893471026" name="artifacts" index="2JcizS" />
      </concept>
      <concept id="2750015747481074431" name="jetbrains.mps.build.structure.BuildLayout_Files" flags="ng" index="2HvfSZ">
        <child id="2750015747481074432" name="path" index="2HvfZ0" />
      </concept>
      <concept id="4380385936562003279" name="jetbrains.mps.build.structure.BuildString" flags="ng" index="NbPM2">
        <child id="4903714810883783243" name="parts" index="3MwsjC" />
      </concept>
      <concept id="8618885170173601777" name="jetbrains.mps.build.structure.BuildCompositePath" flags="nn" index="2Ry0Ak">
        <property id="8618885170173601779" name="head" index="2Ry0Am" />
        <child id="8618885170173601778" name="tail" index="2Ry0An" />
      </concept>
      <concept id="6647099934206700647" name="jetbrains.mps.build.structure.BuildJavaPlugin" flags="ng" index="10PD9b" />
      <concept id="7389400916848050060" name="jetbrains.mps.build.structure.BuildLayout_NamedContainer" flags="ng" index="3981dR">
        <child id="4380385936562148502" name="containerName" index="Nbhlr" />
      </concept>
      <concept id="7389400916848036984" name="jetbrains.mps.build.structure.BuildLayout_Folder" flags="ng" index="398223" />
      <concept id="7389400916848136194" name="jetbrains.mps.build.structure.BuildFolderMacro" flags="ng" index="398rNT" />
      <concept id="7389400916848153117" name="jetbrains.mps.build.structure.BuildSourceMacroRelativePath" flags="ng" index="398BVA">
        <reference id="7389400916848153130" name="macro" index="398BVh" />
      </concept>
      <concept id="5617550519002745364" name="jetbrains.mps.build.structure.BuildLayout" flags="ng" index="1l3spV" />
      <concept id="5617550519002745363" name="jetbrains.mps.build.structure.BuildProject" flags="ng" index="1l3spW">
        <property id="5204048710541015587" name="internalBaseDirectory" index="2DA0ip" />
        <child id="4796668409958418110" name="scriptsDir" index="auvoZ" />
        <child id="6647099934206700656" name="plugins" index="10PD9s" />
        <child id="7389400916848080626" name="parts" index="3989C9" />
        <child id="5617550519002745381" name="dependencies" index="1l3spa" />
        <child id="5617550519002745378" name="macros" index="1l3spd" />
        <child id="5617550519002745372" name="layout" index="1l3spN" />
      </concept>
      <concept id="8654221991637384182" name="jetbrains.mps.build.structure.BuildFileIncludesSelector" flags="ng" index="3qWCbU">
        <property id="8654221991637384184" name="pattern" index="3qWCbO" />
      </concept>
      <concept id="4701820937132344003" name="jetbrains.mps.build.structure.BuildLayout_Container" flags="ng" index="1y1bJS">
        <child id="7389400916848037006" name="children" index="39821P" />
      </concept>
      <concept id="841011766566059607" name="jetbrains.mps.build.structure.BuildStringNotEmpty" flags="ng" index="3_J27D" />
      <concept id="5248329904287794596" name="jetbrains.mps.build.structure.BuildInputFiles" flags="ng" index="3LXTmp">
        <child id="5248329904287794598" name="dir" index="3LXTmr" />
        <child id="5248329904287794679" name="selectors" index="3LXTna" />
      </concept>
      <concept id="4903714810883702019" name="jetbrains.mps.build.structure.BuildTextStringPart" flags="ng" index="3Mxwew">
        <property id="4903714810883755350" name="text" index="3MwjfP" />
      </concept>
      <concept id="4903714810883702017" name="jetbrains.mps.build.structure.BuildVarRefStringPart" flags="ng" index="3Mxwey">
        <reference id="4903714810883702018" name="macro" index="3Mxwex" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps">
      <concept id="6592112598314586625" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginGroup" flags="ng" index="m$f5U">
        <reference id="6592112598314586626" name="group" index="m$f5T" />
      </concept>
      <concept id="6592112598314498932" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPlugin" flags="ng" index="m$_wf">
        <property id="6592112598314498927" name="id" index="m$_wk" />
        <child id="6592112598314498931" name="version" index="m$_w8" />
        <child id="6592112598314499050" name="content" index="m$_yh" />
        <child id="6592112598314499028" name="dependencies" index="m$_yJ" />
        <child id="6592112598314499021" name="name" index="m$_yQ" />
        <child id="6592112598314855574" name="containerName" index="m_cZH" />
        <child id="2172791612906637490" name="description" index="3s6cr7" />
      </concept>
      <concept id="6592112598314498926" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_Plugin" flags="ng" index="m$_wl">
        <reference id="6592112598314801433" name="plugin" index="m_rDy" />
        <child id="3570488090019868128" name="packagingType" index="pUk7w" />
      </concept>
      <concept id="6592112598314499027" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginDependency" flags="ng" index="m$_yC">
        <reference id="6592112598314499066" name="target" index="m$_y1" />
      </concept>
      <concept id="3570488090019868065" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_AutoPluginLayoutType" flags="ng" index="pUk6x" />
      <concept id="1500819558095907805" name="jetbrains.mps.build.mps.structure.BuildMps_Group" flags="ng" index="2G$12M">
        <child id="1500819558095907806" name="modules" index="2G$12L" />
      </concept>
      <concept id="868032131020265945" name="jetbrains.mps.build.mps.structure.BuildMPSPlugin" flags="ng" index="3b7kt6" />
      <concept id="5253498789149381388" name="jetbrains.mps.build.mps.structure.BuildMps_Module" flags="ng" index="3bQrTs">
        <property id="1500819558096356884" name="doNotCompile" index="2GAjPV" />
        <child id="5253498789149547825" name="sources" index="3bR31x" />
        <child id="5253498789149547704" name="dependencies" index="3bR37C" />
      </concept>
      <concept id="5253498789149585690" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnModule" flags="ng" index="3bR9La">
        <property id="5253498789149547713" name="reexport" index="3bR36h" />
        <reference id="5253498789149547705" name="module" index="3bR37D" />
      </concept>
      <concept id="763829979718664966" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleResources" flags="ng" index="3rtmxn">
        <child id="763829979718664967" name="files" index="3rtmxm" />
      </concept>
      <concept id="5507251971038816436" name="jetbrains.mps.build.mps.structure.BuildMps_Generator" flags="ng" index="1yeLz9" />
      <concept id="4278635856200817744" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleModelRoot" flags="ng" index="1BupzO">
        <property id="8137134783396907368" name="convert2binary" index="1Hdu6h" />
        <property id="8137134783396676838" name="extracted" index="1HemKv" />
        <property id="2889113830911481881" name="deployFolderName" index="3ZfqAx" />
        <child id="8137134783396676835" name="location" index="1HemKq" />
      </concept>
      <concept id="4278635856200826393" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyJar" flags="ng" index="1BurEX">
        <child id="4278635856200826394" name="path" index="1BurEY" />
      </concept>
      <concept id="4278635856200794926" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyExtendLanguage" flags="ng" index="1Busua">
        <reference id="4278635856200794928" name="language" index="1Busuk" />
      </concept>
      <concept id="3189788309731840247" name="jetbrains.mps.build.mps.structure.BuildMps_Solution" flags="ng" index="1E1JtA" />
      <concept id="3189788309731840248" name="jetbrains.mps.build.mps.structure.BuildMps_Language" flags="ng" index="1E1JtD">
        <child id="9200313594498201639" name="generator" index="1TViLv" />
      </concept>
      <concept id="322010710375871467" name="jetbrains.mps.build.mps.structure.BuildMps_AbstractModule" flags="ng" index="3LEN3z">
        <property id="8369506495128725901" name="compact" index="BnDLt" />
        <property id="322010710375892619" name="uuid" index="3LESm3" />
        <child id="322010710375956261" name="path" index="3LF7KH" />
      </concept>
      <concept id="7259033139236285166" name="jetbrains.mps.build.mps.structure.BuildMps_ExtractedModuleDependency" flags="nn" index="1SiIV0">
        <child id="7259033139236285167" name="dependency" index="1SiIV1" />
      </concept>
    </language>
  </registry>
  <node concept="1l3spW" id="5a927F2a$3h">
    <property role="2DA0ip" value="../.." />
    <property role="TrG5h" value="com.specificlanguages.projectsync" />
    <node concept="2sgV4H" id="5a927F2a$pO" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="5a927F2a$pW" role="2JcizS">
        <ref role="398BVh" node="5a927F2a$3w" resolve="mps_home" />
      </node>
    </node>
    <node concept="m$_wf" id="5a927F2a$3$" role="3989C9">
      <property role="m$_wk" value="com.specificlanguages.projectsync" />
      <node concept="3_J27D" id="5a927F2a$3A" role="m$_yQ">
        <node concept="3Mxwew" id="5a927F2a$3M" role="3MwsjC">
          <property role="3MwjfP" value="com.specificlanguages.projectsync" />
        </node>
      </node>
      <node concept="3_J27D" id="5a927F2a$3C" role="m_cZH">
        <node concept="3Mxwew" id="5a927F2a$3O" role="3MwsjC">
          <property role="3MwjfP" value="com.specificlanguages.projectsync" />
        </node>
      </node>
      <node concept="3_J27D" id="5a927F2a$3E" role="m$_w8">
        <node concept="3Mxwey" id="5a927F2a$oi" role="3MwsjC">
          <ref role="3Mxwex" node="5a927F2a$op" resolve="version" />
        </node>
      </node>
      <node concept="3_J27D" id="5a927F2a$3Q" role="3s6cr7">
        <node concept="3Mxwew" id="5a927F2a$3S" role="3MwsjC">
          <property role="3MwjfP" value="Build language extension to share project description with Gradle" />
        </node>
      </node>
      <node concept="m$f5U" id="5a927F2a$ut" role="m$_yh">
        <ref role="m$f5T" node="5a927F2a$oK" resolve="com.specificlanguages.projectsync" />
      </node>
      <node concept="m$_yC" id="5a927F2a$uG" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4k71ibbKLe8" resolve="jetbrains.mps.core" />
      </node>
      <node concept="m$_yC" id="5a927F2a$uN" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:5HVSRHdVm9a" resolve="jetbrains.mps.build" />
      </node>
    </node>
    <node concept="2G$12M" id="5a927F2a$oK" role="3989C9">
      <property role="TrG5h" value="com.specificlanguages.projectsync" />
      <node concept="1E1JtA" id="5a927F2a$xD" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="com.specificlanguages.projectsync.build" />
        <property role="3LESm3" value="9f416825-d38a-431b-8510-8fd7526a665c" />
        <node concept="55IIr" id="5a927F2a$xG" role="3LF7KH">
          <node concept="2Ry0Ak" id="5a927F2a$yP" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="5a927F2a$z4" role="2Ry0An">
              <property role="2Ry0Am" value="com.specificlanguages.projectsync.build" />
              <node concept="2Ry0Ak" id="3Mew5L6eiRy" role="2Ry0An">
                <property role="2Ry0Am" value="com.specificlanguages.projectsync.build.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5a927F2a$zq" role="3bR37C">
          <node concept="3bR9La" id="5a927F2a$zr" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:78GwwOvB3tw" resolve="jetbrains.mps.ide.build" />
          </node>
        </node>
        <node concept="1BupzO" id="5a927F2a$zw" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="3Mew5L6eiRD" role="1HemKq">
            <node concept="55IIr" id="3Mew5L6eiR_" role="3LXTmr">
              <node concept="2Ry0Ak" id="3Mew5L6eiRA" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3Mew5L6eiRB" role="2Ry0An">
                  <property role="2Ry0Am" value="com.specificlanguages.projectsync.build" />
                  <node concept="2Ry0Ak" id="3Mew5L6eiRC" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="3Mew5L6eiRE" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="5a927F2a$qP" role="2G$12L">
        <property role="TrG5h" value="com.specificlanguages.projectsync.buildext" />
        <property role="3LESm3" value="4dafe081-e8e5-4580-a546-0ff88688fe77" />
        <property role="BnDLt" value="true" />
        <node concept="55IIr" id="5a927F2a$qS" role="3LF7KH">
          <node concept="2Ry0Ak" id="5a927F2a$ro" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="5a927F2a$rB" role="2Ry0An">
              <property role="2Ry0Am" value="com.specificlanguages.projectsync.buildext" />
              <node concept="2Ry0Ak" id="3Mew5L6eiRz" role="2Ry0An">
                <property role="2Ry0Am" value="com.specificlanguages.projectsync.buildext.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5a927F2a$rX" role="3bR37C">
          <node concept="3bR9La" id="5a927F2a$rY" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="5a927F2a$rZ" role="3bR37C">
          <node concept="3bR9La" id="5a927F2a$s0" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:44LXwdzyvTi" resolve="Annotations" />
          </node>
        </node>
        <node concept="1SiIV0" id="5a927F2a$s1" role="3bR37C">
          <node concept="3bR9La" id="5a927F2a$s2" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7pdFgzxlDoA" resolve="jetbrains.mps.build" />
          </node>
        </node>
        <node concept="1SiIV0" id="5a927F2a$s3" role="3bR37C">
          <node concept="3bR9La" id="5a927F2a$s4" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="5a927F2a$s5" role="3bR37C">
          <node concept="3bR9La" id="5a927F2a$s6" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7pdFgzxlDoP" resolve="jetbrains.mps.build.mps" />
          </node>
        </node>
        <node concept="1SiIV0" id="5a927F2a$s7" role="3bR37C">
          <node concept="3bR9La" id="5a927F2a$s8" role="1SiIV1">
            <ref role="3bR37D" node="5a927F2a$p0" resolve="com.specificlanguages.projectsync.logic" />
          </node>
        </node>
        <node concept="1BupzO" id="5a927F2a$sd" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="3Mew5L6eiRJ" role="1HemKq">
            <node concept="55IIr" id="3Mew5L6eiRF" role="3LXTmr">
              <node concept="2Ry0Ak" id="3Mew5L6eiRG" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="3Mew5L6eiRH" role="2Ry0An">
                  <property role="2Ry0Am" value="com.specificlanguages.projectsync.buildext" />
                  <node concept="2Ry0Ak" id="3Mew5L6eiRI" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="3Mew5L6eiRK" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5a927F2a$sg" role="3bR37C">
          <node concept="1Busua" id="5a927F2a$sh" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7pdFgzxlDoA" resolve="jetbrains.mps.build" />
          </node>
        </node>
        <node concept="1yeLz9" id="5a927F2a$si" role="1TViLv">
          <property role="TrG5h" value="com.specificlanguages.projectsync.buildext.generator" />
          <property role="3LESm3" value="67e482a7-7524-481e-bbfe-0d65fe09e0a2" />
          <node concept="1BupzO" id="5a927F2a$so" role="3bR31x">
            <property role="3ZfqAx" value="generator/templates" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="3Mew5L6eiRQ" role="1HemKq">
              <node concept="55IIr" id="3Mew5L6eiRL" role="3LXTmr">
                <node concept="2Ry0Ak" id="3Mew5L6eiRM" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="3Mew5L6eiRN" role="2Ry0An">
                    <property role="2Ry0Am" value="com.specificlanguages.projectsync.buildext" />
                    <node concept="2Ry0Ak" id="3Mew5L6eiRO" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="3Mew5L6eiRP" role="2Ry0An">
                        <property role="2Ry0Am" value="templates" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="3Mew5L6eiRR" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="5a927F2a$tV" role="3bR31x">
          <node concept="3LXTmp" id="5a927F2a$tW" role="3rtmxm">
            <node concept="55IIr" id="5a927F2a$tX" role="3LXTmr">
              <node concept="2Ry0Ak" id="5a927F2a$tY" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="39$og7AQa72" role="2Ry0An">
                  <property role="2Ry0Am" value="com.specificlanguages.projectsync.buildext" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="5a927F2a$u1" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="5a927F2a$p0" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="com.specificlanguages.projectsync.logic" />
        <property role="3LESm3" value="7eb68773-0c91-4dc5-a5a6-0fd3dd31f774" />
        <property role="2GAjPV" value="true" />
        <node concept="55IIr" id="5a927F2a$p3" role="3LF7KH">
          <node concept="2Ry0Ak" id="5a927F2a$p9" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="5a927F2a$pe" role="2Ry0An">
              <property role="2Ry0Am" value="com.specificlanguages.projectsync.logic" />
              <node concept="2Ry0Ak" id="3Mew5L6eiR$" role="2Ry0An">
                <property role="2Ry0Am" value="com.specificlanguages.projectsync.logic.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5a927F2a$q3" role="3bR37C">
          <node concept="3bR9La" id="5a927F2a$q4" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="5a927F2a$q5" role="3bR37C">
          <node concept="3bR9La" id="5a927F2a$q6" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:44LXwdzyvTi" resolve="Annotations" />
          </node>
        </node>
        <node concept="1SiIV0" id="3Mew5L6eiRX" role="3bR37C">
          <node concept="1BurEX" id="3Mew5L6eiRY" role="1SiIV1">
            <node concept="55IIr" id="3Mew5L6eiRS" role="1BurEY">
              <node concept="2Ry0Ak" id="3Mew5L6eiRT" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3Mew5L6eiRU" role="2Ry0An">
                  <property role="2Ry0Am" value="com.specificlanguages.projectsync.logic" />
                  <node concept="2Ry0Ak" id="3Mew5L6eiRV" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="3Mew5L6eiRW" role="2Ry0An">
                      <property role="2Ry0Am" value="logic.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="10PD9b" id="5a927F2a$3m" role="10PD9s" />
    <node concept="3b7kt6" id="5a927F2a$3s" role="10PD9s" />
    <node concept="55IIr" id="5a927F2a$3i" role="auvoZ" />
    <node concept="1l3spV" id="5a927F2a$3j" role="1l3spN">
      <node concept="m$_wl" id="5a927F2a$v0" role="39821P">
        <ref role="m_rDy" node="5a927F2a$3$" resolve="com.specificlanguages.projectsync" />
        <node concept="398223" id="5a927F2a$vt" role="39821P">
          <node concept="3_J27D" id="5a927F2a$vv" role="Nbhlr">
            <node concept="3Mxwew" id="5a927F2a$vC" role="3MwsjC">
              <property role="3MwjfP" value="lib" />
            </node>
          </node>
          <node concept="2HvfSZ" id="5a927F2a$wf" role="39821P">
            <node concept="55IIr" id="5a927F2a$wo" role="2HvfZ0">
              <node concept="2Ry0Ak" id="5a927F2a$wp" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5a927F2a$wq" role="2Ry0An">
                  <property role="2Ry0Am" value="com.specificlanguages.projectsync.logic" />
                  <node concept="2Ry0Ak" id="5a927F2a$wr" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="pUk6x" id="5a927F2a$ve" role="pUk7w" />
      </node>
    </node>
    <node concept="398rNT" id="5a927F2a$3w" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="2kB4xC" id="5a927F2a$op" role="1l3spd">
      <property role="TrG5h" value="version" />
      <node concept="aVJcg" id="5a927F2a$ov" role="aVJcv">
        <node concept="NbPM2" id="5a927F2a$ou" role="aVJcq">
          <node concept="3Mxwew" id="5a927F2a$ot" role="3MwsjC">
            <property role="3MwjfP" value="SET_FROM_GRADLE" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

