import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Cupertino_TabScaffold extends StatelessWidget {

  List scaffolds = const [
    Scaffold(
      body: Center(
        child: Text('Setting'),
      ),
    ),Scaffold(
      body: Center(
        child: Text('Home'),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          height: 70,
          iconSize: 35,
          inactiveColor: Colors.grey,
          currentIndex: 1,
          backgroundColor: Colors.black87,
          activeColor: Colors.deepPurple,
          //border: Border(top: BorderSide(width: 5,color: Colors.red,),left: BorderSide(width: 5,color: Colors.red,),),
          border: Border.all(color: Colors.indigo,width: 2),
          onTap: (int x){ print(x);},
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'setting'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          ],
        ),
        tabBuilder: (ctx, index) {
          return scaffolds[index];
        });
  }
}
