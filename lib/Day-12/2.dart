//* Question 2: Product Catalog
//* Create a map of 5 products with their prices. Calculate the total value of all products. Find the most expensive and cheapest products. Add a new product and remove one product. Print the updated catalog.

void main() {
  Map<String, double> products = {
    "Laptop": 75000,
    "Mouse": 650,
    "Keyboard": 1200,
    "Monitor": 15000,
    "USB": 500,
  };

  double total = 0;
  products.forEach((key, value) => total += value);

  var mostExpensive = products.entries.reduce(
    (a, b) => a.value > b.value ? a : b,
  );
  var cheapest = products.entries.reduce((a, b) => a.value < b.value ? a : b);

  products["Headphones"] = 2000;
  products.remove("USB");

  print("Total Value: $total");
  print("Most Expensive: ${mostExpensive.key} — ${mostExpensive.value}");
  print("Cheapest: ${cheapest.key} — ${cheapest.value}");
  print("Updated Catalog: $products");
}