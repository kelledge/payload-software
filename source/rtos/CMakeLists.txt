cmake_minimum_required(VERSION 2.6)

Project(librtos)

set(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR}/lib )

set ( SOURCES 
  list.c
  queue.c
  tasks.c
  portable/MemMang/heap_3.c
  portable/GCC/ATXmega128A3/port.c
)

add_definitions( -DGCC_XMEGA_AVR )

add_library( rtos STATIC ${SOURCES} )
