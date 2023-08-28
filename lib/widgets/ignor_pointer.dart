import 'package:flutter/material.dart';

class IgnorPointer_Widget extends StatefulWidget {
  const IgnorPointer_Widget({Key? key}) : super(key: key);

  @override
  State<IgnorPointer_Widget> createState() => _IgnorPointer_WidgetState();
}

class _IgnorPointer_WidgetState extends State<IgnorPointer_Widget> {
  bool ignore = false;
  int x=0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => setState(() {
              ignore = !ignore;
            }), child: Text('Ignor',),
            style: ElevatedButton.styleFrom(
              backgroundColor: ignore? Colors.red: Colors.green
            ),),
          IgnorePointer(
            ignoring: ignore,
            child: ElevatedButton(
              onPressed: () {x++;print(x);}, child: Text('liugiuh',),
            ),
          )
        ],
      ),
    );
  }
}
