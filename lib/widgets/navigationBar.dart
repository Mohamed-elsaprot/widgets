import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavigationBar_Widget extends StatefulWidget {
  const NavigationBar_Widget({Key? key}) : super(key: key);

  @override
  State<NavigationBar_Widget> createState() => _NavigationBar_WidgetState();
}

class _NavigationBar_WidgetState extends State<NavigationBar_Widget> {
  int index = 0;
  List list = const [
    Icon(
      Icons.home,
      size: 200,
    ),
    Icon(
      Icons.business_sharp,
      size: 200,
    ),
    Icon(
      Icons.search,
      size: 200,
    ),
    Icon(
      Icons.settings,
      size: 200,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: list[index],
      ),
      bottomNavigationBar: GNav(
        backgroundColor: Colors.black,
        color: Colors.white,
        activeColor: Colors.white,
        tabBackgroundColor: Colors.grey,
        onTabChange: (x) => setState(() {
          index = x;
        }),
        selectedIndex: index,
        textStyle: const TextStyle(color: Colors.white, fontSize: 20),
        padding: const EdgeInsets.all(10),
        gap: 15,
        iconSize: 22,
        rippleColor: Colors.blue,
        tabMargin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        tabs: [
          GButton(
              icon: Icons.home,
              text: 'Home',
              borderRadius: BorderRadius.circular(10),
              backgroundColor: Colors.blue,
              onPressed: () {
                print('Home');
              }),
          const GButton(icon: Icons.favorite, text: 'Favourite'),
          const GButton(icon: Icons.search, text: 'Search'),
          const GButton(icon: Icons.settings, text: 'settings'),
        ],
      ),
    );
  }
}

// bottomNavigationBar: GNav(
//    backgroundColor: Colors.black,
//    color: Colors.white,
//    activeColor: Colors.white,
//    tabBackgroundColor: Colors.grey,
//    onTabChange: (x)=>setState(() {index=x;}),
//    selectedIndex: index,
//    textStyle: const TextStyle(color: Colors.white,fontSize: 20),
//    padding: const EdgeInsets.all(10),
//    gap: 15,
//    iconSize: 22,
//    rippleColor: Colors.blue,
//    tabMargin: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
//    tabs: [
//      GButton(icon: Icons.home,text: 'Home',borderRadius: BorderRadius.circular(10),backgroundColor: Colors.blue,onPressed: (){print('Home');}),
//      const GButton(icon: Icons.favorite,text: 'Favourite'),
//      const GButton(icon: Icons.search,text: 'Search'),
//      const GButton(icon: Icons.settings,text: 'settings'),
//    ],
//
//  )

// BottomNavigationBar(
//         selectedItemColor: Colors.red,
//         currentIndex: index,
//         items: const [
//           BottomNavigationBarItem(
//               icon: Icon(Icons.abc_outlined),
//               label: 'ss',
//               activeIcon: Icon(
//                 Icons.person,
//                 size: 40,
//               )),
//           BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'sd'),
//           BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'es'),
//         ],
//         onTap: (x) => setState(() {
//           index = x;
//         }),
//       )

//NavigationBar(
//         backgroundColor: Colors.white,
//         height: 100,
//         selectedIndex: index,
//         onDestinationSelected: (x)=>setState(() {
//           index=x;
//         }),
//         destinations:const [
//           NavigationDestination(icon: Icon(Icons.access_time_outlined), label: 'asdf',selectedIcon: Icon(Icons.person,size: 30,)),
//           NavigationDestination(icon: Icon(Icons.ac_unit_outlined), label: 'asdsss'),
//           NavigationDestination(icon: Icon(Icons.abc_outlined), label: 'sd'),
//         ],
//       )
