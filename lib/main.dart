import 'package:flutter/material.dart';
import 'package:fluttertodoey/screens/tasks_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: TasksScreen.id,
      routes: {TasksScreen.id: (context) => TasksScreen()},
    );
  }
}
