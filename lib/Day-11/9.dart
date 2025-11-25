//* Question 9: Insurance Premium Complex Calculator
//* Age, smoking status, pre-existing conditions, city tier (1/2/3), occupation risk (high/medium/low) for 5 people stored appropriately. Base premium Rs. 10000. Add Rs. 5000 if age > 45, Rs. 8000 if smoker, Rs. 12000 if pre-existing condition exists. Multiply by 1.5 if high risk occupation, 1.2 if medium. Reduce by 10% if tier 1 city (better healthcare). Calculate for all 5 people.

void main() {
  List<Map> people = [
    {"age": 50, "smoke": true, "cond": true, "tier": 1, "risk": "high"},
    {"age": 30, "smoke": false, "cond": false, "tier": 2, "risk": "low"},
    {"age": 46, "smoke": true, "cond": false, "tier": 3, "risk": "medium"},
    {"age": 40, "smoke": false, "cond": true, "tier": 1, "risk": "medium"},
    {"age": 60, "smoke": true, "cond": true, "tier": 2, "risk": "high"},
  ];

  for (var p in people) {
    double premium = 10000;

    if (p["age"] > 45) premium += 5000;
    if (p["smoke"]) premium += 8000;
    if (p["cond"]) premium += 12000;

    if (p["risk"] == "high")
      premium *= 1.5;
    else if (p["risk"] == "medium")
      premium *= 1.2;

    if (p["tier"] == 1) premium *= 0.9;

    print("Premium: Rs. ${premium.toStringAsFixed(2)}");
  }
}
