//* Question 3: Sum of N Numbers
//* Create a recursive function sumOfN() that calculates sum of first n natural numbers. Example: sumOfN(5) = 1+2+3+4+5 = 15.

int sumOfN(int n) {
  if (n == 0) return 0;
  return n + sumOfN(n - 1);
}

void main() {
  print(sumOfN(5));
}
