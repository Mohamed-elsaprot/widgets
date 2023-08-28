import 'package:flutter/material.dart';

class Animated_Switcher extends StatefulWidget {
  const Animated_Switcher({Key? key}) : super(key: key);

  @override
  State<Animated_Switcher> createState() => _Animated_SwitcherState();
}

class _Animated_SwitcherState extends State<Animated_Switcher> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedSwitcher(
            duration: Duration(microseconds: 1500),
            child: Text('$_counter',style: TextStyle(fontSize: 45),key: ValueKey(_counter),),
          ),
          ElevatedButton(
              onPressed: (){
                setState(() {
                  _counter+=1;
                });
              },
              child: Text('add'))
        ],
      ),
    );
  }
}

//transitionBuilder: (Widget child,Animation<double> animation){
//               return ScaleTransition(scale: animation,child: child,);
//             },
