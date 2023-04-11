cmake_minimum_required(VERSION 3.24)

# Set target compiler first to overwrite the default compiler
# that's set when _project()_ is called.
set(C_STANDARD 99)
set(CMAKE_C_COMPILER arm-none-eabi-gcc)
set(CMAKE_CXX_COMPILER arm-none-eabi-g++)
set(CMAKE_ASM_COMPILER arm-none-eabi-gcc)
set(CMAKE_EXECUTABLE_SUFFIX_C .out)
set(CMAKE_C_SIZE_TOOL arm-none-eabi-size)

# Required to prevent "The C Compiler is not able to compile a simple test program"
# error due to cross-compiling.
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

# Project name
project(
    nrf5_sdk 
    VERSION 1.0
    LANGUAGES C ASM
)

set(PROJ_ROOT ${CMAKE_CURRENT_SOURCE_DIR})
set(SDK_ROOT ${CMAKE_CURRENT_SOURCE_DIR}/extern/nrf5_sdk)
set(CMAKE_BINARY_DIR build)

add_subdirectory(apps)
