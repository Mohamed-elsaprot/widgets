import 'package:flutter/material.dart';

class InterActiveViewer_Widget extends StatelessWidget {
  const InterActiveViewer_Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InteractiveViewer(
          child: Image.asset('img/linkedin.png',height: 350,width: 350,),
          boundaryMargin: EdgeInsets.all(50),
        ),
      ),
    );
  }
}
