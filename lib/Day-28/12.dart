//* Question 12: Tail Recursion - Factorial
//* Create a tail recursive function factorialTail() with accumulator parameter. Compare with normal recursion. Example: factorialTail(5, 1) where 1 is accumulator.

int factorialTail(int n, int accumulator) {
  if (n == 0) return accumulator;
  return factorialTail(n - 1, accumulator * n);
}

void main() {
  print(factorialTail(5, 1));
}
