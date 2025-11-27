//* Question 7: Fruit Shop Billing
//* Create a map: {'Apple': 120, 'Banana': 50, 'Mango': 80, 'Orange': 60, 'Grapes': 100}. Customer buys: 2kg Apple, 5kg Banana, 3kg Mango. Calculate cost for each fruit (price × quantity). Calculate total bill. If total > 500, apply 10% discount. Print itemized bill with discount details and final amount.

void main() {
  Map<String, int> fruitPrices = {
    'Apple': 120,
    'Banana': 50,
    'Mango': 80,
    'Orange': 60,
    'Grapes': 100,
  };

  Map<String, int> customerPurchase = {'Apple': 2, 'Banana': 5, 'Mango': 3};

  double totalBill = 0;
  customerPurchase.forEach((fruit, quantity) {
    totalBill += fruitPrices[fruit]! * quantity;
  });

  if (totalBill > 500) {
    // 10% discount
    totalBill *= 0.9;
  }

  print("Itemized bill:");
  customerPurchase.forEach((fruit, quantity) {
    int cost = fruitPrices[fruit]! * quantity;
    print("$fruit: \$${cost}");
  });
  print("Total bill after discount: \$${totalBill}");
}
