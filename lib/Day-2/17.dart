//* Take a list of names. Remove all names shorter than 4 characters.

void main(){

  List<String> names = ['Abc',"Apple","Flutter","Om","Ram"];
  
  for(int i = 0; i <= names.length - 1; i++){
    if(names[i].length >= 4){
      print(names[i]);
    }
  }

}