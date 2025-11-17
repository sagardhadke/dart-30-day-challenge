//* Q2. Increase Prices by 10%

//* Given a map of product → price,
//* increase every price by 10% and print the updated map.

void main() {
  Map<String, dynamic> product = {
    "Rice": 48,
    "Ghee": 120,
    "Milk": 68,
    "Bread": 35,
    "Panner": 100,
  };

  product.forEach((key, value) {
    value += 10 / 100 * value;
    print("$key $value");
  });
}
