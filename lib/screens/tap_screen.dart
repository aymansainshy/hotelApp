import 'package:flutter/material.dart';

import '../screens/favorites_screen.dart';
import '../screens/setting_screen.dart';
import '../screens/trips_screen.dart';
import '../screens/home_screen.dart';

class TapScreen extends StatefulWidget {
  static const routeName = 'Tap_screen';

  @override
  _TapScreenState createState() => _TapScreenState();
}

class _TapScreenState extends State<TapScreen> {
  final List<Map<String, Object>> _pages = [
    {
      'page': HomeScreen(),
      'title': 'Home',
    },
    {
      'page': FavoritesScreen(),
      'title': 'Favorites',
    },
    {
      'page': TripsScreen(),
      'title': 'Trips ',
    },
    {
      'page': SettingScreen(),
      'title': 'Settings',
    },
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 28,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _selectPage,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark_border,
            ),
            title: Text('Favorites'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.card_travel,
            ),
            title: Text('Trips'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            title: Text('Setting'),
          ),
        ],
      ),
    );
  }
}
