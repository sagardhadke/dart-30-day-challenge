//* Q11. If
// int x = 6;
// int y = 4;
// int z = 3;
// var result = x * y ~/ (z + y) % z;
// Predict final result step-by-step, with reasoning.

void main() {
  int x = 6;
  int y = 4;
  int z = 3;
  int step1 = z + y; // 7
  int step2 = x * y; // then 24
  int step3 = step2 ~/ step1; // then 3
  int result = step3 % z; //final 0

  print("Final Result: $result");
}
