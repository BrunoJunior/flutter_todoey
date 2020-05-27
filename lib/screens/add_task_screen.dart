import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  InputBorder get _inputBorder => UnderlineInputBorder(
        borderSide: BorderSide(
          width: 5.0,
          color: Colors.lightBlueAccent,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45.0, vertical: 30.0),
      child: Column(
        children: [
          Text(
            'Add Task',
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 35.0,
              fontWeight: FontWeight.w400,
            ),
          ),
          TextField(
            autofocus: true,
            decoration: InputDecoration(
              enabledBorder: _inputBorder,
              focusedBorder: _inputBorder,
            ),
            style: TextStyle(color: Colors.lightBlueAccent, fontSize: 20.0),
          ),
          SizedBox(
            height: 30.0,
          ),
          SizedBox(
            width: double.infinity,
            child: FlatButton(
              onPressed: () {},
              color: Colors.lightBlueAccent,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Add',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
              shape: BorderDirectional(),
            ),
          ),
        ],
      ),
    );
  }
}
