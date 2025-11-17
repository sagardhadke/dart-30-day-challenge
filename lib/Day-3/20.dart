//* Create two maps: map1 = {'x': 1, 'y': 2} and map2 = {'y': 20, 'z': 3}. Merge them using .addAll() and see what happens to duplicate keys.

void main(){

  Map<String,dynamic> map1 = {'x': 1, 'y': 2};
  Map<String,dynamic> map2 = {'y': 20, 'z': 3};

  map1.addAll(map2);
  print(map1); // {x: 1, y: 20, z: 3}

}