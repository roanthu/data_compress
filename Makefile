# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/thurv/dev/data_compress

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/thurv/dev/data_compress

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/local/bin/cmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/local/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/thurv/dev/data_compress/CMakeFiles /home/thurv/dev/data_compress/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/thurv/dev/data_compress/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named data_compress

# Build rule for target.
data_compress: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 data_compress
.PHONY : data_compress

# fast build rule for target.
data_compress/fast:
	$(MAKE) -f CMakeFiles/data_compress.dir/build.make CMakeFiles/data_compress.dir/build
.PHONY : data_compress/fast

#=============================================================================
# Target rules for targets named zstd_test

# Build rule for target.
zstd_test: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 zstd_test
.PHONY : zstd_test

# fast build rule for target.
zstd_test/fast:
	$(MAKE) -f CMakeFiles/zstd_test.dir/build.make CMakeFiles/zstd_test.dir/build
.PHONY : zstd_test/fast

main.o: main.cpp.o

.PHONY : main.o

# target to build an object file
main.cpp.o:
	$(MAKE) -f CMakeFiles/data_compress.dir/build.make CMakeFiles/data_compress.dir/main.cpp.o
.PHONY : main.cpp.o

main.i: main.cpp.i

.PHONY : main.i

# target to preprocess a source file
main.cpp.i:
	$(MAKE) -f CMakeFiles/data_compress.dir/build.make CMakeFiles/data_compress.dir/main.cpp.i
.PHONY : main.cpp.i

main.s: main.cpp.s

.PHONY : main.s

# target to generate assembly for a file
main.cpp.s:
	$(MAKE) -f CMakeFiles/data_compress.dir/build.make CMakeFiles/data_compress.dir/main.cpp.s
.PHONY : main.cpp.s

zstd_test.o: zstd_test.cpp.o

.PHONY : zstd_test.o

# target to build an object file
zstd_test.cpp.o:
	$(MAKE) -f CMakeFiles/zstd_test.dir/build.make CMakeFiles/zstd_test.dir/zstd_test.cpp.o
.PHONY : zstd_test.cpp.o

zstd_test.i: zstd_test.cpp.i

.PHONY : zstd_test.i

# target to preprocess a source file
zstd_test.cpp.i:
	$(MAKE) -f CMakeFiles/zstd_test.dir/build.make CMakeFiles/zstd_test.dir/zstd_test.cpp.i
.PHONY : zstd_test.cpp.i

zstd_test.s: zstd_test.cpp.s

.PHONY : zstd_test.s

# target to generate assembly for a file
zstd_test.cpp.s:
	$(MAKE) -f CMakeFiles/zstd_test.dir/build.make CMakeFiles/zstd_test.dir/zstd_test.cpp.s
.PHONY : zstd_test.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... edit_cache"
	@echo "... data_compress"
	@echo "... zstd_test"
	@echo "... main.o"
	@echo "... main.i"
	@echo "... main.s"
	@echo "... zstd_test.o"
	@echo "... zstd_test.i"
	@echo "... zstd_test.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system
