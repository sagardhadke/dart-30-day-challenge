//* Create a map of employee IDs and names. Check if employee ID 101 exists using .containsKey(). Then check if name 'Rahul' exists using .containsValue().

void main() {
  Map<int, dynamic> employee = {
    100: "Sagar",
    101: "Gampu",
    102: "Manna",
    103: "Jay",
    104: "Pandra",
  };
  print(employee.containsKey(101));
  print(employee.containsValue("Rahul"));
}
