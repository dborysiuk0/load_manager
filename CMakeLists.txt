cmake_minimum_required(VERSION 3.5)
project(load_manager VERSION 0.0.1)
enable_testing()

add_library(load_manager STATIC source/is_module_loaded.c source/insmod.c source/rmmod.c source/custom_popen.c)
add_executable(test_insmod tests/test_is_loaded.c)
target_link_libraries(test_insmod load_manager)

# add Check to CMake
list(APPEND CMAKE_PREFIX_PATH "/usr")
find_package(PkgConfig REQUIRED)
pkg_check_modules(CHECK REQUIRED check)
include_directories(${CHECK_INCLUDE_DIRS})

add_executable(target_tests tests/check_test.c)
target_link_libraries(target_tests ${CHECK_LIBRARIES} ${CMAKE_THREAD_LIBS_INIT} load_manager)
add_test(NAME target_tests COMMAND target_tests)
#