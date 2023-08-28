import 'package:flutter/material.dart';

class SwitchListTile_Widget extends StatefulWidget {
  const SwitchListTile_Widget({Key? key}) : super(key: key);

  @override
  State<SwitchListTile_Widget> createState() => _SwitchListTile_WidgetState();
}

class _SwitchListTile_WidgetState extends State<SwitchListTile_Widget> {

  bool con =false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SwitchListTile(
        title: Text('Title',),
        subtitle: Text('Sib title'),
        value: con,
        onChanged: (bool value) { setState(() {
          con=value;
        }); },

      ),
    );
  }
}
