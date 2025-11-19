//* Q6. Create a list of 5 fruits.
//Print first, last, count, then add one fruit and print updated list.

void main(){

  List<String> fruits = ["Banana","Mango","Kiwi","Orange","Apple"];
  print("First: ${fruits[0]}");
  print("Last: ${fruits.last}");
  print("Count: ${fruits.length}");
  fruits.add("Grapes");
  print(fruits);
}
