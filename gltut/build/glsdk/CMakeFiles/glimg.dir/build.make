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
CMAKE_SOURCE_DIR = /home/ben/Documents/project/graphics_programming/graphics-programming/gltut

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build

# Include any dependencies generated for this target.
include glsdk/CMakeFiles/glimg.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include glsdk/CMakeFiles/glimg.dir/compiler_depend.make

# Include the progress variables for this target.
include glsdk/CMakeFiles/glimg.dir/progress.make

# Include the compile flags for this target's objects.
include glsdk/CMakeFiles/glimg.dir/flags.make

glsdk/CMakeFiles/glimg.dir/glimg/source/DdsLoader.cpp.o: glsdk/CMakeFiles/glimg.dir/flags.make
glsdk/CMakeFiles/glimg.dir/glimg/source/DdsLoader.cpp.o: ../glsdk/glimg/source/DdsLoader.cpp
glsdk/CMakeFiles/glimg.dir/glimg/source/DdsLoader.cpp.o: glsdk/CMakeFiles/glimg.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object glsdk/CMakeFiles/glimg.dir/glimg/source/DdsLoader.cpp.o"
	cd /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/glsdk && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT glsdk/CMakeFiles/glimg.dir/glimg/source/DdsLoader.cpp.o -MF CMakeFiles/glimg.dir/glimg/source/DdsLoader.cpp.o.d -o CMakeFiles/glimg.dir/glimg/source/DdsLoader.cpp.o -c /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/glsdk/glimg/source/DdsLoader.cpp

glsdk/CMakeFiles/glimg.dir/glimg/source/DdsLoader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/glimg.dir/glimg/source/DdsLoader.cpp.i"
	cd /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/glsdk && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/glsdk/glimg/source/DdsLoader.cpp > CMakeFiles/glimg.dir/glimg/source/DdsLoader.cpp.i

glsdk/CMakeFiles/glimg.dir/glimg/source/DdsLoader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/glimg.dir/glimg/source/DdsLoader.cpp.s"
	cd /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/glsdk && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/glsdk/glimg/source/DdsLoader.cpp -o CMakeFiles/glimg.dir/glimg/source/DdsLoader.cpp.s

glsdk/CMakeFiles/glimg.dir/glimg/source/ImageCreator.cpp.o: glsdk/CMakeFiles/glimg.dir/flags.make
glsdk/CMakeFiles/glimg.dir/glimg/source/ImageCreator.cpp.o: ../glsdk/glimg/source/ImageCreator.cpp
glsdk/CMakeFiles/glimg.dir/glimg/source/ImageCreator.cpp.o: glsdk/CMakeFiles/glimg.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object glsdk/CMakeFiles/glimg.dir/glimg/source/ImageCreator.cpp.o"
	cd /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/glsdk && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT glsdk/CMakeFiles/glimg.dir/glimg/source/ImageCreator.cpp.o -MF CMakeFiles/glimg.dir/glimg/source/ImageCreator.cpp.o.d -o CMakeFiles/glimg.dir/glimg/source/ImageCreator.cpp.o -c /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/glsdk/glimg/source/ImageCreator.cpp

glsdk/CMakeFiles/glimg.dir/glimg/source/ImageCreator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/glimg.dir/glimg/source/ImageCreator.cpp.i"
	cd /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/glsdk && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/glsdk/glimg/source/ImageCreator.cpp > CMakeFiles/glimg.dir/glimg/source/ImageCreator.cpp.i

glsdk/CMakeFiles/glimg.dir/glimg/source/ImageCreator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/glimg.dir/glimg/source/ImageCreator.cpp.s"
	cd /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/glsdk && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/glsdk/glimg/source/ImageCreator.cpp -o CMakeFiles/glimg.dir/glimg/source/ImageCreator.cpp.s

glsdk/CMakeFiles/glimg.dir/glimg/source/ImageFormat.cpp.o: glsdk/CMakeFiles/glimg.dir/flags.make
glsdk/CMakeFiles/glimg.dir/glimg/source/ImageFormat.cpp.o: ../glsdk/glimg/source/ImageFormat.cpp
glsdk/CMakeFiles/glimg.dir/glimg/source/ImageFormat.cpp.o: glsdk/CMakeFiles/glimg.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object glsdk/CMakeFiles/glimg.dir/glimg/source/ImageFormat.cpp.o"
	cd /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/glsdk && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT glsdk/CMakeFiles/glimg.dir/glimg/source/ImageFormat.cpp.o -MF CMakeFiles/glimg.dir/glimg/source/ImageFormat.cpp.o.d -o CMakeFiles/glimg.dir/glimg/source/ImageFormat.cpp.o -c /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/glsdk/glimg/source/ImageFormat.cpp

glsdk/CMakeFiles/glimg.dir/glimg/source/ImageFormat.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/glimg.dir/glimg/source/ImageFormat.cpp.i"
	cd /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/glsdk && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/glsdk/glimg/source/ImageFormat.cpp > CMakeFiles/glimg.dir/glimg/source/ImageFormat.cpp.i

glsdk/CMakeFiles/glimg.dir/glimg/source/ImageFormat.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/glimg.dir/glimg/source/ImageFormat.cpp.s"
	cd /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/glsdk && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/glsdk/glimg/source/ImageFormat.cpp -o CMakeFiles/glimg.dir/glimg/source/ImageFormat.cpp.s

glsdk/CMakeFiles/glimg.dir/glimg/source/ImageSet.cpp.o: glsdk/CMakeFiles/glimg.dir/flags.make
glsdk/CMakeFiles/glimg.dir/glimg/source/ImageSet.cpp.o: ../glsdk/glimg/source/ImageSet.cpp
glsdk/CMakeFiles/glimg.dir/glimg/source/ImageSet.cpp.o: glsdk/CMakeFiles/glimg.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object glsdk/CMakeFiles/glimg.dir/glimg/source/ImageSet.cpp.o"
	cd /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/glsdk && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT glsdk/CMakeFiles/glimg.dir/glimg/source/ImageSet.cpp.o -MF CMakeFiles/glimg.dir/glimg/source/ImageSet.cpp.o.d -o CMakeFiles/glimg.dir/glimg/source/ImageSet.cpp.o -c /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/glsdk/glimg/source/ImageSet.cpp

glsdk/CMakeFiles/glimg.dir/glimg/source/ImageSet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/glimg.dir/glimg/source/ImageSet.cpp.i"
	cd /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/glsdk && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/glsdk/glimg/source/ImageSet.cpp > CMakeFiles/glimg.dir/glimg/source/ImageSet.cpp.i

glsdk/CMakeFiles/glimg.dir/glimg/source/ImageSet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/glimg.dir/glimg/source/ImageSet.cpp.s"
	cd /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/glsdk && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/glsdk/glimg/source/ImageSet.cpp -o CMakeFiles/glimg.dir/glimg/source/ImageSet.cpp.s

glsdk/CMakeFiles/glimg.dir/glimg/source/ImageSetImpl.cpp.o: glsdk/CMakeFiles/glimg.dir/flags.make
glsdk/CMakeFiles/glimg.dir/glimg/source/ImageSetImpl.cpp.o: ../glsdk/glimg/source/ImageSetImpl.cpp
glsdk/CMakeFiles/glimg.dir/glimg/source/ImageSetImpl.cpp.o: glsdk/CMakeFiles/glimg.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object glsdk/CMakeFiles/glimg.dir/glimg/source/ImageSetImpl.cpp.o"
	cd /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/glsdk && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT glsdk/CMakeFiles/glimg.dir/glimg/source/ImageSetImpl.cpp.o -MF CMakeFiles/glimg.dir/glimg/source/ImageSetImpl.cpp.o.d -o CMakeFiles/glimg.dir/glimg/source/ImageSetImpl.cpp.o -c /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/glsdk/glimg/source/ImageSetImpl.cpp

glsdk/CMakeFiles/glimg.dir/glimg/source/ImageSetImpl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/glimg.dir/glimg/source/ImageSetImpl.cpp.i"
	cd /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/glsdk && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/glsdk/glimg/source/ImageSetImpl.cpp > CMakeFiles/glimg.dir/glimg/source/ImageSetImpl.cpp.i

glsdk/CMakeFiles/glimg.dir/glimg/source/ImageSetImpl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/glimg.dir/glimg/source/ImageSetImpl.cpp.s"
	cd /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/glsdk && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/glsdk/glimg/source/ImageSetImpl.cpp -o CMakeFiles/glimg.dir/glimg/source/ImageSetImpl.cpp.s

glsdk/CMakeFiles/glimg.dir/glimg/source/StbLoader.cpp.o: glsdk/CMakeFiles/glimg.dir/flags.make
glsdk/CMakeFiles/glimg.dir/glimg/source/StbLoader.cpp.o: ../glsdk/glimg/source/StbLoader.cpp
glsdk/CMakeFiles/glimg.dir/glimg/source/StbLoader.cpp.o: glsdk/CMakeFiles/glimg.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object glsdk/CMakeFiles/glimg.dir/glimg/source/StbLoader.cpp.o"
	cd /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/glsdk && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT glsdk/CMakeFiles/glimg.dir/glimg/source/StbLoader.cpp.o -MF CMakeFiles/glimg.dir/glimg/source/StbLoader.cpp.o.d -o CMakeFiles/glimg.dir/glimg/source/StbLoader.cpp.o -c /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/glsdk/glimg/source/StbLoader.cpp

glsdk/CMakeFiles/glimg.dir/glimg/source/StbLoader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/glimg.dir/glimg/source/StbLoader.cpp.i"
	cd /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/glsdk && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/glsdk/glimg/source/StbLoader.cpp > CMakeFiles/glimg.dir/glimg/source/StbLoader.cpp.i

glsdk/CMakeFiles/glimg.dir/glimg/source/StbLoader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/glimg.dir/glimg/source/StbLoader.cpp.s"
	cd /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/glsdk && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/glsdk/glimg/source/StbLoader.cpp -o CMakeFiles/glimg.dir/glimg/source/StbLoader.cpp.s

glsdk/CMakeFiles/glimg.dir/glimg/source/TestLoader.cpp.o: glsdk/CMakeFiles/glimg.dir/flags.make
glsdk/CMakeFiles/glimg.dir/glimg/source/TestLoader.cpp.o: ../glsdk/glimg/source/TestLoader.cpp
glsdk/CMakeFiles/glimg.dir/glimg/source/TestLoader.cpp.o: glsdk/CMakeFiles/glimg.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object glsdk/CMakeFiles/glimg.dir/glimg/source/TestLoader.cpp.o"
	cd /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/glsdk && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT glsdk/CMakeFiles/glimg.dir/glimg/source/TestLoader.cpp.o -MF CMakeFiles/glimg.dir/glimg/source/TestLoader.cpp.o.d -o CMakeFiles/glimg.dir/glimg/source/TestLoader.cpp.o -c /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/glsdk/glimg/source/TestLoader.cpp

glsdk/CMakeFiles/glimg.dir/glimg/source/TestLoader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/glimg.dir/glimg/source/TestLoader.cpp.i"
	cd /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/glsdk && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/glsdk/glimg/source/TestLoader.cpp > CMakeFiles/glimg.dir/glimg/source/TestLoader.cpp.i

glsdk/CMakeFiles/glimg.dir/glimg/source/TestLoader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/glimg.dir/glimg/source/TestLoader.cpp.s"
	cd /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/glsdk && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/glsdk/glimg/source/TestLoader.cpp -o CMakeFiles/glimg.dir/glimg/source/TestLoader.cpp.s

glsdk/CMakeFiles/glimg.dir/glimg/source/TextureGenerator.cpp.o: glsdk/CMakeFiles/glimg.dir/flags.make
glsdk/CMakeFiles/glimg.dir/glimg/source/TextureGenerator.cpp.o: ../glsdk/glimg/source/TextureGenerator.cpp
glsdk/CMakeFiles/glimg.dir/glimg/source/TextureGenerator.cpp.o: glsdk/CMakeFiles/glimg.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object glsdk/CMakeFiles/glimg.dir/glimg/source/TextureGenerator.cpp.o"
	cd /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/glsdk && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT glsdk/CMakeFiles/glimg.dir/glimg/source/TextureGenerator.cpp.o -MF CMakeFiles/glimg.dir/glimg/source/TextureGenerator.cpp.o.d -o CMakeFiles/glimg.dir/glimg/source/TextureGenerator.cpp.o -c /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/glsdk/glimg/source/TextureGenerator.cpp

glsdk/CMakeFiles/glimg.dir/glimg/source/TextureGenerator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/glimg.dir/glimg/source/TextureGenerator.cpp.i"
	cd /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/glsdk && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/glsdk/glimg/source/TextureGenerator.cpp > CMakeFiles/glimg.dir/glimg/source/TextureGenerator.cpp.i

glsdk/CMakeFiles/glimg.dir/glimg/source/TextureGenerator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/glimg.dir/glimg/source/TextureGenerator.cpp.s"
	cd /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/glsdk && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/glsdk/glimg/source/TextureGenerator.cpp -o CMakeFiles/glimg.dir/glimg/source/TextureGenerator.cpp.s

glsdk/CMakeFiles/glimg.dir/glimg/source/Util.cpp.o: glsdk/CMakeFiles/glimg.dir/flags.make
glsdk/CMakeFiles/glimg.dir/glimg/source/Util.cpp.o: ../glsdk/glimg/source/Util.cpp
glsdk/CMakeFiles/glimg.dir/glimg/source/Util.cpp.o: glsdk/CMakeFiles/glimg.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object glsdk/CMakeFiles/glimg.dir/glimg/source/Util.cpp.o"
	cd /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/glsdk && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT glsdk/CMakeFiles/glimg.dir/glimg/source/Util.cpp.o -MF CMakeFiles/glimg.dir/glimg/source/Util.cpp.o.d -o CMakeFiles/glimg.dir/glimg/source/Util.cpp.o -c /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/glsdk/glimg/source/Util.cpp

glsdk/CMakeFiles/glimg.dir/glimg/source/Util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/glimg.dir/glimg/source/Util.cpp.i"
	cd /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/glsdk && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/glsdk/glimg/source/Util.cpp > CMakeFiles/glimg.dir/glimg/source/Util.cpp.i

glsdk/CMakeFiles/glimg.dir/glimg/source/Util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/glimg.dir/glimg/source/Util.cpp.s"
	cd /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/glsdk && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/glsdk/glimg/source/Util.cpp -o CMakeFiles/glimg.dir/glimg/source/Util.cpp.s

glsdk/CMakeFiles/glimg.dir/glimg/source/stb_image.c.o: glsdk/CMakeFiles/glimg.dir/flags.make
glsdk/CMakeFiles/glimg.dir/glimg/source/stb_image.c.o: ../glsdk/glimg/source/stb_image.c
glsdk/CMakeFiles/glimg.dir/glimg/source/stb_image.c.o: glsdk/CMakeFiles/glimg.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object glsdk/CMakeFiles/glimg.dir/glimg/source/stb_image.c.o"
	cd /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/glsdk && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT glsdk/CMakeFiles/glimg.dir/glimg/source/stb_image.c.o -MF CMakeFiles/glimg.dir/glimg/source/stb_image.c.o.d -o CMakeFiles/glimg.dir/glimg/source/stb_image.c.o -c /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/glsdk/glimg/source/stb_image.c

glsdk/CMakeFiles/glimg.dir/glimg/source/stb_image.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glimg.dir/glimg/source/stb_image.c.i"
	cd /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/glsdk && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/glsdk/glimg/source/stb_image.c > CMakeFiles/glimg.dir/glimg/source/stb_image.c.i

glsdk/CMakeFiles/glimg.dir/glimg/source/stb_image.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glimg.dir/glimg/source/stb_image.c.s"
	cd /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/glsdk && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/glsdk/glimg/source/stb_image.c -o CMakeFiles/glimg.dir/glimg/source/stb_image.c.s

# Object files for target glimg
glimg_OBJECTS = \
"CMakeFiles/glimg.dir/glimg/source/DdsLoader.cpp.o" \
"CMakeFiles/glimg.dir/glimg/source/ImageCreator.cpp.o" \
"CMakeFiles/glimg.dir/glimg/source/ImageFormat.cpp.o" \
"CMakeFiles/glimg.dir/glimg/source/ImageSet.cpp.o" \
"CMakeFiles/glimg.dir/glimg/source/ImageSetImpl.cpp.o" \
"CMakeFiles/glimg.dir/glimg/source/StbLoader.cpp.o" \
"CMakeFiles/glimg.dir/glimg/source/TestLoader.cpp.o" \
"CMakeFiles/glimg.dir/glimg/source/TextureGenerator.cpp.o" \
"CMakeFiles/glimg.dir/glimg/source/Util.cpp.o" \
"CMakeFiles/glimg.dir/glimg/source/stb_image.c.o"

# External object files for target glimg
glimg_EXTERNAL_OBJECTS =

glsdk/libglimg.a: glsdk/CMakeFiles/glimg.dir/glimg/source/DdsLoader.cpp.o
glsdk/libglimg.a: glsdk/CMakeFiles/glimg.dir/glimg/source/ImageCreator.cpp.o
glsdk/libglimg.a: glsdk/CMakeFiles/glimg.dir/glimg/source/ImageFormat.cpp.o
glsdk/libglimg.a: glsdk/CMakeFiles/glimg.dir/glimg/source/ImageSet.cpp.o
glsdk/libglimg.a: glsdk/CMakeFiles/glimg.dir/glimg/source/ImageSetImpl.cpp.o
glsdk/libglimg.a: glsdk/CMakeFiles/glimg.dir/glimg/source/StbLoader.cpp.o
glsdk/libglimg.a: glsdk/CMakeFiles/glimg.dir/glimg/source/TestLoader.cpp.o
glsdk/libglimg.a: glsdk/CMakeFiles/glimg.dir/glimg/source/TextureGenerator.cpp.o
glsdk/libglimg.a: glsdk/CMakeFiles/glimg.dir/glimg/source/Util.cpp.o
glsdk/libglimg.a: glsdk/CMakeFiles/glimg.dir/glimg/source/stb_image.c.o
glsdk/libglimg.a: glsdk/CMakeFiles/glimg.dir/build.make
glsdk/libglimg.a: glsdk/CMakeFiles/glimg.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking CXX static library libglimg.a"
	cd /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/glsdk && $(CMAKE_COMMAND) -P CMakeFiles/glimg.dir/cmake_clean_target.cmake
	cd /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/glsdk && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/glimg.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
glsdk/CMakeFiles/glimg.dir/build: glsdk/libglimg.a
.PHONY : glsdk/CMakeFiles/glimg.dir/build

glsdk/CMakeFiles/glimg.dir/clean:
	cd /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/glsdk && $(CMAKE_COMMAND) -P CMakeFiles/glimg.dir/cmake_clean.cmake
.PHONY : glsdk/CMakeFiles/glimg.dir/clean

glsdk/CMakeFiles/glimg.dir/depend:
	cd /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ben/Documents/project/graphics_programming/graphics-programming/gltut /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/glsdk /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/glsdk /home/ben/Documents/project/graphics_programming/graphics-programming/gltut/build/glsdk/CMakeFiles/glimg.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : glsdk/CMakeFiles/glimg.dir/depend

