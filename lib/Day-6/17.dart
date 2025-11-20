//* Q17. Given two numbers, compute:
// gcd (using repeated subtraction or modulo)
// lcm (using a * b / gcd)

void main() {
  int a = 10;
  int b = 35;

  int x = a;
  int y = b;

  while (y != 0) {
    int temp = y;
    y = x % y;
    x = temp;
  }

  int gcd = x;
  int lcm = (a * b) ~/ gcd;

  print("GCD: $gcd");
  print("LCM: $lcm");
}
