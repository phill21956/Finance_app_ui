import 'package:flutter/material.dart';
import 'package:payrush/config/palette.dart';
import 'package:payrush/pages/homePage.dart';
import 'package:payrush/pages/profilePage.dart';

class NavigationPage extends StatefulWidget {
  static const String id = 'navigation_page';
  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {

   int _selectedIndex = 0; //

  final _screens = [
    HomePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: _screens
                .asMap()
                .map((i, screen) => MapEntry(
                i,
                Offstage(
                  offstage: _selectedIndex != i,
                  child: screen,
                )))
                .values
                .toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (i) => setState(() => _selectedIndex = i),
        selectedFontSize: 10.0,
        unselectedFontSize: 10.0,
        selectedItemColor: Palette.primaryColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            activeIcon: Icon(Icons.person),
            label: "Profile",
          ),
         
        ],
      ),
    );
  }
}