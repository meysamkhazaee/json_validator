# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/meysam/workspace/codes/personal/json_validator

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/meysam/workspace/codes/personal/json_validator/build

# Include any dependencies generated for this target.
include CMakeFiles/json_process.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/json_process.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/json_process.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/json_process.dir/flags.make

CMakeFiles/json_process.dir/json_process.cpp.o: CMakeFiles/json_process.dir/flags.make
CMakeFiles/json_process.dir/json_process.cpp.o: ../json_process.cpp
CMakeFiles/json_process.dir/json_process.cpp.o: CMakeFiles/json_process.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/meysam/workspace/codes/personal/json_validator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/json_process.dir/json_process.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/json_process.dir/json_process.cpp.o -MF CMakeFiles/json_process.dir/json_process.cpp.o.d -o CMakeFiles/json_process.dir/json_process.cpp.o -c /home/meysam/workspace/codes/personal/json_validator/json_process.cpp

CMakeFiles/json_process.dir/json_process.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/json_process.dir/json_process.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/meysam/workspace/codes/personal/json_validator/json_process.cpp > CMakeFiles/json_process.dir/json_process.cpp.i

CMakeFiles/json_process.dir/json_process.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/json_process.dir/json_process.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/meysam/workspace/codes/personal/json_validator/json_process.cpp -o CMakeFiles/json_process.dir/json_process.cpp.s

# Object files for target json_process
json_process_OBJECTS = \
"CMakeFiles/json_process.dir/json_process.cpp.o"

# External object files for target json_process
json_process_EXTERNAL_OBJECTS =

libjson_process.a: CMakeFiles/json_process.dir/json_process.cpp.o
libjson_process.a: CMakeFiles/json_process.dir/build.make
libjson_process.a: CMakeFiles/json_process.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/meysam/workspace/codes/personal/json_validator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libjson_process.a"
	$(CMAKE_COMMAND) -P CMakeFiles/json_process.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/json_process.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/json_process.dir/build: libjson_process.a
.PHONY : CMakeFiles/json_process.dir/build

CMakeFiles/json_process.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/json_process.dir/cmake_clean.cmake
.PHONY : CMakeFiles/json_process.dir/clean

CMakeFiles/json_process.dir/depend:
	cd /home/meysam/workspace/codes/personal/json_validator/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/meysam/workspace/codes/personal/json_validator /home/meysam/workspace/codes/personal/json_validator /home/meysam/workspace/codes/personal/json_validator/build /home/meysam/workspace/codes/personal/json_validator/build /home/meysam/workspace/codes/personal/json_validator/build/CMakeFiles/json_process.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/json_process.dir/depend

