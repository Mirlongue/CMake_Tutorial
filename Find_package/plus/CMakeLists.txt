cmake_minimum_required(VERSION 3.29)
project(plus)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/bin)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/lib)
set(CMAKE_INSTALL_PREFIX ${PROJECT_SOURCE_DIR}/out)

add_library(plus SHARED plus.cpp)

target_include_directories(plus PUBLIC
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
        $<INSTALL_INTERFACE:include>) # config

set_target_properties(plus PROPERTIES PUBLIC_HEADER "include/plus.h;include/head.h")

install(
    TARGETS plus
    # EXPORT ${PROJECT_NAME}Targets
    PUBLIC_HEADER DESTINATION include 
    ARCHIVE DESTINATION lib
    LIBRARY DESTINATION lib
    RUNTIME DESTINATION bin
)

# install(
#     EXPORT ${PROJECT_NAME}Targets 
#     FILE ${PROJECT_NAME}Targets.cmake 
#     DESTINATION lib/cmake
# )

set(INCLUDE_DIRS include) # config
set(LIBRARIES plus) # config
set(LIB_DIR lib) # config

include(CMakePackageConfigHelpers) # config

configure_package_config_file( # config
    ${PROJECT_SOURCE_DIR}/${PROJECT_NAME}Config.cmake.in
    ${PROJECT_BINARY_DIR}/${PROJECT_NAME}Config.cmake
    INSTALL_DESTINATION lib/cmake
    PATH_VARS INCLUDE_DIRS LIBRARIES LIB_DIR
)

install( # config
	FILES ${PROJECT_BINARY_DIR}/${PROJECT_NAME}Config.cmake
	DESTINATION lib/cmake
)