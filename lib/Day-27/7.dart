//* Question 7: Function with Default Parameter
//* Create a function named greetUser() with one required positional parameter (name) and one optional positional parameter (greeting with default value "Hello"). Print greeting message.

void greetUser(String name, [String greeting = "Hello"]) {
  print("$greeting, $name!");
}

void main() {
  greetUser("Alice");
  greetUser("Bob", "Welcome");
}
