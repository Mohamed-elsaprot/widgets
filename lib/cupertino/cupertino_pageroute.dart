import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cupertino_PageRoute extends StatelessWidget {
  const Cupertino_PageRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoButton.filled(
          child: const Text('Cupertino Page Route'),
          onPressed: () => Navigator.of(context).push(
           CupertinoPageRoute(builder: (ctx)=> const Page2())
          )),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Page 2'),
      ),
    );
  }
}
