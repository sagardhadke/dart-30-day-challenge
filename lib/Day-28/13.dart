//* Question 13: String Length Recursion
//* Create a recursive function stringLength() that calculates length of a string without using .length property. Example: stringLength("Hello") = 5.

int stringLength(String s, [int index = 0]) {
  if (index == s.length) return 0;
  return 1 + stringLength(s, index + 1);
}

void main() {
  print(stringLength("Hello"));
}
