//* Q16. Create a map of numbers 1–10 → their squares using a loop.

void main() {
  Map<int, dynamic> squares = {};

  for (int i = 1; i <= 10; i++) {
    squares[i] = i * i;
  }
  print(squares);
}
