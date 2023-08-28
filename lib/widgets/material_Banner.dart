import 'package:flutter/material.dart';

class MaterialBanner_Widget extends StatefulWidget {
  const MaterialBanner_Widget({Key? key}) : super(key: key);

  @override
  State<MaterialBanner_Widget> createState() => _MaterialBanner_WidgetState();
}

class _MaterialBanner_WidgetState extends State<MaterialBanner_Widget> {

  void Banner(){
    ScaffoldMessenger.of(context).showMaterialBanner(
      MaterialBanner(
          content:  Text('Material Banner'),
          actions: [
            TextButton(
                onPressed: (){
                  ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                },
                child: Text('Dissmis',style: TextStyle(color: Colors.white),))
          ],
        backgroundColor: Colors.blue,
        leading: Icon(Icons.notifications,color: Colors.white,),
      )
    );
    
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: ()=> Banner(),
        child: Text('Material Banner'),
      ),
    );
  }
}


