import 'package:flutter/material.dart';

class Alignn extends StatelessWidget {
  const Alignn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: 300,
      width: double.infinity,
      child: Align(
        alignment: Alignment.bottomRight,
        child: FlutterLogo(size: 100,),
      ),
    );
  }
}

class Animates_Align extends StatefulWidget {
  const Animates_Align({Key? key}) : super(key: key);

  @override
  State<Animates_Align> createState() => _Animates_AlignState();
}

class _Animates_AlignState extends State<Animates_Align> {
  bool top= false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){top= !top;print(1);setState(() {});} ,
      child: Container(
        height: 300,width: double.infinity,
        color: Colors.brown,
        child: AnimatedAlign(
          curve: Curves.fastLinearToSlowEaseIn,
          duration: Duration(seconds: 2),
          alignment: top? Alignment.bottomRight: Alignment.topLeft,
          child: FlutterLogo(size: 50,),
        ),
      ),
    );
  }
}

