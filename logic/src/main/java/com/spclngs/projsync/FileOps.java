package com.spclngs.projsync;

import org.jetbrains.annotations.Nullable;
import org.xml.sax.InputSource;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;

/**
 * An abstraction over file operations, in order to be able to use the collecting code with both java.io.File and MPS
 * IFile.
 * @param <T> represents a file path
 */
public interface FileOps<T> {
    InputSource getInputSource(T file) throws IOException;

    T getParent(T file);

    T resolve(T base, String relativePath);

    /**
     * @param dir the directory to get children of.
     * @return an array of children, or {@code null} if {@code dir} is not a directory.
     */
    @Nullable
    T[] getChildren(T dir);

    String getFileName(T file);

    boolean isDirectory(T file);

    Path relativize(T root, T path);

    FileOps<File> JAVA_IO_FILE_OPS = new FileOps<File>() {
        @Override
        public InputSource getInputSource(File file) {
            return new InputSource(file.toURI().toASCIIString());
        }

        @Override
        public File getParent(File file) {
            return file.getParentFile();
        }

        @Override
        public File resolve(File base, String relativePath) {
            return new File(base, relativePath).toPath().normalize().toFile();
        }

        @Nullable
        @Override
        public File[] getChildren(File dir) {
            return dir.listFiles();
        }

        @Override
        public String getFileName(File file) {
            return file.getName();
        }

        @Override
        public boolean isDirectory(File file) {
            return file.isDirectory();
        }

        @Override
        public Path relativize(File root, File path) {
            return root.toPath().relativize(path.toPath());
        }
    };
}
