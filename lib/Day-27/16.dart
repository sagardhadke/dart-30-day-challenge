//* Question 16: Shopping Cart Functions
//* Create multiple functions:
//* - addItem() - takes item name, price, quantity as named parameters, returns item total
//* - applyDiscount() - takes amount and discount percentage as positional parameters, returns discounted amount
//* - calculateGST() - takes amount and GST rate (default 5%) as parameters, returns GST amount
//* - generateBill() - takes list of items (use map for each item), calculates subtotal, applies discount if subtotal > 1000, adds GST, returns final amount
//*
//* Take 3 items as input, use all functions to generate complete bill with breakdown.

double addItem({
  required String name,
  required double price,
  required int quantity,
}) {
  return price * quantity;
}

double applyDiscount(double amount, double discountPercent) {
  return amount - (amount * discountPercent / 100);
}

double calculateGST(double amount, {double rate = 5}) {
  return amount * rate / 100;
}

double generateBill(List<Map<String, dynamic>> items) {
  double subtotal = 0;

  items.forEach((item) {
    subtotal += item['total'];
  });

  if (subtotal > 1000) {
    subtotal = applyDiscount(subtotal, 10);
  }

  double gst = calculateGST(subtotal);
  return subtotal + gst;
}

void main() {
  List<Map<String, dynamic>> items = [];

  double item1 = addItem(name: "Pen", price: 10, quantity: 5);
  double item2 = addItem(name: "Notebook", price: 50, quantity: 4);
  double item3 = addItem(name: "Bag", price: 600, quantity: 1);

  items.add({"name": "Pen", "total": item1});
  items.add({"name": "Notebook", "total": item2});
  items.add({"name": "Bag", "total": item3});

  double finalBill = generateBill(items);

  print("Final Bill Amount: $finalBill");
}
