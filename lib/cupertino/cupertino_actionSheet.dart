import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/close_button.dart';

class Cupertino_ActionSheet extends StatefulWidget {
  const Cupertino_ActionSheet({Key? key}) : super(key: key);

  @override
  State<Cupertino_ActionSheet> createState() => _Cupertino_ActionSheetState();
}

class _Cupertino_ActionSheetState extends State<Cupertino_ActionSheet> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton.filled(
          disabledColor: Colors.orangeAccent,
          pressedOpacity:.3,
          borderRadius: BorderRadius.circular(20),
          child: const Text('Cupertino ActionSheet'),
          onPressed: () {
            showCupertinoModalPopup(
                context: context, builder: (BuildContext ctx) => CupertinoActionSheet(
              cancelButton: MaterialButton(child: Text('cancel button'),onPressed: (){Navigator.pop(context);},),
              title: const Text('title',style: TextStyle(fontSize: 20),),
              message: Column(
                children: [
                  const Text('Message',style: TextStyle(fontSize: 22),),
                  Container(color: Colors.grey.withOpacity(.9),child: Image.asset('img/linkedin.png'),),
                ],
              ),
              actions: [
                CupertinoActionSheetAction(onPressed: (){print('Action 1');}, child: const Text('Action 1')),
                CupertinoActionSheetAction(onPressed: (){print('Action 2');}, child: const Text('Action 2'))
              ],
            )
            );
          },

        ),
      ),
    );
  }
}
