//* Question 8: Tournament Match Scheduler
//* 8 teams stored in a list. Each team plays every other team once (round-robin). Calculate total matches needed. If team wins, it gets 3 points, draw gets 1 point, loss gets 0. Create a hypothetical points table for all teams. Find top 4 teams. Check if any two teams have equal points (tiebreaker needed).

void main() {
  List<String> teams = ["A", "B", "C", "D", "E", "F", "G", "H"];

  int matches = teams.length * (teams.length - 1) ~/ 2;
  print("Total Matches: $matches");

  Map<String, int> points = {
    "A": 12,
    "B": 14,
    "C": 10,
    "D": 8,
    "E": 16,
    "F": 6,
    "G": 4,
    "H": 9,
  };

  var sortedTeams = points.keys.toList()
    ..sort((a, b) => points[b]!.compareTo(points[a]!));

  print("Top 4 Teams: ${sortedTeams.sublist(0, 4)}");

  bool tie = points.values.toSet().length != points.length;
  print("Tie Needed? $tie");
}
