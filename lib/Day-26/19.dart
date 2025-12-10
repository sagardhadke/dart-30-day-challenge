//* Question 19: Nested Loop with Break and Continue
//* Create a pattern printing system where:
//* - Outer loop runs from 1 to 10
//* - Inner loop runs from 1 to outer loop variable
//* - Use continue in outer loop to skip rows 3 and 7
//* - Use break in inner loop when inner counter equals 5 (max 5 stars per row)
//* Print star pattern with these conditions.
//* Also create alternate version with numbers instead of stars.

import 'dart:io';

void main() {
  for (int i = 1; i <= 10; i++) {
    if (i == 3 || i == 7) continue;
    for (int j = 1; j <= i; j++) {
      if (j == 5) break;
      stdout.write('* ');
    }
    stdout.writeln();
  }

  print('--- Alternate Version (Numbers) ---');

  for (int i = 1; i <= 10; i++) {
    if (i == 3 || i == 7) continue;
    for (int j = 1; j <= i; j++) {
      if (j == 5) break;
      stdout.write('$j ');
    }
    stdout.writeln();
  }
}
