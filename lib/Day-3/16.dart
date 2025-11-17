//* Create a map: {'math': 85, 'science': 90, 'english': 88}. Use .addAll() to add {'hindi': 92, 'history': 87}. Print the final map.

void main(){

  Map<String,dynamic> marks = {'math': 85, 'science': 90, 'english': 88};
  marks.addAll({'hindi': 92, 'history': 87});
  print(marks);

}