import 'package:flutter/material.dart';


class Default_Text_Style extends StatelessWidget {
  const Default_Text_Style({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DefaultTextStyle(
        style:const TextStyle(fontSize: 25,color: Colors.blue),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:const [
            Text('Flutter Developer'),
            Text('eng/ Mohemed Yasser Elsaprot'),
          ],
        ),

      ),
    );
  }
}
