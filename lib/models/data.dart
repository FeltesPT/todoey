import 'package:flutter/material.dart';
import 'dart:collection';

import 'package:todoey_flutter/models/task.dart';

class Data extends ChangeNotifier {
  List<Task> _tasks = [
    Task(text: "123", isDone: true),
    Task(text: "456"),
    Task(text: "789"),
  ];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  int get taskCount {
    return _tasks.length;
  }

  int get completedCount {
    return _tasks.where((i) => i.isDone).length;
  }

  int get notCompletedCount {
    return _tasks.where((i) => !i.isDone).length;
  }

  void addTask(Task newTask) {
    _tasks.add(newTask);
    notifyListeners();
  }

  void addTaskWith({String title, bool done = false}) {
    _tasks.add(Task(text: title, isDone: done));
    notifyListeners();
  }

  void toggleTask(int index) {
    _tasks[index].toggleDone();
    notifyListeners();
  }

  void deleteTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
