//* 11. Given List<int> nums = [1,2,3,4,5], use .where() to create a list of numbers > 2 and print it. 

void main(){

  List<int> nums = [1,2,3,4,5];
  List<int> newNums = [];

   newNums = nums.where((numbers) {
    return numbers > 2;
  }).toList();
  print(newNums);

}