# Supplementary

```cmake
# mkdir build
# cd build
cmake ../ -G Ninja    # -D<variable>=<value>  override default value(option(), set() with CACHE)
cmake --build .    # -v print specific compilation instructions
cmake --install .

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/bin)    # set runtime target file bits
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/lib)    # set the target file location for the archive
set(CMAKE_INSTALL_PREFIX ${PROJECT_SOURCE_DIR}/out)    # set the installation path

install(TARGETS <target> DESTINATION lib)    # install library
install(FILES ${CMAKE_CURRENT_SOURCE_DIR}/<xxx.h> DESTINATION include)    # install header files

CMAKE_CURRENT_LIST_DIR # different from CMAKE_CURRENT_SOURCE_DIR  e.g in find_package()
```