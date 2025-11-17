//* Q7. Nested Map Access

//* Given: {
//*  'Rahul': {'math': 85, 'science': 90},
//*  'Priya': {'math': 92, 'science': 88}
//* }
//* Print Rahul's science marks.

void main() {
  Map<String, dynamic> marks = {
    'Rahul': {'math': 85, 'science': 90},
    'Priya': {'math': 92, 'science': 88},
  };

  print("Rahul Science Marks ${marks['Rahul']['science']}");
}
