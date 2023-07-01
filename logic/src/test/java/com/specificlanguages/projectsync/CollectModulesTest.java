package com.specificlanguages.projectsync;

import org.jetbrains.annotations.NotNull;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.io.TempDir;
import org.xml.sax.SAXException;

import javax.xml.parsers.ParserConfigurationException;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.containsInAnyOrder;

public class CollectModulesTest {

    @TempDir
    private File projectDir;

    @Test
    public void defaultDescription() throws IOException, ParserConfigurationException, SAXException {
        touch(file("solutions/folder/someSolution.msd"));
        touch(file("languages/lang/someLanguage.mpl"));
        touch(file("devkits/someDevkit/someDevkit.devkit"));

        write(file("project.xml"),
                "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\n" +
                                   "<modules/>");

        final var moduleFiles = CollectModules.collectModuleFiles(file("project.xml"));

        assertThat(moduleFiles, containsInAnyOrder(
                file("solutions/folder/someSolution.msd"),
                file("languages/lang/someLanguage.mpl"),
                file("devkits/someDevkit/someDevkit.devkit")));
    }

    @Test
    public void include() throws Exception {
        touch(file("solutions/someSolution.msd"));
        touch(file("languages/someLanguage.mpl"));

        write(file("project.xml"),
                "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\n" +
                "<modules>\n" +
                "  <include dir='solutions' />" +
                "</modules>");

        final var moduleFiles = CollectModules.collectModuleFiles(file("project.xml"));

        assertThat(moduleFiles, containsInAnyOrder(file("solutions/someSolution.msd")));
    }

    @Test
    public void exclude() throws Exception {
        touch(file("solutions/one/one.msd"));
        touch(file("solutions/ignored/solution.msd"));

        write(file("project.xml"),
                "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\n" +
                "<modules>\n" +
                "  <include dir='solutions' />\n" +
                "  <exclude pattern='solutions/ignored/**' />" +
                "</modules>");

        final var moduleFiles = CollectModules.collectModuleFiles(file("project.xml"));

        assertThat(moduleFiles, containsInAnyOrder(file("solutions/one/one.msd")));
    }

    private void write(File file, String contents) throws IOException {
        Files.writeString(file.toPath(), contents);
    }

    @NotNull
    private File file(String relativePath) {
        return new File(projectDir, relativePath);
    }

    private void touch(File file) throws IOException {
        Files.createDirectories(file.getParentFile().toPath());
        Files.createFile(file.toPath());
    }
}
