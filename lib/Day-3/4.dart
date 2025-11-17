//* Create a map with your personal info: name, age, city, and country. Print each value using its key.

void main(){

  Map<String,dynamic> personalInfo = {
    "name" : "Sagar",
    "age" : 21,
    "city" : "Mumbai",
    "country" : "India"
  };

  print("Name ${personalInfo['name']}");
  print("Age ${personalInfo['age']}");
  print("City ${personalInfo['city']}");
  print("Country ${personalInfo['country']}");
}