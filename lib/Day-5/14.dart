//* Q14. Reverse a list manually (no .reversed, no shortcuts).

void main(){

  List<String> techName = ["Apple",'Google',"Netflix",'BMW',"Microsoft"];
  List<String> newList = [];

  for(int i = techName.length -1; i >= 0; i--){
    newList.add(techName[i]);
  }

  print(newList);


}