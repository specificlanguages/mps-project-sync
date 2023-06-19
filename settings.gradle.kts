rootProject.name = "mps-project-sync"

include(":logic")
include(":mps-plugin")

dependencyResolutionManagement {
    repositories {
        mavenCentral()
        maven("https://artifacts.itemis.cloud/repository/maven-mps")
    }
}
