# ZOLPZ-ITER

A CMake boilerplate project demonstrating a mixed C++ and Fortran build.

## Structure

```
.
├── CMakeLists.txt          # Top-level CMake project
├── cpp/
│   ├── CMakeLists.txt
│   ├── hello/
│   │   ├── hello.hpp       # C++ hello library header
│   │   └── hello.cpp       # C++ hello library implementation
│   └── main.cpp            # C++ hello executable
├── fortran/
│   ├── CMakeLists.txt
│   ├── hello_mod.f90       # Fortran hello module
│   └── main.f90            # Fortran hello executable
└── tests/
    ├── CMakeLists.txt
    ├── cpp/
    │   └── test_hello.cpp  # C++ library tests
    └── fortran/
        └── test_hello.f90  # Fortran module tests
```

## Prerequisites

- CMake ≥ 3.16
- A C++17-capable compiler (e.g., GCC, Clang, MSVC)
- A Fortran compiler (e.g., gfortran)

## Build

```bash
cmake -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build
```

## Run

```bash
./build/cpp/hello_cpp        # prints: Hello, World!
./build/fortran/hello_fortran  # prints: Hello, World!
```

## Test

```bash
ctest --test-dir build --output-on-failure
```

