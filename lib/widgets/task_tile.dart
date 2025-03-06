import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) toggleCheckboxState;
  final Function() onLongPressCallBack;

  const TaskTile({
    super.key,
    required this.isChecked,
    required this.toggleCheckboxState,
    required this.taskTitle,
    required this.onLongPressCallBack,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPressCallBack,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
          value: isChecked,
          activeColor: Colors.lightBlueAccent,
          onChanged: toggleCheckboxState),
    );
  }
}
