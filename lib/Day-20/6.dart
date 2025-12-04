//* Question 6: Shopping Receipt
//* Take item name, price, quantity, and discount% as input. Create formatted receipt using \n, \t, and decorative lines:
//* ================================
//*        SHOPPING RECEIPT
//* ================================
//* Item:     [name]
//* Price:    Rs. [price]
//* Quantity: [qty]
//* Subtotal: Rs. [subtotal]
//* Discount: Rs. [discount]
//* --------------------------------
//* Total:    Rs. [total]
//* ================================

void main() {
  String name = "Laptop";
  double price = 50000;
  int qty = 2;

  double subtotal = price * qty;
  double discount = subtotal * 0.10;
  double total = subtotal - discount;

  print(
    "================================\n"
    "       SHOPPING RECEIPT\n"
    "================================\n"
    "Item:\t\t$name\n"
    "Price:\t\tRs. $price\n"
    "Quantity:\t$qty\n"
    "Subtotal:\tRs. $subtotal\n"
    "Discount:\tRs. $discount\n"
    "--------------------------------\n"
    "Total:\t\tRs. $total\n"
    "================================",
  );
}
