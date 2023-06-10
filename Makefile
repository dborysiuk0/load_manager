# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /snap/cmake/1299/bin/cmake

# The command to remove a file.
RM = /snap/cmake/1299/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/user/Projects/Kernel/load_manager

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/user/Projects/Kernel/load_manager

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target test
test:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running tests..."
	/snap/cmake/1299/bin/ctest --force-new-ctest-process $(ARGS)
.PHONY : test

# Special rule for the target test
test/fast: test
.PHONY : test/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/snap/cmake/1299/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/snap/cmake/1299/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/user/Projects/Kernel/load_manager/CMakeFiles /home/user/Projects/Kernel/load_manager//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/user/Projects/Kernel/load_manager/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named load_manager

# Build rule for target.
load_manager: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 load_manager
.PHONY : load_manager

# fast build rule for target.
load_manager/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/load_manager.dir/build.make CMakeFiles/load_manager.dir/build
.PHONY : load_manager/fast

#=============================================================================
# Target rules for targets named test_insmod

# Build rule for target.
test_insmod: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 test_insmod
.PHONY : test_insmod

# fast build rule for target.
test_insmod/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/test_insmod.dir/build.make CMakeFiles/test_insmod.dir/build
.PHONY : test_insmod/fast

#=============================================================================
# Target rules for targets named target_tests

# Build rule for target.
target_tests: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 target_tests
.PHONY : target_tests

# fast build rule for target.
target_tests/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/target_tests.dir/build.make CMakeFiles/target_tests.dir/build
.PHONY : target_tests/fast

source/custom_popen.o: source/custom_popen.c.o
.PHONY : source/custom_popen.o

# target to build an object file
source/custom_popen.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/load_manager.dir/build.make CMakeFiles/load_manager.dir/source/custom_popen.c.o
.PHONY : source/custom_popen.c.o

source/custom_popen.i: source/custom_popen.c.i
.PHONY : source/custom_popen.i

# target to preprocess a source file
source/custom_popen.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/load_manager.dir/build.make CMakeFiles/load_manager.dir/source/custom_popen.c.i
.PHONY : source/custom_popen.c.i

source/custom_popen.s: source/custom_popen.c.s
.PHONY : source/custom_popen.s

# target to generate assembly for a file
source/custom_popen.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/load_manager.dir/build.make CMakeFiles/load_manager.dir/source/custom_popen.c.s
.PHONY : source/custom_popen.c.s

source/insmod.o: source/insmod.c.o
.PHONY : source/insmod.o

# target to build an object file
source/insmod.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/load_manager.dir/build.make CMakeFiles/load_manager.dir/source/insmod.c.o
.PHONY : source/insmod.c.o

source/insmod.i: source/insmod.c.i
.PHONY : source/insmod.i

# target to preprocess a source file
source/insmod.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/load_manager.dir/build.make CMakeFiles/load_manager.dir/source/insmod.c.i
.PHONY : source/insmod.c.i

source/insmod.s: source/insmod.c.s
.PHONY : source/insmod.s

# target to generate assembly for a file
source/insmod.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/load_manager.dir/build.make CMakeFiles/load_manager.dir/source/insmod.c.s
.PHONY : source/insmod.c.s

source/is_module_loaded.o: source/is_module_loaded.c.o
.PHONY : source/is_module_loaded.o

# target to build an object file
source/is_module_loaded.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/load_manager.dir/build.make CMakeFiles/load_manager.dir/source/is_module_loaded.c.o
.PHONY : source/is_module_loaded.c.o

source/is_module_loaded.i: source/is_module_loaded.c.i
.PHONY : source/is_module_loaded.i

# target to preprocess a source file
source/is_module_loaded.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/load_manager.dir/build.make CMakeFiles/load_manager.dir/source/is_module_loaded.c.i
.PHONY : source/is_module_loaded.c.i

source/is_module_loaded.s: source/is_module_loaded.c.s
.PHONY : source/is_module_loaded.s

# target to generate assembly for a file
source/is_module_loaded.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/load_manager.dir/build.make CMakeFiles/load_manager.dir/source/is_module_loaded.c.s
.PHONY : source/is_module_loaded.c.s

source/rmmod.o: source/rmmod.c.o
.PHONY : source/rmmod.o

# target to build an object file
source/rmmod.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/load_manager.dir/build.make CMakeFiles/load_manager.dir/source/rmmod.c.o
.PHONY : source/rmmod.c.o

source/rmmod.i: source/rmmod.c.i
.PHONY : source/rmmod.i

# target to preprocess a source file
source/rmmod.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/load_manager.dir/build.make CMakeFiles/load_manager.dir/source/rmmod.c.i
.PHONY : source/rmmod.c.i

source/rmmod.s: source/rmmod.c.s
.PHONY : source/rmmod.s

# target to generate assembly for a file
source/rmmod.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/load_manager.dir/build.make CMakeFiles/load_manager.dir/source/rmmod.c.s
.PHONY : source/rmmod.c.s

tests/check_test.o: tests/check_test.c.o
.PHONY : tests/check_test.o

# target to build an object file
tests/check_test.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/target_tests.dir/build.make CMakeFiles/target_tests.dir/tests/check_test.c.o
.PHONY : tests/check_test.c.o

tests/check_test.i: tests/check_test.c.i
.PHONY : tests/check_test.i

# target to preprocess a source file
tests/check_test.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/target_tests.dir/build.make CMakeFiles/target_tests.dir/tests/check_test.c.i
.PHONY : tests/check_test.c.i

tests/check_test.s: tests/check_test.c.s
.PHONY : tests/check_test.s

# target to generate assembly for a file
tests/check_test.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/target_tests.dir/build.make CMakeFiles/target_tests.dir/tests/check_test.c.s
.PHONY : tests/check_test.c.s

tests/test_is_loaded.o: tests/test_is_loaded.c.o
.PHONY : tests/test_is_loaded.o

# target to build an object file
tests/test_is_loaded.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/test_insmod.dir/build.make CMakeFiles/test_insmod.dir/tests/test_is_loaded.c.o
.PHONY : tests/test_is_loaded.c.o

tests/test_is_loaded.i: tests/test_is_loaded.c.i
.PHONY : tests/test_is_loaded.i

# target to preprocess a source file
tests/test_is_loaded.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/test_insmod.dir/build.make CMakeFiles/test_insmod.dir/tests/test_is_loaded.c.i
.PHONY : tests/test_is_loaded.c.i

tests/test_is_loaded.s: tests/test_is_loaded.c.s
.PHONY : tests/test_is_loaded.s

# target to generate assembly for a file
tests/test_is_loaded.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/test_insmod.dir/build.make CMakeFiles/test_insmod.dir/tests/test_is_loaded.c.s
.PHONY : tests/test_is_loaded.c.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... test"
	@echo "... load_manager"
	@echo "... target_tests"
	@echo "... test_insmod"
	@echo "... source/custom_popen.o"
	@echo "... source/custom_popen.i"
	@echo "... source/custom_popen.s"
	@echo "... source/insmod.o"
	@echo "... source/insmod.i"
	@echo "... source/insmod.s"
	@echo "... source/is_module_loaded.o"
	@echo "... source/is_module_loaded.i"
	@echo "... source/is_module_loaded.s"
	@echo "... source/rmmod.o"
	@echo "... source/rmmod.i"
	@echo "... source/rmmod.s"
	@echo "... tests/check_test.o"
	@echo "... tests/check_test.i"
	@echo "... tests/check_test.s"
	@echo "... tests/test_is_loaded.o"
	@echo "... tests/test_is_loaded.i"
	@echo "... tests/test_is_loaded.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

