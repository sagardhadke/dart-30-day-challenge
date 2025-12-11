//* Question 5: Function to Check Even/Odd
//* Create a function named checkEvenOdd() that takes a number as parameter and returns "Even" or "Odd" as string. Test with multiple numbers.

String checkEvenOdd(int number) {
  return number % 2 == 0 ? "Even" : "Odd";
}

void main() {
  print(checkEvenOdd(10));
  print(checkEvenOdd(7));
  print(checkEvenOdd(22));
}
