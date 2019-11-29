import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/widgets/task_item.dart';

class TaskList extends StatelessWidget {
  TaskList({@required this.tasks, @required this.onTaskToggle});

  final List<Task> tasks;
  final Function onTaskToggle;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskItem(
          task: tasks[index],
          onCheckboxToggle: (value) {
            onTaskToggle(index);
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
