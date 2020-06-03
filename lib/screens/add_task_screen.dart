import 'package:flutter/material.dart';
import 'package:fluttertodoey/models/task.dart';

class AddTaskScreen extends StatefulWidget {
  final void Function(Task task) onAddPressed;

  AddTaskScreen({@required this.onAddPressed});

  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

const InputBorder _inputBorder = UnderlineInputBorder(
  borderSide: const BorderSide(width: 5.0, color: Colors.lightBlueAccent),
);

class _AddTaskScreenState extends State<AddTaskScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45.0, vertical: 30.0),
      child: Column(
        children: [
          const Text(
            'Add Task',
            style: const TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 35.0,
              fontWeight: FontWeight.w400,
            ),
          ),
          TextField(
            autofocus: true,
            controller: _controller,
            decoration: InputDecoration(
              enabledBorder: _inputBorder,
              focusedBorder: _inputBorder,
            ),
            style: TextStyle(color: Colors.lightBlueAccent, fontSize: 20.0),
          ),
          const SizedBox(height: 30.0),
          SizedBox(
            width: double.infinity,
            child: FlatButton(
              onPressed: () {
                widget.onAddPressed(Task(name: _controller.text));
                _controller.clear();
              },
              color: Colors.lightBlueAccent,
              child: const Padding(
                padding: const EdgeInsets.all(15.0),
                child: const Text(
                  'Add',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
              shape: const BorderDirectional(),
            ),
          ),
        ],
      ),
    );
  }
}
