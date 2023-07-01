package com.spclngs.projsync;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import java.io.File;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

public final class ProjectDescriptionIO {
    private ProjectDescriptionIO() {}

    @NotNull
    public static ProjectDescription read(InputSource inputSource) throws SAXException, IOException, ParserConfigurationException {
        Document document = newDocumentBuilder().parse(inputSource);
        return read(document);
    }

    public static ProjectDescription read(File file) throws SAXException, IOException, ParserConfigurationException {
        Document document = newDocumentBuilder().parse(file);
        return read(document);
    }

    private static DocumentBuilder newDocumentBuilder() throws ParserConfigurationException {
        return DocumentBuilderFactory.newInstance().newDocumentBuilder();
    }

    @NotNull
    public static ProjectDescription read(Document document) {
        final Element documentElement = document.getDocumentElement();
        if (!"modules".equals(documentElement.getTagName())) {
            throw new IllegalArgumentException("Expected 'modules' element, got: " + documentElement.getTagName());
        }

        Set<String> includedDirectories = readIncludedDirectories(documentElement);
        Set<String> excludedPatterns = readExcludedPatterns(documentElement);

        return ProjectDescription.fromInput(includedDirectories, excludedPatterns);
    }

    @Nullable
    private static Set<String> readIncludedDirectories(Element modulesElement) {
        Set<String> result = new HashSet<>();

        final NodeList includesElements = modulesElement.getElementsByTagName("include");
        if (includesElements.getLength() == 0) {
            return null;
        }

        for (int i = 0; i < includesElements.getLength(); i++) {
            final Element include = (Element) includesElements.item(i);
            final String dir = include.getAttribute("dir");
            if (dir.isEmpty()) {
                throw new IllegalArgumentException("Expected a 'dir' attribute but none was found");
            }

            result.add(dir);
        }

        return result;
    }

    @NotNull
    private static Set<String> readExcludedPatterns(Element modulesElement) {
        Set<String> result = new HashSet<>();

        final NodeList includesElements = modulesElement.getElementsByTagName("exclude");
        for (int i = 0; i < includesElements.getLength(); i++) {
            final Element include = (Element) includesElements.item(i);
            final String pattern = include.getAttribute("pattern");
            if (pattern.isEmpty()) {
                throw new IllegalArgumentException("Expected a 'pattern' attribute but none was found");
            }

            result.add(pattern);
        }

        return result;
    }
}
