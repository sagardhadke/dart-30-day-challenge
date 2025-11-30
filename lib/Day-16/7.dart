//* Question 7: Fitness Challenge Tracker
//* Take number of participants as input. For each participant, take name and daily steps for 7 days as input. Store in map with lists. For each participant calculate: weekly total steps, daily average, how many days met target (>= 10000 steps). Use logical operators to determine: Champion (total >= 80000 && met target >= 6 days), Good Performer (total >= 60000 || met target >= 5 days), Needs Improvement (otherwise). Calculate and display leaderboard with rankings. Use print() for formatted output showing participant-wise analysis and overall statistics.

import 'dart:io';

void main() {
  stdout.write("Enter number of participants: ");
  int n = int.parse(stdin.readLineSync()!);

  List<Map<String, dynamic>> participants = [];

  for (int i = 1; i <= n; i++) {
    stdout.write("\nEnter name: ");
    String name = stdin.readLineSync()!;

    List<int> steps = [];
    for (int d = 1; d <= 7; d++) {
      stdout.write("Day $d steps: ");
      steps.add(int.parse(stdin.readLineSync()!));
    }

    int total = steps.reduce((a, b) => a + b);
    double average = total / 7;
    int targetDays = steps.where((s) => s >= 10000).length;

    String level = (total >= 80000 && targetDays >= 6)
        ? "Champion"
        : (total >= 60000 || targetDays >= 5)
        ? "Good Performer"
        : "Needs Improvement";

    participants.add({
      'name': name,
      'steps': steps,
      'total': total,
      'average': average,
      'target': targetDays,
      'level': level,
    });
  }

  participants.sort((a, b) => b['total'].compareTo(a['total']));

  print("\n================ LEADERBOARD ================");
  for (int i = 0; i < participants.length; i++) {
    var p = participants[i];
    print("\n#${i + 1} ${p['name']} - ${p['total']} steps (${p['level']})");
  }
  print("==============================================\n");
}
