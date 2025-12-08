//* Question 7: Map Iteration - Print Keys and Values
//* Create a map with 4 students and their marks. Use a for loop to print each student's name and marks. Format: "Student: [name], Marks: [marks]"

void main() {
  Map<String, int> students = {
    'Alice': 85,
    'Bob': 92,
    'Charlie': 78,
    'David': 88,
  };

  students.forEach((name, marks) {
    print('Student: $name, Marks: $marks');
  });
}
