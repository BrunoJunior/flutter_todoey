import 'package:flutter/cupertino.dart';

class Task {
  final String name;
  final bool done;
  const Task({@required this.name, this.done = false});
  factory Task.toggled(Task task) => Task(name: task.name, done: !task.done);
}
