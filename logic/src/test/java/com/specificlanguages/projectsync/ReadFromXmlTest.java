package com.specificlanguages.projectsync;

import org.jetbrains.annotations.NotNull;
import org.junit.jupiter.api.Test;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

import javax.xml.parsers.ParserConfigurationException;
import java.io.IOException;
import java.io.StringReader;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.*;
import static org.junit.jupiter.api.Assertions.assertThrows;

public class ReadFromXmlTest {

    @Test
    public void readValid() throws ParserConfigurationException, IOException, SAXException {
        //language=XML
        String xml = "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\n" +
                     "<modules>\n" +
                     "    <include dir=\"languages\" />\n" +
                     "    <include dir=\"solutions\" />\n" +
                     "    <exclude pattern=\"solutions/sandbox/**\" />\n" +
                     "</modules>\n";

        ProjectDescription description = readFromXml(xml);

        assertThat(description.moduleLocations, containsInAnyOrder("languages", "solutions"));
        assertThat(description.moduleExcludePatterns, containsInAnyOrder("solutions/sandbox/**"));
    }

    @Test
    public void readEmpty() throws ParserConfigurationException, IOException, SAXException {
        //language=XML
        String xml = "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\n" +
                     "<modules/>\n";

        ProjectDescription description = readFromXml(xml);

        assertThat(description.moduleLocations, is(equalTo(ProjectDescription.DEFAULT_LOCATIONS)));
        assertThat(description.moduleExcludePatterns, is(empty()));
    }

    @Test
    public void readInvalid() throws ParserConfigurationException, IOException, SAXException {
        //language=XML
        String xml = "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\n" +
                     "<foo><bar/><baz/></foo>\n";

        assertThrows(Exception.class, () -> readFromXml(xml));
    }

    @NotNull
    private ProjectDescription readFromXml(String xml) throws ParserConfigurationException, IOException, SAXException {
        final InputSource inputSource = new InputSource();
        inputSource.setCharacterStream(new StringReader(xml));
        inputSource.setPublicId("public identifier");
        inputSource.setSystemId("system identifier");
        return ProjectDescriptionIO.read(inputSource);
    }

}
