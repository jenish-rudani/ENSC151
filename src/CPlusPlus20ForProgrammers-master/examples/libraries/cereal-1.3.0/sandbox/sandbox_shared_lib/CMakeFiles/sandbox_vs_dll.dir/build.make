# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /snap/cmake/1153/bin/cmake

# The command to remove a file.
RM = /snap/cmake/1153/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/xubuntu/src/CPlusPlus20ForProgrammers-master/examples/libraries/cereal-1.3.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/xubuntu/src/CPlusPlus20ForProgrammers-master/examples/libraries/cereal-1.3.0

# Include any dependencies generated for this target.
include sandbox/sandbox_shared_lib/CMakeFiles/sandbox_vs_dll.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include sandbox/sandbox_shared_lib/CMakeFiles/sandbox_vs_dll.dir/compiler_depend.make

# Include the progress variables for this target.
include sandbox/sandbox_shared_lib/CMakeFiles/sandbox_vs_dll.dir/progress.make

# Include the compile flags for this target's objects.
include sandbox/sandbox_shared_lib/CMakeFiles/sandbox_vs_dll.dir/flags.make

sandbox/sandbox_shared_lib/CMakeFiles/sandbox_vs_dll.dir/base.cpp.o: sandbox/sandbox_shared_lib/CMakeFiles/sandbox_vs_dll.dir/flags.make
sandbox/sandbox_shared_lib/CMakeFiles/sandbox_vs_dll.dir/base.cpp.o: sandbox/sandbox_shared_lib/base.cpp
sandbox/sandbox_shared_lib/CMakeFiles/sandbox_vs_dll.dir/base.cpp.o: sandbox/sandbox_shared_lib/CMakeFiles/sandbox_vs_dll.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xubuntu/src/CPlusPlus20ForProgrammers-master/examples/libraries/cereal-1.3.0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object sandbox/sandbox_shared_lib/CMakeFiles/sandbox_vs_dll.dir/base.cpp.o"
	cd /home/xubuntu/src/CPlusPlus20ForProgrammers-master/examples/libraries/cereal-1.3.0/sandbox/sandbox_shared_lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT sandbox/sandbox_shared_lib/CMakeFiles/sandbox_vs_dll.dir/base.cpp.o -MF CMakeFiles/sandbox_vs_dll.dir/base.cpp.o.d -o CMakeFiles/sandbox_vs_dll.dir/base.cpp.o -c /home/xubuntu/src/CPlusPlus20ForProgrammers-master/examples/libraries/cereal-1.3.0/sandbox/sandbox_shared_lib/base.cpp

sandbox/sandbox_shared_lib/CMakeFiles/sandbox_vs_dll.dir/base.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sandbox_vs_dll.dir/base.cpp.i"
	cd /home/xubuntu/src/CPlusPlus20ForProgrammers-master/examples/libraries/cereal-1.3.0/sandbox/sandbox_shared_lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xubuntu/src/CPlusPlus20ForProgrammers-master/examples/libraries/cereal-1.3.0/sandbox/sandbox_shared_lib/base.cpp > CMakeFiles/sandbox_vs_dll.dir/base.cpp.i

sandbox/sandbox_shared_lib/CMakeFiles/sandbox_vs_dll.dir/base.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sandbox_vs_dll.dir/base.cpp.s"
	cd /home/xubuntu/src/CPlusPlus20ForProgrammers-master/examples/libraries/cereal-1.3.0/sandbox/sandbox_shared_lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xubuntu/src/CPlusPlus20ForProgrammers-master/examples/libraries/cereal-1.3.0/sandbox/sandbox_shared_lib/base.cpp -o CMakeFiles/sandbox_vs_dll.dir/base.cpp.s

sandbox/sandbox_shared_lib/CMakeFiles/sandbox_vs_dll.dir/derived.cpp.o: sandbox/sandbox_shared_lib/CMakeFiles/sandbox_vs_dll.dir/flags.make
sandbox/sandbox_shared_lib/CMakeFiles/sandbox_vs_dll.dir/derived.cpp.o: sandbox/sandbox_shared_lib/derived.cpp
sandbox/sandbox_shared_lib/CMakeFiles/sandbox_vs_dll.dir/derived.cpp.o: sandbox/sandbox_shared_lib/CMakeFiles/sandbox_vs_dll.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xubuntu/src/CPlusPlus20ForProgrammers-master/examples/libraries/cereal-1.3.0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object sandbox/sandbox_shared_lib/CMakeFiles/sandbox_vs_dll.dir/derived.cpp.o"
	cd /home/xubuntu/src/CPlusPlus20ForProgrammers-master/examples/libraries/cereal-1.3.0/sandbox/sandbox_shared_lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT sandbox/sandbox_shared_lib/CMakeFiles/sandbox_vs_dll.dir/derived.cpp.o -MF CMakeFiles/sandbox_vs_dll.dir/derived.cpp.o.d -o CMakeFiles/sandbox_vs_dll.dir/derived.cpp.o -c /home/xubuntu/src/CPlusPlus20ForProgrammers-master/examples/libraries/cereal-1.3.0/sandbox/sandbox_shared_lib/derived.cpp

sandbox/sandbox_shared_lib/CMakeFiles/sandbox_vs_dll.dir/derived.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sandbox_vs_dll.dir/derived.cpp.i"
	cd /home/xubuntu/src/CPlusPlus20ForProgrammers-master/examples/libraries/cereal-1.3.0/sandbox/sandbox_shared_lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xubuntu/src/CPlusPlus20ForProgrammers-master/examples/libraries/cereal-1.3.0/sandbox/sandbox_shared_lib/derived.cpp > CMakeFiles/sandbox_vs_dll.dir/derived.cpp.i

sandbox/sandbox_shared_lib/CMakeFiles/sandbox_vs_dll.dir/derived.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sandbox_vs_dll.dir/derived.cpp.s"
	cd /home/xubuntu/src/CPlusPlus20ForProgrammers-master/examples/libraries/cereal-1.3.0/sandbox/sandbox_shared_lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xubuntu/src/CPlusPlus20ForProgrammers-master/examples/libraries/cereal-1.3.0/sandbox/sandbox_shared_lib/derived.cpp -o CMakeFiles/sandbox_vs_dll.dir/derived.cpp.s

# Object files for target sandbox_vs_dll
sandbox_vs_dll_OBJECTS = \
"CMakeFiles/sandbox_vs_dll.dir/base.cpp.o" \
"CMakeFiles/sandbox_vs_dll.dir/derived.cpp.o"

# External object files for target sandbox_vs_dll
sandbox_vs_dll_EXTERNAL_OBJECTS =

sandbox/sandbox_shared_lib/libsandbox_vs_dll.so: sandbox/sandbox_shared_lib/CMakeFiles/sandbox_vs_dll.dir/base.cpp.o
sandbox/sandbox_shared_lib/libsandbox_vs_dll.so: sandbox/sandbox_shared_lib/CMakeFiles/sandbox_vs_dll.dir/derived.cpp.o
sandbox/sandbox_shared_lib/libsandbox_vs_dll.so: sandbox/sandbox_shared_lib/CMakeFiles/sandbox_vs_dll.dir/build.make
sandbox/sandbox_shared_lib/libsandbox_vs_dll.so: sandbox/sandbox_shared_lib/CMakeFiles/sandbox_vs_dll.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/xubuntu/src/CPlusPlus20ForProgrammers-master/examples/libraries/cereal-1.3.0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library libsandbox_vs_dll.so"
	cd /home/xubuntu/src/CPlusPlus20ForProgrammers-master/examples/libraries/cereal-1.3.0/sandbox/sandbox_shared_lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sandbox_vs_dll.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sandbox/sandbox_shared_lib/CMakeFiles/sandbox_vs_dll.dir/build: sandbox/sandbox_shared_lib/libsandbox_vs_dll.so
.PHONY : sandbox/sandbox_shared_lib/CMakeFiles/sandbox_vs_dll.dir/build

sandbox/sandbox_shared_lib/CMakeFiles/sandbox_vs_dll.dir/clean:
	cd /home/xubuntu/src/CPlusPlus20ForProgrammers-master/examples/libraries/cereal-1.3.0/sandbox/sandbox_shared_lib && $(CMAKE_COMMAND) -P CMakeFiles/sandbox_vs_dll.dir/cmake_clean.cmake
.PHONY : sandbox/sandbox_shared_lib/CMakeFiles/sandbox_vs_dll.dir/clean

sandbox/sandbox_shared_lib/CMakeFiles/sandbox_vs_dll.dir/depend:
	cd /home/xubuntu/src/CPlusPlus20ForProgrammers-master/examples/libraries/cereal-1.3.0 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xubuntu/src/CPlusPlus20ForProgrammers-master/examples/libraries/cereal-1.3.0 /home/xubuntu/src/CPlusPlus20ForProgrammers-master/examples/libraries/cereal-1.3.0/sandbox/sandbox_shared_lib /home/xubuntu/src/CPlusPlus20ForProgrammers-master/examples/libraries/cereal-1.3.0 /home/xubuntu/src/CPlusPlus20ForProgrammers-master/examples/libraries/cereal-1.3.0/sandbox/sandbox_shared_lib /home/xubuntu/src/CPlusPlus20ForProgrammers-master/examples/libraries/cereal-1.3.0/sandbox/sandbox_shared_lib/CMakeFiles/sandbox_vs_dll.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sandbox/sandbox_shared_lib/CMakeFiles/sandbox_vs_dll.dir/depend

