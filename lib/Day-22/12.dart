//* Question 12: Conversation Builder
//* Take two person names and two dialogues as input. Format as a conversation using \" and \n:
//* [Person1]: "First dialogue"
//* [Person2]: "Second dialogue"

import 'dart:io';

void main() {
  stdout.write("Enter first person name: ");
  String p1 = stdin.readLineSync()!;

  stdout.write("Enter second person name: ");
  String p2 = stdin.readLineSync()!;

  stdout.write("Enter first dialogue: ");
  String d1 = stdin.readLineSync()!;

  stdout.write("Enter second dialogue: ");
  String d2 = stdin.readLineSync()!;

  print("$p1: \"$d1\"");
  print("$p2: \"$d2\"");
}
