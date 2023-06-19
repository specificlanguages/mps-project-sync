# Why?

* We want fast(er) Gradle builds of large MPS repositories with multiple interdependent projects.
* Skipping up-to-date tasks (and reusing their results either directly from the current checkout or from a build cache)
  is one way to speed up the build.
* In order for Gradle (or any build tool, really) to know whether a particular task can be skipped, it has to know the
  inputs and outputs of the task.
* The main inputs of an MPS-generated Ant build script are the sources of the modules listed in the build script and
  the artifacts of its dependencies.
* Defining these modules a second time in the Gradle build script is possible but redundant, and therefore inefficient
  and error-prone.

We would like to have this set of modules somehow be shared between MPS and Gradle so that their ideas of the contents
of a particular build script were always in sync.

This project aims to solve this problem by providing these components:

* An XML format for defining a list of modules in a build script (termed "project description").
* A Java library defining a class for the project description and a function to read it from an `InputSource`.
* An MPS plugin providing a build language extension to check a build project against a project description.

## Why XML and not JSON?

I want to keep the number of external dependencies to the minimum. Reading JSON files is best done with a library such
as Jackson, but although the library is included with all versions of MPS, it is not exposed to the user (unless you use
an extra dependency, such as MPS-extensions). On the other hand, the parser for XML files is provided directly by the
JDK.

Besides, XML supports comments and XML schema could be used for validation without adding more external dependencies.
