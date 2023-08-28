import 'package:flutter/material.dart';


class Animated_Icon extends StatefulWidget {
  const Animated_Icon({Key? key}) : super(key: key);

  @override
  State<Animated_Icon> createState() => _Animated_IconState();
}

class _Animated_IconState extends State<Animated_Icon> with TickerProviderStateMixin{

  late AnimationController controller = AnimationController(vsync: this,duration: Duration(seconds: 1));
  bool condition=false;
  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: (){
          if(condition){
            controller.reverse();
            condition= !condition;
          }else{
            controller.forward();
            condition = !condition;
          }
        },
        child: AnimatedIcon(
          icon: AnimatedIcons.play_pause,
          progress: controller,
          size: 100,
        ),
      ),
    );
  }
}
