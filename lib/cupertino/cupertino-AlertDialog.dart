import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Cupertino_AlertDialog extends StatelessWidget {
  const Cupertino_AlertDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoButton(
        child: Text('Dialog'),
        onPressed: () {
          showCupertinoDialog(
              context: context,
              builder: (BuildContext ctx) => CupertinoAlertDialog(
                    title: const Text('Alert Dialo'),
                    content: const Text('Cupertino Alert Dialog Content'),
                    actions: [
                      CupertinoDialogAction(
                        child: const Text('No'),
                        isDefaultAction: true, //make it bold font
                        isDestructiveAction: true, //red
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      CupertinoDialogAction(
                        child: const Text('Yes'),
                        onPressed: () {
                          print('Dialog');
                        },
                      ),
                    ],
                  ));
        },
      ),
    );
  }
}
