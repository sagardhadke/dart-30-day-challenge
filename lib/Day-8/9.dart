//* Q9. Multiple Conditions with AND:
//* temp = 25, isRaining = false, hasUmbrella = true
//* Check: temp > 20 && !isRaining (good weather?)
//* Print result

void main() {
  int temp = 25;
  bool isRaining = false;
  bool hasUmbrella = true;

  if (temp > 20 && !isRaining) {
    print(temp);
  } else if (temp > 20 && !hasUmbrella) {
    print(temp);
    print(hasUmbrella);
  }
}
