//* Q11. Create a map of 4 countries → capitals.
// Print all keys and all values separately.

void main(){

  Map<String,dynamic> countries = {
    "India" : "New Delhi",
    "France" : "Paris",
    "Japan" : "Tokyo",
    "Brazil" : "Brasília",
  };

  countries.forEach((key,value){
    print("$key → $value");
  });

}