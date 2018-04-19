cmake_minimum_required(VERSION 3.10)
project(test_mpi)

set(CMAKE_C_STANDARD 99)

find_package(OpenCL 1.2 REQUIRED)
include_directories(${OpenCL_INCLUDE_DIRS})
link_directories(${OpenCL_LIBRARY})


file(GLOB opencl C_common/*.h C_common/*.c)
file(GLOB srcs *.h *.c)


add_library(sph_libs STATIC ${opencl})
add_executable(test_mpi  ${srcs} )
target_link_libraries(test_mpi sph_libs OpenCL m hwloc mpi)