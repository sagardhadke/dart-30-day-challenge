//* Duplicate Remover: Create a list: [1, 2, 2, 3, 4, 4, 5]. Manually check and create a new list without duplicates. Print both.

void main(){

  List<int> nums = [1, 2, 2, 3, 4, 4, 5];
  List<int> result = [];

  print("Original List $nums");
  for(int i = 0; i<= nums.length-1;  i++){
    if(!result.contains(nums[i])){
      result.add(nums[i]);
    }
  }
  print("New List $result");

}