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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.22.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.22.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/19690612/Desktop/rpo22/libs/mbedtls/mbedtls

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/19690612/Desktop/rpo22/libs/mbedtls/build/x86

# Include any dependencies generated for this target.
include programs/test/CMakeFiles/dlopen.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include programs/test/CMakeFiles/dlopen.dir/compiler_depend.make

# Include the progress variables for this target.
include programs/test/CMakeFiles/dlopen.dir/progress.make

# Include the compile flags for this target's objects.
include programs/test/CMakeFiles/dlopen.dir/flags.make

programs/test/CMakeFiles/dlopen.dir/dlopen.c.o: programs/test/CMakeFiles/dlopen.dir/flags.make
programs/test/CMakeFiles/dlopen.dir/dlopen.c.o: /Users/19690612/Desktop/rpo22/libs/mbedtls/mbedtls/programs/test/dlopen.c
programs/test/CMakeFiles/dlopen.dir/dlopen.c.o: programs/test/CMakeFiles/dlopen.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/19690612/Desktop/rpo22/libs/mbedtls/build/x86/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object programs/test/CMakeFiles/dlopen.dir/dlopen.c.o"
	cd /Users/19690612/Desktop/rpo22/libs/mbedtls/build/x86/programs/test && /Users/19690612/Library/Android/sdk/ndk/23.1.7779620/toolchains/llvm/prebuilt/darwin-x86_64/bin/clang --target=i686-none-linux-android16 --sysroot=/Users/19690612/Library/Android/sdk/ndk/23.1.7779620/toolchains/llvm/prebuilt/darwin-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT programs/test/CMakeFiles/dlopen.dir/dlopen.c.o -MF CMakeFiles/dlopen.dir/dlopen.c.o.d -o CMakeFiles/dlopen.dir/dlopen.c.o -c /Users/19690612/Desktop/rpo22/libs/mbedtls/mbedtls/programs/test/dlopen.c

programs/test/CMakeFiles/dlopen.dir/dlopen.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dlopen.dir/dlopen.c.i"
	cd /Users/19690612/Desktop/rpo22/libs/mbedtls/build/x86/programs/test && /Users/19690612/Library/Android/sdk/ndk/23.1.7779620/toolchains/llvm/prebuilt/darwin-x86_64/bin/clang --target=i686-none-linux-android16 --sysroot=/Users/19690612/Library/Android/sdk/ndk/23.1.7779620/toolchains/llvm/prebuilt/darwin-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/19690612/Desktop/rpo22/libs/mbedtls/mbedtls/programs/test/dlopen.c > CMakeFiles/dlopen.dir/dlopen.c.i

programs/test/CMakeFiles/dlopen.dir/dlopen.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dlopen.dir/dlopen.c.s"
	cd /Users/19690612/Desktop/rpo22/libs/mbedtls/build/x86/programs/test && /Users/19690612/Library/Android/sdk/ndk/23.1.7779620/toolchains/llvm/prebuilt/darwin-x86_64/bin/clang --target=i686-none-linux-android16 --sysroot=/Users/19690612/Library/Android/sdk/ndk/23.1.7779620/toolchains/llvm/prebuilt/darwin-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/19690612/Desktop/rpo22/libs/mbedtls/mbedtls/programs/test/dlopen.c -o CMakeFiles/dlopen.dir/dlopen.c.s

# Object files for target dlopen
dlopen_OBJECTS = \
"CMakeFiles/dlopen.dir/dlopen.c.o"

# External object files for target dlopen
dlopen_EXTERNAL_OBJECTS =

programs/test/dlopen: programs/test/CMakeFiles/dlopen.dir/dlopen.c.o
programs/test/dlopen: programs/test/CMakeFiles/dlopen.dir/build.make
programs/test/dlopen: programs/test/CMakeFiles/dlopen.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/19690612/Desktop/rpo22/libs/mbedtls/build/x86/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable dlopen"
	cd /Users/19690612/Desktop/rpo22/libs/mbedtls/build/x86/programs/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dlopen.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
programs/test/CMakeFiles/dlopen.dir/build: programs/test/dlopen
.PHONY : programs/test/CMakeFiles/dlopen.dir/build

programs/test/CMakeFiles/dlopen.dir/clean:
	cd /Users/19690612/Desktop/rpo22/libs/mbedtls/build/x86/programs/test && $(CMAKE_COMMAND) -P CMakeFiles/dlopen.dir/cmake_clean.cmake
.PHONY : programs/test/CMakeFiles/dlopen.dir/clean

programs/test/CMakeFiles/dlopen.dir/depend:
	cd /Users/19690612/Desktop/rpo22/libs/mbedtls/build/x86 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/19690612/Desktop/rpo22/libs/mbedtls/mbedtls /Users/19690612/Desktop/rpo22/libs/mbedtls/mbedtls/programs/test /Users/19690612/Desktop/rpo22/libs/mbedtls/build/x86 /Users/19690612/Desktop/rpo22/libs/mbedtls/build/x86/programs/test /Users/19690612/Desktop/rpo22/libs/mbedtls/build/x86/programs/test/CMakeFiles/dlopen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : programs/test/CMakeFiles/dlopen.dir/depend

