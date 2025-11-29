//* Q9. Print a sentence using multiple stdout.write() statements: "I", " ", "love", " ", "Dart". Should appear as: "I love Dart" on one line.

import 'dart:io';

void main() {
  stdout.write("I");
  stdout.write(" ");
  stdout.write("love");
  stdout.write(" ");
  stdout.write("Dart");
}
