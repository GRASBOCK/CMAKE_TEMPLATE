cmake_minimum_required(VERSION 3.10)
enable_language(CXX)
include(CheckCXXCompilerFlag)
check_cxx_compiler_flag(-std=c++11 HAVE_FLAG_STD_CXX17)

set(CMAKE_CXX_STANDARD_REQUIRED YES)

project(FooBar CXX)
add_subdirectory(Foo)
add_subdirectory(Bar)
add_subdirectory(shared)
add_subdirectory(other)

# uninstall target
if(NOT TARGET uninstall)
    configure_file(
        "${CMAKE_CURRENT_SOURCE_DIR}/cmake_uninstall.cmake.in"
        "${CMAKE_CURRENT_BINARY_DIR}/cmake_uninstall.cmake"
        IMMEDIATE @ONLY)
    add_custom_target(uninstall
        COMMAND ${CMAKE_COMMAND} -P ${CMAKE_CURRENT_BINARY_DIR}/cmake_uninstall.cmake)
endif()