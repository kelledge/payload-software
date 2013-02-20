# Include common configuration
include ../common.mk

# Target file name (without extension).
TARGET = system


# Object files directory
#     To put object files in current directory, use a dot (.), do NOT make
#     this an empty or blank macro!
OBJDIR = ./object


# List C source files here. (C dependencies are automatically generated.)
SRC = usart_driver.c
SRC += clksys_driver.c
SRC += spi_driver.c

#============================================================================


# Add includes and defs to CFLAGS
CFLAGS += $(patsubst %,-I%,$(EXTRAINCDIRS))
CFLAGS += $(CDEFS)

# Combine all necessary flags and optional flags.
# Add target processor to flags.
ALL_CFLAGS = -mmcu=$(MCU) -I. $(CFLAGS) $(GENDEPFLAGS)
ALL_CPPFLAGS = -mmcu=$(MCU) -I. -x c++ $(CPPFLAGS) $(GENDEPFLAGS)
ALL_ASFLAGS = -mmcu=$(MCU) -I. -x assembler-with-cpp $(ASFLAGS)

# Define all object files.
OBJ = $(SRC:%.c=$(OBJDIR)/%.o) 

# Define all listing files.
LST = $(SRC:%.c=$(OBJDIR)/%.lst) 

# Compiler flags to generate dependency files.
GENDEPFLAGS = -MMD -MP -MF .dep/$(@F).d

# Default target.
all: begin build end
	

# Change the build target to build a HEX file or a library.
#build: elf hex eep lss sym
build: lib

LIBNAME=lib$(TARGET).a
lib: $(LIBNAME)




# Create library from object files.
.SECONDARY : $(LIBNAME)
.PRECIOUS : $(OBJ)
$(LIBNAME): $(OBJ)
	@echo
	@echo $(MSG_CREATING_LIBRARY) $@
	$(AR) $@ $(OBJ)


# Compile: create object files from C source files.
$(OBJDIR)/%.o : %.c
	@echo
	@echo $(MSG_COMPILING) $<
	$(CC) -c $(ALL_CFLAGS) $< -o $@ 


# Target: clean project.
clean: begin clean_list end

clean_list :
	@echo
	@echo $(MSG_CLEANING)
	$(REMOVE) $(LIBNAME)
	$(REMOVE) $(SRC:%.c=$(OBJDIR)/%.o)
	$(REMOVEDIR) .dep


# Create object files directory
$(shell mkdir $(OBJDIR) 2>/dev/null)


# Include the dependency files.
-include $(shell mkdir .dep 2>/dev/null) $(wildcard .dep/*)


# Listing of phony targets.
.PHONY : all begin finish end sizebefore sizeafter gccversion \
build driver elf hex eep lss sym coff extcoff \
clean clean_list program debug gdb-config
