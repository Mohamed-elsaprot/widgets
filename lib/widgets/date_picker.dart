import 'package:flutter/material.dart';

class Date_Picker extends StatefulWidget {
  const Date_Picker({Key? key}) : super(key: key);

  @override
  State<Date_Picker> createState() => _Date_PickerState();
}

class _Date_PickerState extends State<Date_Picker> {
  DateTime dateTime= DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Center(
      child:ElevatedButton(
        child: Text('${dateTime.year}-${dateTime.month}-${dateTime.day}',style:const TextStyle(fontSize: 25),),
        onPressed: (){
          showDatePicker(
              context: context,
              initialDate: dateTime,
              firstDate: dateTime,
              lastDate: dateTime.add(const Duration(days: 30))
          ).then((value) {
            setState(() {
              if(value!=null){
                dateTime=value;
              }
            });
          });
        },
      ),
    );
  }
}
