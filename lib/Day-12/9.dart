//* Question 9: Inventory Restock Alert
//* Create a map of 8 products with their current stock quantities. Create another list with minimum required quantities for same products (in same order). Compare each product's current stock with minimum required. Use logical operators to categorize: CRITICAL (< 50% of minimum), LOW (50-90% of minimum), OK (>= minimum). Print categorized lists.

void main() {
  Map<String, int> stock = {
    "Sugar": 40,
    "Oil": 20,
    "Rice": 80,
    "Milk": 15,
    "Flour": 50,
    "Tea": 12,
    "Salt": 30,
    "Butter": 10
  };

  List<int> minRequired = [100, 50, 60, 40, 80, 25, 40, 20];

  List<String> critical = [];
  List<String> low = [];
  List<String> ok = [];

  int index = 0;
  stock.forEach((product, qty) {
    int minQty = minRequired[index];
    double percent = qty / minQty;

    if (percent < 0.5) {
      critical.add(product);
    } else if (percent >= 0.5 && percent < 0.9) {
      low.add(product);
    } else {
      ok.add(product);
    }
    index++;
  });

  print("CRITICAL: $critical");
  print("LOW: $low");
  print("OK: $ok");
}
