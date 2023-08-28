import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Cupertino_DatePicker extends StatefulWidget {
  const Cupertino_DatePicker({Key? key}) : super(key: key);

  @override
  State<Cupertino_DatePicker> createState() => _Cupertino_DatePickerState();
}

class _Cupertino_DatePickerState extends State<Cupertino_DatePicker> {
  DateTime date = DateTime.now();//DateTime(2001, 12, 4);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoButton(
          child: Text('${date.day}-${date.month}-${date.year}'),
          onPressed: () {
            showCupertinoModalPopup(
                context: context, builder: (BuildContext ctx) => SizedBox(
              height: 250,
              child: CupertinoDatePicker(
                // backgroundColor: Colors.white,
                initialDateTime: date,
                onDateTimeChanged: (DateTime value) { setState(() {
                  date = value;
                }); },
                mode: CupertinoDatePickerMode.dateAndTime,
              ),
            ));
          }
      ),
    );
  }
}
