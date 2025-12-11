//* Question 6: Anonymous Function Basic
//* Create a list of 5 numbers. Use forEach with an anonymous function to print each number multiplied by 2.

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];

  numbers.forEach((n) {
    print(n * 2);
  });
}
