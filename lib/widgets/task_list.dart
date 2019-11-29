import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/widgets/task_item.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  final List<Task> tasks = [
    Task(text: "123", isDone: true),
    Task(text: "456"),
    Task(text: "789", isDone: true),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskItem(
          task: tasks[index],
          onCheckboxToggle: (bool newValue) {
            setState(() {
              tasks[index].isDone = newValue;
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
