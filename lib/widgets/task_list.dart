import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/widgets/task_item.dart';

class TaskList extends StatelessWidget {
  const TaskList({@required this.tasks});

  final List<Task> tasks;

  @override
  Widget build(BuildContext context) {
    List<TaskItem> items = [];
    for (var task in tasks) {
      items.add(TaskItem(task: task));
    }

    return ListView(
      children: items,
    );
  }
}
