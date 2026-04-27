#include <iostream>
#include "hello/hello.hpp"

int main()
{
    std::cout << hello::greet("World") << "\n";
    return 0;
}
