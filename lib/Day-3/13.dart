//* Create a map of cities and populations. Add 2 new cities using map[key] = value syntax. Print before and after.

void main(){

  Map<String,dynamic> cities = {
    "Mumbai" : 21673570,
    "Rajasthan" : 83100000, 
  };

  print(cities);
  cities = {
    "Pune" : 5057709,
    "Kolhapur" : 802000
  };
  print(cities);

}