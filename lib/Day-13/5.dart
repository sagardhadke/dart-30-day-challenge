//* Question 5: Shopping List Manager
//* Create a list with 6 items you want to buy. Print total items. Add 2 more items at the end. Remove the 3rd item from the list. Print the updated list with the new count of items.

void main() {
  List<String> shoppingList = [
    'Milk',
    'Eggs',
    'Bread',
    'Butter',
    'Cheese',
    'Cereal',
  ];

  print("Total items: ${shoppingList.length}");

  shoppingList.add('Fruits');
  shoppingList.add('Vegetables');

  shoppingList.removeAt(2);

  print("Updated List: $shoppingList");
  print("New total items: ${shoppingList.length}");
}
