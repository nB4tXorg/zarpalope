// test_hello.cpp - Unit tests for the C++ hello library
#include <cassert>
#include <iostream>
#include "hello/hello.hpp"

int main()
{
    // Test basic greeting
    std::string result = hello::greet("World");
    assert(result == "Hello, World!" && "greet(\"World\") should return \"Hello, World!\"");

    // Test with a different name
    std::string result2 = hello::greet("CMake");
    assert(result2 == "Hello, CMake!" && "greet(\"CMake\") should return \"Hello, CMake!\"");

    // Test with an empty string
    std::string result3 = hello::greet("");
    assert(result3 == "Hello, !" && "greet(\"\") should return \"Hello, !\"");

    std::cout << "All C++ hello tests passed.\n";
    return 0;
}
