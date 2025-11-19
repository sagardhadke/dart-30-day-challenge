//* Q9. Convert the list [5, 10, 15, 20] into a map of index → value.

void main() {
  List<int> nums = [5, 10, 15, 20];
  Map<int,dynamic> newList = {};

  for(int i = 0; i<= nums.length - 1; i++){
    newList[i] = nums[i];
  }

  print(newList);

}
