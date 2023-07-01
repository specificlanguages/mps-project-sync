import com.specificlanguages.mps.ArtifactTransforms
import java.io.Serializable

plugins {
    conventions
    kotlin("jvm") version "1.8.10"
    id("com.specificlanguages.mps.artifact-transforms") version "1.0.0"
}

val mpsZip by configurations.creating

dependencies {
    mpsZip("com.jetbrains:mps:2021.1.4")

    testImplementation(kotlin("test"))
    val buildBackendsVersion = "[1.8.+,2)"
    testImplementation("de.itemis.mps.build-backends:modelcheck:$buildBackendsVersion")
    testImplementation("de.itemis.mps.build-backends:project-loader:$buildBackendsVersion")
    testImplementation("org.hamcrest:hamcrest:2.2")

    val mpsUnzipped = fileTree({ ArtifactTransforms.getMpsRoot(mpsZip) })

    testCompileOnly(mpsUnzipped.matching {
        include("lib/*.jar")
        include("lib/mpsant/mps-tool.jar")

        include("plugins/mps-modelchecker/lib/modelchecker.jar")
        include("plugins/mps-httpsupport/solutions/jetbrains.mps.ide.httpsupport.runtime.jar")
    })

    testRuntimeOnly("log4j:log4j:1.2.17")
    testRuntimeOnly(project(":mps-plugin"))

    testRuntimeOnly(mpsUnzipped.matching {
        include("lib/*.jar")
    })
}

tasks.test {
    dependsOn(mpsZip)
    useJUnitPlatform()

    workingDir(buildDir.resolve("tests-working-dir"))

    doFirst { workingDir.mkdirs() }

    systemProperty("mps_home", ArtifactTransforms.getMpsRoot(mpsZip).get().path)
    systemProperty("projects_dir", file("test-projects"))

    // Added as a project library to the test project
    systemProperty("mps_plugin_dir", project(":mps-plugin").projectDir)
}
