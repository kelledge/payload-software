cmake_minimum_required(VERSION 2.6)

Project(payload-software)

add_custom_target( my_target
  echo "Hi from my_target"
)

include_directories(  
  ${CMAKE_SOURCE_DIR}/rtos
  ${CMAKE_SOURCE_DIR}
)

add_subdirectory(rtos)
add_subdirectory(system)
