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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/test/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/test/catkin_ws/build

# Include any dependencies generated for this target.
include test/CMakeFiles/hello.exe.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/hello.exe.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/hello.exe.dir/flags.make

test/CMakeFiles/hello.exe.dir/src/hello.cpp.o: test/CMakeFiles/hello.exe.dir/flags.make
test/CMakeFiles/hello.exe.dir/src/hello.cpp.o: /home/test/catkin_ws/src/test/src/hello.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/test/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/hello.exe.dir/src/hello.cpp.o"
	cd /home/test/catkin_ws/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hello.exe.dir/src/hello.cpp.o -c /home/test/catkin_ws/src/test/src/hello.cpp

test/CMakeFiles/hello.exe.dir/src/hello.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hello.exe.dir/src/hello.cpp.i"
	cd /home/test/catkin_ws/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/test/catkin_ws/src/test/src/hello.cpp > CMakeFiles/hello.exe.dir/src/hello.cpp.i

test/CMakeFiles/hello.exe.dir/src/hello.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hello.exe.dir/src/hello.cpp.s"
	cd /home/test/catkin_ws/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/test/catkin_ws/src/test/src/hello.cpp -o CMakeFiles/hello.exe.dir/src/hello.cpp.s

test/CMakeFiles/hello.exe.dir/src/hello.cpp.o.requires:

.PHONY : test/CMakeFiles/hello.exe.dir/src/hello.cpp.o.requires

test/CMakeFiles/hello.exe.dir/src/hello.cpp.o.provides: test/CMakeFiles/hello.exe.dir/src/hello.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/hello.exe.dir/build.make test/CMakeFiles/hello.exe.dir/src/hello.cpp.o.provides.build
.PHONY : test/CMakeFiles/hello.exe.dir/src/hello.cpp.o.provides

test/CMakeFiles/hello.exe.dir/src/hello.cpp.o.provides.build: test/CMakeFiles/hello.exe.dir/src/hello.cpp.o


# Object files for target hello.exe
hello_exe_OBJECTS = \
"CMakeFiles/hello.exe.dir/src/hello.cpp.o"

# External object files for target hello.exe
hello_exe_EXTERNAL_OBJECTS =

/home/test/catkin_ws/devel/lib/test/hello.exe: test/CMakeFiles/hello.exe.dir/src/hello.cpp.o
/home/test/catkin_ws/devel/lib/test/hello.exe: test/CMakeFiles/hello.exe.dir/build.make
/home/test/catkin_ws/devel/lib/test/hello.exe: /opt/ros/melodic/lib/libroscpp.so
/home/test/catkin_ws/devel/lib/test/hello.exe: /usr/lib/aarch64-linux-gnu/libboost_filesystem.so
/home/test/catkin_ws/devel/lib/test/hello.exe: /opt/ros/melodic/lib/librosconsole.so
/home/test/catkin_ws/devel/lib/test/hello.exe: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/test/catkin_ws/devel/lib/test/hello.exe: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/test/catkin_ws/devel/lib/test/hello.exe: /usr/lib/aarch64-linux-gnu/liblog4cxx.so
/home/test/catkin_ws/devel/lib/test/hello.exe: /usr/lib/aarch64-linux-gnu/libboost_regex.so
/home/test/catkin_ws/devel/lib/test/hello.exe: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/test/catkin_ws/devel/lib/test/hello.exe: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/test/catkin_ws/devel/lib/test/hello.exe: /opt/ros/melodic/lib/librostime.so
/home/test/catkin_ws/devel/lib/test/hello.exe: /opt/ros/melodic/lib/libcpp_common.so
/home/test/catkin_ws/devel/lib/test/hello.exe: /usr/lib/aarch64-linux-gnu/libboost_system.so
/home/test/catkin_ws/devel/lib/test/hello.exe: /usr/lib/aarch64-linux-gnu/libboost_thread.so
/home/test/catkin_ws/devel/lib/test/hello.exe: /usr/lib/aarch64-linux-gnu/libboost_chrono.so
/home/test/catkin_ws/devel/lib/test/hello.exe: /usr/lib/aarch64-linux-gnu/libboost_date_time.so
/home/test/catkin_ws/devel/lib/test/hello.exe: /usr/lib/aarch64-linux-gnu/libboost_atomic.so
/home/test/catkin_ws/devel/lib/test/hello.exe: /usr/lib/aarch64-linux-gnu/libpthread.so
/home/test/catkin_ws/devel/lib/test/hello.exe: /usr/lib/aarch64-linux-gnu/libconsole_bridge.so.0.4
/home/test/catkin_ws/devel/lib/test/hello.exe: test/CMakeFiles/hello.exe.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/test/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/test/catkin_ws/devel/lib/test/hello.exe"
	cd /home/test/catkin_ws/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hello.exe.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/hello.exe.dir/build: /home/test/catkin_ws/devel/lib/test/hello.exe

.PHONY : test/CMakeFiles/hello.exe.dir/build

test/CMakeFiles/hello.exe.dir/requires: test/CMakeFiles/hello.exe.dir/src/hello.cpp.o.requires

.PHONY : test/CMakeFiles/hello.exe.dir/requires

test/CMakeFiles/hello.exe.dir/clean:
	cd /home/test/catkin_ws/build/test && $(CMAKE_COMMAND) -P CMakeFiles/hello.exe.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/hello.exe.dir/clean

test/CMakeFiles/hello.exe.dir/depend:
	cd /home/test/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/test/catkin_ws/src /home/test/catkin_ws/src/test /home/test/catkin_ws/build /home/test/catkin_ws/build/test /home/test/catkin_ws/build/test/CMakeFiles/hello.exe.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/hello.exe.dir/depend

