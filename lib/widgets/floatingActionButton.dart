import 'package:flutter/material.dart';

class FloatingActionButton_Widget extends StatelessWidget {
  const FloatingActionButton_Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: (){},
      backgroundColor: Colors.blue,
      mini: false,
      tooltip: 'Button',
      child: Icon(Icons.add),
      elevation: 10,
      autofocus: true,

    );
  }
}
