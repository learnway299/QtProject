cmake_minimum_required(VERSION 3.16)
project(GlassWindow LANGUAGES CXX OBJCXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_OBJCXX_STANDARD 17)
set(CMAKE_OBJCXX_ARCHITECTURES "x86_64;arm64")

find_package(Qt5 COMPONENTS Core Gui Widgets REQUIRED)

set(CMAKE_AUTOMOC ON)

add_executable(GlassWindow
        main.cpp
        GlassWindow.h
        GlassWindow.mm
)

qt5_wrap_cpp(MOC_SRCS GlassWindow.h)
target_sources(GlassWindow PRIVATE ${MOC_SRCS})

target_link_libraries(GlassWindow PRIVATE
        Qt5::Core
        Qt5::Gui
        Qt5::Widgets
        "-framework Cocoa"
)

target_compile_options(GlassWindow PRIVATE
        -fobjc-arc
        -ObjC++
)

set_target_properties(GlassWindow PROPERTIES
        MACOSX_BUNDLE TRUE
)

set_source_files_properties(GlassWindow.mm PROPERTIES LANGUAGE OBJCXX)