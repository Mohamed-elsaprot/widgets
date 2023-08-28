import 'package:flutter/material.dart';
import 'dart:math' as math;

class Animated_Builder extends StatefulWidget {
  const Animated_Builder({Key? key}) : super(key: key);

  @override
  State<Animated_Builder> createState() => _Animated_BuilderState();
}

class _Animated_BuilderState extends State<Animated_Builder>
    with TickerProviderStateMixin {
  late final AnimationController controller1 = AnimationController(vsync: this, duration: const Duration(seconds: 4),)..repeat(min: 0, reverse: true);
  late final AnimationController controller2 = AnimationController(vsync: this, duration: const Duration(seconds: 2),)..repeat(min: .5, max: .999, reverse: true);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // controller1;
    // controller2;
    //controller1.addListener(() {print(controller1.value); });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller1.dispose();
    controller2.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Center(
          child: AnimatedBuilder(
              animation: controller1,
              builder: (context, Widget? child) {
                return Transform.rotate(
                  angle: math.pi * controller1.value * 2,
                  //origin: Offset(80, 0),
                  child: child,
                );
              },
              child: InkWell(
                child: const FlutterLogo(
                  size: 100,
                ),
                onTap: () {
                  print(controller1.value);
                },
              )),
        ),
        Center(
          child: AnimatedBuilder(
              animation: controller2,
              builder: (context, Widget? child) {
                return Transform.scale(
                  origin: const Offset(300,0),
                  scale: controller2.value,
                  child: child,
                );
              },
              child: const FlutterLogo(
                size: 100,
              )),
        ),
      ],
    );
  }
}
