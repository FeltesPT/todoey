import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  const TaskItem(
      {Key key,
      this.title,
      this.isChecked,
      this.onCheckboxToggle,
      this.onLongPress})
      : super(key: key);

  final String title;
  final bool isChecked;
  final Function onCheckboxToggle;
  final Function onLongPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: onCheckboxToggle,
      ),
      onLongPress: onLongPress,
    );
  }
}
