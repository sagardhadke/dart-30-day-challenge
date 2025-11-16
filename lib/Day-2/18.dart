//* Create a list of marks (e.g., [85, 78, 92, 60]) and calculate ( total and average ).

void main(){

  List<int> marks = [85,65,78,94,23,56];
  int sum = 0;

  for(int i = 0; i <= marks.length - 1; i++){

    sum = marks[i] + sum;

  }
  print("Total $sum");
  print("Average ${sum/marks.length}");

}