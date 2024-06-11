cmake_minimum_required(VERSION 3.19) # First to support Apple Silicon.
project(linuxtrack C CXX)

include(GenerateExportHeader)
include(${CMAKE_SOURCE_DIR}/cmake/helpers.cmake)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

# TODO: Compiler flags

if(WIN32)
    set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS ON)

    add_compile_definitions(
        _WIN32_WINNT=0x0601
    )
endif(WIN32)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF) # -std=c++xx instead of -std=gnu++xx

set(CMAKE_POSITION_INDEPENDENT_CODE ON)

# Platform agnostic installation trees.
include(GNUInstallDirs)

# This function is used to organize targets for Visual Studio and other IDEs.
set_property(GLOBAL PROPERTY USE_FOLDERS TRUE)
define_property(
    TARGET
    PROPERTY FOLDER
    INHERITED
    BRIEF_DOCS "Set the folder name."
    FULL_DOCS  "Use to organize targets in an IDE."
)

message("Building with CMake version: ${CMAKE_VERSION}")

add_subdirectory_with_folder("linuxtrack" src/linuxtrack)

