//* Question 1: Smart Shopping Assistant
//* Create a shopping system where you have a list of 5 products with their prices stored in a map.
//* Create another map for your cart with product names and quantities.
//* Calculate the total bill. If total is above Rs. 2000, apply 15% discount.
//* If it's above Rs. 5000, apply 25% discount. Add 5% GST on the final discounted amount.
//* Print itemized bill with all calculations.

void main() {
  List<Map<String, dynamic>> products = [
    {"Tomato": 79},
    {"Potato": 85},
    {"Apple": 120},
    {"Onion": 34},
    {"Carrot": 70},
  ];

  Map<String, dynamic> carWithQuantities = {
    "Apple": 12,
    "Tomato": 40,
    "Potato": 100,
    "Carrot": 50,
  };

  num totalAmount = 0;
  double discountAmount = 0;

  carWithQuantities.forEach((key, value) {
    for (int i = 0; i <= products.length - 1; i++) {
      if (products[i].containsKey(key)) {
        totalAmount += products[i][key] * value;
      }
    }
  });

  if (totalAmount >= 5000) {
    discountAmount = totalAmount * (25 / 100);
  } else if (totalAmount >= 2000) {
    discountAmount = totalAmount * (15 / 100);
  }
  double finalAfterDiscount = totalAmount - discountAmount;
  double taxPrice = finalAfterDiscount * 0.05;
  double grandTotal = finalAfterDiscount + taxPrice;

  print("Total Price (Before Discount): Rs $totalAmount");
  print("Discount Applied: Rs $discountAmount");
  print("Price After Discount: Rs $finalAfterDiscount");
  print("GST (5%): Rs $taxPrice");
  print("Grand Total (Final Amount): Rs $grandTotal");
}
