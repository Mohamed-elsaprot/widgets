import 'package:flutter/material.dart';

class VerDivider extends StatelessWidget {
  const VerDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: SizedBox(
            height: 400,
            width: 400,
            child: Row(
              children: [
                Container(color: Colors.redAccent,width: 80,),
                VerticalDivider(thickness: 5,color: Colors.white,),
                Container(color: Colors.redAccent,width: 80,),

              ],
            ),),
      ),
    );
  }
}
