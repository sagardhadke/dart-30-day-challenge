//* Question 4: File Path Builder
//* Take folder name, subfolder name, and filename as input using stdout.write(). Build and display complete file path using \\:
//* C:\Users\[folder]\[subfolder]\[filename].txt

import 'dart:io';

void main() {
  stdout.write("Enter folder name: ");
  String folder = stdin.readLineSync()!;

  stdout.write("Enter subfolder name: ");
  String subfolder = stdin.readLineSync()!;

  stdout.write("Enter filename: ");
  String file = stdin.readLineSync()!;

  print("C:\\Users\\$folder\\$subfolder\\$file.txt");
}
