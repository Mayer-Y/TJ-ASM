# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /mnt/d/homework/Summer/computer_tech/SimpleMakefile/SimpleMakefile-ver9.1/tj-asm/Makefile_Study-ver9.3/CMakeStudy

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/d/homework/Summer/computer_tech/SimpleMakefile/SimpleMakefile-ver9.1/tj-asm/Makefile_Study-ver9.3/CMakeStudy

# Include any dependencies generated for this target.
include CMakeFiles/main.cpp.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/main.cpp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/main.cpp.dir/flags.make

CMakeFiles/main.cpp.dir/fun1.cpp.o: CMakeFiles/main.cpp.dir/flags.make
CMakeFiles/main.cpp.dir/fun1.cpp.o: fun1.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/homework/Summer/computer_tech/SimpleMakefile/SimpleMakefile-ver9.1/tj-asm/Makefile_Study-ver9.3/CMakeStudy/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/main.cpp.dir/fun1.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.cpp.dir/fun1.cpp.o -c /mnt/d/homework/Summer/computer_tech/SimpleMakefile/SimpleMakefile-ver9.1/tj-asm/Makefile_Study-ver9.3/CMakeStudy/fun1.cpp

CMakeFiles/main.cpp.dir/fun1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.cpp.dir/fun1.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/d/homework/Summer/computer_tech/SimpleMakefile/SimpleMakefile-ver9.1/tj-asm/Makefile_Study-ver9.3/CMakeStudy/fun1.cpp > CMakeFiles/main.cpp.dir/fun1.cpp.i

CMakeFiles/main.cpp.dir/fun1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.cpp.dir/fun1.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/d/homework/Summer/computer_tech/SimpleMakefile/SimpleMakefile-ver9.1/tj-asm/Makefile_Study-ver9.3/CMakeStudy/fun1.cpp -o CMakeFiles/main.cpp.dir/fun1.cpp.s

CMakeFiles/main.cpp.dir/fun2.cpp.o: CMakeFiles/main.cpp.dir/flags.make
CMakeFiles/main.cpp.dir/fun2.cpp.o: fun2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/homework/Summer/computer_tech/SimpleMakefile/SimpleMakefile-ver9.1/tj-asm/Makefile_Study-ver9.3/CMakeStudy/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/main.cpp.dir/fun2.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.cpp.dir/fun2.cpp.o -c /mnt/d/homework/Summer/computer_tech/SimpleMakefile/SimpleMakefile-ver9.1/tj-asm/Makefile_Study-ver9.3/CMakeStudy/fun2.cpp

CMakeFiles/main.cpp.dir/fun2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.cpp.dir/fun2.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/d/homework/Summer/computer_tech/SimpleMakefile/SimpleMakefile-ver9.1/tj-asm/Makefile_Study-ver9.3/CMakeStudy/fun2.cpp > CMakeFiles/main.cpp.dir/fun2.cpp.i

CMakeFiles/main.cpp.dir/fun2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.cpp.dir/fun2.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/d/homework/Summer/computer_tech/SimpleMakefile/SimpleMakefile-ver9.1/tj-asm/Makefile_Study-ver9.3/CMakeStudy/fun2.cpp -o CMakeFiles/main.cpp.dir/fun2.cpp.s

# Object files for target main.cpp
main_cpp_OBJECTS = \
"CMakeFiles/main.cpp.dir/fun1.cpp.o" \
"CMakeFiles/main.cpp.dir/fun2.cpp.o"

# External object files for target main.cpp
main_cpp_EXTERNAL_OBJECTS =

main.cpp: CMakeFiles/main.cpp.dir/fun1.cpp.o
main.cpp: CMakeFiles/main.cpp.dir/fun2.cpp.o
main.cpp: CMakeFiles/main.cpp.dir/build.make
main.cpp: CMakeFiles/main.cpp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/d/homework/Summer/computer_tech/SimpleMakefile/SimpleMakefile-ver9.1/tj-asm/Makefile_Study-ver9.3/CMakeStudy/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable main.cpp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main.cpp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/main.cpp.dir/build: main.cpp

.PHONY : CMakeFiles/main.cpp.dir/build

CMakeFiles/main.cpp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/main.cpp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/main.cpp.dir/clean

CMakeFiles/main.cpp.dir/depend:
	cd /mnt/d/homework/Summer/computer_tech/SimpleMakefile/SimpleMakefile-ver9.1/tj-asm/Makefile_Study-ver9.3/CMakeStudy && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/d/homework/Summer/computer_tech/SimpleMakefile/SimpleMakefile-ver9.1/tj-asm/Makefile_Study-ver9.3/CMakeStudy /mnt/d/homework/Summer/computer_tech/SimpleMakefile/SimpleMakefile-ver9.1/tj-asm/Makefile_Study-ver9.3/CMakeStudy /mnt/d/homework/Summer/computer_tech/SimpleMakefile/SimpleMakefile-ver9.1/tj-asm/Makefile_Study-ver9.3/CMakeStudy /mnt/d/homework/Summer/computer_tech/SimpleMakefile/SimpleMakefile-ver9.1/tj-asm/Makefile_Study-ver9.3/CMakeStudy /mnt/d/homework/Summer/computer_tech/SimpleMakefile/SimpleMakefile-ver9.1/tj-asm/Makefile_Study-ver9.3/CMakeStudy/CMakeFiles/main.cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/main.cpp.dir/depend
