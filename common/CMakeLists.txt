cmake_minimum_required(VERSION 2.6)
project(common)
add_compile_options(-std=c++11)

find_package(Boost 1.54.0
             COMPONENTS thread
                        system
                        filesystem
                        timer
                        chrono
                        serialization
                        log
                        log_setup
                        program_options
             REQUIRED)
message("" ${Boost_LIBRARIES})
include_directories(
  src
  ${Boost_INCLUDE_DIRS}
)

set (common_source
     src/boost.cpp
     src/random.cpp
     )
list(APPEND common_libraries
     ${Boost_LIBRARIES}
     )
     
message(${PROJECT_SOURCE_DIR}) 

add_library(common_lib ${common_source})
target_link_libraries(common_lib ${common_libraries})

add_executable(common main.cpp)
target_link_libraries(common ${common_lib} ${Boost_LIBRARIES})

install(TARGETS common RUNTIME DESTINATION bin)
