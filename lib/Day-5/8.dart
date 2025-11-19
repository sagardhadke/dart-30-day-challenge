//* Q8. Create a map of products → price. Increase each price by 5%.

void main() {
  Map<String, dynamic> products = {
    "Apple": 121,
    "Grapes": 35,
    "Watermelon": 787,
    "Papaya": 785,
    "Strawberry": 50,
  };

  products.forEach((key, value) {
    products[key] = value + (value * 0.05);
    
  });
  print(products);
}
