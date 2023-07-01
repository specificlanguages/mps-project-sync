package com.specificlanguages.projectsync;

import org.xml.sax.SAXException;

import javax.xml.parsers.ParserConfigurationException;
import java.io.File;
import java.io.IOException;
import java.nio.file.*;
import java.util.*;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public class CollectModules {

    public static <T> Set<T> collectModuleFiles(T projectDescriptionFile, FileOps<T> ops) throws IOException, ParserConfigurationException, SAXException {
        ProjectDescription description = ProjectDescriptionIO.read(ops.getInputSource(projectDescriptionFile));
        final T projectPath = ops.getParent(projectDescriptionFile);

        final Set<T> result = new HashSet<>();
        addIncludedModulesTo(result, projectPath, description.moduleLocations, ops);
        removeExcludedModulesFrom(result, projectPath, description.moduleExcludePatterns, ops);
        return result;
    }

    public static Set<File> collectModuleFiles(File projectDescriptionFile) throws IOException, ParserConfigurationException, SAXException {
        return collectModuleFiles(projectDescriptionFile, FileOps.JAVA_IO_FILE_OPS);
    }

    private static <T> void addIncludedModulesTo(Set<T> result, T projectPath, Set<String> moduleLocations, FileOps<T> fileOps) throws IOException {
        for (String moduleLocation : moduleLocations) {
            collectModulesTo(result, fileOps.resolve(projectPath, moduleLocation), fileOps);
        }
    }

    private static <T> void collectModulesTo(Set<T> result, T root, FileOps<T> fileOps) {
        Queue<T> toVisit = new ArrayDeque<>();
        toVisit.add(root);

        while (!toVisit.isEmpty()) {
            final T dir = toVisit.remove();

            final T[] files = fileOps.getChildren(dir);
            if (files == null) {
                continue;
            }

            final List<T> moduleFiles = filterArray(files, f -> isModuleFile(f, fileOps));
            result.addAll(moduleFiles);

            if (moduleFiles.isEmpty()) {
                toVisit.addAll(filterArray(files, fileOps::isDirectory));
            }
        }
    }

    private static <T> List<T> filterArray(T[] array, Predicate<T> predicate) {
        List<T> result = new ArrayList<>();
        for (final T file : array) {
            if (predicate.test(file)) result.add(file);
        }
        return result;
    }

    private static <T> boolean isModuleFile(T file, FileOps<T> fileOps) {
        return isModuleFileName(fileOps.getFileName(file));
    }

    private static boolean isModuleFileName(String filename) {
        return filename.endsWith(".msd") || filename.endsWith(".mpl") || filename.endsWith(".devkit");
    }

    private static <T> void removeExcludedModulesFrom(Set<T> result, T projectPath, Set<String> moduleExcludePatterns, FileOps<T> fileOps) {
        final FileSystem fs = FileSystems.getDefault();
        final List<PathMatcher> excludeMatchers = moduleExcludePatterns.stream()
                .map(it -> fs.getPathMatcher("glob:" +it))
                .collect(Collectors.toUnmodifiableList());

        result.removeIf(file -> excludeMatchers.stream().anyMatch(matcher -> matcher.matches(fileOps.relativize(projectPath, file))));
    }
}
