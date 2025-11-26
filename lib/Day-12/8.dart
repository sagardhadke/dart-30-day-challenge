//* Question 8: Multi-Level Discount System
//* amount = 4500. Calculate discount using nested ternary: amount >= 5000 ? 25% : amount >= 3000 ? 15% : amount >= 1000 ? 10% : 0%. Calculate final price after discount. If final price > 3000, add free shipping message, else add Rs. 80 shipping. Print all details.

void main() {
  double amount = 4500;

  double discountRate = amount >= 5000
      ? 0.25
      : amount >= 3000
      ? 0.15
      : amount >= 1000
      ? 0.10
      : 0;

  double discount = amount * discountRate;
  double finalPrice = amount - discount;

  String shipping = finalPrice > 3000 ? "Free Shipping" : "Shipping: Rs. 80";

  print("Amount: Rs. $amount");
  print("Discount: Rs. $discount");
  print("Final Price: Rs. $finalPrice");
  print(shipping);
}
