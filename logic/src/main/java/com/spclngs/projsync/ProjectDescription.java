package com.spclngs.projsync;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.Collections;
import java.util.Objects;
import java.util.Set;

public class ProjectDescription {

    public static final Set<String> DEFAULT_LOCATIONS = Set.of("languages", "solutions", "devkits");

    /**
     * Locations of modules: each item either points to a descriptor file directly (.msd/.mpl/.devkit) or to a directory.
     * <p>
     * No wildcards are supported but directories will be searched for descriptors recursively (but without descending
     * into archives and searching for nested modules).
     */
    @NotNull
    public final Set<String> moduleLocations;
    @NotNull
    public final Set<String> moduleExcludePatterns;

    /**
     * Creates a new instance of this class, applying default values to missing (null) properties.
     */
    public static ProjectDescription fromInput(@Nullable Set<String> moduleLocations,
                                               @Nullable Set<String> moduleExcludePatterns) {
        return new ProjectDescription(
                moduleLocations == null ? DEFAULT_LOCATIONS : moduleLocations,
                moduleExcludePatterns == null ? Collections.emptySet() : moduleExcludePatterns);
    }

    public ProjectDescription(@NotNull Set<String> moduleLocations, @NotNull Set<String> moduleExcludePatterns) {
        Objects.requireNonNull(moduleLocations);
        Objects.requireNonNull(moduleExcludePatterns);

        this.moduleLocations = Collections.unmodifiableSet(moduleLocations);
        this.moduleExcludePatterns = Collections.unmodifiableSet(moduleExcludePatterns);
    }

    @Override
    public String toString() {
        return "ProjectDescription{"
               + "moduleLocations=" + moduleLocations
               + ", moduleExcludePatterns=" + moduleExcludePatterns
               + "}";
    }
}
