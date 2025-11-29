//* Q16. Number Sequence: Use stdout.write() to print numbers 1 to 10 with spaces between them on same line: "1 2 3 4 5 6 7 8 9 10". Then use print() to add "Done!" on next line.

import 'dart:io';

void main() {
  for (int i = 1; i <= 10; i++) {
    stdout.write("$i ");
  }
  print("\nDone!");
}
