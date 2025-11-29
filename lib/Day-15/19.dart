//* Q19. Receipt Header: Use stdout.write() to print "="  20 times on one line. Then print() for new line. Then print() "BILL RECEIPT" centered. Another line of "=" using stdout.write().

import 'dart:io';

void main() {
  stdout.write("=" * 20);
  print("");
  print("   BILL RECEIPT   ");
  stdout.write("=" * 20);
}
