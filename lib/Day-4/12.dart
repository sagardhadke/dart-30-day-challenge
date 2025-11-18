//* 12. Sum all elements of List<int> nums using a for loop and print the sum.

void main(){

  List<int> nums = [5,2,3,4,8,6,10];
  int sum = 0;

  for(int i = 0; i<= nums.length - 1; i++){
    sum += nums[i];
  }

  print("Sum $sum");

}