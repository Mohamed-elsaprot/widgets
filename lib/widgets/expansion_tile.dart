import 'package:flutter/material.dart';

class ExpansionTile_Widget extends StatelessWidget {
  const ExpansionTile_Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      collapsedBackgroundColor: Colors.grey,
      collapsedIconColor: Colors.blue,
      collapsedTextColor: Colors.black,

      backgroundColor: Colors.black54,
      iconColor: Colors.white,
      textColor: Colors.white,

      subtitle: const Text('Sub Title',style: TextStyle(fontSize: 20),),
      title: const Text('Title',style: TextStyle(fontSize: 25)),

      onExpansionChanged: (bool isChanged){
        print('$isChanged');
      },

      children: [
        const SizedBox(height: 20,),
        Text('Child'),
        const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 100,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    backgroundColor: Colors.white54,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 20)),
                onPressed: () {},
                child: Text('but1',),
              ),
            ),
            SizedBox(width: 20),
            SizedBox(
              width: 100,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  backgroundColor: const Color(0xff003366),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                ),
                onPressed: () {},
                child: Text('but2',),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10,),
      ],
    );
  }
}
