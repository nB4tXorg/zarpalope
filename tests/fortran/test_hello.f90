! test_hello.f90 - Tests for the Fortran hello_mod module
program test_hello
    use hello_mod, only: greet_str
    implicit none

    character(len=64) :: result
    integer :: failures

    failures = 0

    ! Test basic greeting
    result = greet_str("World")
    if (trim(result) /= "Hello, World!") then
        write(*, '("FAIL: greet_str(World) expected ''Hello, World!'' got ''", A, "''")') trim(result)
        failures = failures + 1
    end if

    ! Test with a different name
    result = greet_str("CMake")
    if (trim(result) /= "Hello, CMake!") then
        write(*, '("FAIL: greet_str(CMake) expected ''Hello, CMake!'' got ''", A, "''")') trim(result)
        failures = failures + 1
    end if

    if (failures == 0) then
        write(*, '("All Fortran hello tests passed.")')
    end if

    if (failures > 0) stop 1

end program test_hello
