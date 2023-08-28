import 'package:flutter/material.dart';

class Columnn extends StatelessWidget {
  const Columnn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.center,
        //mainAxisSize: MainAxisSize.min,
        children: const [
          Text('text 1'),
          Text('text 2'),
          Text('text 3'),
          Text('text 4'),
          Text('text text text '),
        ],
      ),
    );
  }
}
