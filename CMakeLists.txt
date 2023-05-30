cmake_minimum_required(VERSION 3.25)
project(spdlog_broken_recipe)

set(CMAKE_CXX_STANDARD 17)

include(${CMAKE_BINARY_DIR}/conan_paths.cmake)

find_package(spdlog REQUIRED)

add_library(spdlog_broken_recipe library.cpp)

target_link_libraries(spdlog_broken_recipe PRIVATE ${spdlog_LIBS})
target_include_directories(spdlog_broken_recipe PUBLIC ${spdlog_INCLUDE_DIR})
