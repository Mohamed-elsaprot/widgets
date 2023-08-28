import 'package:flutter/material.dart';
import 'package:widgets/screen1.dart';

class DrawerWiget extends StatefulWidget {
  const DrawerWiget({Key? key}) : super(key: key);

  @override
  State<DrawerWiget> createState() => _DrawerWigetState();
}

class _DrawerWigetState extends State<DrawerWiget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const OutlineInputBorder(
        borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20))
      ),
      elevation: 0,
      child: ListView(
        padding: const EdgeInsets.only(left: 5),
        children: [
          SizedBox(
            height: 220,
            child: DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CircleAvatar(backgroundColor: Colors.teal,radius: 35,child: Icon(Icons.person,color: Colors.white,size: 40,),),
                  Text('Mohamed Yaseer',style: TextStyle(color: Colors.black,fontSize: 20),),
                  Text('elsaprot2001@gmail.com',style: TextStyle(color: Colors.grey,fontSize: 20),),

                ],
              ),
            ),
          ),
          const Divider(thickness: 2),
          const ListTile(
            title: Text('Profile',style: TextStyle(fontSize: 22),),
            leading: Icon(Icons.person,color: Colors.teal,size: 30,),
          ),
          const ListTile(
            title: Text('Notification',style: TextStyle(fontSize: 22),),
            leading: Icon(Icons.notifications,color: Colors.teal,size: 30,),
          ),
          ListTile(
            title: const Text('Setting',style: TextStyle(fontSize: 22),),
            leading: const Icon(Icons.settings,color: Colors.teal,size: 30,),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Screen1()));
            },
          ),
          const ListTile(
            title: Text('Log out',style: TextStyle(fontSize: 22),),
            leading: Icon(Icons.login,color: Colors.teal,size: 30,),
          ),
          const ListTile(
            title: Text('Close',style: TextStyle(fontSize: 22),),
            leading: Icon(Icons.close,color: Colors.teal,size: 30,),
          ),

        ],
      ),
    );
  }
}
