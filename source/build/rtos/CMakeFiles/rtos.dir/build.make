# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canoncical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kelledge/Repositories/payload-software/source

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kelledge/Repositories/payload-software/source/build

# Include any dependencies generated for this target.
include rtos/CMakeFiles/rtos.dir/depend.make

# Include the progress variables for this target.
include rtos/CMakeFiles/rtos.dir/progress.make

# Include the compile flags for this target's objects.
include rtos/CMakeFiles/rtos.dir/flags.make

rtos/CMakeFiles/rtos.dir/list.c.obj: rtos/CMakeFiles/rtos.dir/flags.make
rtos/CMakeFiles/rtos.dir/list.c.obj: ../rtos/list.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/kelledge/Repositories/payload-software/source/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object rtos/CMakeFiles/rtos.dir/list.c.obj"
	cd /home/kelledge/Repositories/payload-software/source/build/rtos && /usr/bin/avr-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/rtos.dir/list.c.obj   -c /home/kelledge/Repositories/payload-software/source/rtos/list.c

rtos/CMakeFiles/rtos.dir/list.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rtos.dir/list.c.i"
	cd /home/kelledge/Repositories/payload-software/source/build/rtos && /usr/bin/avr-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/kelledge/Repositories/payload-software/source/rtos/list.c > CMakeFiles/rtos.dir/list.c.i

rtos/CMakeFiles/rtos.dir/list.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rtos.dir/list.c.s"
	cd /home/kelledge/Repositories/payload-software/source/build/rtos && /usr/bin/avr-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/kelledge/Repositories/payload-software/source/rtos/list.c -o CMakeFiles/rtos.dir/list.c.s

rtos/CMakeFiles/rtos.dir/list.c.obj.requires:
.PHONY : rtos/CMakeFiles/rtos.dir/list.c.obj.requires

rtos/CMakeFiles/rtos.dir/list.c.obj.provides: rtos/CMakeFiles/rtos.dir/list.c.obj.requires
	$(MAKE) -f rtos/CMakeFiles/rtos.dir/build.make rtos/CMakeFiles/rtos.dir/list.c.obj.provides.build
.PHONY : rtos/CMakeFiles/rtos.dir/list.c.obj.provides

rtos/CMakeFiles/rtos.dir/list.c.obj.provides.build: rtos/CMakeFiles/rtos.dir/list.c.obj
.PHONY : rtos/CMakeFiles/rtos.dir/list.c.obj.provides.build

rtos/CMakeFiles/rtos.dir/queue.c.obj: rtos/CMakeFiles/rtos.dir/flags.make
rtos/CMakeFiles/rtos.dir/queue.c.obj: ../rtos/queue.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/kelledge/Repositories/payload-software/source/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object rtos/CMakeFiles/rtos.dir/queue.c.obj"
	cd /home/kelledge/Repositories/payload-software/source/build/rtos && /usr/bin/avr-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/rtos.dir/queue.c.obj   -c /home/kelledge/Repositories/payload-software/source/rtos/queue.c

rtos/CMakeFiles/rtos.dir/queue.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rtos.dir/queue.c.i"
	cd /home/kelledge/Repositories/payload-software/source/build/rtos && /usr/bin/avr-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/kelledge/Repositories/payload-software/source/rtos/queue.c > CMakeFiles/rtos.dir/queue.c.i

rtos/CMakeFiles/rtos.dir/queue.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rtos.dir/queue.c.s"
	cd /home/kelledge/Repositories/payload-software/source/build/rtos && /usr/bin/avr-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/kelledge/Repositories/payload-software/source/rtos/queue.c -o CMakeFiles/rtos.dir/queue.c.s

rtos/CMakeFiles/rtos.dir/queue.c.obj.requires:
.PHONY : rtos/CMakeFiles/rtos.dir/queue.c.obj.requires

rtos/CMakeFiles/rtos.dir/queue.c.obj.provides: rtos/CMakeFiles/rtos.dir/queue.c.obj.requires
	$(MAKE) -f rtos/CMakeFiles/rtos.dir/build.make rtos/CMakeFiles/rtos.dir/queue.c.obj.provides.build
.PHONY : rtos/CMakeFiles/rtos.dir/queue.c.obj.provides

rtos/CMakeFiles/rtos.dir/queue.c.obj.provides.build: rtos/CMakeFiles/rtos.dir/queue.c.obj
.PHONY : rtos/CMakeFiles/rtos.dir/queue.c.obj.provides.build

rtos/CMakeFiles/rtos.dir/tasks.c.obj: rtos/CMakeFiles/rtos.dir/flags.make
rtos/CMakeFiles/rtos.dir/tasks.c.obj: ../rtos/tasks.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/kelledge/Repositories/payload-software/source/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object rtos/CMakeFiles/rtos.dir/tasks.c.obj"
	cd /home/kelledge/Repositories/payload-software/source/build/rtos && /usr/bin/avr-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/rtos.dir/tasks.c.obj   -c /home/kelledge/Repositories/payload-software/source/rtos/tasks.c

rtos/CMakeFiles/rtos.dir/tasks.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rtos.dir/tasks.c.i"
	cd /home/kelledge/Repositories/payload-software/source/build/rtos && /usr/bin/avr-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/kelledge/Repositories/payload-software/source/rtos/tasks.c > CMakeFiles/rtos.dir/tasks.c.i

rtos/CMakeFiles/rtos.dir/tasks.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rtos.dir/tasks.c.s"
	cd /home/kelledge/Repositories/payload-software/source/build/rtos && /usr/bin/avr-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/kelledge/Repositories/payload-software/source/rtos/tasks.c -o CMakeFiles/rtos.dir/tasks.c.s

rtos/CMakeFiles/rtos.dir/tasks.c.obj.requires:
.PHONY : rtos/CMakeFiles/rtos.dir/tasks.c.obj.requires

rtos/CMakeFiles/rtos.dir/tasks.c.obj.provides: rtos/CMakeFiles/rtos.dir/tasks.c.obj.requires
	$(MAKE) -f rtos/CMakeFiles/rtos.dir/build.make rtos/CMakeFiles/rtos.dir/tasks.c.obj.provides.build
.PHONY : rtos/CMakeFiles/rtos.dir/tasks.c.obj.provides

rtos/CMakeFiles/rtos.dir/tasks.c.obj.provides.build: rtos/CMakeFiles/rtos.dir/tasks.c.obj
.PHONY : rtos/CMakeFiles/rtos.dir/tasks.c.obj.provides.build

rtos/CMakeFiles/rtos.dir/portable/MemMang/heap_3.c.obj: rtos/CMakeFiles/rtos.dir/flags.make
rtos/CMakeFiles/rtos.dir/portable/MemMang/heap_3.c.obj: ../rtos/portable/MemMang/heap_3.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/kelledge/Repositories/payload-software/source/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object rtos/CMakeFiles/rtos.dir/portable/MemMang/heap_3.c.obj"
	cd /home/kelledge/Repositories/payload-software/source/build/rtos && /usr/bin/avr-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/rtos.dir/portable/MemMang/heap_3.c.obj   -c /home/kelledge/Repositories/payload-software/source/rtos/portable/MemMang/heap_3.c

rtos/CMakeFiles/rtos.dir/portable/MemMang/heap_3.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rtos.dir/portable/MemMang/heap_3.c.i"
	cd /home/kelledge/Repositories/payload-software/source/build/rtos && /usr/bin/avr-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/kelledge/Repositories/payload-software/source/rtos/portable/MemMang/heap_3.c > CMakeFiles/rtos.dir/portable/MemMang/heap_3.c.i

rtos/CMakeFiles/rtos.dir/portable/MemMang/heap_3.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rtos.dir/portable/MemMang/heap_3.c.s"
	cd /home/kelledge/Repositories/payload-software/source/build/rtos && /usr/bin/avr-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/kelledge/Repositories/payload-software/source/rtos/portable/MemMang/heap_3.c -o CMakeFiles/rtos.dir/portable/MemMang/heap_3.c.s

rtos/CMakeFiles/rtos.dir/portable/MemMang/heap_3.c.obj.requires:
.PHONY : rtos/CMakeFiles/rtos.dir/portable/MemMang/heap_3.c.obj.requires

rtos/CMakeFiles/rtos.dir/portable/MemMang/heap_3.c.obj.provides: rtos/CMakeFiles/rtos.dir/portable/MemMang/heap_3.c.obj.requires
	$(MAKE) -f rtos/CMakeFiles/rtos.dir/build.make rtos/CMakeFiles/rtos.dir/portable/MemMang/heap_3.c.obj.provides.build
.PHONY : rtos/CMakeFiles/rtos.dir/portable/MemMang/heap_3.c.obj.provides

rtos/CMakeFiles/rtos.dir/portable/MemMang/heap_3.c.obj.provides.build: rtos/CMakeFiles/rtos.dir/portable/MemMang/heap_3.c.obj
.PHONY : rtos/CMakeFiles/rtos.dir/portable/MemMang/heap_3.c.obj.provides.build

rtos/CMakeFiles/rtos.dir/portable/GCC/ATXmega128A3/port.c.obj: rtos/CMakeFiles/rtos.dir/flags.make
rtos/CMakeFiles/rtos.dir/portable/GCC/ATXmega128A3/port.c.obj: ../rtos/portable/GCC/ATXmega128A3/port.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/kelledge/Repositories/payload-software/source/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object rtos/CMakeFiles/rtos.dir/portable/GCC/ATXmega128A3/port.c.obj"
	cd /home/kelledge/Repositories/payload-software/source/build/rtos && /usr/bin/avr-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/rtos.dir/portable/GCC/ATXmega128A3/port.c.obj   -c /home/kelledge/Repositories/payload-software/source/rtos/portable/GCC/ATXmega128A3/port.c

rtos/CMakeFiles/rtos.dir/portable/GCC/ATXmega128A3/port.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rtos.dir/portable/GCC/ATXmega128A3/port.c.i"
	cd /home/kelledge/Repositories/payload-software/source/build/rtos && /usr/bin/avr-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/kelledge/Repositories/payload-software/source/rtos/portable/GCC/ATXmega128A3/port.c > CMakeFiles/rtos.dir/portable/GCC/ATXmega128A3/port.c.i

rtos/CMakeFiles/rtos.dir/portable/GCC/ATXmega128A3/port.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rtos.dir/portable/GCC/ATXmega128A3/port.c.s"
	cd /home/kelledge/Repositories/payload-software/source/build/rtos && /usr/bin/avr-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/kelledge/Repositories/payload-software/source/rtos/portable/GCC/ATXmega128A3/port.c -o CMakeFiles/rtos.dir/portable/GCC/ATXmega128A3/port.c.s

rtos/CMakeFiles/rtos.dir/portable/GCC/ATXmega128A3/port.c.obj.requires:
.PHONY : rtos/CMakeFiles/rtos.dir/portable/GCC/ATXmega128A3/port.c.obj.requires

rtos/CMakeFiles/rtos.dir/portable/GCC/ATXmega128A3/port.c.obj.provides: rtos/CMakeFiles/rtos.dir/portable/GCC/ATXmega128A3/port.c.obj.requires
	$(MAKE) -f rtos/CMakeFiles/rtos.dir/build.make rtos/CMakeFiles/rtos.dir/portable/GCC/ATXmega128A3/port.c.obj.provides.build
.PHONY : rtos/CMakeFiles/rtos.dir/portable/GCC/ATXmega128A3/port.c.obj.provides

rtos/CMakeFiles/rtos.dir/portable/GCC/ATXmega128A3/port.c.obj.provides.build: rtos/CMakeFiles/rtos.dir/portable/GCC/ATXmega128A3/port.c.obj
.PHONY : rtos/CMakeFiles/rtos.dir/portable/GCC/ATXmega128A3/port.c.obj.provides.build

# Object files for target rtos
rtos_OBJECTS = \
"CMakeFiles/rtos.dir/list.c.obj" \
"CMakeFiles/rtos.dir/queue.c.obj" \
"CMakeFiles/rtos.dir/tasks.c.obj" \
"CMakeFiles/rtos.dir/portable/MemMang/heap_3.c.obj" \
"CMakeFiles/rtos.dir/portable/GCC/ATXmega128A3/port.c.obj"

# External object files for target rtos
rtos_EXTERNAL_OBJECTS =

lib/librtos.a: rtos/CMakeFiles/rtos.dir/list.c.obj
lib/librtos.a: rtos/CMakeFiles/rtos.dir/queue.c.obj
lib/librtos.a: rtos/CMakeFiles/rtos.dir/tasks.c.obj
lib/librtos.a: rtos/CMakeFiles/rtos.dir/portable/MemMang/heap_3.c.obj
lib/librtos.a: rtos/CMakeFiles/rtos.dir/portable/GCC/ATXmega128A3/port.c.obj
lib/librtos.a: rtos/CMakeFiles/rtos.dir/build.make
lib/librtos.a: rtos/CMakeFiles/rtos.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C static library ../lib/librtos.a"
	cd /home/kelledge/Repositories/payload-software/source/build/rtos && $(CMAKE_COMMAND) -P CMakeFiles/rtos.dir/cmake_clean_target.cmake
	cd /home/kelledge/Repositories/payload-software/source/build/rtos && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rtos.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
rtos/CMakeFiles/rtos.dir/build: lib/librtos.a
.PHONY : rtos/CMakeFiles/rtos.dir/build

rtos/CMakeFiles/rtos.dir/requires: rtos/CMakeFiles/rtos.dir/list.c.obj.requires
rtos/CMakeFiles/rtos.dir/requires: rtos/CMakeFiles/rtos.dir/queue.c.obj.requires
rtos/CMakeFiles/rtos.dir/requires: rtos/CMakeFiles/rtos.dir/tasks.c.obj.requires
rtos/CMakeFiles/rtos.dir/requires: rtos/CMakeFiles/rtos.dir/portable/MemMang/heap_3.c.obj.requires
rtos/CMakeFiles/rtos.dir/requires: rtos/CMakeFiles/rtos.dir/portable/GCC/ATXmega128A3/port.c.obj.requires
.PHONY : rtos/CMakeFiles/rtos.dir/requires

rtos/CMakeFiles/rtos.dir/clean:
	cd /home/kelledge/Repositories/payload-software/source/build/rtos && $(CMAKE_COMMAND) -P CMakeFiles/rtos.dir/cmake_clean.cmake
.PHONY : rtos/CMakeFiles/rtos.dir/clean

rtos/CMakeFiles/rtos.dir/depend:
	cd /home/kelledge/Repositories/payload-software/source/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kelledge/Repositories/payload-software/source /home/kelledge/Repositories/payload-software/source/rtos /home/kelledge/Repositories/payload-software/source/build /home/kelledge/Repositories/payload-software/source/build/rtos /home/kelledge/Repositories/payload-software/source/build/rtos/CMakeFiles/rtos.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : rtos/CMakeFiles/rtos.dir/depend

