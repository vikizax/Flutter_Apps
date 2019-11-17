import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final int index;
  TaskTile(
      {@required this.isChecked,
      @required this.taskTitle,
      @required this.index});
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      onDismissed: (direction) {
        // print(direction);
        Provider.of<TaskData>(context).removeTask(index);
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text(
              "$taskTitle  dismissed",
              textAlign: TextAlign.center,
            ),
            duration: Duration(seconds: 2),
          ),
        );
      },
      background: Container(
        decoration: BoxDecoration(
          color: Colors.redAccent,
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      child: ListTile(
        title: Text(
          taskTitle,
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Checkbox(
          value: isChecked,
          activeColor: Colors.lightBlueAccent,
          onChanged: (value) =>
              Provider.of<TaskData>(context).changeTaskState(index),
        ),
      ),
    );
  }
}
