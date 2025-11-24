//* Question 2: Simple List Practice
//* Create a list of 6 subject names. Print the first subject, last subject, and total number of subjects. Add one more subject and remove the third subject. Print the updated list.

void main() {
  List subjects = [
    "English",
    "Marathi",
    "Maths",
    "Hindi",
    "Physic",
    "Geography",
  ];

  print("Fist Subject: ${subjects[0]}");
  print("Last Subject: ${subjects.last}");
  print("Total number of subjects: ${subjects.length}");

  subjects.add("OS");
  subjects.removeAt(3);
  print("Updated list: $subjects");
}
