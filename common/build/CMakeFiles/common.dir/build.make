# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/fyx/git-workspace/C-/common

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/fyx/git-workspace/C-/common/build

# Include any dependencies generated for this target.
include CMakeFiles/common.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/common.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/common.dir/flags.make

CMakeFiles/common.dir/main.cpp.o: CMakeFiles/common.dir/flags.make
CMakeFiles/common.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fyx/git-workspace/C-/common/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/common.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/common.dir/main.cpp.o -c /home/fyx/git-workspace/C-/common/main.cpp

CMakeFiles/common.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/common.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fyx/git-workspace/C-/common/main.cpp > CMakeFiles/common.dir/main.cpp.i

CMakeFiles/common.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/common.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fyx/git-workspace/C-/common/main.cpp -o CMakeFiles/common.dir/main.cpp.s

CMakeFiles/common.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/common.dir/main.cpp.o.requires

CMakeFiles/common.dir/main.cpp.o.provides: CMakeFiles/common.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/common.dir/build.make CMakeFiles/common.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/common.dir/main.cpp.o.provides

CMakeFiles/common.dir/main.cpp.o.provides.build: CMakeFiles/common.dir/main.cpp.o


# Object files for target common
common_OBJECTS = \
"CMakeFiles/common.dir/main.cpp.o"

# External object files for target common
common_EXTERNAL_OBJECTS =

common: CMakeFiles/common.dir/main.cpp.o
common: CMakeFiles/common.dir/build.make
common: /usr/lib/x86_64-linux-gnu/libboost_thread.so
common: /usr/lib/x86_64-linux-gnu/libboost_system.so
common: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
common: /usr/lib/x86_64-linux-gnu/libboost_timer.so
common: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
common: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
common: /usr/lib/x86_64-linux-gnu/libboost_log.so
common: /usr/lib/x86_64-linux-gnu/libboost_log_setup.so
common: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
common: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
common: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
common: /usr/lib/x86_64-linux-gnu/libboost_regex.so
common: /usr/lib/x86_64-linux-gnu/libpthread.so
common: CMakeFiles/common.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/fyx/git-workspace/C-/common/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable common"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/common.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/common.dir/build: common

.PHONY : CMakeFiles/common.dir/build

CMakeFiles/common.dir/requires: CMakeFiles/common.dir/main.cpp.o.requires

.PHONY : CMakeFiles/common.dir/requires

CMakeFiles/common.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/common.dir/cmake_clean.cmake
.PHONY : CMakeFiles/common.dir/clean

CMakeFiles/common.dir/depend:
	cd /home/fyx/git-workspace/C-/common/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fyx/git-workspace/C-/common /home/fyx/git-workspace/C-/common /home/fyx/git-workspace/C-/common/build /home/fyx/git-workspace/C-/common/build /home/fyx/git-workspace/C-/common/build/CMakeFiles/common.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/common.dir/depend

