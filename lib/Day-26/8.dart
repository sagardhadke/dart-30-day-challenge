//* Question 8: Find First Multiple
//* Use a for loop to find the first number between 1 and 100 that is divisible by both 7 and 13. Use break when found. Print the number.

void main() {
  for (int i = 1; i <= 100; i++) {
    if (i % 7 == 0 && i % 13 == 0) {
      print(i);
      break;
    }
  }
}
