//* Question 4: Delete Task
//* Create a function deleteTask() that takes task list and index. Remove task at that index. Display updated list. Handle invalid index with error message.

void main() {
  List<String> tasks = ['Buy groceries', 'Finish homework', 'Call the plumber'];

  void displayTasks(List<String> tasks) {
    if (tasks.isEmpty) {
      print('No tasks available');
    } else {
      for (int i = 0; i < tasks.length; i++) {
        print('Task ${i + 1}: ${tasks[i]}');
      }
    }
  }

  void deleteTask(List<String> tasks, int index) {
    if (index >= 0 && index < tasks.length) {
      tasks.removeAt(index);
      print('Task deleted. Updated task list:');
      displayTasks(tasks);
    } else {
      print('Invalid index');
    }
  }

  deleteTask(tasks, 0);
}
