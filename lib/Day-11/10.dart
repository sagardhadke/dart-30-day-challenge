//* Question 10: E-Learning Platform Analytics
//* Create a map of 12 students with their course completion percentages and quiz scores (list of 5 quizzes). Student passes if: completion >= 90% AND average quiz score >= 70% AND no quiz score < 50%. Calculate pass/fail for each. Find top 3 performers based on: (completion% + average quiz score) / 2. Print detailed analytics report.

void main() {
  Map<String, Map> students2 = {
    "Aman": {
      "comp": 95,
      "quiz": [70, 60, 80, 90, 100],
    },
    "Riya": {
      "comp": 88,
      "quiz": [50, 55, 60, 65, 70],
    },
    "Kabir": {
      "comp": 92,
      "quiz": [85, 80, 75, 90, 95],
    },
    "Neha": {
      "comp": 99,
      "quiz": [95, 98, 92, 94, 96],
    },
    "Rohan": {
      "comp": 70,
      "quiz": [40, 55, 60, 45, 70],
    },
    "Simran": {
      "comp": 91,
      "quiz": [75, 85, 70, 80, 90],
    },
  };

  Map<String, double> performance = {};

  students2.forEach((name, data) {
    List<int> q = data["quiz"];
    double avg = q.reduce((a, b) => a + b) / q.length;
    int comp = data["comp"];

    bool pass = comp >= 90 && avg >= 70 && q.every((x) => x >= 50);

    performance[name] = (comp + avg) / 2;

    print(
      "$name → Pass: $pass, Score: ${performance[name]!.toStringAsFixed(2)}",
    );
  });

  var top3 = performance.keys.toList()
    ..sort((a, b) => performance[b]!.compareTo(performance[a]!));

  print("Top 3 Performers: ${top3.sublist(0, 3)}");
}
