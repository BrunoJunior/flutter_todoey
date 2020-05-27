import 'package:flutter/material.dart';

class TodoRow extends StatelessWidget {
  final String todo;
  const TodoRow(this.todo);

  @override
  Widget build(BuildContext context) => ListTile(
        title: Text(todo),
        trailing: Checkbox(
          value: false,
          onChanged: (value) {},
        ),
      );
}
