
import 'package:flutter/material.dart';


class Checkbox_ListTile extends StatefulWidget {
  const Checkbox_ListTile({Key? key}) : super(key: key);

  @override
  State<Checkbox_ListTile> createState() => _Checkbox_ListTileState();
}

class _Checkbox_ListTileState extends State<Checkbox_ListTile> {
  @override
  bool b = false;
  Widget build(BuildContext context) {
    return Center(
      child: CheckboxListTile(
        title: const Text('Tilte'),
        subtitle: const Text('Sub title'),
        activeColor: Colors.orangeAccent,
        checkColor: Colors.green,
        tileColor: Colors.grey.shade400,
        contentPadding: EdgeInsets.all(30),
        controlAffinity: ListTileControlAffinity.leading,
        // tristate: true,
        onChanged: (x){
          setState(() {
            print(x);
            b=x?? true;
          });
        }, value: b,
      ),
    );
  }
}

