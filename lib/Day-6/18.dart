//* Q18. Take three numbers and print the largest using expressions only (no if/else yet).

void main() {
  int a = 10, b = 65, c = 2;

  int max1 = (a > b) ? a : b;
  int max2 = (max1 > c) ? max1 : c;

  print("Largest: $max2");
}
