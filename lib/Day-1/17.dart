//* 17. Discount Calculator: Store original price (Rs. 1000) and discount percentage (15%). Calculate and print the final price after discount.


void main(){

  double amt = 1000;
  int disPercentage = 15;
  double discountedPrice = disPercentage / 100 * amt;
  double finalPrice = amt - discountedPrice; 
  print("Original Price is $amt, Discounted Price 15% = $finalPrice");

}