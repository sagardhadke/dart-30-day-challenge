//* Question 3: Simple Switch Case
//* Take a number (1-7) as input representing day of week. Use switch case to print day name:
//* 1 = Monday, 2 = Tuesday, 3 = Wednesday, 4 = Thursday, 5 = Friday, 6 = Saturday, 7 = Sunday
//* Add default case for invalid input.

import 'dart:io';

void main() {
  print('Enter a number between 1 and 7: ');
  int day = int.parse(stdin.readLineSync()!);

  switch (day) {
    case 1:
      print('Monday');
      break;
    case 2:
      print('Tuesday');
      break;
    case 3:
      print('Wednesday');
      break;
    case 4:
      print('Thursday');
      break;
    case 5:
      print('Friday');
      break;
    case 6:
      print('Saturday');
      break;
    case 7:
      print('Sunday');
      break;
    default:
      print('Invalid input');
  }
}
