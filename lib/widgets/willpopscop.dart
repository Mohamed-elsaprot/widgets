import 'package:flutter/material.dart';

class WillPopScope_Widget extends StatelessWidget {
  const WillPopScope_Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            leading:IconButton(
              icon: Icon(Icons.arrow_back_sharp),
              onPressed: (){Navigator.pop(context);},
            ),
          ),
        ),
        onWillPop: () async{
          return false;
        }
    );
  }
}
