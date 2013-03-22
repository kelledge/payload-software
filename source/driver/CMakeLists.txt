cmake_minimum_required(VERSION 2.6)

Project(libsystem)

set(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR}/lib )

set ( SOURCES 
  clksys_driver.c
  spi_driver.c
  usart_driver.c
)

add_library( system STATIC ${SOURCES} )
