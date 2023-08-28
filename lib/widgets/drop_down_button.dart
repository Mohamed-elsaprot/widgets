import 'package:flutter/material.dart';

class DropdownButton_Widget extends StatelessWidget {
  const DropdownButton_Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? x='2';
    return Center(
      child: DropdownButton<String>(
        focusColor: Colors.red,
        style: const TextStyle(color: Colors.white),
        // icon: const Icon(Icons.numbers),
        value: x,
        underline: Container(height: 2,color: Colors.white),
        dropdownColor: Colors.transparent,
        elevation: 0,
        items: [
          DropdownMenuItem(
            child: FloatingActionButton(onPressed: () {  },),
            value: '1',
            onTap: (){print('1');},
          ),
          DropdownMenuItem(
            child: Text('2'),
            value: '2',
            onTap: (){print('2');},
          ),
        ],
        onChanged: (String? value) { x=value; },

      ),
    );
  }
}
