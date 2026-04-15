! hello_mod.f90 - Fortran module providing a greeting subroutine
module hello_mod
    implicit none

contains

    subroutine greet(name)
        character(len=*), intent(in) :: name
        write(*, '("Hello, ", A, "!")') trim(name)
    end subroutine greet

    function greet_str(name) result(msg)
        character(len=*), intent(in) :: name
        character(len=64) :: msg
        msg = "Hello, " // trim(name) // "!"
    end function greet_str

end module hello_mod
