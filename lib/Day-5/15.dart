//* Q15. Given: [
//  {"name": "A", "age": 20},
//  {"name": "B", "age": 16},
//  {"name": "C", "age": 23}
// ]
// Print names of people aged 18 or above.

void main() {
  List<Map<String, dynamic>> people = [
    {"name": "A", "age": 20},
    {"name": "B", "age": 16},
    {"name": "C", "age": 23},
  ];

  for(int i = 0; i< people.length; i++){

    if(people[i]['age'] >= 18){
      print(people[i]['name']);
    }

  }

}
