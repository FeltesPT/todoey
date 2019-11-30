import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/widgets/task_item.dart';
import 'package:todoey_flutter/models/data.dart';

class TaskList extends StatelessWidget {
  TaskList({@required this.onTaskToggle});

  final Function onTaskToggle;

  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(
      builder: (context, data, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            var task = data.tasks[index];
            return TaskItem(
              title: task.text,
              isChecked: task.isDone,
              onCheckboxToggle: (value) {
                onTaskToggle(index);
              },
              onLongPress: () {
                data.delete(task);
              },
            );
          },
          itemCount: data.taskCount,
        );
      },
    );
  }
}
