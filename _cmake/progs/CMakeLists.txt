cmake_minimum_required(VERSION 3.5.2...3.31.4)
project(Qt4)

set(gen)
include(../common.cmake)

if(NOT CMAKE_CROSSCOMPILING)
    add_subdirectory(../tools tools)
endif()

add_subdirectory(../qt qt)

set(gen)
include(demos.cmake)

set(gen)
include(designer.cmake)
