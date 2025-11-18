//* 16. Create Map<String,int> inventory = {'apple':5,'banana':2}. Decrease 'apple' by 2 using update() and print.

void main() {
  Map<String, int> inventory = {'apple': 5, 'banana': 2};

  inventory.update("apple", (value) => value - 2);
  print(inventory);
}
