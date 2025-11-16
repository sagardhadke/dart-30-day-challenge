//* List Reversal: Create a list [1, 2, 3, 4, 5]. Print it in reverse order using a loop.


void main(){

  List<int> nums = [1, 2, 3, 4, 5];

  for(int i = nums.length - 1; i >= 0; i--){
    print("Reverse Numbers ${nums[i]}");
  }

}