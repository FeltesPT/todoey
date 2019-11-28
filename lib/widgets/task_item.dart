import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({Key key, this.task}) : super(key: key);

  final Task task;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(task.text),
      trailing: Checkbox(
        value: task.done,
        onChanged: (bool value) {
          print("Change status");
        },
      ),
    );
  }
}
