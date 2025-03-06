import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';

import '../models/task.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, Widget? child) {
        return ListView.builder(
          itemCount: taskData.taskCount,
          itemBuilder: (context, index) {
            final task = taskData.tasks![index];
            return TaskTile(
              isChecked: task.isDone,
              taskTitle: task.name,
              toggleCheckboxState: (bool? newValue) {
                taskData.updateTask(task);
              },
              onLongPressCallBack: () {
                taskData.deleteTask(task);
              },
            );
          },
        );
      },
    );
  }
}
