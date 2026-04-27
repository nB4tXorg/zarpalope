# Tests for the C++ hello library
add_executable(test_cpp_hello cpp/test_hello.cpp)
target_link_libraries(test_cpp_hello PRIVATE hello_lib)
add_test(NAME CppHelloTest COMMAND test_cpp_hello)

# Tests for the Fortran hello module
add_executable(test_fortran_hello fortran/test_hello.f90)
target_link_libraries(test_fortran_hello PRIVATE hello_mod)
target_include_directories(test_fortran_hello PRIVATE
    $<TARGET_PROPERTY:hello_mod,Fortran_MODULE_DIRECTORY>
)
add_test(NAME FortranHelloTest COMMAND test_fortran_hello)
