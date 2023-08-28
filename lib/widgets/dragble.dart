import 'package:flutter/material.dart';

class Draggable_wiget extends StatelessWidget {
  // const Draggable_wiget({super.key});

  Color color=Colors.orange;

  @override
  Widget build(BuildContext context) {
    print('color1: $color');
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Draggable(
            data: 1,
            feedback: Container(
              color: Colors.orange.withOpacity(.5),
              height: 250,
              width: 200,
              child: const Center(
                child: Text(
                  'Box..',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            child: Container(
              color: Colors.orange,
              height: 100,
              width: 100,
              child: const Center(
                child: Text(
                  'Box..',
                ),
              ),
            ),
            // onDragCompleted: () {
            //   print('Drag Completed');
            // },
            // onDragEnd: (draggableDetails) {
            //   print('draggable Details: $draggableDetails');
            // },
            // onDraggableCanceled: (velocity, offset) {
            //   print('velocity: $velocity, offset: $offset');
            // },
            // onDragStarted: () {
            //   print('Drag Started');
            // },
            // onDragUpdate: (dragUpdateDetails){print('dragUpdateDetails: $dragUpdateDetails');},
          ),
          DragTarget(
            onAccept: (x){
              color=  x==1? Colors.green :Colors.red;
              print('color2: $color');
            },
            builder: (context, List<dynamic> accepted, List<dynamic> rejected) {
              return Container(
                color:accepted.isEmpty? color : Colors.grey.shade200,
                height: 200,
                width: 200,
                child:const Center(
                    child: Text(
                  'DragTrget',
                )),
              );
            },
          ),
        ],
      ),
    );
  }
}
