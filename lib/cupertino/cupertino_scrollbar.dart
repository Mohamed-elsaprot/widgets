import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Cupertino_Scrollbar extends StatelessWidget {
  const Cupertino_Scrollbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoScrollbar(
      thickness: 10,
      thicknessWhileDragging: 25,
      radius: Radius.circular(20),
      radiusWhileDragging: Radius.zero,
      thumbVisibility: true,
      child: ListView.builder(
          reverse: true,
          itemCount: 50,
          itemExtent: 35,
          itemBuilder: (ctx, index) => Center(
                child: Text('${index+1}'),
              )),
    );
  }
}
