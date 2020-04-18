# 搜索当前目录下所有文件
aux_source_directory(. UTILS_SRC)

# 指定该目录下所有文件编译成动态库  参数1 是动态库名称  参数2是链接类型 shared代表动态连接 参数3是代编仪文件
add_library(sample_utils SHARED ${UTILS_SRC})
