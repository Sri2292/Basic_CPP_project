#!/bin/bash
# Build only the unit tests
mkdir -p build
cd build
if [[ "$(uname -s)" == "Linux" ]]; then
	cmake ..
	make unit_tests
elif [[ "$(uname -s)" == "MINGW"* || "$(uname -s)" == "MSYS"* || "$(uname -s)" == "CYGWIN"* ]]; then
	cmake .. -G "MinGW Makefiles"
	mingw32-make unit_tests
else
	echo "Please run the following commands manually for Windows Visual Studio:"
	echo "cmake .. -G \"Visual Studio 17 2022\""
	echo "cmake --build . --target unit_tests"
fi
