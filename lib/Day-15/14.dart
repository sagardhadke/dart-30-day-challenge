//* Q14. Table Generator: Take a number as input. Use stdout.write() to ask "Enter number: ". Generate multiplication table using print() for each line (5 x 1 = 5, 5 x 2 = 10, etc.).

import 'dart:io';

void main() {
  stdout.write("Enter number: ");
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= 10; i++) {
    print("$n x $i = ${n * i}");
  }
}
