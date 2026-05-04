# Contributing to zarpalope

Thanks for taking the time to contribute!

This repository is a (currently) lightweight / "fake project" repo. The guidelines below are intentionally simple and should work well for a CMake + C++ + Fortran codebase.

## Code of Conduct
By participating, you agree to follow a respectful, professional standard of conduct.
- Be kind and constructive.
- Assume good intent.
- No harassment or abusive behavior.

## How to contribute
You can contribute by:
- Reporting bugs
- Suggesting enhancements
- Improving documentation
- Submitting code changes (CMake / C++ / Fortran)

### 1) Reporting bugs
Please open an issue and include:
- What you expected to happen
- What actually happened
- Steps to reproduce
- Your OS, compiler, and build tool versions (e.g., GCC/Clang/Intel, CMake version)
- Any relevant logs, error messages, or stack traces

### 2) Suggesting enhancements
Open an issue describing:
- The problem you're trying to solve
- Your proposed solution
- Alternatives you considered (if any)
- Any potential compatibility/build impacts

### 3) Making code changes (Pull Requests)
1. Fork the repo
2. Create a branch from `main`:
   - `git checkout -b feature/<short-name>` or `fix/<short-name>`
3. Make your changes with clear, focused commits
4. Ensure the project builds and tests pass (see Build & Test below)
5. Open a Pull Request (PR) and fill in the PR template (or include the info listed below)

#### PR requirements
Your PR description should include:
- What changed and why
- How to test the change locally
- Any breaking changes or migration notes
- Links to relevant issues (e.g., `Closes #123`)

## Development setup

### Prerequisites
Typical requirements for this kind of project:
- CMake (recent version recommended)
- A C++ compiler (GCC / Clang / MSVC)
- A Fortran compiler (e.g., gfortran, ifort/ifx)
- (Optional) Ninja build system

### Configure & build (example)
Out-of-source builds are recommended.

```bash
cmake -S . -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build --config Release
```

If you prefer Ninja:
```bash
cmake -S . -B build -G Ninja -DCMAKE_BUILD_TYPE=Debug
cmake --build build
```

### Tests
If the project has tests configured, run them from the build directory:
```bash
ctest --test-dir build --output-on-failure
```

If there are currently no tests, consider adding at least one small test when fixing bugs.

## Coding guidelines

### General
- Keep changes small and focused.
- Prefer readability over cleverness.
- Avoid unnecessary dependencies.
- Keep CMake changes minimal and portable.

### C++ guidelines
- Use consistent formatting within the file you touch.
- Prefer modern C++ practices where appropriate (RAII, `const` correctness, standard library).
- Avoid introducing warnings; keep builds warning-clean when feasible.

### Fortran guidelines
- Keep style consistent with surrounding code.
- Prefer explicit `implicit none` in new/modified program units.
- Document interfaces and assumptions where useful.

### CMake guidelines
- Prefer target-based CMake (`target_link_libraries`, `target_include_directories`, etc.).
- Avoid global compile flags when possible; use target properties.
- Keep platform-specific logic clearly separated and commented.

## Documentation
Documentation improvements are welcome:
- Fix typos and clarify wording
- Add build/run examples
- Explain architecture or modules at a high level

## Commit message guidance
A simple, consistent format is encouraged:

- `fix: correct bounds check in parser`
- `feat: add new interpolation mode`
- `docs: clarify build steps`
- `build: adjust CMake options`

## Licensing
By contributing, you agree that your contributions will be licensed under the repository's license.

## Getting help
If you're unsure about an approach:
- Open an issue describing what you want to do
- Or open a draft PR early to discuss implementation details
