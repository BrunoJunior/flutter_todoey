import 'package:flutter/material.dart';
import 'package:fluttertodoey/models/task.dart';

class TasksList extends StatelessWidget {
  final List<Task> tasks;
  final void Function(int index) onTaskToggled;
  const TasksList({@required this.tasks, this.onTaskToggled});

  @override
  Widget build(BuildContext context) => ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(
            tasks[index].name,
            style: tasks[index].done
                ? const TextStyle(decoration: TextDecoration.lineThrough)
                : null,
          ),
          trailing: Checkbox(
            value: tasks[index].done,
            onChanged:
                null == onTaskToggled ? null : (v) => onTaskToggled(index),
            activeColor: Colors.blueAccent,
          ),
        ),
      );
}
