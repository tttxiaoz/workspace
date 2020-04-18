# 指定当前文件所来依赖的最低CMake版本， 若没有必要用到最高版本CMake， 建议指定较低版本3.0
cmake_minimum_required(VERSION 3.0)
#指定当前工程名称  一般设定未源码的根目录名
project("Sample")
# 指定要构建应用程序  参数含义  将参数2 编译成参数1
add_executable(hello_world  hello_world.c)
