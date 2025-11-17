//* Create a map with 5 items. Use .clear() to remove all entries and print the empty map.

void main(){

  Map<String,dynamic> tech = {
    "Flutter" : 2011,
    "Android" : 2005,
    "Apple" : 1979,
    "Samsung" : 1454,
    "Netflix" : 1888
  };
  tech.clear();
  print(tech);

}