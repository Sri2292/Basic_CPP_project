#!/bin/bash
# Build only the unit tests
mkdir -p build
cd build
cmake ..
make unit_tests
