//* Question 12: Map Value Update
//* Create a map of 5 products with their prices. Use a for loop to increase all prices by 10%. Print the updated map with old and new prices.

void main() {
  Map<String, double> products = {
    'Apple': 2.5,
    'Banana': 1.2,
    'Cherry': 3.0,
    'Date': 4.0,
    'Elderberry': 5.5,
  };

  Map<String, double> updatedPrices = {};

  products.forEach((product, price) {
    // increase all prices by 10%
    updatedPrices[product] = price * 1.10;
    print('Product: $product, Old Price: $price, New Price: ${price * 1.10}');
  });
}
