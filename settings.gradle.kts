rootProject.name = "mps-project-sync"

include(":logic")

dependencyResolutionManagement {
    repositories {
        mavenCentral()
        maven("https://artifacts.itemis.cloud/repository/maven-mps")
    }
}
