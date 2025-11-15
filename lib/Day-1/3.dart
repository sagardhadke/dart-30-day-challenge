// * 3. Create variables without assigning values initially. Then assign values later. What errors do you get if you try printing them before assigning?


void main(){

  String role;
  //! Error :- The non-nullable local variable "role" must be assigned before it can be used.
  // print("Before : $role"); 


  role = "Flutter Developer";

  print("After $role");

}