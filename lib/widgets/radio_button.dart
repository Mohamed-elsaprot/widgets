import 'package:flutter/material.dart';

class Radioutton_Widget extends StatefulWidget {
  const Radioutton_Widget({Key? key}) : super(key: key);

  @override
  State<Radioutton_Widget> createState() => _Radioutton_WidgetState();
}

List list=['title 1', 'title 2'];

class _Radioutton_WidgetState extends State<Radioutton_Widget> {
  String title1 = list[0];
  String title2 = list[0];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
            title: const Text('Option 1'),
            value: list[0],
            groupValue: title1,
            onChanged: (val){setState(() { title1=val;});},
        ),
        RadioListTile(
            title: const Text('Option 2'),
            value: list[1],
            groupValue: title1,
            onChanged: (val){setState(() { title1=val;});},
        ),
        Center(child: Text(title1),),
        SizedBox(height: 20,),
        RadioListTile(
            title: const Text('Option 1'),
            value: list[0],
            groupValue: title2,
            onChanged: (val){setState(() { title2=val;});},
        ),
        RadioListTile(
            title: const Text('Option 2'),
            value: list[1],
            groupValue: title2,
            onChanged: (val){setState(() { title2=val;});},
        ),
        Center(child: Text(title2),),
      ],
    );
  }
}
