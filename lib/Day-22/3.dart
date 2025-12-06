//* Question 3: Quote Formatter
//* Take a quote text and author name as input. Display the quote with proper formatting using \" and \n:
//* "[quote text]"
//*     - [author name]

import 'dart:io';

void main() {
  stdout.write("Enter quote: ");
  String quote = stdin.readLineSync()!;

  stdout.write("Enter author name: ");
  String author = stdin.readLineSync()!;

  print("\"$quote\"\n\t- $author");
}
