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
include CMakeFiles/sph_libs.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/sph_libs.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sph_libs.dir/flags.make

CMakeFiles/sph_libs.dir/C_common/device_info.c.o: CMakeFiles/sph_libs.dir/flags.make
CMakeFiles/sph_libs.dir/C_common/device_info.c.o: ../C_common/device_info.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kamil/CLionProjects/untitled/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/sph_libs.dir/C_common/device_info.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sph_libs.dir/C_common/device_info.c.o   -c /home/kamil/CLionProjects/untitled/C_common/device_info.c

CMakeFiles/sph_libs.dir/C_common/device_info.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sph_libs.dir/C_common/device_info.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kamil/CLionProjects/untitled/C_common/device_info.c > CMakeFiles/sph_libs.dir/C_common/device_info.c.i

CMakeFiles/sph_libs.dir/C_common/device_info.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sph_libs.dir/C_common/device_info.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kamil/CLionProjects/untitled/C_common/device_info.c -o CMakeFiles/sph_libs.dir/C_common/device_info.c.s

CMakeFiles/sph_libs.dir/C_common/device_info.c.o.requires:

.PHONY : CMakeFiles/sph_libs.dir/C_common/device_info.c.o.requires

CMakeFiles/sph_libs.dir/C_common/device_info.c.o.provides: CMakeFiles/sph_libs.dir/C_common/device_info.c.o.requires
	$(MAKE) -f CMakeFiles/sph_libs.dir/build.make CMakeFiles/sph_libs.dir/C_common/device_info.c.o.provides.build
.PHONY : CMakeFiles/sph_libs.dir/C_common/device_info.c.o.provides

CMakeFiles/sph_libs.dir/C_common/device_info.c.o.provides.build: CMakeFiles/sph_libs.dir/C_common/device_info.c.o


CMakeFiles/sph_libs.dir/C_common/wtime.c.o: CMakeFiles/sph_libs.dir/flags.make
CMakeFiles/sph_libs.dir/C_common/wtime.c.o: ../C_common/wtime.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kamil/CLionProjects/untitled/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/sph_libs.dir/C_common/wtime.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sph_libs.dir/C_common/wtime.c.o   -c /home/kamil/CLionProjects/untitled/C_common/wtime.c

CMakeFiles/sph_libs.dir/C_common/wtime.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sph_libs.dir/C_common/wtime.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kamil/CLionProjects/untitled/C_common/wtime.c > CMakeFiles/sph_libs.dir/C_common/wtime.c.i

CMakeFiles/sph_libs.dir/C_common/wtime.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sph_libs.dir/C_common/wtime.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kamil/CLionProjects/untitled/C_common/wtime.c -o CMakeFiles/sph_libs.dir/C_common/wtime.c.s

CMakeFiles/sph_libs.dir/C_common/wtime.c.o.requires:

.PHONY : CMakeFiles/sph_libs.dir/C_common/wtime.c.o.requires

CMakeFiles/sph_libs.dir/C_common/wtime.c.o.provides: CMakeFiles/sph_libs.dir/C_common/wtime.c.o.requires
	$(MAKE) -f CMakeFiles/sph_libs.dir/build.make CMakeFiles/sph_libs.dir/C_common/wtime.c.o.provides.build
.PHONY : CMakeFiles/sph_libs.dir/C_common/wtime.c.o.provides

CMakeFiles/sph_libs.dir/C_common/wtime.c.o.provides.build: CMakeFiles/sph_libs.dir/C_common/wtime.c.o


# Object files for target sph_libs
sph_libs_OBJECTS = \
"CMakeFiles/sph_libs.dir/C_common/device_info.c.o" \
"CMakeFiles/sph_libs.dir/C_common/wtime.c.o"

# External object files for target sph_libs
sph_libs_EXTERNAL_OBJECTS =

libsph_libs.a: CMakeFiles/sph_libs.dir/C_common/device_info.c.o
libsph_libs.a: CMakeFiles/sph_libs.dir/C_common/wtime.c.o
libsph_libs.a: CMakeFiles/sph_libs.dir/build.make
libsph_libs.a: CMakeFiles/sph_libs.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kamil/CLionProjects/untitled/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C static library libsph_libs.a"
	$(CMAKE_COMMAND) -P CMakeFiles/sph_libs.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sph_libs.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sph_libs.dir/build: libsph_libs.a

.PHONY : CMakeFiles/sph_libs.dir/build

CMakeFiles/sph_libs.dir/requires: CMakeFiles/sph_libs.dir/C_common/device_info.c.o.requires
CMakeFiles/sph_libs.dir/requires: CMakeFiles/sph_libs.dir/C_common/wtime.c.o.requires

.PHONY : CMakeFiles/sph_libs.dir/requires

CMakeFiles/sph_libs.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sph_libs.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sph_libs.dir/clean

CMakeFiles/sph_libs.dir/depend:
	cd /home/kamil/CLionProjects/untitled/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kamil/CLionProjects/untitled /home/kamil/CLionProjects/untitled /home/kamil/CLionProjects/untitled/cmake-build-debug /home/kamil/CLionProjects/untitled/cmake-build-debug /home/kamil/CLionProjects/untitled/cmake-build-debug/CMakeFiles/sph_libs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sph_libs.dir/depend

