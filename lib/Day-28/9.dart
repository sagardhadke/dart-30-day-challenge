//* Question 9: GCD Using Recursion
//* Create a recursive function gcd() that finds Greatest Common Divisor of two numbers using Euclidean algorithm. Test with (48, 18), (100, 50).

int gcd(int a, int b) {
  if (b == 0) return a;
  return gcd(b, a % b);
}

void main() {
  print(gcd(48, 18));
  print(gcd(100, 50));
}
