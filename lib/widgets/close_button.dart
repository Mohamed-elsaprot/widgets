import 'package:flutter/material.dart';

class Close_Button extends StatelessWidget {
  const Close_Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child:CloseButton(
        color: Colors.red,
        onPressed: (){print('close');},
      ),
    );
  }
}
