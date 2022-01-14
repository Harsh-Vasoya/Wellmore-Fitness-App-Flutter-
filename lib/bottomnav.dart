import 'package:diet_app/dietadd.dart';
import 'package:diet_app/profile.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

class BottomNav extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<BottomNav> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    DietAdd(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(40.0),),
  child: BottomNavigationBar(
  currentIndex: _selectedIndex,
  showSelectedLabels: false,
  showUnselectedLabels: false,
  iconSize: 32,
  backgroundColor: Color(0xffffffff),
  selectedIconTheme: IconThemeData(
  color: const Color(0xe6000000),
  ),
  unselectedIconTheme: IconThemeData(
  color: Colors.black26,
  ) ,
  items: [
  BottomNavigationBarItem(
  icon: Icon(Icons.home),
  title: Text("Home",style: const TextStyle(color: Color(0xff000000)),)
  ),
  BottomNavigationBarItem(
  icon: Icon(Icons.restaurant),
  title: Text("Diet",style: const TextStyle(color: Color(0xff000000)),)
  ),
  BottomNavigationBarItem(
  icon: Icon(Icons.person),
  title: Text("Person",style: const TextStyle(color: Color(0xff000000)),)
  ),
  ],
  onTap: (index) {
  setState(() {
  _selectedIndex = index;
  });
  },
  ),
  ),
  body: _widgetOptions.elementAt(_selectedIndex),
  backgroundColor: Colors.black,
    );

  }

}