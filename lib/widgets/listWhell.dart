import 'package:flutter/material.dart';

class ListWheelScrollView_Widget extends StatelessWidget {
  // const ListWhellScrollView_Widget({Key? key}) : super(key: key);
  List list = List.generate(30, (index) => Text('Item Number: $index',style: TextStyle(fontSize: 25),));
  @override
  Widget build(BuildContext context) {
    return ListWheelScrollView(
        itemExtent: 100,
        children: list.map((e) => ListTile(
          leading: const Icon(Icons.person,color: Colors.white,),
          trailing: const Icon(Icons.menu,color: Colors.white),
          title: e,
          onTap: (){print(e);},
          onLongPress: (){print(11111);},
        )).toList()
    );
  }
}




