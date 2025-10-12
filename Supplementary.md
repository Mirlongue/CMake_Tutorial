# Supplementary

```cmake
# mkdir build
# cd build
cmake ../ -G Ninja    # -D<variable>=<value> 覆盖默认值(option()值 带CACHE的set())
cmake --build .    # -v 查看具体编译指令
cmake --install .

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/bin)    # 设置运行时目标文件位置
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/lib)    # 设置存档目标文件位置
set(CMAKE_INSTALL_PREFIX ${PROJECT_SOURCE_DIR}/out)    # 设置安装路径

install(TARGETS <target> DESTINATION lib)    # 安装库
install(FILES ${CMAKE_CURRENT_SOURCE_DIR}/<xxx.h> DESTINATION include)    # 安装头文件
```