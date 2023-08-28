import 'package:flutter/material.dart';


class Item{
  Item({required this.title,required this.expandedText, this.isExpanded=false});
  final String title,expandedText;
  bool isExpanded;
}
class ExpanionPanel_Widget extends StatefulWidget {
  ExpanionPanel_Widget({Key? key}) : super(key: key);

  @override
  State<ExpanionPanel_Widget> createState() => _ExpanionPanel_WidgetState();
}

class _ExpanionPanel_WidgetState extends State<ExpanionPanel_Widget> {
  List data = List.generate(10, (index) => Item(title: 'item $index', expandedText: 'this item $index'));

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ExpansionPanelList(
        expansionCallback: (int index, bool isExpanded){
          data[index].isExpanded= !isExpanded;
          print('ss: $index');
          setState(() {});
        },
        animationDuration: const Duration(milliseconds: 500),
        dividerColor: Colors.blue,

        children: data.map<ExpansionPanel> ((item) {
         return ExpansionPanel(
           backgroundColor: Colors.grey,
             headerBuilder: (context,bool isExpanded){
               return ListTile(
                 title: Text(item.title1),
               );
             },
             body: ListTile(
               title: Text(item.expandedText),
               trailing:const Icon(Icons.delete,color: Colors.orange,size: 30,),
               onTap: (){
                 data.removeWhere((element) => element.title1==item.title1);
                 setState(() {});
               },
             ),
             isExpanded: item.isExpanded
         );
        }).toList(),
      ),
    );
  }
}
