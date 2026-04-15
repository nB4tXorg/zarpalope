cmake_minimum_required(VERSION 3.16)
project(ZOLPZ_ITER
    VERSION 0.1.0
    LANGUAGES CXX Fortran
)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

enable_testing()

add_subdirectory(cpp)
add_subdirectory(fortran)
add_subdirectory(tests)
