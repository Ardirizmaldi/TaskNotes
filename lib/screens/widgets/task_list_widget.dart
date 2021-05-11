import 'package:flutter/material.dart';
import 'package:state_management_examples/models/task_model.dart';
import 'package:state_management_examples/screens/widgets/task_widget.dart';

class TaskList extends StatefulWidget {
  final List<TaskModel> taskModels;
  const TaskList({
    Key key,
    this.taskModels,
  }) : super(key: key);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget?.taskModels?.length ?? 0,
      itemBuilder: (context, index) {
        return TaskWidget(
          title: widget.taskModels[index].title,
          isDone: widget.taskModels[index].isDone,
          callbackFunction: (value) => setState(() {
            widget.taskModels[index].toggleDone();
          }),
        );
      },
    );
  }
}
