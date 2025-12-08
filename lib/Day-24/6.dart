//* Question 6: Multiplication Table
//* Take a number as input. Use a for loop to print its multiplication table from 1 to 10. Format: "5 x 1 = 5"

import 'dart:io';

void main() {
  print('Enter a number:');
  int number = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= 10; i++) {
    print('$number x $i = ${number * i}');
  }
}
