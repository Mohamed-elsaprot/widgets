import 'dart:math';
import 'package:flutter/material.dart';

class TweenAni extends StatefulWidget {
  const TweenAni({Key? key}) : super(key: key);

  @override
  State<TweenAni> createState() => _TweenAniState();
}

class _TweenAniState extends State<TweenAni> {
  double angle = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tween'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TweenAnimationBuilder<double>(
                  tween: Tween(begin: 0, end: angle),
                  duration: const Duration(seconds: 1),
                  builder: (_,double varNum, child) {
                    print('varNum $varNum');
                    return Transform.rotate(
                      angle: varNum,
                      child: child,
                    );
                  },
                  child: Container(
                    color: Colors.blue,
                    height: 200,
                    width: 100,
                  )
              ),
              Text(
                '${(angle * (180 / pi)).round()}',
                style: const TextStyle(fontSize: 30),
              ),
              Slider(
                value: angle,
                divisions: 4,
                min: 0,
                max: 2 * pi,
                onChanged: (x) => setState(() {
                  print('x: $x');
                  angle = x;
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
