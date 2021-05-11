import 'package:flutter/material.dart';

class TaskModel {
  String title;
  bool isDone = false;
  TaskModel({
    @required this.title,
    @required this.isDone,
  });

  void toggleDone() {
    isDone = !isDone;
  }
}
