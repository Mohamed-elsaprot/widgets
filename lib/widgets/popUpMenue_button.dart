import 'package:flutter/material.dart';

class PopupMenueButton_Widget extends StatefulWidget {
  const PopupMenueButton_Widget({Key? key}) : super(key: key);

  @override
  State<PopupMenueButton_Widget> createState() => _PopupMenueButton_WidgetState();
}

class _PopupMenueButton_WidgetState extends State<PopupMenueButton_Widget> {

  String title= 'Title 1';
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title,style: TextStyle(color: Colors.black),),
      trailing: PopupMenuButton(
        color: Colors.black,
        iconSize: 30,
        // icon: Icon(Icons.abc_outlined),
        itemBuilder: (BuildContext context)=> [
          PopupMenuItem(
            value: 'title1',
            onTap: (){},
            child: const Text('Title 1'),
          ),
          PopupMenuItem(
            value: 'Title 2',
            onTap: (){},
            child: const Text('title 2'),
          ),
        ],
        onSelected: (x){setState(() {title = x;});},
      ),
    );
  }
}
