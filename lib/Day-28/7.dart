//* Question 7: Count Digits
//* Create a recursive function countDigits() that counts number of digits in a number. Example: countDigits(12345) = 5.

int countDigits(int n) {
  if (n == 0) return 0;
  return 1 + countDigits(n ~/ 10);
}

void main() {
  print(countDigits(12345));
}
