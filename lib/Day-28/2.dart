//* Question 2: Factorial Using Recursion
//* Create a recursive function factorial() that calculates factorial of a number. Test with 5, 6, 7.
int factorial(int n) {
  if (n == 0) return 1;
  return n * factorial(n - 1);
}

void main() {
  print(factorial(5));
  print(factorial(6));
  print(factorial(7));
}
