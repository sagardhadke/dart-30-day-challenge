//* Q3. Filter List of Maps by Age

//* You are given a list of maps:
//* [
//*  {"name": "A", "age": 20},
//*  {"name": "B", "age": 17},
//*  {"name": "C", "age": 25}
//* ]
//* Print only those people whose age ≥ 18.

void main() {
  List<Map<String, dynamic>> names = [
    {"name": "A", "age": 20},
    {"name": "B", "age": 17},
    {"name": "C", "age": 25},
  ];

  for(int i = 0; i <= names.length - 1; i++){
    if(names[i]['age'] >= 18){
      print(names[i]['name']);
    }
  }

}
