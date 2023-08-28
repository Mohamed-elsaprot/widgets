import 'package:flutter/material.dart';

class Snackbar_Widget extends StatefulWidget {
  const Snackbar_Widget({Key? key}) : super(key: key);

  @override
  State<Snackbar_Widget> createState() => _Snackbar_WidgetState();
}

class _Snackbar_WidgetState extends State<Snackbar_Widget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('snak bar'),
        onPressed: (){
          ScaffoldMessenger.of(context).showSnackBar(
             SnackBar(
               content: Container(color: Colors.white12,
                 height: 200,
                 child: Column(
                   children: [
                     Text('Snack Bar'),
                     Text('Snack Bar'),
                     Text('Snack Bar'),
                     Text('Snack Bar'),
                   ],
                 ),
               ),
               backgroundColor: Colors.black12,
               action: SnackBarAction(onPressed: (){ScaffoldMessenger.of(context).clearSnackBars();}, label: 'lable',),)
          );
        },
      ),
    );
  }
}
