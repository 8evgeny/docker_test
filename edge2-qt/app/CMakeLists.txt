cmake_minimum_required(VERSION 3.22)

project(edge2_demo LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTORCC ON)

find_package(Qt6 REQUIRED COMPONENTS Core Gui Widgets)

add_executable(edge2_demo
    main.cpp
)

target_link_libraries(edge2_demo PRIVATE
    Qt6::Core
    Qt6::Gui
    Qt6::Widgets
)
