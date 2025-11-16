//* Even Number Extractor: Create a list: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]. Create a new empty list and add only even numbers to it. Print both lists.

void main(){

  List<int> nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  List<int> evenNums = [];

  print("Original List $nums");

  for(int i = 0; i<=nums.length - 1; i++){
    if(nums[i] % 2 == 0){
      evenNums.add(nums[i]);
    }
  }
  print("Even Numbers $evenNums");

}