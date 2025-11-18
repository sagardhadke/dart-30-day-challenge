//* 9. Declare a variable dynamic v = '100'. Convert it to int and add 23; print result.

void main() {
  dynamic v = '100';

  int result = int.parse(v) + 23;
  print(result);
}
