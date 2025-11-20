//* Q15. Evaluate this monster:
// int a = 4;
// int b = 3;
// int c = 2;
// var res = a++ * --b + ++c * (a + b) - c-- % a;
// You must show every step clearly

void main() {
  int a = 4;
  int b = 3;
  int c = 2;

  int part1 = a++ * --b; // 4 * 2 = 8 (a=5)
  int part2 = ++c * (a + b); // 3 * (5 + 2) = 21 (c=3)
  int part3 = c-- % a; // 3 % 5 = 3 (c=2)

  int res = part1 + part2 - part3;

  print("Final result: $res");
}
