//* Create an empty map and print it. Then create a map with 3 key-value pairs (student names as keys and their ages as values) and print it.


void main(){

  Map<String,dynamic> a = {};
  print(a);

  Map<String,dynamic> students = {
    "Gampu" : 25,
    "Manna" : 56,
    "Peace" : 15,
  };
  print("Students $students");

}