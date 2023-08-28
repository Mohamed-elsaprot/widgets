import 'package:flutter/material.dart';

class IndexedStack_Widget extends StatefulWidget {
  const IndexedStack_Widget({Key? key}) : super(key: key);

  @override
  State<IndexedStack_Widget> createState() => _IndexedStack_WidgetState();
}

class _IndexedStack_WidgetState extends State<IndexedStack_Widget> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: ()=> setState(() {
                index=0;
              }), child: Text('1')),
              ElevatedButton(onPressed: ()=> setState(() {
                index=1;
              }), child: Text('2')),
              ElevatedButton(onPressed: ()=> setState(() {
                index=2;
              }), child: Text('3')),
            ],
          ),
          IndexedStack(
            index: index,
            children: const [
              Center(
                child: Image(
                  image: NetworkImage('https://tinyurl.com/yc4pctt5'),
                ),
              ),Center(
                child: Image(
                  image: NetworkImage('https://tinyurl.com/yc4pctt5'),
                  colorBlendMode: BlendMode.colorBurn,
                  color: Colors.blue,
                ),
              ),Center(
                child: Image(
                  image: NetworkImage('https://tinyurl.com/yc4pctt5'),
                  colorBlendMode: BlendMode.colorBurn,
                  color: Colors.red,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

