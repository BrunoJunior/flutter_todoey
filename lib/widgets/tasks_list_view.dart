import 'package:flutter/material.dart';
import 'package:fluttertodoey/models/tasks_list.dart';
import 'package:provider/provider.dart';

class TasksListView extends StatelessWidget {
  const TasksListView();

  @override
  Widget build(BuildContext context) {
    return Consumer<TasksList>(
      builder: (_, tasksList, __) => ListView.builder(
        itemCount: tasksList.length,
        itemBuilder: (_, index) {
          final task = tasksList.getAt(index);
          return ListTile(
            onLongPress: () => tasksList.remove(index),
            title: Text(
              task.name,
              style: task.done
                  ? const TextStyle(decoration: TextDecoration.lineThrough)
                  : null,
            ),
            trailing: Checkbox(
              value: task.done,
              onChanged: (_) => tasksList.toggle(index),
              activeColor: Colors.blueAccent,
            ),
          );
        },
      ),
    );
  }
}
