plugins {
    `java-library`
    `maven-publish`
    conventions
}

java {
    sourceCompatibility = JavaVersion.VERSION_11
    targetCompatibility = JavaVersion.VERSION_11
}

dependencies {
    compileOnly("jakarta.xml.bind:jakarta.xml.bind-api:2.3.3")
    compileOnly("org.jetbrains:annotations:13.+")
    testCompileOnly("org.jetbrains:annotations:13.+")

    testImplementation("org.junit.jupiter:junit-jupiter-api:5.8.1")
    testImplementation("org.hamcrest:hamcrest:2.2")
    testImplementation("com.sun.xml.bind:jaxb-ri:2.3.8")

    testRuntimeOnly("org.junit.jupiter:junit-jupiter-engine:5.8.1")

}

tasks.test {
    useJUnitPlatform()
}

publishing {
    publications {
        create<MavenPublication>("logic") {
            from(components["java"])
            artifactId = "projectsync-logic"
        }
    }

    repositories {
        github("specificlanguages", rootProject.name) {
            name = "github"
        }
    }
}
