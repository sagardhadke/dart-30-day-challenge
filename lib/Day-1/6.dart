//* 6. Make a program that swaps the values of two variables without creating a third variable.

void main(){

  int a = 3;
  int b = 2;

  print("Before $a and $b");

  a = a + b; // 5
  b = a - b; // 3
  a = a - b; // 2

  print("After $a and $b");

}