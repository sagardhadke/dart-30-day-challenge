//* Q8. Price Calculator: Item price is Rs. 1299. You buy 5 items. Calculate:
//* Total price (1299 * 5)
//* Price per item when split between 3 friends (total / 3)
//* Each friend's share (use integer division ~/)

void main() {
  double itemPrice = 1299;
  double total = itemPrice * 5;
  print("Total Price: $total");
  print("Split Price ${total / 3}");
  print("Split Price ${total ~/ 3}");
}
