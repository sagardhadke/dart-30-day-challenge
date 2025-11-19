//* Q18. You have inventory:
// {'laptop':5,'mouse':20,'keyboard':15,'monitor':8}
// Perform: remove "mouse" update laptop = 10, add "webcam" = 12
// Print final inventory.

void main() {
  Map<String, dynamic> inventory = {
    'laptop': 5,
    'mouse': 20,
    'keyboard': 15,
    'monitor': 8,
  };

  inventory.remove("mouse");
  inventory['laptop'] = 10;
  inventory.addAll({"webcam": 12});

  print(inventory);
}
