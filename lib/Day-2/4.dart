//* Make a list of your family members' ages. Print each age with a label like "Member 1 age: X".

void main(){

  List<int> age = [21,28,30,46,85];
  for(int i = 0; i<=age.length - 1; i++){
    print("Member ${i+1} age: ${age[i]}");
  }

}