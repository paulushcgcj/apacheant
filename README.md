# Apache Ant

Apache Ant is a Java library and command-line tool whose mission is to drive processes described in build files as targets and extension points dependent upon each other. The main known usage of Ant is the build of Java applications. Ant supplies a number of built-in tasks allowing to compile, assemble, test and run Java applications. Ant can also be used effectively to build non Java applications, for instance C or C++ applications. More generally, Ant can be used to pilot any type of process which can be described in terms of targets and tasks.

Ant is written in Java. Users of Ant can develop their own "antlibs" containing Ant tasks and types, and are offered a large number of ready-made commercial or open-source "antlibs".

Ant is extremely flexible and does not impose coding conventions or directory layouts to the Java projects which adopt it as a build tool.

Software development projects looking for a solution combining build tool and dependency management can use Ant in combination with Apache Ivy.

The Apache Ant project is part of the Apache Software Foundation.

## Contents

The content of this package may vary from version to version:

| Tag | Open JDK | Ant | Git |
| --- | -------- | --- |
| 1.9.8 | OpenJDK7 1.7.0_121 | 1.9.8 | 2.11.3 |
| jdk7_2 | OpenJDK7 1.7.0_121 | 1.9.8 | 2.11.3 |

# The Alpine Background

This image is based on the popular Alpine Linux project, available in the alpine official image. Alpine Linux is much smaller than most distribution base images (~5MB), and thus leads to much slimmer images in general.

This variant is highly recommended when final image size being as small as possible is desired. The main caveat to note is that it does use musl libc instead of glibc and friends, so certain software might run into issues depending on the depth of their libc requirements. However, most software doesn't have an issue with this, so this variant is usually a very safe choice. See this Hacker News comment thread for more discussion of the issues that might arise and some pro/con comparisons of using Alpine-based images.

To minimize image size, it's uncommon for additional related tools (such as git or bash) to be included in Alpine-based images. Using this image as a base, add the things you need in your own Dockerfile (see the alpine image description for examples of how to install packages if you are unfamiliar).
