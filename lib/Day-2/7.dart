//* Create a list of 5 numbers. Insert the number 99 at index 2 using .insert(). Print before and after.

void main(){

  List<int> nums = [10,52,36,18,65];
  print("Before List $nums");
  nums.insert(2, 99);
  print("After List $nums");

}