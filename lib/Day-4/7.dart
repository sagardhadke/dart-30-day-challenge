//* 7. Create a Map<String, String> book = {'title': 'X', 'author': 'Y'}. Add a new key 'year' and print.

void main(){

  Map<String, String> book = {'title': 'X', 'author': 'Y'};
  //* Method 1
  
  // book.addAll({
  //   "year" : "2010"
  // });
  // print(book);

  //* Method 2
  book['year'] = "2011";
  print(book);

}