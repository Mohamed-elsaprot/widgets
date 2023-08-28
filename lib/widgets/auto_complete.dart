import 'package:flutter/material.dart';

class Auto_Complete extends StatelessWidget {
   Auto_Complete({Key? key}) : super(key: key);

  List<String> words=['apple','mac','iphone'];
  @override
  Widget build(BuildContext context) {
    return Autocomplete(
        optionsBuilder: (TextEditingValue textEditingValue){
          if(textEditingValue.text == ''|| textEditingValue.text.isEmpty){
            return const Iterable<String>.empty();
          }
          return words.where((String element) {
            return element.contains(textEditingValue.text.toLowerCase());
          });
        },
      onSelected: (String item){
          print('select: $item');
      },
    );
  }
}
