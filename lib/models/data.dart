import 'package:flutter/material.dart';

import 'package:todoey_flutter/models/task.dart';

class Data extends ChangeNotifier {
  List<Task> tasks = [
    Task(text: "123", isDone: true),
    Task(text: "456"),
    Task(text: "789"),
  ];

  int get taskCount {
    return tasks.length;
  }

  int get completedCount {
    return tasks.where((i) => i.isDone).length;
  }

  int get notCompletedCount {
    return tasks.where((i) => !i.isDone).length;
  }

  void addTask(Task newTask) {
    tasks.add(newTask);
    notifyListeners();
  }

  void addTaskWith({String title, bool done = false}) {
    tasks.add(Task(text: title, isDone: done));
    notifyListeners();
  }

  void toggleTask(int index) {
    tasks[index].toggleDone();
    notifyListeners();
  }
}
