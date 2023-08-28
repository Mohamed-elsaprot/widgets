import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Cupertino_ContextMenue extends StatelessWidget {
  const Cupertino_ContextMenue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 100,
        width: 100,
        child: CupertinoContextMenu(
          actions: [
            CupertinoContextMenuAction(
              child: Text('Action 1'),
              onPressed: () {
                print('action 1');
              },
              trailingIcon: Icons.print,
            ),
            CupertinoContextMenuAction(
              child: Text('Pop'),
              onPressed: () {
                Navigator.pop(context);
              },
              trailingIcon: Icons.print,
            ),
          ],
          child: Image.network(
              'https://www.freepnglogos.com/uploads/youtube-play-red-logo-png-transparent-background-6.png'),
        ),
      ),
    );
  }
}
