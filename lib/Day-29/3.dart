//* Question 3: Update Task
//* Create a function updateTask() that takes task list, index, and new description. Update the task at given index. Display updated list. Handle invalid index.

void main() {
  List<String> tasks = ['Buy groceries', 'Finish homework', 'Call the plumber'];

  void displayTasks(List<String> tasks) {
    for (int i = 0; i < tasks.length; i++) {
      print('Task ${i + 1}: ${tasks[i]}');
    }
  }

  void updateTask(List<String> tasks, int index, String newDescription) {
    if (index >= 0 && index < tasks.length) {
      tasks[index] = newDescription;
      print('Updated task list:');
      displayTasks(tasks);
    } else {
      print('Invalid index');
    }
  }

  updateTask(tasks, 1, 'Finish Dart homework');
}
