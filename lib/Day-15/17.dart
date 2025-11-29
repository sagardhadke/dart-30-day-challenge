//* Q17. Star Pattern Start: Use stdout.write() to print 5 stars on one line: "*****". Then use print() to move to next line. Repeat 3 times to create a rectangle.

import 'dart:io';

void main() {
  for (int i = 0; i < 3; i++) {
    stdout.write("*****");
    print("");
  }
}
