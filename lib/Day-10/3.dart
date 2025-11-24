//* Question 3: Basic Map Operations
//* Create a map of 4 fruits with their prices. Print the price of 'mango'. Add a new fruit. Remove one fruit. Print the final map and total number of items.

void main() {
  Map<String, dynamic> fruits = {
    "mango": 80,
    "Orange": 45,
    "Grapes": 60,
    "Pineapple": 124,
  };

  print("Mango Price: ${fruits['mango']}");
  fruits.addAll({"Watermelon": 320});
  fruits.remove('Pineapple');
  print(fruits);
  print("Total number of items: ${fruits.length}");
}
