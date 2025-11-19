//* Q7. Remove all values greater than 50 from the list: [10, 90, 40, 60, 30]

void main(){

  List<int> nums = [10, 90, 40, 60, 30];
  List<int> greaterNums = [];

  for(int i = 0; i<= nums.length - 1; i++){
    if(nums[i] <= 50){
      greaterNums.add(nums[i]);
    }
  }
  print(greaterNums);

}