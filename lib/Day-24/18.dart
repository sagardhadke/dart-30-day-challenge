//* Question 18: Final vs Const with Collections
//* Create a final list and try to add/remove elements from it. Create a const list and try to add/remove elements. Observe and document the difference in behavior. Create a map with final and another with const - test modifications.

void main() {
  final List<int> finalList = [1, 2, 3];
  finalList.add(4);

  // finalList = [10, 11, 12]; // This line not work because the list reference is final.

  const List<int> constList = [1, 2, 3];
  // constList.add(4); // This line throw an error because `const` lists are immutable.

  print('Final List: $finalList');
  print('Const List: $constList');
}
