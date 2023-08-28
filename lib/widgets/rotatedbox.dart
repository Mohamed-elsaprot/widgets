import 'package:flutter/material.dart';

class RotatedBox_Widget extends StatelessWidget {
  const RotatedBox_Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: RotatedBox(
        quarterTurns: 1,
        child: FlutterLogo(size: 100,),
      ),
    );
  }
}
