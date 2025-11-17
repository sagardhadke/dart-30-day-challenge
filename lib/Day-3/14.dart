//* Create a map: {1: 'Red', 2: 'Green', 3: 'Blue'}. Remove the entry with key 2 using .remove(). Print the result.

void main(){

  Map<int,dynamic> colors = {1: 'Red', 2: 'Green', 3: 'Blue'};
  colors.remove(2);
  print(colors);

}