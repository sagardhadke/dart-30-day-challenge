//* Question 6: Search Task
//* Create a function searchTask() that takes task list and search keyword. Display all tasks containing that keyword. If not found, display "No matching tasks found".

void main() {
  List<String> tasks = ['Buy groceries', 'Finish homework', 'Call the plumber'];

  void searchTask(List<String> tasks, String keyword) {
    List<String> matchingTasks = [];
    for (String task in tasks) {
      if (task.toLowerCase().contains(keyword.toLowerCase())) {
        matchingTasks.add(task);
      }
    }

    if (matchingTasks.isEmpty) {
      print('No matching tasks found');
    } else {
      for (String task in matchingTasks) {
        print(task);
      }
    }
  }

  searchTask(tasks, 'homework');
}
