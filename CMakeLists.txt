cmake_minimum_required(VERSION 3.10)
project(Basic_CPP_Project)

set(CMAKE_CXX_STANDARD 17)

add_executable(Basic_CPP_Project src/main.cpp)

# Google Test
enable_testing()
add_subdirectory(tests)
