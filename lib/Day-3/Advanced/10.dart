//* Q10. Average Salary Calculation

//* Given a map of employee → salary,
//* calculate the average salary manually
//* (no built-in average functions).

void main(){

  Map<String, int> salaries = {
  "Alice": 5000,
  "Bob": 7000,
  "Charlie": 6000,
  "David": 8000
};


  int total = 0;

  salaries.forEach((key,value){
    total += value;
  });

  double average = total / salaries.length;
  print("Average Salary: $average");


}