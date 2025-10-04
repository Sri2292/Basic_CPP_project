#!/bin/bash
# Build only the main application
mkdir -p build
cd build
if [[ "$(uname -s)" == "Linux" ]]; then
	cmake ..
	make Basic_CPP_Project
elif [[ "$(uname -s)" == "MINGW"* || "$(uname -s)" == "MSYS"* || "$(uname -s)" == "CYGWIN"* ]]; then
	cmake .. -G "MinGW Makefiles"
	mingw32-make Basic_CPP_Project
else
	echo "Please run the following commands manually for Windows Visual Studio:"
	echo "cmake .. -G \"Visual Studio 17 2022\""
	echo "cmake --build . --target Basic_CPP_Project"
fi
