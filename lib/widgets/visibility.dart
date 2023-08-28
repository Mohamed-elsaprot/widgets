import 'package:flutter/material.dart';

class Visibility_Widget extends StatefulWidget {
  const Visibility_Widget({Key? key}) : super(key: key);

  @override
  State<Visibility_Widget> createState() => _Visibility_WidgetState();
}

class _Visibility_WidgetState extends State<Visibility_Widget> {
  bool vis= true;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: () {
              setState(() {
                vis = !vis;
              });
            },
            child: Text('show / Hide'),
          ),
          Visibility(
            visible: vis,
            child: Image.asset('img/linkedin.png'),
          ),
        ],
      ),
    );
  }
}
