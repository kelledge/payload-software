
#
# example Makefile for lib ceration
# this makefile creates "libdog.a"
#
#  (c) 2010 Oliver Kraus (olikraus@gmail.com)
#  
#  This file is part of the dogm128 library (http://code.google.com/p/dogm128/).
#
#  This Makefile is free software: you can redistribute it and/or modify
#  it under the terms of the Lesser GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#
#  This Makefile is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  Lesser GNU General Public License for more details.
#
#  You should have received a copy of the Lesser GNU General Public License
#  along with dogm128.  If not, see <http://www.gnu.org/licenses/>.
#


# target cpu
MCU:=atxmega32a4

# system speed
F_CPU:=32000000

# assume DOGM 132 Hardware (other possible keywords are DOGM128_HW and DOGS102_HW)
DOGDEFS = -DDOGM128_HW

# assume ATMEGA SPI interface on the target controller, default is Arduino Hardware
DOGDEFS += -DDOG_SPI_ATXMEGA

# Assign port and bit for the chip select line of the DOG controller
# this must be SS pin of the SPI interface. The chip select signal of
# the DOG controller must be connected to this SS pin
DOGDEFS += -DDOG_SPI_SS_PORT=B -DDOG_SPI_SS_PIN=2
# assign port and bit for the clock of the DOG controller (this must be the SCL output of the USI interface)
DOGDEFS += -DDOG_SPI_SCL_PORT=B -DDOG_SPI_SCL_PIN=5
# assign port and bit for the data line of the DOG controller (this must be the DO output of the USI interface)
DOGDEFS += -DDOG_SPI_MOSI_PORT=B -DDOG_SPI_MOSI_PIN=3
# Assign port and bit for the adress line of the DOG controller
# The address line can by any port bit
DOGDEFS += -DDOG_SPI_A0_PORT=B -DDOG_SPI_A0_PIN=1

LIBNAME:=libdog.a

AVRTOOLSPATH:=c:/WinAVR-20100110/bin/
CC = $(AVRTOOLSPATH)avr-gcc
AR  = @$(AVRTOOLSPATH)avr-ar

COMMON_FLAGS = -DF_CPU=$(F_CPU) -mmcu=$(MCU) $(DOGDEFS)
COMMON_FLAGS += -g -Os -Wall -funsigned-char -funsigned-bitfields -fpack-struct -fshort-enums
COMMON_FLAGS += -I.
COMMON_FLAGS += -I../..
CFLAGS = $(COMMON_FLAGS) -std=gnu99 -Wstrict-prototypes  

SRC = $(shell ls 2>/dev/null)
OBJ = $(SRC:.c=.o)

all: $(LIBNAME)($(OBJ))
	@ls -al $(LIBNAME)

clean: 
	rm -f *.o
	rm -f *.a