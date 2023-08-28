import 'package:flutter/material.dart';

class Timpe_Picker extends StatefulWidget {
  const Timpe_Picker({Key? key}) : super(key: key);

  @override
  State<Timpe_Picker> createState() => _Timpe_PickerState();
}

class _Timpe_PickerState extends State<Timpe_Picker> {
  TimeOfDay selectedTime = TimeOfDay.now();
  // DateTime dateTime =DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: ()async {
            showTimePicker(context: context, initialTime: selectedTime,).then((value) {
              print(value);
              if(value!= null){
                setState(() {
                  selectedTime=value;
                });
              }
            });
          },
          child: Text('${selectedTime.hour+1}:${selectedTime.minute}',style: const TextStyle(fontSize: 25),)),
    );
  }
}
