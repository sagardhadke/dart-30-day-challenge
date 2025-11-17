//* Create a map: {'John': 85, 'Alice': 90, 'Bob': 78}. Update John's marks to 95 and print the updated map.

void main(){

  Map<String,dynamic> marks = {'John': 85, 'Alice': 90, 'Bob': 78};

  marks['John'] = 95;
  print("Updated Map $marks");

}