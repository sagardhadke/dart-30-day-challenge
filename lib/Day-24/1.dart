//* Question 1: Final vs Const Basic
//* Create a final variable to store your age and a const variable to store PI value (3.14159). Try to change both values after declaration and observe what happens. Print both values.

void main() {
  final age = 25;
  const pi = 3.14159;

  // age = 30; //give an error because `final` cannot be reassigned.
  // pi = 3.14; //give an error because `const` values are compile-time constants.

  print('Age: $age');
  print('PI: $pi');
}
