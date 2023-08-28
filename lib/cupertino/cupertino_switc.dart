import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Cupertino_Switch extends StatefulWidget {
  const Cupertino_Switch({Key? key}) : super(key: key);

  @override
  State<Cupertino_Switch> createState() => _Cupertino_SwitchState();
}

class _Cupertino_SwitchState extends State<Cupertino_Switch> {
  bool x = false, y = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CupertinoSwitch(
            thumbColor: Colors.white,
              activeColor: Colors.blue,
              trackColor: Colors.green,
              value: x,
              onChanged: (val) {
                setState(() {
                  x = val;
                  print('x= $x');
                });
              }),
          ElevatedButton(onPressed: ()=>print('mmm'), child: Text('button'))
        ],
      ),
    );
  }
}
