//* Question 11: Count Occurrences in List
//* Create a list with duplicate numbers: [5, 2, 8, 2, 9, 2, 3, 5, 2]. Use a for loop to count how many times the number 2 appears in the list.

void main() {
  List<int> numbers = [5, 2, 8, 2, 9, 2, 3, 5, 2];
  int count = 0;

  for (int number in numbers) {
    if (number == 2) {
      count++;
    }
  }

  print('The number 2 appears $count times');
}
