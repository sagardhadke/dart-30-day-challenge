//* Question 17: Tail Recursion vs Normal Recursion Comparison
//* Create two versions of sum function:
//* - sumNormal(n) - normal recursion
//* - sumTail(n, accumulator) - tail recursion
//*
//* For both functions:
//* - Calculate sum of numbers 1 to n
//* - Add counter to track number of recursive calls
//* - Compare performance and call count for n = 100, 500, 1000
//* Display results showing difference between normal and tail recursion.

int normalCount = 0;
int tailCount = 0;

int sumNormal(int n) {
  normalCount++;
  if (n == 0) return 0;
  return n + sumNormal(n - 1);
}

int sumTail(int n, int acc) {
  tailCount++;
  if (n == 0) return acc;
  return sumTail(n - 1, acc + n);
}

void main() {
  print("Normal sum: ${sumNormal(100)} | Calls: $normalCount");
  print("Tail sum: ${sumTail(100, 0)} | Calls: $tailCount");
}
