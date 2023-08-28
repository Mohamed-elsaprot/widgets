import 'package:flutter/material.dart';

class App_Bar extends StatelessWidget{
  const App_Bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: Container(
          height: 120,
          decoration: const BoxDecoration(
            gradient:LinearGradient(colors: [Colors.blueGrey,Colors.white]),
          ),
          child: SafeArea(
            child: Center(
              child: ListTile(
                title: Text('Data',style: TextStyle(color: Colors.black),),
                trailing: Icon(Icons.search),
              ),
            ),
          ),
        )
      )
    );
  }
}

//AppBar(
//         centerTitle: true,
//         title: Text('title'),
//         backgroundColor: Colors.green,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(
//             bottomLeft: Radius.circular(20),
//             bottomRight: Radius.circular(20)
//           )
//         ),
//       ),
