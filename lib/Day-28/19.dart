//* Question 19: Multiple Recursion - Combination Calculator
//* Create a recursive function combination(n, r) that calculates nCr (combination) using formula: C(n,r) = C(n-1,r-1) + C(n-1,r)
//* Base cases: C(n,0) = 1, C(n,n) = 1
//*
//* This uses multiple recursion (two recursive calls).
//* Test with: C(5,2), C(6,3), C(10,4)
//* Also count total recursive calls made.

int combCalls = 0;

int combination(int n, int r) {
  combCalls++;

  if (r == 0 || r == n) return 1;

  return combination(n - 1, r - 1) + combination(n - 1, r);
}

void main() {
  print("C(5,2) = ${combination(5, 2)} | Calls: $combCalls");
  combCalls = 0;

  print("C(6,3) = ${combination(6, 3)} | Calls: $combCalls");
  combCalls = 0;

  print("C(10,4) = ${combination(10, 4)} | Calls: $combCalls");
}
