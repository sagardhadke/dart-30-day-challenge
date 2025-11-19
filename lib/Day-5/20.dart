//* Q20. Student performance system:
// Given student names + marks, print: topper
// students scoring above 75 average total passed (marks ≥ 40)

void main() {
  Map<String, dynamic> students = {"A": 121, "B": 78, "C": 66, "D": 72};

  int topper = 0;
  String topperName = "";
  Map<String, dynamic> scoring75 = {};
  num average = 0;
  Map<String,dynamic> totalPass40 = {};

  students.forEach((key, value) {
    if (value >= topper) {
      topper = value;
      topperName = key;
    }
    if (value >= 75) {
      scoring75.addAll({key: value});
    }
    average += value / students.length;

    if(value >= 40){
      totalPass40.addAll({key : value});
    }
  });

  print("Topper $topperName: $topper");
  print("Score Student: $scoring75");
  print("Average $average");
  print("Total passed: $totalPass40");
}
