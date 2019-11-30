import 'package:flutter/material.dart';

import 'package:todoey_flutter/models/task.dart';

class Data extends ChangeNotifier {
  List<Task> tasks = [
    Task(text: "123", isDone: true),
    Task(text: "456"),
    Task(text: "789"),
  ];

  void addTasks(Task newTask) {
    tasks.add(newTask);
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
