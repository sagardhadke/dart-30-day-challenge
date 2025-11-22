//* Q24. Delivery Charge Calculator:
//* distance = 15 km, orderValue = 600, isPremium = true
//* Logic: If isPremium, free delivery
//* Else if orderValue >= 500, free delivery
//* Else if distance <= 10, Rs. 50
//* Else Rs. 100
//* Use ternary operators to calculate and print charge

void main() {
  int distance = 15;
  int orderValue = 600;
  bool isPremium = true;

  if (isPremium) {
    print("Free Delivery");
  } else if (orderValue >= 500) {
    print("Free Delivery");
  } else if (distance <= 10) {
    print("Delivery Charges is: Rs.₹50");
  } else {
    print("Delivery Charges is Rs.₹100");
  }
}
