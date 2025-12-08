//* Question 9: List Sum Calculator
//* Create a list of 8 numbers. Use a for loop to calculate the sum and average of all numbers in the list. Print both results.

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8];

  int sum = 0;
  for (int number in numbers) {
    sum += number;
  }

  double average = sum / numbers.length;

  print('Sum: $sum');
  print('Average: $average');
}
