import 'package:flutter/material.dart';

import 'package:todoey_flutter/models/task.dart';

class Data extends ChangeNotifier {
  List<Task> tasks = [
    Task(text: "123", isDone: true),
    Task(text: "456"),
    Task(text: "789"),
  ];

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

  int getCompletedCount() {
    var completed = tasks.where((i) => i.isDone).toList();
    return completed.length;
  }

  int getNotCompletedCount() {
    var notCompleted = tasks.where((i) => !i.isDone).toList();
    return notCompleted.length;
  }
}
