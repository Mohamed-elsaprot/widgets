import 'package:flutter/material.dart';

class Spacer_Widget extends StatelessWidget {
  const Spacer_Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.orange,
          height: 100,
        ),
        const Spacer(flex: 1,),
        Container(
          color: Colors.orange,
          height: 100,
        ),
        const Spacer(flex: 2,),
        Container(
          color: Colors.orange,
          height: 100,
        ),
        const Spacer(flex: 1,),
        Container(
          color: Colors.orange,
          height: 100,
        ),
      ],
    );
  }
}
