//* Question 9: Mark Task as Complete
//* Create a function markComplete() that takes task id and changes status from "Pending" to "Completed". Display updated task. Handle case when task not found.

void markComplete(List<Map<String, dynamic>> tasks, int id) {
  bool found = false;

  for (var task in tasks) {
    if (task['id'] == id) {
      task['status'] = 'Completed';
      print('Updated Task: $task');
      found = true;
      break;
    }
  }

  if (!found) {
    print('Task not found');
  }
}
