import 'package:flutter/material.dart';
import 'package:third_session/home_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex=0;
  List<Widget> _pages=[
    HomePage(),
    HomePage(),
    HomePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            _currentIndex=index;
          });
        },
        currentIndex: _currentIndex,
        // selectedItemColor: Colors.redAccent,
        // backgroundColor: Colors.green,
        selectedIconTheme: IconThemeData(color: Colors.redAccent),
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(
          color: Colors.black
        ),

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
