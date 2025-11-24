//* Question 6: Simple Logical Operators
//* Create: age = 20, hasID = true. Check if person can enter club using: age >= 18 && hasID. Print result. Try with different values.

void main() {
  int age = 20;
  bool hasID = true;
  print(age >= 18 && hasID);
  hasID = false;
  print(age >= 18 && hasID);
}
