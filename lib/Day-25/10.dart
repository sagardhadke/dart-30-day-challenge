//* Question 10: While Loop with List
//* Create a list of 10 numbers. Use a while loop with an index variable to print all elements. Also calculate and print the sum.

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int i = 0;
  int sum = 0;
  while (i < numbers.length) {
    print(numbers[i]);
    sum += numbers[i];
    i++;
  }
  print("Sum = $sum");
}
