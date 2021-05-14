import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_examples/models/task_data.dart';
import 'package:state_management_examples/models/task_model.dart';
import 'package:state_management_examples/screens/widgets/task_widget.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) => ListView.builder(
        itemCount: taskData?.taskCount ?? 0,
        itemBuilder: (context, index) {
          final currentTask = taskData.tasks[index];
          return TaskWidget(
            title: currentTask.title,
            isDone: currentTask.isDone,
            checkTask: (isDone) => taskData.updateTask(currentTask),
            removeTask: () => taskData.removeTask(currentTask),
          );
        },
      ),
    );
  }
}
