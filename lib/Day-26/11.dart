//* Question 11: Search and Break
//* Create a list of 10 numbers. Take a number to search as input. Use a for loop with break to find if number exists in list. Print "Found at index X" or "Not found".

import 'dart:io';

void main() {
  List<int> numbers = [12, 23, 45, 56, 67, 89, 90, 34, 56, 78];
  print('Enter a number to search: ');
  int search = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] == search) {
      print('Found at index $i');
      return;
    }
  }

  print('Not found');
}
