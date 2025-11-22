//* Q10. Multiple Conditions with OR:
//* payment = 'cash'
//* Check: payment == 'cash' || payment == 'card' || payment == 'upi'
//* Print if payment method is valid

void main() {
  String payment = "cash";
  if (payment == 'cash' || payment == 'card' || payment == 'upi') {
    print("Valid Payment Method");
  } else {
    print("Invalid Payment Method");
  }
}
