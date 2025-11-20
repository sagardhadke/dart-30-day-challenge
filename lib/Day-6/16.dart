//* Q16. Build a “discount calculator”:
// price
// discountPercentage
// Final price = price - (price * discount / 100)

void main(){

  double price = 1280;
  int discountPercentage = 10;
  price = price - (price * discountPercentage) / 100;
  print(price);

}