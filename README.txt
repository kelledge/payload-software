This is currently a mess... the build system needs a massive overhaul, to make
managing this project, well, managable. This will involved shifting from make
to cmake. Anyways... the "core" of it (the RTOS kernel) does 
however currently compile and run on the ATxmega32a4 I have. The rest of it 
however, (SD driver, Xbee driver, ect) needs work. This is nothing major, and
is mostly a porting type of work. -Kevin-

The directory structure is as follows:

/datasheets 
-- All device and standards datasheets go in here, and should be as
   references to justify any "black magic" chunks of code.

/docs       
-- All doxygen generated docs will go in here. Check out 
   http://www.stack.nl/~dimitri/doxygen/ if you are unfamilier with
   document generation
               
/build      
-- Currently nothing --but will eventually be used for cmake, and
   out-of-source-tree builds (eg. compiled object files, list files,
   ...) http://www.cmake.org/
               
/source     
-- This is it. All project source should go here. It has its own 
   sub-directories described below.

/source/kernel
-- Contains the ATxmega port of the FreeRTOS kernel used to provide the core
   functionality to the project. Things like threads, queues, semaphores, ect.
          
/source/deps
-- Any library needed by the project should go here.

/source/system
-- This directory contains any drivers for the MCU periphials (eg. USART, SPI,
   clock, RTC, ...)
   
/source/driver
-- All of the external devices, directly connected to the mainboard need to be
   driven. That includes (but not limited to) the wireless radio, GPS, 
   and storage. Any code for that goes in here.
   

