# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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
CMAKE_COMMAND = /Users/anton/Library/Android/sdk/cmake/3.18.1/bin/cmake

# The command to remove a file.
RM = /Users/anton/Library/Android/sdk/cmake/3.18.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/anton/AndroidStudioProjects/libs/mbedtls/mbedtls

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86

# Include any dependencies generated for this target.
include programs/test/CMakeFiles/benchmark.dir/depend.make

# Include the progress variables for this target.
include programs/test/CMakeFiles/benchmark.dir/progress.make

# Include the compile flags for this target's objects.
include programs/test/CMakeFiles/benchmark.dir/flags.make

programs/test/CMakeFiles/benchmark.dir/benchmark.c.o: programs/test/CMakeFiles/benchmark.dir/flags.make
programs/test/CMakeFiles/benchmark.dir/benchmark.c.o: /Users/anton/AndroidStudioProjects/libs/mbedtls/mbedtls/programs/test/benchmark.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object programs/test/CMakeFiles/benchmark.dir/benchmark.c.o"
	cd /Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86/programs/test && /Users/anton/Library/Android/sdk/ndk/23.1.7779620-2/toolchains/llvm/prebuilt/darwin-x86_64/bin/clang --target=i686-none-linux-android16 --gcc-toolchain=/Users/anton/Library/Android/sdk/ndk/23.1.7779620-2/toolchains/llvm/prebuilt/darwin-x86_64 --sysroot=/Users/anton/Library/Android/sdk/ndk/23.1.7779620-2/toolchains/llvm/prebuilt/darwin-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/benchmark.dir/benchmark.c.o -c /Users/anton/AndroidStudioProjects/libs/mbedtls/mbedtls/programs/test/benchmark.c

programs/test/CMakeFiles/benchmark.dir/benchmark.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/benchmark.dir/benchmark.c.i"
	cd /Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86/programs/test && /Users/anton/Library/Android/sdk/ndk/23.1.7779620-2/toolchains/llvm/prebuilt/darwin-x86_64/bin/clang --target=i686-none-linux-android16 --gcc-toolchain=/Users/anton/Library/Android/sdk/ndk/23.1.7779620-2/toolchains/llvm/prebuilt/darwin-x86_64 --sysroot=/Users/anton/Library/Android/sdk/ndk/23.1.7779620-2/toolchains/llvm/prebuilt/darwin-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/anton/AndroidStudioProjects/libs/mbedtls/mbedtls/programs/test/benchmark.c > CMakeFiles/benchmark.dir/benchmark.c.i

programs/test/CMakeFiles/benchmark.dir/benchmark.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/benchmark.dir/benchmark.c.s"
	cd /Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86/programs/test && /Users/anton/Library/Android/sdk/ndk/23.1.7779620-2/toolchains/llvm/prebuilt/darwin-x86_64/bin/clang --target=i686-none-linux-android16 --gcc-toolchain=/Users/anton/Library/Android/sdk/ndk/23.1.7779620-2/toolchains/llvm/prebuilt/darwin-x86_64 --sysroot=/Users/anton/Library/Android/sdk/ndk/23.1.7779620-2/toolchains/llvm/prebuilt/darwin-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/anton/AndroidStudioProjects/libs/mbedtls/mbedtls/programs/test/benchmark.c -o CMakeFiles/benchmark.dir/benchmark.c.s

# Object files for target benchmark
benchmark_OBJECTS = \
"CMakeFiles/benchmark.dir/benchmark.c.o"

# External object files for target benchmark
benchmark_EXTERNAL_OBJECTS = \
"/Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/asn1_helpers.c.o" \
"/Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/certs.c.o" \
"/Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/drivers/hash.c.o" \
"/Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/drivers/platform_builtin_keys.c.o" \
"/Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_aead.c.o" \
"/Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_cipher.c.o" \
"/Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_key_management.c.o" \
"/Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_mac.c.o" \
"/Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_signature.c.o" \
"/Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/fake_external_rng_for_test.c.o" \
"/Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/helpers.c.o" \
"/Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_helpers.c.o" \
"/Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/psa_exercise_key.c.o" \
"/Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/random.c.o" \
"/Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/threading_helpers.c.o"

programs/test/benchmark: programs/test/CMakeFiles/benchmark.dir/benchmark.c.o
programs/test/benchmark: CMakeFiles/mbedtls_test.dir/tests/src/asn1_helpers.c.o
programs/test/benchmark: CMakeFiles/mbedtls_test.dir/tests/src/certs.c.o
programs/test/benchmark: CMakeFiles/mbedtls_test.dir/tests/src/drivers/hash.c.o
programs/test/benchmark: CMakeFiles/mbedtls_test.dir/tests/src/drivers/platform_builtin_keys.c.o
programs/test/benchmark: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_aead.c.o
programs/test/benchmark: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_cipher.c.o
programs/test/benchmark: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_key_management.c.o
programs/test/benchmark: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_mac.c.o
programs/test/benchmark: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_signature.c.o
programs/test/benchmark: CMakeFiles/mbedtls_test.dir/tests/src/fake_external_rng_for_test.c.o
programs/test/benchmark: CMakeFiles/mbedtls_test.dir/tests/src/helpers.c.o
programs/test/benchmark: CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_helpers.c.o
programs/test/benchmark: CMakeFiles/mbedtls_test.dir/tests/src/psa_exercise_key.c.o
programs/test/benchmark: CMakeFiles/mbedtls_test.dir/tests/src/random.c.o
programs/test/benchmark: CMakeFiles/mbedtls_test.dir/tests/src/threading_helpers.c.o
programs/test/benchmark: programs/test/CMakeFiles/benchmark.dir/build.make
programs/test/benchmark: library/libmbedcrypto.so
programs/test/benchmark: programs/test/CMakeFiles/benchmark.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable benchmark"
	cd /Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86/programs/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/benchmark.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
programs/test/CMakeFiles/benchmark.dir/build: programs/test/benchmark

.PHONY : programs/test/CMakeFiles/benchmark.dir/build

programs/test/CMakeFiles/benchmark.dir/clean:
	cd /Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86/programs/test && $(CMAKE_COMMAND) -P CMakeFiles/benchmark.dir/cmake_clean.cmake
.PHONY : programs/test/CMakeFiles/benchmark.dir/clean

programs/test/CMakeFiles/benchmark.dir/depend:
	cd /Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/anton/AndroidStudioProjects/libs/mbedtls/mbedtls /Users/anton/AndroidStudioProjects/libs/mbedtls/mbedtls/programs/test /Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86 /Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86/programs/test /Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86/programs/test/CMakeFiles/benchmark.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : programs/test/CMakeFiles/benchmark.dir/depend

