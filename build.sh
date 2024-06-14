#!/bin/bash

set -e

cd "`dirname "$0"`"

mkdir -p build/

source $(pwd)/env/bin/activate

build_type=Debug # SET BUILD TYPE HERE

#if [ "$build_type" -eq 'Debug' ]; then
#	toolchain=-DCMAKE_TOOLCHAIN_FILE=./Debug/generators/conan_toolchain.cmake
#fi

#if [ "$build_type" -eq "Release" ]; then
#	toolchain=-DCMAKE_TOOLCHAIN_FILE=./Release/generators/conan_toolchain.cmake
#fi

conan install . --build missing -s build_type=$build_type
pushd build/$build_type

if [[ "$OSTYPE" == "darwin"* ]]; then
	cmake ../../ -G "Xcode" -DCMAKE_BUILD_TYPE=$build_type
else
	cmake ../../ -DCMAKE_BUILD_TYPE=$build_type
fi

cmake --build .
popd > /dev/null

deactivate
