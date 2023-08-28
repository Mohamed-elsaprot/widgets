import 'package:flutter/material.dart';


class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: InkWell(
            child: const Text('Settings ',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const Screen2()));
          },
        ),
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('Scaffold 2',style: TextStyle(fontSize: 35),),
      ),
    );
  }
}
