//* Question 2: Electricity Bill Generator
//* Units consumed by 8 houses stored in a list. Rates: 0-100 units (Rs. 3/unit), 101-200 (Rs. 5/unit), 201-300 (Rs. 7/unit), 300+ (Rs. 10/unit). Add fixed charge Rs. 50. If bill > Rs. 1000, add 10% electricity duty. If consumption > 300 units, add Rs. 200 surcharge. Calculate individual bills and total revenue.

void main() {
  List<int> units = [120, 80, 240, 310, 95, 180, 400, 60];
  double totalRevenue = 0;

  for (int u in units) {
    double rate = (u <= 100)
        ? 3
        : (u <= 200)
        ? 5
        : (u <= 300)
        ? 7
        : 10;

    double bill = u * rate + 50;

    if (bill > 1000) bill += bill * 0.10;
    if (u > 300) bill += 200;

    totalRevenue += bill;

    print("Units: $u → Bill: Rs. ${bill.toStringAsFixed(2)}");
  }

  print("Total Revenue: Rs. $totalRevenue");
}
