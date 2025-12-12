//* Question 4: Power Function
//* Create a recursive function power(base, exponent) that calculates base raised to exponent. Example: power(2, 3) = 8.

int power(int base, int exponent) {
  if (exponent == 0) return 1;
  return base * power(base, exponent - 1);
}

void main() {
  print(power(2, 3));
}
