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
CMAKE_BINARY_DIR = /Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86_64

# Include any dependencies generated for this target.
include programs/pkey/CMakeFiles/rsa_genkey.dir/depend.make

# Include the progress variables for this target.
include programs/pkey/CMakeFiles/rsa_genkey.dir/progress.make

# Include the compile flags for this target's objects.
include programs/pkey/CMakeFiles/rsa_genkey.dir/flags.make

programs/pkey/CMakeFiles/rsa_genkey.dir/rsa_genkey.c.o: programs/pkey/CMakeFiles/rsa_genkey.dir/flags.make
programs/pkey/CMakeFiles/rsa_genkey.dir/rsa_genkey.c.o: /Users/anton/AndroidStudioProjects/libs/mbedtls/mbedtls/programs/pkey/rsa_genkey.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86_64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object programs/pkey/CMakeFiles/rsa_genkey.dir/rsa_genkey.c.o"
	cd /Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86_64/programs/pkey && /Users/anton/Library/Android/sdk/ndk/23.1.7779620-2/toolchains/llvm/prebuilt/darwin-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/Users/anton/Library/Android/sdk/ndk/23.1.7779620-2/toolchains/llvm/prebuilt/darwin-x86_64 --sysroot=/Users/anton/Library/Android/sdk/ndk/23.1.7779620-2/toolchains/llvm/prebuilt/darwin-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/rsa_genkey.dir/rsa_genkey.c.o -c /Users/anton/AndroidStudioProjects/libs/mbedtls/mbedtls/programs/pkey/rsa_genkey.c

programs/pkey/CMakeFiles/rsa_genkey.dir/rsa_genkey.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rsa_genkey.dir/rsa_genkey.c.i"
	cd /Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86_64/programs/pkey && /Users/anton/Library/Android/sdk/ndk/23.1.7779620-2/toolchains/llvm/prebuilt/darwin-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/Users/anton/Library/Android/sdk/ndk/23.1.7779620-2/toolchains/llvm/prebuilt/darwin-x86_64 --sysroot=/Users/anton/Library/Android/sdk/ndk/23.1.7779620-2/toolchains/llvm/prebuilt/darwin-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/anton/AndroidStudioProjects/libs/mbedtls/mbedtls/programs/pkey/rsa_genkey.c > CMakeFiles/rsa_genkey.dir/rsa_genkey.c.i

programs/pkey/CMakeFiles/rsa_genkey.dir/rsa_genkey.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rsa_genkey.dir/rsa_genkey.c.s"
	cd /Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86_64/programs/pkey && /Users/anton/Library/Android/sdk/ndk/23.1.7779620-2/toolchains/llvm/prebuilt/darwin-x86_64/bin/clang --target=x86_64-none-linux-android21 --gcc-toolchain=/Users/anton/Library/Android/sdk/ndk/23.1.7779620-2/toolchains/llvm/prebuilt/darwin-x86_64 --sysroot=/Users/anton/Library/Android/sdk/ndk/23.1.7779620-2/toolchains/llvm/prebuilt/darwin-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/anton/AndroidStudioProjects/libs/mbedtls/mbedtls/programs/pkey/rsa_genkey.c -o CMakeFiles/rsa_genkey.dir/rsa_genkey.c.s

# Object files for target rsa_genkey
rsa_genkey_OBJECTS = \
"CMakeFiles/rsa_genkey.dir/rsa_genkey.c.o"

# External object files for target rsa_genkey
rsa_genkey_EXTERNAL_OBJECTS = \
"/Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/asn1_helpers.c.o" \
"/Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/certs.c.o" \
"/Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/drivers/hash.c.o" \
"/Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/drivers/platform_builtin_keys.c.o" \
"/Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_aead.c.o" \
"/Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_cipher.c.o" \
"/Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_key_management.c.o" \
"/Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_mac.c.o" \
"/Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_signature.c.o" \
"/Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/fake_external_rng_for_test.c.o" \
"/Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/helpers.c.o" \
"/Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_helpers.c.o" \
"/Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/psa_exercise_key.c.o" \
"/Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/random.c.o" \
"/Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/threading_helpers.c.o"

programs/pkey/rsa_genkey: programs/pkey/CMakeFiles/rsa_genkey.dir/rsa_genkey.c.o
programs/pkey/rsa_genkey: CMakeFiles/mbedtls_test.dir/tests/src/asn1_helpers.c.o
programs/pkey/rsa_genkey: CMakeFiles/mbedtls_test.dir/tests/src/certs.c.o
programs/pkey/rsa_genkey: CMakeFiles/mbedtls_test.dir/tests/src/drivers/hash.c.o
programs/pkey/rsa_genkey: CMakeFiles/mbedtls_test.dir/tests/src/drivers/platform_builtin_keys.c.o
programs/pkey/rsa_genkey: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_aead.c.o
programs/pkey/rsa_genkey: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_cipher.c.o
programs/pkey/rsa_genkey: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_key_management.c.o
programs/pkey/rsa_genkey: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_mac.c.o
programs/pkey/rsa_genkey: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_signature.c.o
programs/pkey/rsa_genkey: CMakeFiles/mbedtls_test.dir/tests/src/fake_external_rng_for_test.c.o
programs/pkey/rsa_genkey: CMakeFiles/mbedtls_test.dir/tests/src/helpers.c.o
programs/pkey/rsa_genkey: CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_helpers.c.o
programs/pkey/rsa_genkey: CMakeFiles/mbedtls_test.dir/tests/src/psa_exercise_key.c.o
programs/pkey/rsa_genkey: CMakeFiles/mbedtls_test.dir/tests/src/random.c.o
programs/pkey/rsa_genkey: CMakeFiles/mbedtls_test.dir/tests/src/threading_helpers.c.o
programs/pkey/rsa_genkey: programs/pkey/CMakeFiles/rsa_genkey.dir/build.make
programs/pkey/rsa_genkey: library/libmbedcrypto.so
programs/pkey/rsa_genkey: programs/pkey/CMakeFiles/rsa_genkey.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86_64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable rsa_genkey"
	cd /Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86_64/programs/pkey && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rsa_genkey.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
programs/pkey/CMakeFiles/rsa_genkey.dir/build: programs/pkey/rsa_genkey

.PHONY : programs/pkey/CMakeFiles/rsa_genkey.dir/build

programs/pkey/CMakeFiles/rsa_genkey.dir/clean:
	cd /Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86_64/programs/pkey && $(CMAKE_COMMAND) -P CMakeFiles/rsa_genkey.dir/cmake_clean.cmake
.PHONY : programs/pkey/CMakeFiles/rsa_genkey.dir/clean

programs/pkey/CMakeFiles/rsa_genkey.dir/depend:
	cd /Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86_64 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/anton/AndroidStudioProjects/libs/mbedtls/mbedtls /Users/anton/AndroidStudioProjects/libs/mbedtls/mbedtls/programs/pkey /Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86_64 /Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86_64/programs/pkey /Users/anton/AndroidStudioProjects/libs/mbedtls/build/x86_64/programs/pkey/CMakeFiles/rsa_genkey.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : programs/pkey/CMakeFiles/rsa_genkey.dir/depend

