cmake_minimum_required(VERSION 3.24)
# Compile Blinky using the example's existing Makefile
include(ExternalProject)
ExternalProject_Add(
    blinky
    SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}
    CONFIGURE_HANDLED_BY_BUILD true 
    BUILD_COMMAND
        make -C ${CMAKE_CURRENT_SOURCE_DIR}/pca10059/s140/armgcc
    INSTALL_COMMAND
        mv ${CMAKE_CURRENT_SOURCE_DIR}/pca10059/s140/armgcc/_build ${CMAKE_BINARY_DIR}
)
