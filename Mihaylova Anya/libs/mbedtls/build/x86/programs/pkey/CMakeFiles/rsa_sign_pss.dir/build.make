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
include programs/pkey/CMakeFiles/rsa_sign_pss.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include programs/pkey/CMakeFiles/rsa_sign_pss.dir/compiler_depend.make

# Include the progress variables for this target.
include programs/pkey/CMakeFiles/rsa_sign_pss.dir/progress.make

# Include the compile flags for this target's objects.
include programs/pkey/CMakeFiles/rsa_sign_pss.dir/flags.make

programs/pkey/CMakeFiles/rsa_sign_pss.dir/rsa_sign_pss.c.o: programs/pkey/CMakeFiles/rsa_sign_pss.dir/flags.make
programs/pkey/CMakeFiles/rsa_sign_pss.dir/rsa_sign_pss.c.o: /Users/19690612/Desktop/rpo22/libs/mbedtls/mbedtls/programs/pkey/rsa_sign_pss.c
programs/pkey/CMakeFiles/rsa_sign_pss.dir/rsa_sign_pss.c.o: programs/pkey/CMakeFiles/rsa_sign_pss.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/19690612/Desktop/rpo22/libs/mbedtls/build/x86/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object programs/pkey/CMakeFiles/rsa_sign_pss.dir/rsa_sign_pss.c.o"
	cd /Users/19690612/Desktop/rpo22/libs/mbedtls/build/x86/programs/pkey && /Users/19690612/Library/Android/sdk/ndk/23.1.7779620/toolchains/llvm/prebuilt/darwin-x86_64/bin/clang --target=i686-none-linux-android16 --sysroot=/Users/19690612/Library/Android/sdk/ndk/23.1.7779620/toolchains/llvm/prebuilt/darwin-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT programs/pkey/CMakeFiles/rsa_sign_pss.dir/rsa_sign_pss.c.o -MF CMakeFiles/rsa_sign_pss.dir/rsa_sign_pss.c.o.d -o CMakeFiles/rsa_sign_pss.dir/rsa_sign_pss.c.o -c /Users/19690612/Desktop/rpo22/libs/mbedtls/mbedtls/programs/pkey/rsa_sign_pss.c

programs/pkey/CMakeFiles/rsa_sign_pss.dir/rsa_sign_pss.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rsa_sign_pss.dir/rsa_sign_pss.c.i"
	cd /Users/19690612/Desktop/rpo22/libs/mbedtls/build/x86/programs/pkey && /Users/19690612/Library/Android/sdk/ndk/23.1.7779620/toolchains/llvm/prebuilt/darwin-x86_64/bin/clang --target=i686-none-linux-android16 --sysroot=/Users/19690612/Library/Android/sdk/ndk/23.1.7779620/toolchains/llvm/prebuilt/darwin-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/19690612/Desktop/rpo22/libs/mbedtls/mbedtls/programs/pkey/rsa_sign_pss.c > CMakeFiles/rsa_sign_pss.dir/rsa_sign_pss.c.i

programs/pkey/CMakeFiles/rsa_sign_pss.dir/rsa_sign_pss.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rsa_sign_pss.dir/rsa_sign_pss.c.s"
	cd /Users/19690612/Desktop/rpo22/libs/mbedtls/build/x86/programs/pkey && /Users/19690612/Library/Android/sdk/ndk/23.1.7779620/toolchains/llvm/prebuilt/darwin-x86_64/bin/clang --target=i686-none-linux-android16 --sysroot=/Users/19690612/Library/Android/sdk/ndk/23.1.7779620/toolchains/llvm/prebuilt/darwin-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/19690612/Desktop/rpo22/libs/mbedtls/mbedtls/programs/pkey/rsa_sign_pss.c -o CMakeFiles/rsa_sign_pss.dir/rsa_sign_pss.c.s

# Object files for target rsa_sign_pss
rsa_sign_pss_OBJECTS = \
"CMakeFiles/rsa_sign_pss.dir/rsa_sign_pss.c.o"

# External object files for target rsa_sign_pss
rsa_sign_pss_EXTERNAL_OBJECTS = \
"/Users/19690612/Desktop/rpo22/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/asn1_helpers.c.o" \
"/Users/19690612/Desktop/rpo22/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/certs.c.o" \
"/Users/19690612/Desktop/rpo22/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/drivers/hash.c.o" \
"/Users/19690612/Desktop/rpo22/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/drivers/platform_builtin_keys.c.o" \
"/Users/19690612/Desktop/rpo22/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_aead.c.o" \
"/Users/19690612/Desktop/rpo22/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_cipher.c.o" \
"/Users/19690612/Desktop/rpo22/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_key_management.c.o" \
"/Users/19690612/Desktop/rpo22/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_mac.c.o" \
"/Users/19690612/Desktop/rpo22/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_signature.c.o" \
"/Users/19690612/Desktop/rpo22/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/fake_external_rng_for_test.c.o" \
"/Users/19690612/Desktop/rpo22/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/helpers.c.o" \
"/Users/19690612/Desktop/rpo22/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_helpers.c.o" \
"/Users/19690612/Desktop/rpo22/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/psa_exercise_key.c.o" \
"/Users/19690612/Desktop/rpo22/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/random.c.o" \
"/Users/19690612/Desktop/rpo22/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/threading_helpers.c.o"

programs/pkey/rsa_sign_pss: programs/pkey/CMakeFiles/rsa_sign_pss.dir/rsa_sign_pss.c.o
programs/pkey/rsa_sign_pss: CMakeFiles/mbedtls_test.dir/tests/src/asn1_helpers.c.o
programs/pkey/rsa_sign_pss: CMakeFiles/mbedtls_test.dir/tests/src/certs.c.o
programs/pkey/rsa_sign_pss: CMakeFiles/mbedtls_test.dir/tests/src/drivers/hash.c.o
programs/pkey/rsa_sign_pss: CMakeFiles/mbedtls_test.dir/tests/src/drivers/platform_builtin_keys.c.o
programs/pkey/rsa_sign_pss: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_aead.c.o
programs/pkey/rsa_sign_pss: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_cipher.c.o
programs/pkey/rsa_sign_pss: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_key_management.c.o
programs/pkey/rsa_sign_pss: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_mac.c.o
programs/pkey/rsa_sign_pss: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_signature.c.o
programs/pkey/rsa_sign_pss: CMakeFiles/mbedtls_test.dir/tests/src/fake_external_rng_for_test.c.o
programs/pkey/rsa_sign_pss: CMakeFiles/mbedtls_test.dir/tests/src/helpers.c.o
programs/pkey/rsa_sign_pss: CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_helpers.c.o
programs/pkey/rsa_sign_pss: CMakeFiles/mbedtls_test.dir/tests/src/psa_exercise_key.c.o
programs/pkey/rsa_sign_pss: CMakeFiles/mbedtls_test.dir/tests/src/random.c.o
programs/pkey/rsa_sign_pss: CMakeFiles/mbedtls_test.dir/tests/src/threading_helpers.c.o
programs/pkey/rsa_sign_pss: programs/pkey/CMakeFiles/rsa_sign_pss.dir/build.make
programs/pkey/rsa_sign_pss: library/libmbedcrypto.so
programs/pkey/rsa_sign_pss: programs/pkey/CMakeFiles/rsa_sign_pss.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/19690612/Desktop/rpo22/libs/mbedtls/build/x86/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable rsa_sign_pss"
	cd /Users/19690612/Desktop/rpo22/libs/mbedtls/build/x86/programs/pkey && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rsa_sign_pss.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
programs/pkey/CMakeFiles/rsa_sign_pss.dir/build: programs/pkey/rsa_sign_pss
.PHONY : programs/pkey/CMakeFiles/rsa_sign_pss.dir/build

programs/pkey/CMakeFiles/rsa_sign_pss.dir/clean:
	cd /Users/19690612/Desktop/rpo22/libs/mbedtls/build/x86/programs/pkey && $(CMAKE_COMMAND) -P CMakeFiles/rsa_sign_pss.dir/cmake_clean.cmake
.PHONY : programs/pkey/CMakeFiles/rsa_sign_pss.dir/clean

programs/pkey/CMakeFiles/rsa_sign_pss.dir/depend:
	cd /Users/19690612/Desktop/rpo22/libs/mbedtls/build/x86 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/19690612/Desktop/rpo22/libs/mbedtls/mbedtls /Users/19690612/Desktop/rpo22/libs/mbedtls/mbedtls/programs/pkey /Users/19690612/Desktop/rpo22/libs/mbedtls/build/x86 /Users/19690612/Desktop/rpo22/libs/mbedtls/build/x86/programs/pkey /Users/19690612/Desktop/rpo22/libs/mbedtls/build/x86/programs/pkey/CMakeFiles/rsa_sign_pss.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : programs/pkey/CMakeFiles/rsa_sign_pss.dir/depend

