cmake_minimum_required(VERSION 2.6)
project(common)

add_executable(common main.cpp)

install(TARGETS common RUNTIME DESTINATION bin)
