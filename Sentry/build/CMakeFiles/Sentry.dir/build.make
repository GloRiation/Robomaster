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
CMAKE_SOURCE_DIR = /home/ivan/Robomaster/Sentry

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ivan/Robomaster/Sentry/build

# Include any dependencies generated for this target.
include CMakeFiles/Sentry.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Sentry.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Sentry.dir/flags.make

CMakeFiles/Sentry.dir/src/main.cpp.o: CMakeFiles/Sentry.dir/flags.make
CMakeFiles/Sentry.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ivan/Robomaster/Sentry/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Sentry.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Sentry.dir/src/main.cpp.o -c /home/ivan/Robomaster/Sentry/src/main.cpp

CMakeFiles/Sentry.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Sentry.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ivan/Robomaster/Sentry/src/main.cpp > CMakeFiles/Sentry.dir/src/main.cpp.i

CMakeFiles/Sentry.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Sentry.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ivan/Robomaster/Sentry/src/main.cpp -o CMakeFiles/Sentry.dir/src/main.cpp.s

CMakeFiles/Sentry.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/Sentry.dir/src/main.cpp.o.requires

CMakeFiles/Sentry.dir/src/main.cpp.o.provides: CMakeFiles/Sentry.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/Sentry.dir/build.make CMakeFiles/Sentry.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/Sentry.dir/src/main.cpp.o.provides

CMakeFiles/Sentry.dir/src/main.cpp.o.provides.build: CMakeFiles/Sentry.dir/src/main.cpp.o


CMakeFiles/Sentry.dir/src/imageProcessing.cpp.o: CMakeFiles/Sentry.dir/flags.make
CMakeFiles/Sentry.dir/src/imageProcessing.cpp.o: ../src/imageProcessing.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ivan/Robomaster/Sentry/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Sentry.dir/src/imageProcessing.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Sentry.dir/src/imageProcessing.cpp.o -c /home/ivan/Robomaster/Sentry/src/imageProcessing.cpp

CMakeFiles/Sentry.dir/src/imageProcessing.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Sentry.dir/src/imageProcessing.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ivan/Robomaster/Sentry/src/imageProcessing.cpp > CMakeFiles/Sentry.dir/src/imageProcessing.cpp.i

CMakeFiles/Sentry.dir/src/imageProcessing.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Sentry.dir/src/imageProcessing.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ivan/Robomaster/Sentry/src/imageProcessing.cpp -o CMakeFiles/Sentry.dir/src/imageProcessing.cpp.s

CMakeFiles/Sentry.dir/src/imageProcessing.cpp.o.requires:

.PHONY : CMakeFiles/Sentry.dir/src/imageProcessing.cpp.o.requires

CMakeFiles/Sentry.dir/src/imageProcessing.cpp.o.provides: CMakeFiles/Sentry.dir/src/imageProcessing.cpp.o.requires
	$(MAKE) -f CMakeFiles/Sentry.dir/build.make CMakeFiles/Sentry.dir/src/imageProcessing.cpp.o.provides.build
.PHONY : CMakeFiles/Sentry.dir/src/imageProcessing.cpp.o.provides

CMakeFiles/Sentry.dir/src/imageProcessing.cpp.o.provides.build: CMakeFiles/Sentry.dir/src/imageProcessing.cpp.o


# Object files for target Sentry
Sentry_OBJECTS = \
"CMakeFiles/Sentry.dir/src/main.cpp.o" \
"CMakeFiles/Sentry.dir/src/imageProcessing.cpp.o"

# External object files for target Sentry
Sentry_EXTERNAL_OBJECTS =

Sentry: CMakeFiles/Sentry.dir/src/main.cpp.o
Sentry: CMakeFiles/Sentry.dir/src/imageProcessing.cpp.o
Sentry: CMakeFiles/Sentry.dir/build.make
Sentry: /usr/local/lib/libopencv_stitching.so.3.4.1
Sentry: /usr/local/lib/libopencv_superres.so.3.4.1
Sentry: /usr/local/lib/libopencv_videostab.so.3.4.1
Sentry: /usr/local/lib/libopencv_aruco.so.3.4.1
Sentry: /usr/local/lib/libopencv_bgsegm.so.3.4.1
Sentry: /usr/local/lib/libopencv_bioinspired.so.3.4.1
Sentry: /usr/local/lib/libopencv_ccalib.so.3.4.1
Sentry: /usr/local/lib/libopencv_dnn_objdetect.so.3.4.1
Sentry: /usr/local/lib/libopencv_dpm.so.3.4.1
Sentry: /usr/local/lib/libopencv_face.so.3.4.1
Sentry: /usr/local/lib/libopencv_freetype.so.3.4.1
Sentry: /usr/local/lib/libopencv_fuzzy.so.3.4.1
Sentry: /usr/local/lib/libopencv_hfs.so.3.4.1
Sentry: /usr/local/lib/libopencv_img_hash.so.3.4.1
Sentry: /usr/local/lib/libopencv_line_descriptor.so.3.4.1
Sentry: /usr/local/lib/libopencv_optflow.so.3.4.1
Sentry: /usr/local/lib/libopencv_reg.so.3.4.1
Sentry: /usr/local/lib/libopencv_rgbd.so.3.4.1
Sentry: /usr/local/lib/libopencv_saliency.so.3.4.1
Sentry: /usr/local/lib/libopencv_stereo.so.3.4.1
Sentry: /usr/local/lib/libopencv_structured_light.so.3.4.1
Sentry: /usr/local/lib/libopencv_surface_matching.so.3.4.1
Sentry: /usr/local/lib/libopencv_tracking.so.3.4.1
Sentry: /usr/local/lib/libopencv_xfeatures2d.so.3.4.1
Sentry: /usr/local/lib/libopencv_ximgproc.so.3.4.1
Sentry: /usr/local/lib/libopencv_xobjdetect.so.3.4.1
Sentry: /usr/local/lib/libopencv_xphoto.so.3.4.1
Sentry: /usr/local/lib/libopencv_shape.so.3.4.1
Sentry: /usr/local/lib/libopencv_photo.so.3.4.1
Sentry: /usr/local/lib/libopencv_datasets.so.3.4.1
Sentry: /usr/local/lib/libopencv_plot.so.3.4.1
Sentry: /usr/local/lib/libopencv_text.so.3.4.1
Sentry: /usr/local/lib/libopencv_dnn.so.3.4.1
Sentry: /usr/local/lib/libopencv_ml.so.3.4.1
Sentry: /usr/local/lib/libopencv_video.so.3.4.1
Sentry: /usr/local/lib/libopencv_calib3d.so.3.4.1
Sentry: /usr/local/lib/libopencv_features2d.so.3.4.1
Sentry: /usr/local/lib/libopencv_highgui.so.3.4.1
Sentry: /usr/local/lib/libopencv_videoio.so.3.4.1
Sentry: /usr/local/lib/libopencv_phase_unwrapping.so.3.4.1
Sentry: /usr/local/lib/libopencv_flann.so.3.4.1
Sentry: /usr/local/lib/libopencv_imgcodecs.so.3.4.1
Sentry: /usr/local/lib/libopencv_objdetect.so.3.4.1
Sentry: /usr/local/lib/libopencv_imgproc.so.3.4.1
Sentry: /usr/local/lib/libopencv_core.so.3.4.1
Sentry: CMakeFiles/Sentry.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ivan/Robomaster/Sentry/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Sentry"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Sentry.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Sentry.dir/build: Sentry

.PHONY : CMakeFiles/Sentry.dir/build

CMakeFiles/Sentry.dir/requires: CMakeFiles/Sentry.dir/src/main.cpp.o.requires
CMakeFiles/Sentry.dir/requires: CMakeFiles/Sentry.dir/src/imageProcessing.cpp.o.requires

.PHONY : CMakeFiles/Sentry.dir/requires

CMakeFiles/Sentry.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Sentry.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Sentry.dir/clean

CMakeFiles/Sentry.dir/depend:
	cd /home/ivan/Robomaster/Sentry/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ivan/Robomaster/Sentry /home/ivan/Robomaster/Sentry /home/ivan/Robomaster/Sentry/build /home/ivan/Robomaster/Sentry/build /home/ivan/Robomaster/Sentry/build/CMakeFiles/Sentry.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Sentry.dir/depend
