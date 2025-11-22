//* Q4: Simple Login Check:
//* username = 'admin', password = '1234'
//* Check: username == 'admin' && password == '1234'
//* Print: true (valid login) or false (invalid)

void main() {
  String username = "admin";
  String password = "1234";

  if (username == "admin" && password == "1234") {
    print("valid Login");
  } else {
    print('invalid login');
  }
}
