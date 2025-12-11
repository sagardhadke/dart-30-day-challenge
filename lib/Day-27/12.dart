//* Question 12: Function with Mixed Parameters
//* Create a function calculateTotal() with:
//* - Positional parameter: price
//* - Named parameter with default: quantity = 1
//* - Named parameter with default: discount = 0
//* Calculate and return final amount after discount. Test with different combinations.

double calculateTotal(double price, {int quantity = 1, double discount = 0}) {
  double total = price * quantity;
  total -= discount;
  return total;
}

void main() {
  print(calculateTotal(100));
  print(calculateTotal(200, quantity: 3));
  print(calculateTotal(500, quantity: 2, discount: 50));
}
