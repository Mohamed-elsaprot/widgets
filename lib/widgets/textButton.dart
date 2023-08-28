import 'package:flutter/material.dart';

class TextButton_Widget extends StatelessWidget {
  const TextButton_Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
                disabledForegroundColor: Colors.white38),
            onPressed: null,
            child: const Text('Disabled'),
          ),
          TextButton(
            style:
                TextButton.styleFrom(textStyle: const TextStyle(fontSize: 20)),
            onPressed: () {},
            child: const Text('Enabled'),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xff0d47A1),
                    Color(0xff1976D2),
                    Color(0xff42A5F5),
                    Color(0xff79A5F5),
                  ],
                ),
                borderRadius: BorderRadius.circular(20)),
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 25,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: Text('Text Button'),
            ),
          )
        ],
      ),
    );
  }
}
