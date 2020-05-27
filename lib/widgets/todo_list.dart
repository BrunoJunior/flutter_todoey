import 'package:flutter/material.dart';
import 'package:fluttertodoey/widgets/todo_row.dart';

class TodoList extends StatelessWidget {
  final List<String> todos;
  const TodoList(this.todos);

  @override
  Widget build(BuildContext context) => ListView(
        children: todos.map((todo) => TodoRow(todo)).toList(growable: false),
      );
}
