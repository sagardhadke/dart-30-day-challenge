//* Q15. Price Range Checker: Product price is Rs. 1500. Budget is Rs. 2000. Check:
//* Is price less than budget?
//* Is price equal to budget?
//* Can you afford it? (price <= budget)

void main() {
  double price = 1500;
  int budget = 2000;

  print("Is price less than budget: ${price < budget}");
  print("Is price equal to budget: ${price == budget}");
  print("Can you afford it: ${price <= budget}");
}
