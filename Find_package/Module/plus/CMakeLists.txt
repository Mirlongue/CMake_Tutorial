cmake_minimum_required(VERSION 3.29)
project(plus)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/bin)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/lib)
set(CMAKE_INSTALL_PREFIX ${PROJECT_SOURCE_DIR}/out)

# add_library(plus STATIC plus.cpp)
add_library(plus SHARED plus.cpp)

target_include_directories(plus PUBLIC
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>)

set_target_properties(plus PROPERTIES PUBLIC_HEADER "include/plus.h;include/head.h")

install(
    TARGETS plus
    PUBLIC_HEADER DESTINATION include
    ARCHIVE DESTINATION lib
    LIBRARY DESTINATION lib
    RUNTIME DESTINATION bin
)