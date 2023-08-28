import 'package:flutter/material.dart';

class Date_RangePicker extends StatefulWidget {
  const Date_RangePicker({Key? key}) : super(key: key);

  @override
  State<Date_RangePicker> createState() => _Date_RangePickerState();
}

class _Date_RangePickerState extends State<Date_RangePicker> {
  DateTimeRange dateTimeRange = DateTimeRange(start: DateTime.now(), end: DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Center(
      child:ElevatedButton(
        child: Text('${dateTimeRange.duration.inDays}',style:const TextStyle(fontSize: 25),),
        onPressed: (){
          showDateRangePicker(context: context,
              firstDate: DateTime.now(),
              lastDate: DateTime(2030)
          ).then((value) {
            print(value);
            if(value!=null){
              setState(() {
                dateTimeRange =value;
              });
            }
          });
        },
      ),
    );;
  }
}
