# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/duya25446/workspace/pico-sdk/tools/pioasm"
  "/home/duya25446/workspace/rp2040-project/build/pioasm"
  "/home/duya25446/workspace/rp2040-project/build/pico-sdk/src/rp2_common/pico_cyw43_driver/pioasm"
  "/home/duya25446/workspace/rp2040-project/build/pico-sdk/src/rp2_common/pico_cyw43_driver/pioasm/tmp"
  "/home/duya25446/workspace/rp2040-project/build/pico-sdk/src/rp2_common/pico_cyw43_driver/pioasm/src/PioasmBuild-stamp"
  "/home/duya25446/workspace/rp2040-project/build/pico-sdk/src/rp2_common/pico_cyw43_driver/pioasm/src"
  "/home/duya25446/workspace/rp2040-project/build/pico-sdk/src/rp2_common/pico_cyw43_driver/pioasm/src/PioasmBuild-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/duya25446/workspace/rp2040-project/build/pico-sdk/src/rp2_common/pico_cyw43_driver/pioasm/src/PioasmBuild-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/duya25446/workspace/rp2040-project/build/pico-sdk/src/rp2_common/pico_cyw43_driver/pioasm/src/PioasmBuild-stamp${cfgdir}") # cfgdir has leading slash
endif()
