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
CMAKE_COMMAND = /home/b-da/Android/Sdk/cmake/3.22.2/bin/cmake

# The command to remove a file.
RM = /home/b-da/Android/Sdk/cmake/3.22.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/b-da/Проекты/AndroidStudioProjects/lib/mbedtls/mbedtls

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/b-da/Проекты/AndroidStudioProjects/lib/mbedtls/build/x86

# Utility rule file for generate_psa_constant_names_generated_c.

# Include any custom commands dependencies for this target.
include programs/psa/CMakeFiles/generate_psa_constant_names_generated_c.dir/compiler_depend.make

# Include the progress variables for this target.
include programs/psa/CMakeFiles/generate_psa_constant_names_generated_c.dir/progress.make

programs/psa/CMakeFiles/generate_psa_constant_names_generated_c: programs/psa/psa_constant_names_generated.c

programs/psa/psa_constant_names_generated.c: /home/b-da/Проекты/AndroidStudioProjects/lib/mbedtls/mbedtls/scripts/generate_psa_constants.py
programs/psa/psa_constant_names_generated.c: /home/b-da/Проекты/AndroidStudioProjects/lib/mbedtls/mbedtls/include/psa/crypto_values.h
programs/psa/psa_constant_names_generated.c: /home/b-da/Проекты/AndroidStudioProjects/lib/mbedtls/mbedtls/include/psa/crypto_extra.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/b-da/Проекты/AndroidStudioProjects/lib/mbedtls/build/x86/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating psa_constant_names_generated.c"
	cd /home/b-da/Проекты/AndroidStudioProjects/lib/mbedtls/mbedtls && /usr/bin/python3.10 /home/b-da/Проекты/AndroidStudioProjects/lib/mbedtls/mbedtls/programs/psa/../../scripts/generate_psa_constants.py /home/b-da/Проекты/AndroidStudioProjects/lib/mbedtls/build/x86/programs/psa

generate_psa_constant_names_generated_c: programs/psa/CMakeFiles/generate_psa_constant_names_generated_c
generate_psa_constant_names_generated_c: programs/psa/psa_constant_names_generated.c
generate_psa_constant_names_generated_c: programs/psa/CMakeFiles/generate_psa_constant_names_generated_c.dir/build.make
.PHONY : generate_psa_constant_names_generated_c

# Rule to build all files generated by this target.
programs/psa/CMakeFiles/generate_psa_constant_names_generated_c.dir/build: generate_psa_constant_names_generated_c
.PHONY : programs/psa/CMakeFiles/generate_psa_constant_names_generated_c.dir/build

programs/psa/CMakeFiles/generate_psa_constant_names_generated_c.dir/clean:
	cd /home/b-da/Проекты/AndroidStudioProjects/lib/mbedtls/build/x86/programs/psa && $(CMAKE_COMMAND) -P CMakeFiles/generate_psa_constant_names_generated_c.dir/cmake_clean.cmake
.PHONY : programs/psa/CMakeFiles/generate_psa_constant_names_generated_c.dir/clean

programs/psa/CMakeFiles/generate_psa_constant_names_generated_c.dir/depend:
	cd /home/b-da/Проекты/AndroidStudioProjects/lib/mbedtls/build/x86 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/b-da/Проекты/AndroidStudioProjects/lib/mbedtls/mbedtls /home/b-da/Проекты/AndroidStudioProjects/lib/mbedtls/mbedtls/programs/psa /home/b-da/Проекты/AndroidStudioProjects/lib/mbedtls/build/x86 /home/b-da/Проекты/AndroidStudioProjects/lib/mbedtls/build/x86/programs/psa /home/b-da/Проекты/AndroidStudioProjects/lib/mbedtls/build/x86/programs/psa/CMakeFiles/generate_psa_constant_names_generated_c.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : programs/psa/CMakeFiles/generate_psa_constant_names_generated_c.dir/depend

