import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Indicator extends StatelessWidget {
  const Indicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CupertinoActivityIndicator(
        radius: 30,
        color: Colors.orangeAccent,
      ),
    );
  }
}
