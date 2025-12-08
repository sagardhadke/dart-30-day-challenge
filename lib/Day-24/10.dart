//* Question 10: Final Variable with Calculation
//* Create a final variable that stores the result of (10 + 20) * 3. Create another const variable for calculation 5 * 5. Print both and explain the difference in comments.

void main() {
  final calculation1 = (10 + 20) * 3;
  const calculation2 = 5 * 5;

  print('Final Calculation: $calculation1');
  print('Const Calculation: $calculation2');

  // The key difference:
  // - `final` is initialized only once and can be set during runtime.
  // - `const` is a compile-time constant.
}
