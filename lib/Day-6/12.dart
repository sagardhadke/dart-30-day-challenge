//* Q12. Given a number n, compute the sum of digits using arithmetic operators only.
// Example: 234 → 2 + 3 + 4

void main() {
  int n = 234;
  int sum = 0;

  while (n > 0) {
    int digit = n % 10;
    sum += digit;
    n ~/= 10;
  }

  print("Sum of digits: $sum");
}
