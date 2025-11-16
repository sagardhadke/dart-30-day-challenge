//* Create a list: ['Apple', 'Banana', 'Mango', 'Orange']. Remove 'Banana' using .remove() and print the list.

void main(){

  List<String> fruits = ['Apple', 'Banana', 'Mango', 'Orange'];

  print("Fruits $fruits");

  fruits.remove("Banana");
  print("Updated Fruits List $fruits");

}