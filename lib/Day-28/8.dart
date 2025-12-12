//* Question 8: Sum of Digits
//* Create a recursive function sumOfDigits() that calculates sum of all digits in a number. Example: sumOfDigits(1234) = 1+2+3+4 = 10.

int sumOfDigits(int n) {
  if (n == 0) return 0;
  return n % 10 + sumOfDigits(n ~/ 10);
}

void main() {
  print(sumOfDigits(1234));
}
