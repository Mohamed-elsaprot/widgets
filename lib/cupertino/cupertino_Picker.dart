import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cupertino_Picker extends StatefulWidget {
  const Cupertino_Picker({Key? key}) : super(key: key);

  @override
  State<Cupertino_Picker> createState() => _Cupertino_PickerState();
}

class _Cupertino_PickerState extends State<Cupertino_Picker> {
  int? x;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoButton.filled(
          child: Text('Picker $x'),
          onPressed: () => showCupertinoModalPopup(
              context: context,
              builder: (ctx) => SizedBox(
                    height: 250,
                    child: CupertinoPicker(
                      backgroundColor: Colors.black12,
                      itemExtent: 30,
                      //selectionOverlay: Text('title',textAlign: TextAlign.center,),
                      scrollController: FixedExtentScrollController(initialItem: 2),
                      onSelectedItemChanged: (int value) {
                        print(value);
                        setState(() {x=value;});
                      },
                      children: const [
                        Text('1'),
                        Text('2'),
                        Text('3'),
                        Text('4'),
                        Text('5'),
                      ],
                    ),
                  ))),
    );
  }
}
