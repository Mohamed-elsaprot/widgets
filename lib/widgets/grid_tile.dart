import 'package:flutter/material.dart';

class GridTile_Wigget extends StatelessWidget {
  const GridTile_Wigget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 400,width: 300,
        child: GridTile(
          header: const GridTileBar(
            backgroundColor: Colors.black45,
            trailing: Icon(Icons.menu),
            leading: Icon(Icons.person),
            title: Text('Grid Tile'),
          ),
          footer: const GridTileBar(
            backgroundColor: Colors.black45,
            leading: Icon(Icons.favorite),
          ),
          child:  Image.network('https://tinyurl.com/yc4pctt5',fit: BoxFit.cover,),
        ),
      ),
    );
  }
}
