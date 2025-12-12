//* Question 6: Fibonacci Number
//* Create a recursive function fibonacci() that returns the nth Fibonacci number. Test with n = 7 (should return 13).

int fibonacci(int n) {
  if (n <= 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

void main() {
  print(fibonacci(7));
}
