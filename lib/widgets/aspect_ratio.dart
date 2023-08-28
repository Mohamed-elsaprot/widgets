import 'package:flutter/material.dart';

class Aspect_Ratio extends StatelessWidget {
  const Aspect_Ratio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Banner(
        message: '25% off',
        color: Colors.red,
        location: BannerLocation.topStart,
        child: Container(
          height: 400,width: double.infinity,alignment: Alignment.center,
          color: Colors.grey,
          child: AspectRatio(aspectRatio: 16/5,child: Container(color: Colors.green,),),
        ),
      ),
    );
  }
}

