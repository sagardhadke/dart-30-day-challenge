//* Question 14: Factorial Function
//* Create a function factorial() that takes a number and returns its factorial using a loop. Test with numbers 5, 7, 10.

int factorial(int number) {
  int result = 1;
  for (int i = 1; i <= number; i++) {
    result *= i;
  }
  return result;
}

void main() {
  print(factorial(5));
  print(factorial(7));
  print(factorial(10));
}
