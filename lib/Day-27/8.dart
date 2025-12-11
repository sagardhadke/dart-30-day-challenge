//* Question 8: Area Calculator Functions
//* Create three functions:
//* - rectangleArea(length, width) - returns area
//* - circleArea(radius) - returns area (use 3.14159)
//* - triangleArea(base, height) - returns area
//* Take inputs and call appropriate function to calculate and display area.

double rectangleArea(double length, double width) {
  return length * width;
}

double circleArea(double radius) {
  return 3.14159 * radius * radius;
}

double triangleArea(double base, double height) {
  return 0.5 * base * height;
}

void main() {
  print("Rectangle Area = ${rectangleArea(10, 5)}");
  print("Circle Area = ${circleArea(7)}");
  print("Triangle Area = ${triangleArea(6, 4)}");
}
