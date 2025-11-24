//* Question 8: List with Calculations
//* Create a list of 5 product prices. Calculate total, average, and find the highest and lowest prices manually. Print all results.

void main() {
  List products = [10, 5, 25, 18, 35];
  int lowest = 100;
  int highest = 0;
  num total = 0;
  for (int i = 0; i <= products.length - 1; i++) {
    total += products[i];
    if(products[i] > highest){
      highest = products[i];
    }else if(products[i] < lowest){
      lowest = products[i];
    }
  }
  print("Total: $total");
  print("Average: ${total / products.length}");
  print("Highest: $highest");
  print("Lowest: $lowest");
}
