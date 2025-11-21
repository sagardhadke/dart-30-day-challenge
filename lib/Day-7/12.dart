//* Q12. Age Comparison: Create variables for your age (20) and friend's age (22). Compare and print:
//* Are you same age?
//* Are you younger?
//* Are you older?

void main(){

  int age = 20;
  int friendAge = 22;

  print("Are you same age: ${age == friendAge}");
  print("Are you younger: ${age < friendAge}");
  print("Are you older: ${age > friendAge}");

}