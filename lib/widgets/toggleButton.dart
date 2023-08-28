import 'package:flutter/material.dart';

class ToggleButtonWidget extends StatefulWidget {
  const ToggleButtonWidget({Key? key}) : super(key: key);

  @override
  State<ToggleButtonWidget> createState() => _ToggleButtonWidgetState();
}

class _ToggleButtonWidgetState extends State<ToggleButtonWidget> {
  @override
  Widget build(BuildContext context) {
    List<bool> isSelected=[false,false,false];
    return Center(
      child: ToggleButtons(
        // color: Colors.white,
        borderColor: Colors.white,
        focusColor: Colors.redAccent,
        hoverColor: Colors.redAccent,
        fillColor: Colors.redAccent,
        selectedColor: Colors.blue,
        selectedBorderColor: Colors.redAccent,
        disabledColor: Colors.redAccent,
        // color: Colors.redAccent,
        // splashColor: Colors.redAccent,
        disabledBorderColor: Colors.redAccent,
        // highlightColor: Colors.redAccent,

        isSelected: isSelected,
        children: const [
          Icon(Icons.home),
          Icon(Icons.person),
          Icon(Icons.settings),
        ],
        onPressed: (int index){
          setState(() {
            isSelected[index]= !isSelected[index];
            print(index);
          });
        },
      ),
    );
  }
}
