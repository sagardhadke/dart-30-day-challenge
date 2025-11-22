//* Q7. NOT Operator Examples:
//* isPaid = false
//* Check: !isPaid (is payment pending?)
//* isLocked = true
//* Check: !isLocked (is it unlocked?)
//* Print both results

void main() {
  bool isPaid = false;
  bool isLocked = true;

  print(!isPaid ? "Payment is Pending" : "Payment Completed");
  print(!isLocked ? "Unlocked" : "Locked");
}
