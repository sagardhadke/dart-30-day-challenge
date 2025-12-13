//* Question 5: Task Counter
//* Create a function countTasks() that returns total number of tasks in the list. Display count with message "Total tasks: X".

void main() {
  List<String> tasks = ['Buy groceries', 'Finish homework', 'Call the plumber'];

  void countTasks(List<String> tasks) {
    print('Total tasks: ${tasks.length}');
  }

  countTasks(tasks);
}
