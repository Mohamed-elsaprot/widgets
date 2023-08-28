import 'package:flutter/material.dart';

class Slider_Widget extends StatefulWidget {
  const Slider_Widget({Key? key}) : super(key: key);

  @override
  State<Slider_Widget> createState() => _Slider_WidgetState();
}

class _Slider_WidgetState extends State<Slider_Widget> {
  double rad = 20;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          backgroundColor: Colors.orangeAccent,
          radius: rad,
        ),
        Slider(
          value: rad,
          min: 20,
          max: 200,
          divisions: 10,
          activeColor: Colors.white,
          inactiveColor: Colors.teal,
          label: rad.round().toString(),
          onChanged: (double x) {setState(() {
            rad =x;
          });},
        )
      ],
    );
  }
}
