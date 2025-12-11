//* Question 17: Anonymous Functions in List Processing
//* Create a list of 15 numbers (mix of positive and negative). Use anonymous functions to:
//* - Filter and create new list with only positive numbers
//* - Filter and create new list with only negative numbers
//* - Map to create new list with absolute values of all numbers
//* - Use forEach to print numbers in format: "Number: X, Square: Y"
//* - Use where and map together to get squares of only even numbers
//*
//* Display all results with proper labels.

void main() {
  List<int> nums = [
    10,
    -5,
    25,
    -12,
    6,
    -30,
    14,
    -8,
    50,
    -22,
    9,
    -3,
    60,
    -40,
    33,
  ];

  var positives = nums.where((n) => n > 0).toList();
  var negatives = nums.where((n) => n < 0).toList();
  var absoluteValues = nums.map((n) => n.abs()).toList();

  print("Positive Numbers: $positives");
  print("Negative Numbers: $negatives");
  print("Absolute Values: $absoluteValues");

  nums.forEach((n) {
    print("Number: $n, Square: ${n * n}");
  });

  var evenSquares = nums.where((n) => n % 2 == 0).map((n) => n * n).toList();
  print("Even Number Squares: $evenSquares");
}
