import 'package:flutter/material.dart';

class Animated_Cross_Fade extends StatefulWidget {
  const Animated_Cross_Fade({Key? key}) : super(key: key);

  @override
  State<Animated_Cross_Fade> createState() => _Animated_Cross_FadeState();
}

class _Animated_Cross_FadeState extends State<Animated_Cross_Fade> {
  bool x = true;
  String a = 'اضغط ليظهر القمر';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                setState(() {
                  x = !x;
                  if (x) a = 'اختفي القمر تعالا بكره بق';
                });
              },
              child: Text('switch by AnimatedCrossFade')),
          AnimatedCrossFade(
              firstChild: Text(
                '$a',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.pinkAccent.withOpacity(.9)),
              ),
              secondChild: Image.network(
                  'https://scontent.fcai21-1.fna.fbcdn.net/v/t39.30808-6/356353141_1702861500152668_8065171568201014269_n.jpg?_nc_cat=101&cb=99be929b-3346023f&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=4RVZM38mr28AX9aYN7V&_nc_ht=scontent.fcai21-1.fna&oh=00_AfBbIlmKwpyHYlzfJpcpy9ULEF57mHgpowJowOfZa1ltAg&oe=64BF953F'),
              crossFadeState:
                  x ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: Duration(seconds: 3))
        ],
      ),
    );
  }
}
