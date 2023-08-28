import 'package:flutter/material.dart';

class RefreshIndecator_Widget extends StatefulWidget {
  const RefreshIndecator_Widget({Key? key}) : super(key: key);

  @override
  State<RefreshIndecator_Widget> createState() =>
      _RefreshIndecator_WidgetState();
}

class _RefreshIndecator_WidgetState extends State<RefreshIndecator_Widget> {
  List list = [1, 2, 3, 4];

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(

        child: ListView.builder(
          itemBuilder: (context, index) => ListTile(
            title: Text('Item: ${index + 1}'),
          ),
          itemCount: list.length,
        ),
        onRefresh: () async {
          Future.delayed(
            const Duration(seconds: 1),
            () {
              int nextIndex = list.length + 1;
              list.add(nextIndex);
              setState(() {});
            },
          );
        },
    );
  }
}
