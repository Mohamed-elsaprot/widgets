import 'package:flutter/material.dart';

class ReorderableListView_Widget extends StatefulWidget {
  const ReorderableListView_Widget({Key? key}) : super(key: key);

  @override
  State<ReorderableListView_Widget> createState() => _ReorderableListView_WidgetState();
}

class _ReorderableListView_WidgetState extends State<ReorderableListView_Widget> {
  List<int> list = List.generate(30, (index) => index);
  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
        children: list.map<Widget>((e) {
          return ListTile(
            key: Key('$e'),
            tileColor: e.isOdd? Colors.white12:Colors.white30,
            title: Text('Item: $e',style: const TextStyle(fontSize: 22),),
            trailing: const Icon(Icons.drag_handle),
          );
        }).toList(),
        onReorder: (oldIndex,newIndex){
          setState(() {});
          if(oldIndex < newIndex){
            newIndex -=1;
          }
          print('old: $oldIndex');
          print('nwe: $newIndex');
          final int item = list.removeAt(oldIndex);
          list.insert(newIndex, item);
        },

    );
  }
}
