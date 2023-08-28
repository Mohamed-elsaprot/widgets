import 'package:flutter/material.dart';

class Flow_Widget extends StatefulWidget {
  const Flow_Widget({Key? key}) : super(key: key);

  @override
  State<Flow_Widget> createState() => _Flow_WidgetState();
}

class _Flow_WidgetState extends State<Flow_Widget> with SingleTickerProviderStateMixin{

  List<IconData> icons =[Icons.home,Icons.notifications,Icons.settings,Icons.menu];
  IconData lastIcon= Icons.menu;
  late AnimationController animationController;
  bool con=false;

  @override
  void initState() {
    animationController= AnimationController(vsync: this,duration: const Duration(milliseconds: 250),);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Flow(
      delegate: DelegateClass(animationController),
      children: icons.map((icon) => FloatingActionButton(
        onPressed: (){
          if(animationController.status == AnimationStatus.completed){
            animationController.reverse();
          }else{animationController.forward();}
          if(con){
            lastIcon=icon;
            icons.remove(lastIcon);
            icons.add(lastIcon);
          }
          con = !con;
          setState(() {});
        },
        backgroundColor: Colors.blue,
        child: Icon(icon,size: 35,color: lastIcon==icon? Colors.white:Colors.black87,),
      )).toList()
    );
  }
}

const buttonSize = 60;
const margin = 10;

class DelegateClass extends FlowDelegate{
  const DelegateClass(this.animationController): super(repaint: animationController);
  final AnimationController animationController;
  @override
  void paintChildren(FlowPaintingContext context) {
    final size= context.size;
    final xStart= size.width - buttonSize;
    final yStart= size.height - buttonSize;

    for(int i=0; i< context.childCount; i++){
      final childSize = context.getChildSize(i)!.width;
      // final dx = (childSize + margin)* i;
      // final x = xStart -dx;
      final x = xStart;
      final dy = (childSize + margin)*i;
      final y = yStart - dy * animationController.value;
      context.paintChild(i,transform: Matrix4.translationValues(x,y, 0));
    }

  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) {
    return false;
  }
}

//[
//         Icons.mail,
//         Icons.call,
//         Icons.notifications,
//       ].map<Widget>(buildItem).toList(),
