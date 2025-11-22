//* Q17. Ticket Pricing:
//* age = 14
//* int price = age < 12 ? 100 : age >= 60 ? 150 : 200; (child/senior/adult)
//* Print ticket price

void main() {
  int age = 14;
  int price = age < 12
      ? 100
      : age >= 60
      ? 150
      : 200;
  print(price);
}
