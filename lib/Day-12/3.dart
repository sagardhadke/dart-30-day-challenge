//* Question 3: Eligibility Checker
//* age = 23, marks = 72, attendance = 80. Check if eligible using: (age >= 21 && marks >= 70) || attendance >= 85. Use ternary operator to print 'Eligible for Interview' or 'Not Eligible'. Try with different values.

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
