//* Question 1: Basic Variable Operations
//* Create variables for item name (String), price (double), quantity (int), and inStock (bool). Calculate total cost. Print all details in a formatted way.

void main() {
  String name = "Mango";
  double price = 145.24;
  int quantity = 5;
  bool inStock = true;

  print("Product name: $name");
  print("inStock: $inStock");
  print("total cost: ${price * quantity}");
}
