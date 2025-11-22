//* Q20. Membership Type:
//* yearsSubscribed = 3
//* String membership = yearsSubscribed >= 5 ? 'Gold' : yearsSubscribed >= 2 ? 'Silver' : 'Bronze';
//* Print membership level

void main() {
  int yearsSubscribed = 3;
  String membership = yearsSubscribed >= 5
      ? "Gold"
      : yearsSubscribed >= 2
      ? "Silver"
      : "Bronze";
  print(membership);
}
