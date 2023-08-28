import 'package:flutter/material.dart';

class DismissibleWidget extends StatefulWidget {
  const DismissibleWidget({Key? key}) : super(key: key);

  @override
  State<DismissibleWidget> createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {
  List items= List.generate(20, (index) => index);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context,index){
          return Dismissible(
              key: ValueKey<dynamic>(items[index]),
              background: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(color: Colors.red,child: const Icon(Icons.delete),),
                  Container(color: Colors.green,child: const Icon(Icons.add),),
                ],
              ),
              // direction: DismissDirection.vertical,
              onDismissed: (DismissDirection direction){
                if(direction==DismissDirection.startToEnd) {items.removeAt(index);print(index);}else{items.add('add $index');}
                print(items);
                setState(() {});
              },
              child: ListTile(title: Text('${items[index]}'),),
          );
        });
  }
}
