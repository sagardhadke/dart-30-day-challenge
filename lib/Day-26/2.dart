//* Question 2: Continue Statement Basic
//* Use a for loop to print numbers from 1 to 15. Use continue to skip printing numbers 5, 10, and 15.

void main() {
  for (int i = 1; i <= 15; i++) {
    if (i == 5 || i == 10 || i == 15) continue;
    print(i);
  }
}
