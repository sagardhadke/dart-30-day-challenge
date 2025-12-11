//* Question 4: Function with Named Parameters
//* Create a function named displayInfo() with named parameters: name and age. Print the information. Call it using named parameters.

void displayInfo({required String name, required int age}) {
  print("Name: $name, Age: $age");
}

void main() {
  displayInfo(name: "John", age: 25);
}
