//* Question 10: Reverse a Number
//* Create a recursive function reverseNumber() that reverses a number. Example: reverseNumber(12345) = 54321. (Hint: use helper function with extra parameter)

int reverseNumber(int n, int reversed) {
  if (n == 0) return reversed;
  return reverseNumber(n ~/ 10, reversed * 10 + n % 10);
}

void main() {
  print(reverseNumber(12345, 0));
}
