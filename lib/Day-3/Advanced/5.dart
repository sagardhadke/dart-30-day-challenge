//* Q5. E-Commerce: Total Bill Calculation

//* Given: prices = {'shirt': 500, 'jeans': 1200, 'shoes': 2000}
//* cart   = {'shirt': 2, 'jeans': 1}
//* Calculate the total bill (price × quantity).

void main() {
  Map<String, dynamic> prices = {'shirt': 500, 'jeans': 1200, 'shoes': 2000};
  Map<String, dynamic> cart = {'shirt': 2, 'jeans': 1};

  double total = 0;

  cart.forEach((key, cvalue) {
    if (prices.keys.contains(key)) {
      total += prices[key] * cart[key];
    }

  });

  print("Price $total");
}
