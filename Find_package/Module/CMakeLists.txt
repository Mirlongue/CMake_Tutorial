cmake_minimum_required(VERSION 3.10)

project(demo)

set(CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/plus) # module

find_package(plus REQUIRED)

add_executable(demo main.cpp)

target_link_libraries(demo PUBLIC plus)