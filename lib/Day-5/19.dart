//* Q19. Given map of employees & salary, print: total salary highest salary

void main(){

  Map<String,dynamic> employees = {
    "Sagar" : 150000,
    "Gampu" : 750000
  };
  int max = 0;

  num totalSalary = 0;
  employees.forEach((key,value) {
    totalSalary +=  value;
    if(value > max){
      max = value;
    }
  });

  print("Max Value $max");
  print("Total Salary $totalSalary");

}