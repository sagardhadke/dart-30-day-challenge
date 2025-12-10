//* Question 6: Skip Even Numbers with Continue
//* Use a for loop from 1 to 20. Use continue to skip even numbers. Print only odd numbers.

void main() {
  for (int i = 1; i <= 20; i++) {
    if (i % 2 == 0) continue;
    print(i);
  }
}
