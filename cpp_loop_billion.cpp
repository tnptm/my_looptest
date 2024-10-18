#include <iostream>

int main() { 
  size_t counter = 0;
  while (counter < 1000000000)
    counter++;
  std::cout << counter << std::endl;
}

