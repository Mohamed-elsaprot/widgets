import 'package:flutter/material.dart';

class Chipp extends StatefulWidget {
  const Chipp({Key? key}) : super(key: key);

  @override
  State<Chipp> createState() => _ChippState();
}

class _ChippState extends State<Chipp> {
  bool del = false;

  @override
  Widget build(BuildContext context) {
    return del
        ? Center(
            child: TextButton(
              child: const Text('deleted'),
              onPressed: () => setState(() {
                del = !del;
              }),
            ),
          )
        : Center(
            child: Chip(
              elevation: 10,
              deleteIcon: const Icon(Icons.delete),
              label: const Text('Chip Lable'),
              onDeleted: () {
                setState(() {
                  del = !del;
                });
              },
            ),
          );
  }
}


class InputChip_Widget extends StatefulWidget {
  const InputChip_Widget({Key? key}) : super(key: key);

  @override
  State<InputChip_Widget> createState() => _InputChip_WidgetState();
}

class _InputChip_WidgetState extends State<InputChip_Widget> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InputChip(

        label: const Text(
          'Input Chip',
        ),
        backgroundColor: Colors.white,
        selectedColor: Colors.blue,
        selected: selected,
        checkmarkColor: Colors.white,
        onSelected: (bool x) {
          setState(() {
            selected = !selected;
          });
        },
        deleteIcon: const Icon(Icons.cancel_outlined),
        onDeleted: () {},
        deleteIconColor: Colors.red,
        elevation: 10,
        shadowColor: Colors.white30,
        avatar: const Icon(Icons.person),
      ),
    );
  }
}



class Choice_Chip extends StatefulWidget {
  const Choice_Chip({Key? key}) : super(key: key);

  @override
  State<Choice_Chip> createState() => _Choice_ChipState();
}

class _Choice_ChipState extends State<Choice_Chip> {
  bool select = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ChoiceChip(
        label: const Text('Choice Chip Lable'),
        elevation: 20,
        pressElevation: 50,
        selected: select,
        backgroundColor: Colors.black12,
        selectedColor: Colors.blue.shade300,
        selectedShadowColor: Colors.red,
        shadowColor: Colors.green,
        onSelected: (bool x) {
          setState(() {
            select = x;
          });
        },
      ),
    );
  }
}
