//* Question 14: Filter List Elements
//* Create a list of 10 numbers. Use a for loop to create a new list containing only numbers greater than 50. Print both original and filtered lists.

void main() {
  List<int> numbers = [20, 40, 60, 80, 10, 25, 55, 75, 95, 100];
  List<int> filteredNumbers = [];

  for (int number in numbers) {
    if (number > 50) {
      filteredNumbers.add(number);
    }
  }

  print('Original List: $numbers');
  print('Filtered List: $filteredNumbers');
}
