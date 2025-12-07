//* Question 7: Temperature Alert
//* Take temperature in Celsius as input. Use if-else:
//* - If temp > 35, print "Very Hot! Stay hydrated"
//* - If temp > 25 and temp <= 35, print "Hot weather"
//* - If temp > 15 and temp <= 25, print "Pleasant weather"
//* - If temp <= 15, print "Cold weather"
//* Test with: 40, 30, 20, 10

import 'dart:io';

void main() {
  stdout.write("Enter temperature in Celsius: ");
  double temp = double.parse(stdin.readLineSync()!);

  if (temp > 35) {
    print("Very Hot! Stay hydrated");
  } else if (temp > 25) {
    print("Hot weather");
  } else if (temp > 15) {
    print("Pleasant weather");
  } else {
    print("Cold weather");
  }
}
