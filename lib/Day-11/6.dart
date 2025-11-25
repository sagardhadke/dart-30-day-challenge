//* Question 6: Cab Fare Calculator
//* Base fare Rs. 50. Day rates (6am-10pm): Rs. 12/km, night rates (10pm-6am): Rs. 18/km. Waiting charge Rs. 2/minute if stopped. Create 5 trip records with distance, time (day/night), waiting minutes. If trip > 20km, apply 10% discount. If premium cab, multiply by 1.5x. Calculate individual fares and total earnings.

void main() {
  List<Map> trips = [
    {"km": 10, "time": "day", "wait": 5, "premium": false},
    {"km": 25, "time": "night", "wait": 10, "premium": true},
    {"km": 8, "time": "day", "wait": 0, "premium": false},
    {"km": 30, "time": "night", "wait": 15, "premium": false},
    {"km": 12, "time": "day", "wait": 3, "premium": true},
  ];

  double totalEarn = 0;

  for (var t in trips) {
    double rate = t["time"] == "day" ? 12 : 18;
    num fare = 50 + t["km"] * rate + t["wait"] * 2;

    if (t["km"] > 20) fare *= 0.90;
    if (t["premium"]) fare *= 1.5;

    totalEarn += fare;
    print("Fare: Rs. ${fare.toStringAsFixed(2)}");
  }

  print("Total Earnings: Rs. $totalEarn");
}
