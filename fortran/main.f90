! main.f90 - Fortran program that uses hello_mod
program main
    use hello_mod, only: greet
    implicit none

    call greet("World")

end program main
