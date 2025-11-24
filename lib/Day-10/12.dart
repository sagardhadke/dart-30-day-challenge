//* Question 12: Discount Calculator
//* originalPrice = 2500. If price >= 2000, discount = 20%, else if price >= 1000, discount = 10%, else no discount. Calculate final price using ternary operators. Add 5% GST on final price. Print all details.

void main() {
  int originalPrice = 2500;
  double discountPercent = (originalPrice >= 2000)
      ? 20
      : (originalPrice >= 1000)
      ? 10
      : 0;

  double discountAmount = originalPrice * discountPercent / 100;
  double priceAfterDiscount = originalPrice - discountAmount;

  double gst = priceAfterDiscount * 5 / 100;
  double finalPrice = priceAfterDiscount + gst;

  print("Original Price: Rs $originalPrice");
  print("Discount (%): $discountPercent%");
  print("Discount Amount: Rs $discountAmount");
  print("Price After Discount: Rs $priceAfterDiscount");
  print("GST (5%): Rs $gst");
  print("Final Price: Rs $finalPrice");
}
