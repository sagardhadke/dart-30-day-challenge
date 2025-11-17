//* Q1. Filter Students by Marks

//* Create a map of students and their marks.
//* Print only those students who scored above 75.

void main(){

  Map<String,dynamic> studentsMarks = {
    "Sagar" : 85,
    "Gampu" : 65,
    "John" : 70,
    "Manna" : 95
  };

  studentsMarks.forEach((key, value) {
    if(value >= 75){
      print("$key $value");
    }
  },);

 

}