//* Question 7: School Grade Distribution
//* Create a map of 20 students with their percentages. Count distribution: A+ (90-100), A (80-89), B (70-79), C (60-69), D (50-59), F (below 50). Calculate what percentage of class got each grade. Find median percentage (middle value when sorted). Print complete grade analysis.

void main() {
  Map<String, double> percent = {
    "S1": 92,
    "S2": 88,
    "S3": 76,
    "S4": 65,
    "S5": 55,
    "S6": 45,
    "S7": 98,
    "S8": 81,
    "S9": 72,
    "S10": 69,
    "S11": 90,
    "S12": 84,
    "S13": 78,
    "S14": 56,
    "S15": 49,
    "S16": 61,
    "S17": 73,
    "S18": 67,
    "S19": 89,
    "S20": 93,
  };

  Map<String, int> count = {"A+": 0, "A": 0, "B": 0, "C": 0, "D": 0, "F": 0};

  List<double> sorted = percent.values.toList()..sort();

  percent.forEach((_, p) {
    if (p >= 90) count["A+"]!;
    if (p >= 90)
      count["A+"] = count["A+"]! + 1;
    else if (p >= 80)
      count["A"] = count["A"]! + 1;
    else if (p >= 70)
      count["B"] = count["B"]! + 1;
    else if (p >= 60)
      count["C"] = count["C"]! + 1;
    else if (p >= 50)
      count["D"] = count["D"]! + 1;
    else
      count["F"] = count["F"]! + 1;
  });

  print("Grade Distribution: $count");
  print("Median: ${sorted[sorted.length ~/ 2]}");
}
