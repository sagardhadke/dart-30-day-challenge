//* Question 10: Continue with Condition
//* Use a for loop to iterate through numbers 1 to 30. Use continue to skip:
//* - Numbers divisible by 3
//* - Numbers divisible by 5
//* Print remaining numbers.

void main() {
  for (int i = 1; i <= 30; i++) {
    if (i % 3 == 0 || i % 5 == 0) continue;
    print(i);
  }
}
