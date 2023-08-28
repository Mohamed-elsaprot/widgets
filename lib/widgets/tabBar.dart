import 'package:flutter/material.dart';

class TabBar_Widget extends StatefulWidget {
  const TabBar_Widget({Key? key}) : super(key: key);

  @override
  State<TabBar_Widget> createState() => _TabBar_WidgetState();
}

class _TabBar_WidgetState extends State<TabBar_Widget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 2,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white30,
          title: const Text('App bar'),
          toolbarHeight: 80,
          bottom: TabBar(
            // padding: EdgeInsets.all(0),
            // indicatorColor: Colors.redAccent,
            indicator: BoxDecoration(color: Colors.white24,borderRadius: BorderRadius.circular(20)),
            unselectedLabelColor: Colors.black,
            splashBorderRadius: BorderRadius.circular(20),
            indicatorWeight: 3,
            labelColor: Colors.white,
            onTap: (int x){print(x);},
            tabs: const [
              Tab(icon: Icon(Icons.home),text: 'Home',),
              Tab(icon: Icon(Icons.settings),child: Text('settings',style: TextStyle(color: Colors.redAccent),)),
              Tab(icon: Icon(Icons.person),text: 'You',),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Icon(Icons.home,size: 100,color: Colors.white,),),
            Center(child: Icon(Icons.settings,size: 100,color: Colors.white),),
            Center(child: Icon(Icons.person,size: 100,color: Colors.white),),
          ],
        ),
      ),
    );
  }
}
