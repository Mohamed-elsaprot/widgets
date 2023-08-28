import 'package:flutter/material.dart';

class Circle_Avatar extends StatelessWidget {
  const Circle_Avatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircleAvatar(
        radius: 120,
        backgroundImage: NetworkImage(
          'https://musicimage.xboxlive.com/catalog/video.movie.8D6KGWXZGKKS/image?locale=en-us&mode=crop&purposes=BoxArt&q=90&h=300&w=200&format=jpg',
        ),
        child: Text('Hiiiiiii'),
      ),
    );
  }
}

class Indecator extends StatelessWidget {
  const Indecator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return const Center(
      child: CircularProgressIndicator(
        color: Colors.blue,
        backgroundColor: Colors.orangeAccent,
        //value: .3,
      ),
    );
  }


}




