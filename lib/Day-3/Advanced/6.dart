//* Q6. Update Inventory Quantities

//* Given: {'laptop': 5, 'mouse': 20, 'keyboard': 15}
//* Perform these operations:

//* Sell 2 laptops
//* Add 10 mouse
//* Check if monitor exists
//* Print final updated inventory

void main() {
  Map<String, dynamic> inventory = {'laptop': 5, 'mouse': 20, 'keyboard': 15};

  inventory['laptop'] -= 2;
  inventory['mouse'] +=10;

  print(inventory['laptop']);
  print(inventory.containsKey("monitor"));
  print("updated inventory $inventory");
}
