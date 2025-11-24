//* Question 11: List and Map Together
//* Create a list of 4 product names. Create a map with same products as keys and their quantities as values. Print each product with its quantity in format: "Product: [name], Quantity: [qty]"

void main() {
  List<String> productsName = ["Mango", "Grapes", "Pineapple", "Papaya"];

  Map<String, dynamic> products = {
    productsName[0]: 12,
    productsName[1]: 40,
    productsName[2]: 120,
    productsName[3]: 85,
  };

  products.forEach((key, value) {
    print("Product: $key, Quantity: $value");
  });
}
