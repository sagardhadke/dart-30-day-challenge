//* Question 5: List Operations Challenge
//* Create a list with numbers: [15, 22, 8, 35, 42, 18, 30]. Add two more numbers. Remove the number at index 3. Find and print the sum of all remaining numbers. Print the length of final list.

void main() {
  List<int> numbers = [15, 22, 8, 35, 42, 18, 30];

  numbers.addAll([50, 12]);

  numbers.removeAt(3);

  int sum = 0;
  for (var n in numbers) sum += n;

  print("Final List: $numbers");
  print("Sum: $sum");
  print("Length: ${numbers.length}");
}
