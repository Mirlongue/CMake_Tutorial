set(plus_root ${CMAKE_CURRENT_SOURCE_DIR}/plus/out)

find_library(
    Plus_LIB
    NAMES libplus.dll.a
    PATHS ${plus_root}/lib
    NO_DEFAULT_PATH
)

find_path(
    Plus_INCLUDE_DIR
    NAMES plus.h
    PATHS ${plus_root}/include
    NO_DEFAULT_PATH
)

message(STATUS "Plus_LIB: ${Plus_LIB}")

message(STATUS "Plus_INCLUDE_DIR: ${Plus_INCLUDE_DIR}")

if(NOT TARGET plus)
    add_library(plus STATIC IMPORTED)
    set_target_properties(plus PROPERTIES
        IMPORTED_LOCATION ${Plus_LIB}
        INTERFACE_INCLUDE_DIRECTORIES ${Plus_INCLUDE_DIR}
    )
endif()