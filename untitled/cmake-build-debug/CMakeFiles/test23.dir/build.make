# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /tmp/mozilla_kamil0/clion-2018.1.1/bin/cmake/bin/cmake

# The command to remove a file.
RM = /tmp/mozilla_kamil0/clion-2018.1.1/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kamil/CLionProjects/untitled

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kamil/CLionProjects/untitled/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/test23.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test23.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test23.dir/flags.make

CMakeFiles/test23.dir/main.c.o: CMakeFiles/test23.dir/flags.make
CMakeFiles/test23.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kamil/CLionProjects/untitled/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/test23.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test23.dir/main.c.o   -c /home/kamil/CLionProjects/untitled/main.c

CMakeFiles/test23.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test23.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kamil/CLionProjects/untitled/main.c > CMakeFiles/test23.dir/main.c.i

CMakeFiles/test23.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test23.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kamil/CLionProjects/untitled/main.c -o CMakeFiles/test23.dir/main.c.s

CMakeFiles/test23.dir/main.c.o.requires:

.PHONY : CMakeFiles/test23.dir/main.c.o.requires

CMakeFiles/test23.dir/main.c.o.provides: CMakeFiles/test23.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/test23.dir/build.make CMakeFiles/test23.dir/main.c.o.provides.build
.PHONY : CMakeFiles/test23.dir/main.c.o.provides

CMakeFiles/test23.dir/main.c.o.provides.build: CMakeFiles/test23.dir/main.c.o


CMakeFiles/test23.dir/main2.c.o: CMakeFiles/test23.dir/flags.make
CMakeFiles/test23.dir/main2.c.o: ../main2.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kamil/CLionProjects/untitled/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/test23.dir/main2.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test23.dir/main2.c.o   -c /home/kamil/CLionProjects/untitled/main2.c

CMakeFiles/test23.dir/main2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test23.dir/main2.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kamil/CLionProjects/untitled/main2.c > CMakeFiles/test23.dir/main2.c.i

CMakeFiles/test23.dir/main2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test23.dir/main2.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kamil/CLionProjects/untitled/main2.c -o CMakeFiles/test23.dir/main2.c.s

CMakeFiles/test23.dir/main2.c.o.requires:

.PHONY : CMakeFiles/test23.dir/main2.c.o.requires

CMakeFiles/test23.dir/main2.c.o.provides: CMakeFiles/test23.dir/main2.c.o.requires
	$(MAKE) -f CMakeFiles/test23.dir/build.make CMakeFiles/test23.dir/main2.c.o.provides.build
.PHONY : CMakeFiles/test23.dir/main2.c.o.provides

CMakeFiles/test23.dir/main2.c.o.provides.build: CMakeFiles/test23.dir/main2.c.o


# Object files for target test23
test23_OBJECTS = \
"CMakeFiles/test23.dir/main.c.o" \
"CMakeFiles/test23.dir/main2.c.o"

# External object files for target test23
test23_EXTERNAL_OBJECTS =

test23: CMakeFiles/test23.dir/main.c.o
test23: CMakeFiles/test23.dir/main2.c.o
test23: CMakeFiles/test23.dir/build.make
test23: libsph_libs.a
test23: CMakeFiles/test23.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kamil/CLionProjects/untitled/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable test23"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test23.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test23.dir/build: test23

.PHONY : CMakeFiles/test23.dir/build

CMakeFiles/test23.dir/requires: CMakeFiles/test23.dir/main.c.o.requires
CMakeFiles/test23.dir/requires: CMakeFiles/test23.dir/main2.c.o.requires

.PHONY : CMakeFiles/test23.dir/requires

CMakeFiles/test23.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test23.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test23.dir/clean

CMakeFiles/test23.dir/depend:
	cd /home/kamil/CLionProjects/untitled/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kamil/CLionProjects/untitled /home/kamil/CLionProjects/untitled /home/kamil/CLionProjects/untitled/cmake-build-debug /home/kamil/CLionProjects/untitled/cmake-build-debug /home/kamil/CLionProjects/untitled/cmake-build-debug/CMakeFiles/test23.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test23.dir/depend

