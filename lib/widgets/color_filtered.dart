import 'package:flutter/material.dart';

class Color_Filtered extends StatelessWidget {
  const Color_Filtered({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
        colorFilter: const ColorFilter.mode(
          Colors.deepOrange,
          BlendMode.color,
        ),
        child: Image.asset('img/linkedin.png'),
      );
  }
}
