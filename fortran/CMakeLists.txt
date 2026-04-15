# Fortran hello module (compiled as a library so tests can link to it)
add_library(hello_mod hello_mod.f90)
set_target_properties(hello_mod PROPERTIES
    Fortran_MODULE_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/modules
)

# Fortran hello executable
add_executable(hello_fortran main.f90)
target_link_libraries(hello_fortran PRIVATE hello_mod)
target_include_directories(hello_fortran PRIVATE
    $<TARGET_PROPERTY:hello_mod,Fortran_MODULE_DIRECTORY>
)
