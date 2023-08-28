import 'package:flutter/material.dart';

class Animated_Rotation extends StatefulWidget {
  const Animated_Rotation({Key? key}) : super(key: key);

  @override
  State<Animated_Rotation> createState() => _Animated_RotationState();
}

class _Animated_RotationState extends State<Animated_Rotation> {
  double rot = 0,scale=1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedScale(
            scale: scale,
            duration: Duration(seconds: 1),
            child: AnimatedRotation(
              turns: rot,
              curve: Curves.fastLinearToSlowEaseIn,
              duration: Duration(seconds: 1),
              child: FlutterLogo(
                size: 100,
              ),
            ),
          ),
          SizedBox(height: 250,),
          ElevatedButton(
              onPressed: () {
                rot+=.25;
                scale+=.5;
                setState(() {
                });
              }, child: const Text('Animated Rotation'))
        ],
      ),
    );
  }
}
