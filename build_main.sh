#!/bin/bash
# Build only the main application
mkdir -p build
cd build
cmake ..
make Basic_CPP_Project
