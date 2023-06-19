plugins {
    id("com.specificlanguages.mps") version "1.6.0"
    `maven-publish`
    conventions
}

dependencies {
    mps("com.jetbrains:mps:2021.1.4")
}

stubs {
    register("logic") {
        destinationDir.set(file("solutions/com.specificlanguages.projectsync.logic/lib"))
        dependency(project(":logic")) {
            isTransitive = false
        }
    }
}

publishing {
    publications {
        create<MavenPublication>("mpsPlugin") {
            from(components["mps"])
            artifactId = "projectsync-mps-plugin"
        }
    }
    repositories {
        github("specificlanguages", rootProject.name) {
            name = "github"
        }
    }
}
