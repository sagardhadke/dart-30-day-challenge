//* Q9. Most & Least Expensive Product

//* Given a map of product → price,
//* find the most expensive and cheapest products.

void main() {
  Map<String, int> products = {
    'Shirt': 500,
    'Jeans': 1200,
    'Shoes': 2000,
    'Cap': 250,
  };

  int highestPrice = -1;
  int lowestPrice = 999999;
  String? highestProduct;
  String? lowestProduct;

  products.forEach((key, value) {
    if (value >= highestPrice) {
      highestProduct = key;
      highestPrice = value;
    } 
    if(value <= lowestPrice) {
      lowestProduct = key;
      lowestPrice = value;
    }
  });
  print("Most expensive: $highestProduct -> $highestPrice");
  print("Cheapest: $lowestProduct -> $lowestPrice");
}
