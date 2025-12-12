//* Question 1: Simple Recursion - Countdown
//* Create a recursive function countdown() that takes a number n and prints numbers from n to 1. Example: countdown(5) prints 5, 4, 3, 2, 1.

void countdown(int n) {
  if (n <= 0) return;
  print(n);
  countdown(n - 1);
}

void main() {
  countdown(5);
}
