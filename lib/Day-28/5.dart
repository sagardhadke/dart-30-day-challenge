//* Question 5: Print N to 1
//* Create a recursive function printReverse() that takes n and prints n, n-1, n-2, ..., 1. Test with n = 10.

void printReverse(int n) {
  if (n <= 0) return;
  print(n);
  printReverse(n - 1);
}

void main() {
  printReverse(10);
}
