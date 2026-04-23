cmake_minimum_required(VERSION 3.5.2...3.31.4)
project(Qt4)

set(gen)
include(../common.cmake)

if(NOT CMAKE_CROSSCOMPILING)
    add_subdirectory(../tools tools)
endif()

add_subdirectory(../qt qt)

include(examples.cmake)
include(demos.cmake)
include(designer.cmake)
