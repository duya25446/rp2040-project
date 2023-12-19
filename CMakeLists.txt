cmake_minimum_required(VERSION 3.13)

set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)
set(CMAKE_C_COMPILER "arm-none-eabi-gcc")
# initialize the SDK directly
include(../pico-sdk/pico_sdk_init.cmake)

project(my_rp2040_study C CXX ASM)

# initialize the Raspberry Pi Pico SDK
pico_sdk_init()

# rest of your project
include_directories(lib/include)
include_directories(.)

# 创建生成目录
set(CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR}/build)
file(MAKE_DIRECTORY ${CMAKE_BINARY_DIR})

# 设置输出路径
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR})
set(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR})

aux_source_directory(./lib/src DIR_LIB_SRCS)
aux_source_directory(. DIR_SRCS)
add_library (lib_src ${DIR_LIB_SRCS})

#pico_generate_pio_header(hello_pio .lib/include/pio/hello_pio.pio)

add_executable(main
    main.c ${DIR_SRCS}
)
target_link_libraries(main lib_src pico_stdlib hardware_pio)
pico_add_extra_outputs(main)