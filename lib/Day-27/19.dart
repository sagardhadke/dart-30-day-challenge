//* Question 19: Calculator with Function Types
//* Create a calculator using different function approaches:
//*
//* Regular functions:
//* - add(a, b)
//* - subtract(a, b)
//* - multiply(a, b)
//* - divide(a, b)
//*
//* Function with named parameters:
//* - calculate({required double num1, required double num2, required String operation})
//* This function should call appropriate operation function based on operation parameter.
//*
//* Anonymous function:
//* - Create a map where keys are operators (+, -, *, /) and values are anonymous functions that perform operations
//* - Example: {'+': (a, b) => a + b, '-': (a, b) => a - b, ...}
//*
//* Create a menu system:
//* 1. Use regular functions
//* 2. Use calculate() with named parameters
//* 3. Use map with anonymous functions
//* 4. Exit
//*
//* Take user choice, two numbers, and operator. Perform calculation using selected method. Use while loop to keep calculator running until exit.

double add(double a, double b) => a + b;
double subtract(double a, double b) => a - b;
double multiply(double a, double b) => a * b;
double divide(double a, double b) => a / b;

double calculate({
  required double num1,
  required double num2,
  required String operation,
}) {
  switch (operation) {
    case '+':
      return add(num1, num2);
    case '-':
      return subtract(num1, num2);
    case '*':
      return multiply(num1, num2);
    case '/':
      return divide(num1, num2);
    default:
      throw "Invalid Operation!";
  }
}

void main() {
  Map<String, Function> ops = {
    '+': (a, b) => a + b,
    '-': (a, b) => a - b,
    '*': (a, b) => a * b,
    '/': (a, b) => a / b,
  };

  double a = 20, b = 5;

  print("Regular Function: ${add(a, b)}");
  print("Named Function: ${calculate(num1: a, num2: b, operation: '*')}");
  print("Anonymous Map Function: ${ops['/']!(a, b)}");
}
