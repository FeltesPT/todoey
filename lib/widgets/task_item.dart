import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({Key key, this.task, this.onCheckboxToggle}) : super(key: key);

  final Task task;
  final Function onCheckboxToggle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task.text,
        style: TextStyle(
          decoration: task.isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: task.isDone,
        onChanged: onCheckboxToggle,
      ),
    );
  }
}
