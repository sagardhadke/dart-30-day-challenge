//* Question 5: Fitness Challenge Tracker
//* Create a map of 6 participants with their daily step counts stored as lists (7 days). Calculate weekly total for each. Find who walked most and least. Check who met daily target of 10000 steps for at least 5 days. Calculate average steps per day for each participant. Declare winner (highest total AND met target >= 5 days).

void main() {
  Map<String, List<int>> steps = {
    "Aman": [12000, 9000, 11000, 13000, 8000, 15000, 14000],
    "Riya": [8000, 8500, 9000, 7500, 7000, 9500, 10000],
    "Kabir": [15000, 16000, 14000, 13000, 12000, 18000, 17000],
    "Meera": [5000, 6000, 5500, 6200, 7000, 6500, 7500],
    "Rohan": [10000, 11000, 9000, 12000, 13000, 14000, 12500],
    "Simran": [9000, 9500, 10000, 11000, 10500, 9800, 12000],
  };

  String winner = "";
  int maxSteps = 0;

  steps.forEach((name, weekData) {
    int total = weekData.reduce((a, b) => a + b);
    int daysMet = weekData.where((x) => x >= 10000).length;
    double avg = total / 7;

    print(
      "$name → Total: $total, Avg: ${avg.toStringAsFixed(2)}, Days ≥10k: $daysMet",
    );

    if (daysMet >= 5 && total > maxSteps) {
      maxSteps = total;
      winner = name;
    }
  });

  print("Winner: $winner");
}
