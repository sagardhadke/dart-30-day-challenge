//* Q18. Interactive Quiz: Use print() to display a question. Use stdout.write() for "Your answer: " prompt. Take input and use print() to show "Correct!" or "Wrong!".

import 'dart:io';

void main() {
  print("What is 5 + 5?");
  stdout.write("Your answer: ");
  String ans = stdin.readLineSync()!;

  if (ans == "10") {
    print("Correct!");
  } else {
    print("Wrong!");
  }
}
