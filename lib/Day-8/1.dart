//* Q1: AND Operator (&&) Practice:
//* Create two variables: age = 25, hasLicense = true
//* Check: age >= 18 && hasLicense == true
//* Print the result (should be true)
//* Change hasLicense to false and check again

void main() {
  int age = 25;
  bool hasLicense = true;

  if (age >= 18 && hasLicense == true) {
    print("Valid for driving!...");
  } else {
    print("Not valid for driving!...");
  }
}
