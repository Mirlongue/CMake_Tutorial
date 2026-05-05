cmake_minimum_required(VERSION 3.10)

project(demo)

# set(CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/plus) # module
set(CMAKE_PREFIX_PATH ${CMAKE_CURRENT_SOURCE_DIR}/plus/out/lib/cmake/) # config

find_package(plus REQUIRED)

if(plus_FOUND) # config
    message(STATUS "plus_FOUND = ${plus_FOUND}")
	message(STATUS "plus_INCLUDE_DIRS = ${plus_INCLUDE_DIRS}")
	message(STATUS "plus_LIBRARIES = ${plus_LIBRARIES}")
	message(STATUS "plus_LIBRARY_DIRS = ${plus_LIBRARY_DIRS}")
endif()

add_executable(demo main.cpp)

target_link_directories(demo PUBLIC ${plus_LIBRARY_DIRS}) # config
target_include_directories(demo PUBLIC ${plus_INCLUDE_DIRS}) # config
target_link_libraries(demo PUBLIC plus)