# zarpalope

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

## CI branch update (for Bamboo / internal CI)

The repository ships a helper workflow (`.github/workflows/ci-update.yml`) that
lets authorised contributors mirror a PR's head commit into a stable branch so
that downstream CI systems that cannot observe fork PRs (e.g. Bamboo) can still
pick it up.

**How to use it**

1. Open (or review) a pull request.
2. Post a comment containing exactly:

   ```
   /ci update
   ```

3. The workflow will create or force-update the branch
   `ci/pr-<PR-number>` in *this* repository to the PR's current head SHA.
4. Your internal CI (Bamboo, etc.) watches that branch and starts a build.

> **Who can trigger it?**  Only GitHub usernames listed in the `ALLOWLIST`
> inside the workflow file.  Edit `.github/workflows/ci-update.yml` to add or
> remove team members.

