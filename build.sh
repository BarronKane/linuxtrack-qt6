#!/bin/bash

set -e

cd "`dirname "$0"`"

mkdir -p build/

source $(pwd)/env/bin/activate

# Release
rtc=-DCMAKE_TOOLCHAIN_FILE=./Release/generators/conan_toolchain.cmake
# Debug
dtc=-DCMAKE_TOOLCHAIN_FILE=./Debug/generators/conan_toolchain.cmake

build_type=$dtc # MATCH SET BUILD TYPE HERE

conan install . --build missing -s build_type=Debug # SET BUILT TYPE HERE
pushd build/

if [[ "$OSTYPE" == "darwin"* ]]; then
	cmake .. -G "Xcode" $build_type 
else
	cmake .. $build_type
fi

cmake --build .
popd > /dev/null

deactivate
