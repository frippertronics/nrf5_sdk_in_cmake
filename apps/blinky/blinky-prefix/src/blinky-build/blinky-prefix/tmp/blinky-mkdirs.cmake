# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/andersn/Fritid/nrf5_sdk_cmake/apps/blinky"
  "/Users/andersn/Fritid/nrf5_sdk_cmake/apps/blinky/blinky-prefix/src/blinky-build/blinky-prefix/src/blinky-build"
  "/Users/andersn/Fritid/nrf5_sdk_cmake/apps/blinky/blinky-prefix/src/blinky-build/blinky-prefix"
  "/Users/andersn/Fritid/nrf5_sdk_cmake/apps/blinky/blinky-prefix/src/blinky-build/blinky-prefix/tmp"
  "/Users/andersn/Fritid/nrf5_sdk_cmake/apps/blinky/blinky-prefix/src/blinky-build/blinky-prefix/src/blinky-stamp"
  "/Users/andersn/Fritid/nrf5_sdk_cmake/apps/blinky/blinky-prefix/src/blinky-build/blinky-prefix/src"
  "/Users/andersn/Fritid/nrf5_sdk_cmake/apps/blinky/blinky-prefix/src/blinky-build/blinky-prefix/src/blinky-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/andersn/Fritid/nrf5_sdk_cmake/apps/blinky/blinky-prefix/src/blinky-build/blinky-prefix/src/blinky-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/andersn/Fritid/nrf5_sdk_cmake/apps/blinky/blinky-prefix/src/blinky-build/blinky-prefix/src/blinky-stamp${cfgdir}") # cfgdir has leading slash
endif()
