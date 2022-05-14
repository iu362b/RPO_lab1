#!/bin/bash
#ABI=armaebi-v7a
ABI=x86
#ABI=arm64-v8a
#ABI=x86_64
TOOL_CHAIN=/home/artem/Android/Sdk/ndk/23.1.7779620/build/cmake/android.toolchain.cmake
CMAKE=/usr/local/bin/cmake
mkdir -p ${ABI}
cd ${ABI}

${CMAKE} ../../mbedtls -DCMAKE_SYSTEM_NAME=Android -DCMAKE_SYSTEM_VERSION=21 \
-DANDROID_ABI=${ABI} -DCMAKE_TOOLCHAIN_FILE=${TOOL_CHAIN} \
-DUSE_SHARED_MBEDTLS_LIBRARY=On -DENABLE_TESTING=Off
${CMAKE} --build .
