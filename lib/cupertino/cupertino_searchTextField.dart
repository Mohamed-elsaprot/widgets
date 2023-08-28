import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Cupertino_SearchTextField extends StatelessWidget {
  const Cupertino_SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: CupertinoSearchTextField(
          //onSuffixTap: (){print(1);},
          //suffixIcon: Icon(Icons.backspace_outlined),
          onTap: (){print('on tapppppp');},
          itemColor: Colors.blue,
          prefixIcon: Icon(Icons.abc,size: 50,),
          placeholder: 'anything..',
          keyboardType: TextInputType.emailAddress,
          onChanged: (x) => print(x),
          style: TextStyle(fontSize: 22, color: Colors.black),
          padding: EdgeInsets.all(10),
          borderRadius: BorderRadius.circular(20),
          // decoration: BoxDecoration(
              // image: DecorationImage(
              //     image: NetworkImage(
              //         'https://images.pexels.com/photos/255379/pexels-photo-255379.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
              //     fit: BoxFit.cover),
          //),
        ),
      ),
    );
  }
}
