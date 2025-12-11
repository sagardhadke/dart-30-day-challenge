//* Question 10: List Operations with Anonymous Functions
//* Create a list of 10 numbers. Use anonymous functions with:
//* - forEach to print all numbers
//* - where to filter numbers greater than 50
//* - map to create new list with each number doubled
//* Print all results.

void main() {
  List<int> numbers = [10, 55, 32, 78, 90, 12, 45, 88, 60, 25];

  print("All Numbers:");
  numbers.forEach((n) => print(n));

  var greaterThan50 = numbers.where((n) => n > 50).toList();
  print("Numbers > 50: $greaterThan50");

  var doubled = numbers.map((n) => n * 2).toList();
  print("Doubled List: $doubled");
}
