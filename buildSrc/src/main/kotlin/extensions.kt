import org.gradle.api.artifacts.dsl.RepositoryHandler
import org.gradle.api.artifacts.repositories.MavenArtifactRepository
import org.gradle.api.artifacts.repositories.PasswordCredentials
import org.gradle.kotlin.dsl.credentials
import org.gradle.kotlin.dsl.maven

fun RepositoryHandler.github(org: String, repo: String = "*", action: (MavenArtifactRepository.() -> Unit)? = null) {
    maven("https://maven.pkg.github.com/$org/$repo") {
        name = org + (if (repo != "*") repo else "")
        credentials(PasswordCredentials::class)
        action?.invoke(this)
    }
}
