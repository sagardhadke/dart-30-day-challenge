//* Question 4: Simple Bill Calculator
//* Create variables: itemPrice = 850, quantity = 4, taxRate = 5%. Calculate subtotal, tax amount, and final total. Use compound assignment operators where possible. Print itemized bill.

void main() {
  double itemPrice = 850;
  int quantity = 4;
  double taxRate = 0.05;

  double subtotal = itemPrice * quantity;

  double taxAmount = subtotal * taxRate;
  double total = subtotal + taxAmount;

  print("Item Price: Rs. $itemPrice");
  print("Quantity: $quantity");
  print("Subtotal: Rs. $subtotal");
  print("Tax Amount: Rs. $taxAmount");
  print("Final Total: Rs. $total");
}
