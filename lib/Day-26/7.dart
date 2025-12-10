//* Question 7: Month Name Using Switch
//* Take month number (1-12) as input. Use switch case to print month name. Add default case for invalid month number.

import 'dart:io';

void main() {
  print('Enter month number (1-12): ');
  int month = int.parse(stdin.readLineSync()!);

  switch (month) {
    case 1:
      print('January');
      break;
    case 2:
      print('February');
      break;
    case 3:
      print('March');
      break;
    case 4:
      print('April');
      break;
    case 5:
      print('May');
      break;
    case 6:
      print('June');
      break;
    case 7:
      print('July');
      break;
    case 8:
      print('August');
      break;
    case 9:
      print('September');
      break;
    case 10:
      print('October');
      break;
    case 11:
      print('November');
      break;
    case 12:
      print('December');
      break;
    default:
      print('Invalid month');
  }
}
