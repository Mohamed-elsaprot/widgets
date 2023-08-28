import 'package:flutter/material.dart';

class Stepper_Wdget extends StatefulWidget {
  const Stepper_Wdget({Key? key}) : super(key: key);

  @override
  State<Stepper_Wdget> createState() => _Stepper_WdgetState();
}

class _Stepper_WdgetState extends State<Stepper_Wdget> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stepper(
        currentStep: index,
        onStepTapped: (int x)=>setState(() {index=x;}),
        onStepContinue: ()=>setState(() {if(index!=2) index+=1;}),
        onStepCancel: ()=>setState(() {if(index!=0) index-=1;}),
        type: StepperType.horizontal,
        steps: [
          Step(
            isActive: index == 0,
            title: const Text('Step 1'),
            content: const Text('Information for Step 1',style: TextStyle(color: Colors.redAccent),),
          ),
          Step(
            isActive: index == 1,
            title: const Text('Step 2'),
            content: const Text('Information for Step 2',style: TextStyle(color: Colors.redAccent),),
          ),
          Step(
            isActive: index == 2,
            title: const Text('Step 3'),
            content: const Text('Information for Step 3',style: TextStyle(color: Colors.redAccent),),
          ),
        ],
      ),
    );
  }
}
