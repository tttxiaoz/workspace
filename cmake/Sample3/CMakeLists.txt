# 指定当前文件所来依赖的最低CMake版本， 若没有必要用到最高版本CMake， 建议指定较低版本3.0
cmake_minimum_required(VERSION 3.0)

#指定当前工程名称  一般设定未源码的根目录名
project("Sample3")

# EXECUTABLE_OUTPUT_PATH 指定可执行文件输出路径
# LIBRARY_OUTPUT_PATH 指定东台路输出路径
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin)
set(LIBRARY_OUTPUT_PATH ${PROJECT_BINARY_DIR}/lib)

# 源码搜索路径  移除utils子目录
aux_source_directory(. ROOT_SRC)
aux_source_directory(./modules MODULES_SRC)

# 指定当前工程包含子目录utils
add_subdirectory(utils)

# 构建可执行程序的命令中秩序要指定modules目录下的源码和根路径下的源码即可
add_executable(main ${ROOT_SRC} ${MODULES_SRC})

# 指定可执行程序的依赖： main 依赖 sample_utils
target_link_libraries(main sample_utils)
