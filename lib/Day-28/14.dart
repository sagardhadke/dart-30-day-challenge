//* Question 14: Multiple Recursion - Fibonacci
//* Create a fibonacci function that uses multiple recursion (calls itself twice). Count how many times function is called for fibonacci(6). Add a counter variable.

int callCount = 0;

int fib(int n) {
  callCount++;
  if (n <= 1) return n;
  return fib(n - 1) + fib(n - 2);
}

void main() {
  print(fib(6));
  print("Total calls: $callCount");
}
