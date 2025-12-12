//* Question 20: Comprehensive Recursion Problem - Expression Evaluator
// * Create a recursive calculator that evaluates mathematical expressions:
// * 
// * Functions to create:
// * - evaluateExpression(expression) - main recursive function
// * - parseNumber(string, index) - extracts number from string
// * - calculate(num1, operator, num2) - performs operation
// * 
// * Support operations: +, -, *, /
// * 
// * Expression format: "5+3*2-4/2" (without spaces)
// * 
// * Steps:
// * 1. Parse expression recursively
// * 2. Follow operator precedence (* and / before + and -)
// * 3. Use recursion to break down expression
// * 4. Calculate result
// * 
// * Also create these recursive helper functions:
// * - findOperator(expression, operators) - finds operator with lowest precedence
// * - splitExpression(expression, operatorIndex) - splits at operator
// * - evaluateLeft(leftPart) - recursively evaluates left part
// * - evaluateRight(rightPart) - recursively evaluates right part
// * 
// * Test cases:
// * - "5+3" = 8
// * - "10-4" = 6
// * - "3*4" = 12
// * - "15/3" = 5
// * - "5+3*2" = 11 (not 16, because * has higher precedence)
// * - "10-4/2" = 8 (not 3)
// * - "2*3+4*5" = 26
// * 
// * Display step-by-step evaluation showing recursive calls and intermediate results.
// * 
// * Note: For simplification, you can assume:
// * - All numbers are positive integers
// * - No spaces in expression
// * - Valid expressions only (no error handling needed for this exercise)
// * - Can use string operations and helper variables
// * 
// * Bonus: Track and display:
// * - Total recursive calls made
// * - Depth of recursion
// * - Evaluation tree structure

int evalCalls = 0;

int evaluateExpression(String expr) {
  evalCalls++;

  int index = findOperator(expr, ['+', '-']);
  if (index != -1) {
    String left = expr.substring(0, index);
    String right = expr.substring(index + 1);
    int a = evaluateExpression(left);
    int b = evaluateExpression(right);

    return calculate(a, expr[index], b);
  }

  index = findOperator(expr, ['*', '/']);
  if (index != -1) {
    String left = expr.substring(0, index);
    String right = expr.substring(index + 1);
    int a = evaluateExpression(left);
    int b = evaluateExpression(right);

    return calculate(a, expr[index], b);
  }

  return int.parse(expr);
}

int findOperator(String expr, List<String> ops) {
  for (int i = expr.length - 1; i >= 0; i--) {
    if (ops.contains(expr[i])) return i;
  }
  return -1;
}

int calculate(int a, String op, int b) {
  if (op == '+') return a + b;
  if (op == '-') return a - b;
  if (op == '*') return a * b;
  return a ~/ b;
}

void main() {
  List<String> tests = [
    "5+3",
    "10-4",
    "3*4",
    "15/3",
    "5+3*2",
    "10-4/2",
    "2*3+4*5"
  ];

  for (var t in tests) {
    evalCalls = 0;
    int result = evaluateExpression(t);
    print("$t = $result | Calls: $evalCalls");
  }
}
