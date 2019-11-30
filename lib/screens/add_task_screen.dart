import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({@required this.onTaskAdded});

  final Function onTaskAdded;
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var taskText;

    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Add Task",
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
              textAlign: TextAlign.center,
            ),
            TextField(
              controller: controller,
              autofocus: true,
              onChanged: (newValue) {
                taskText = newValue;
              },
            ),
            FlatButton(
              onPressed: () {
                onTaskAdded(taskText);
                controller.clear();
              },
              child: Text("Add"),
              color: Colors.lightBlueAccent,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
