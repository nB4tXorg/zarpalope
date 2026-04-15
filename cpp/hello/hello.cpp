#include "hello.hpp"

namespace hello {

std::string greet(const std::string& name)
{
    return "Hello, " + name + "!";
}

} // namespace hello
