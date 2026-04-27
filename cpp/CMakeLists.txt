# C++ hello library
add_library(hello_lib hello/hello.cpp)
target_include_directories(hello_lib PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

# C++ hello executable
add_executable(hello_cpp main.cpp)
target_link_libraries(hello_cpp PRIVATE hello_lib)
