//* 15. Merge two lists [1,2,3] and [4,5] into one list and remove duplicates. 

void main(){

  List<int> list1 = [1,2,3];
  List<int> list2 = [4,5];

  List<int> mergeList = [...list1, ...list2];
  List<int> uniqueList = mergeList.toSet().toList();
  print(uniqueList);
}