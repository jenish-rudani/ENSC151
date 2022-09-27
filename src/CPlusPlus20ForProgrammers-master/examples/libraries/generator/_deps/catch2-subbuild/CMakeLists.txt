# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.24.1)

# We name the project and the target for the ExternalProject_Add() call
# to something that will highlight to the user what we are working on if
# something goes wrong and an error message is produced.

project(catch2-populate NONE)



include(ExternalProject)
ExternalProject_Add(catch2-populate
                     "UPDATE_DISCONNECTED" "False" "DOWNLOAD_EXTRACT_TIMESTAMP" "TRUE" "URL" "https://github.com/catchorg/Catch2/archive/v2.9.2.zip"
                    SOURCE_DIR          "/home/xubuntu/src/CPlusPlus20ForProgrammers-master/examples/libraries/generator/_deps/catch2-src"
                    BINARY_DIR          "/home/xubuntu/src/CPlusPlus20ForProgrammers-master/examples/libraries/generator/_deps/catch2-build"
                    CONFIGURE_COMMAND   ""
                    BUILD_COMMAND       ""
                    INSTALL_COMMAND     ""
                    TEST_COMMAND        ""
                    USES_TERMINAL_DOWNLOAD  YES
                    USES_TERMINAL_UPDATE    YES
                    USES_TERMINAL_PATCH     YES
)


