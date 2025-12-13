//* Question 12: Update Task Details
//* Create a function updateTaskDetails() that allows updating:
//* - Description
//* - Priority
//* - Status
//* Take task id and field to update as parameters. Display updated task.

void updateTaskDetails(
  List<Map<String, dynamic>> tasks,
  int id,
  String field,
  dynamic value,
) {
  for (var task in tasks) {
    if (task['id'] == id) {
      task[field] = value;
      print('Updated Task: $task');
      return;
    }
  }
  print('Task not found');
}
