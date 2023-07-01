import de.itemis.mps.gradle.project.loader.EnvironmentKind
import de.itemis.mps.gradle.project.loader.buildEnvironmentConfig
import de.itemis.mps.gradle.project.loader.executeWithEnvironmentAndProject
import jetbrains.mps.checkers.ModelCheckerBuilder
import jetbrains.mps.checkers.ModelCheckerBuilder.ModelsExtractorImpl
import jetbrains.mps.errors.item.IssueKindReportItem
import jetbrains.mps.errors.item.NodeFlavouredItem
import jetbrains.mps.progress.EmptyProgressMonitor
import jetbrains.mps.typesystemEngine.checker.NonTypesystemChecker
import jetbrains.mps.util.CollectConsumer
import org.hamcrest.MatcherAssert.assertThat
import org.hamcrest.Matchers.*
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import java.io.File
import kotlin.test.Test

class BasicProjectTest {

    data class CheckResult(val concept: String?, val name: String?, val message: String)

    @Test
    fun checkBasicProject() {
        val reportItems = checkModel(
            File(System.getProperty("projects_dir"), "basic"),
            "r:571180f9-384f-4b91-9156-90f744b1dd61(test.build)"
        )

        assertThat(
            reportItems,
            hasItems(
                CheckResult(
                    "BuildAspect_ExternalProjectDescription",
                    null,
                    "Error: Modules missing from the project: solutions/test.build/test.build.msd, solutions/used/used.msd"
                ),
                CheckResult(
                    "BuildMps_Solution",
                    "ignored",
                    "Error: Module is not part of the project according to project description"
                )
            )
        )
    }

    private fun checkModel(projectDir: File, modelRef: String): Collection<CheckResult> {
        val config = buildEnvironmentConfig()

        config.addLib(System.getProperty("mps_plugin_dir"))

        return executeWithEnvironmentAndProject(config, EnvironmentKind.MPS, projectDir) { _, project ->
            val errorCollector = CollectConsumer<IssueKindReportItem>()
            val checker = ModelCheckerBuilder(ModelsExtractorImpl()).createChecker(listOf(NonTypesystemChecker()))

            var result: Collection<CheckResult> = emptyList()

            project.modelAccess.runReadAction {
                val model = PersistenceFacade.getInstance().createModelReference(modelRef).resolve(project.repository)
                    ?: throw IllegalArgumentException("Model $modelRef not found in project $projectDir")

                checker.check(
                    ModelCheckerBuilder.ItemsToCheck.forSingleModel(model),
                    project.repository,
                    errorCollector,
                    EmptyProgressMonitor()
                )

                result = errorCollector.result.map {
                    val nodeRef = NodeFlavouredItem.FLAVOUR_NODE.tryToGet(it)
                    val node = nodeRef?.resolve(project.repository)
                    CheckResult(
                        concept = node?.concept?.name,
                        name = node?.name,
                        message = it.message
                    )
                }
            }

            result
        }
    }
}