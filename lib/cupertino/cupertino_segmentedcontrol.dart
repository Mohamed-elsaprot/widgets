import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Cupertino_SegmentedControl extends StatefulWidget {
  const Cupertino_SegmentedControl({Key? key}) : super(key: key);

  @override
  State<Cupertino_SegmentedControl> createState() =>
      _Cupertino_SegmentedControlState();
}

class _Cupertino_SegmentedControlState
    extends State<Cupertino_SegmentedControl> {
  int x = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 300,
          ),
          CupertinoSlidingSegmentedControl(
            //selectedColor: Colors.orange,
            //unselectedColor: Colors.transparent,
            //pressedColor: Colors.transparent,
            //borderColor: Colors.transparent,
            //padding: EdgeInsets.all(10),
            thumbColor: Colors.lightBlueAccent.withOpacity(.6),
            backgroundColor: Colors.blueGrey,
            groupValue: x,
            children: {
              1: buildContainer('con1', x == 1),
              2: buildContainer('con2', x == 2),
              3: buildContainer('con3', x == 3),
              4: const Text('4')
            },
            onValueChanged: (int? val) {
              setState(() {
                x = val!;
                print(x);
              });
            },
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            '$x',
            style: const TextStyle(fontSize: 55),
          )
        ],
      ),
    );
  }
}

Widget buildContainer(String text, bool key) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10),
    margin: EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
    //  color: Colors.blueGrey,
    ),
    child: Text(
      text,
      style:
          TextStyle(fontSize: 22, color: key ? Colors.white70 : Colors.black),
    ),
  );
}
