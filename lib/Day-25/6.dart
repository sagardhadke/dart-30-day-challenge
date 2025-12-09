//* Question 6: Sum Using While Loop
//* Use a while loop to calculate sum of first 20 natural numbers. Print the sum.

void main() {
  int sum = 0;
  int i = 1;
  while (i <= 20) {
    sum += i;
    i++;
  }
  print("Sum = $sum");
}
