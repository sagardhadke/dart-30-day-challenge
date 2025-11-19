//* Q17. Create a list: ['apple','banana','apple','orange','banana','apple','mango','banana','apple']
// Count frequency and print: “Most popular fruit: X with Y occurrences.”

void main() {
  List<String> fruits = [
    'apple',
    'banana',
    'apple',
    'orange',
    'banana',
    'apple',
    'mango',
    'banana',
    'apple',
  ];
  Map<String,dynamic> newList = {};

  for(int i = 0; i<=fruits.length - 1; i++){

    if(newList.containsKey(fruits[i])){
      newList[fruits[i]] = newList[fruits[i]] + 1; 
    }else{
      newList[fruits[i]] = 1;

    }

  }

  print(newList);

}
