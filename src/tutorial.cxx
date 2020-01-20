// A simple program that computes the square root of a number
// Addapted from https://cmake.org/cmake/help/latest/guide/tutorial/index.html
#include <cmath>
#include <iostream>

int main(int argc, char* argv[])
{
  if (argc < 2) {
    std::cout << "Usage: " << argv[0] << " number" << std::endl;
    return 1;
  }

  // convert input to double
  const double inputValue = atof(argv[1]);

  // calculate square root
  const double outputValue = sqrt(inputValue);
  std::cout << "root of " << inputValue << " is " << outputValue << std::endl;
  return 0;
}
