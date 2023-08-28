import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: Center(
          child: Builder(
            builder: (context) {
              return ElevatedButton(
                child: const Text('Drawer'),
                onPressed: (){
                  Scaffold.of(context).openDrawer();
                },
              );
            }
          ),
        ),
        drawer: Drawer(
          backgroundColor: Colors.grey,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration:const  BoxDecoration(color: Colors.black54),
                child: ListView(
                  children: const[
                    Text('Drawer Header'),
                    SizedBox(height: 25,),
                    Text('Drawer Header'),
                    SizedBox(height: 25,),
                    Text('Drawer Header'),
                    SizedBox(height: 25,),
                    Text('Drawer Header'),
                    SizedBox(height: 25,),
                    Text('Drawer Header'),

                  ],
                ),),
              ListTile(
                title: const Text('text1'),
                selected: true,
                onTap: (){print('tap 1');},
              ),
              ListTile(
                title: const Text('text1'),
                onTap: (){print('tap 2');},
              ),
            ],
          ),
        ),
    );
  }
}
