import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/widgets/task_item.dart';
import 'package:todoey_flutter/models/data.dart';

class TaskList extends StatelessWidget {
  TaskList({@required this.onTaskToggle});

  final Function onTaskToggle;

  @override
  Widget build(BuildContext context) {
    List<Task> tasks = Provider.of<Data>(context).tasks;

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
