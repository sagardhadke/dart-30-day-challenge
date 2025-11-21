//* Q19. Discount Validator: Original price Rs. 5000, discounted price Rs. 4000. Calculate:
//* Discount amount (5000 - 4000)
//* Discount percentage: (discount / original) * 100
//* Is discount >= 20%?

void main() {
  double originalPrice = 5000;
  double discountedPrice = 4000;

  double discountAmount = originalPrice - discountedPrice;
  double discountPercent = (discountAmount / originalPrice) * 100;

  print("Discount amount: $discountAmount");
  print("Discount percentage: $discountPercent");
  print("Is discount >= 20%? ${discountPercent >= 20}");
}
