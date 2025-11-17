//* Create a map of 3 products with their prices. Check if a product exists using .containsKey() and print true/false.

void main(){

  Map<String,dynamic> product = {
    "Phone" : 956520,
    "Laptop" : 8545620,
    "Camera" : 56201,
  };

  print(product.containsKey("Laptop"));
  print(product.containsKey("Grocery"));

}