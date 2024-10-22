import 'package:flutter/material.dart';
import 'package:modul7/controller/main_controler.dart';
import 'package:modul7/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, TaskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = TaskData._tasks[index];
          return TaskTile(
            taskTitle: task.name,
            isChecked: task.isDone,
            checkboxCallback: (checkboxState) {
              TaskData.updateTask(task);
            },
            longPressCallback: () {
              TaskData.deleteTask(task);
            },
          );
        },
        itemCount: TaskData.taskCount,
      );
    });
  }
}