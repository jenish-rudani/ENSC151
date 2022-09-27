cmake_minimum_required(VERSION 3.0.2)
project(googletest-download NONE)

include(ExternalProject)
ExternalProject_Add(googletest
  GIT_REPOSITORY    https://github.com/google/googletest.git
  GIT_TAG           389cb68b87193358358ae87cc56d257fd0d80189
  SOURCE_DIR        "/home/xubuntu/src/CPlusPlus20ForProgrammers-master/examples/libraries/GSL/tests/googletest-src"
  BINARY_DIR        "/home/xubuntu/src/CPlusPlus20ForProgrammers-master/examples/libraries/GSL/tests/googletest-build"
  CONFIGURE_COMMAND ""
  BUILD_COMMAND     ""
  INSTALL_COMMAND   ""
  TEST_COMMAND      ""
)
