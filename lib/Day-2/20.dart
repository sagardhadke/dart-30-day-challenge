  //* Combine 3 lists into one and then remove all elements greater than 50.

  void main() {
    List<int> nums1 = [10, 65, 85, 5, 2];
    List<int> nums2 = [95, 45, 32, 52, 20];
    List<int> nums3 = [5, 17, 12, 88, 27];

    //* Method 1
    print("Method 1 \n-----------------------\n");
    List<int> result = [];
    result.addAll(nums1);
    result.addAll(nums2);
    result.addAll(nums3);
    print("Result $result");

    for (int a = 0; a <= result.length - 1; a++) {
      if (result[a] >= 50) {
        result.remove(result[a]);
        a--;
      }
    }

    // [10, 5, 2, 45, 32, 20, 5, 17, 12, 27] 
    print("Final Result $result \n"); 

    //* Method 2
    print("Method 2 \n-----------------------\n");

    List<int> numbers = [];
    List<int> newNum = [];

    numbers.addAll(nums1);
    numbers.addAll(nums2);
    numbers.addAll(nums3);

    for (int i = 0; i <= numbers.length - 1; i++) {
      if (numbers[i] <= 50) {
        newNum.add(numbers[i]);
      }
    }
    print("Numbers $numbers");
    // [10, 5, 2, 45, 32, 20, 5, 17, 12, 27]
    print("New list $newNum");
  }
