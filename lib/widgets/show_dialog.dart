// import 'package:flutter/material.dart';
//
// class Alert_Dialog extends StatelessWidget {
//   const Alert_Dialog({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: Builder(
//             builder: (context) {
//               return ElevatedButton(
//                 onPressed: ()=> showDialog(context: context, builder: (context)=> AlertDialog(
//                   title: Text('alert dialog title'),
//                   actions: [
//                     // TextButton(onPressed: ()=> print(4), child: Text('print 4')),
//                     TextButton(onPressed: ()=> print(3), child: Text('print 3')),
//                     TextButton(onPressed: ()=> print(2), child: Text('print 2')),
//                     TextButton(onPressed: ()=> print(1), child: Text('print 1')),
//                     TextButton(onPressed: ()=> Navigator.of(context).pop(), child: Text('close'))
//                   ],
//                   contentPadding: EdgeInsets.all(50),
//                   contentTextStyle: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,color: Colors.purple),
//                   content: Container(
//                     height: 200,
//                     child: Column(
//                       children: [
//                         Text('Apple Car'),
//                         Image.network('https://blogs.ubc.ca/natalieyu/files/2015/10/original_324535_D47mzaJ_4PtQfFi88PxaahCf3-1024x723.jpg',fit: BoxFit.fill,),
//                       ],
//                     ),
//                   ),
//                 )), child: Text('show Dialog'),
//               );
//             }
//         )
//     );
//   }
// }


