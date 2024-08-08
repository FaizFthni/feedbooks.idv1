import 'package:openbooks/pages/search_page.dart';
import 'package:openbooks/pages/settings_page.dart';
import 'package:openbooks/pages/wishlist_page.dart';
import 'package:openbooks/pages/home_page.dart';
import 'package:flutter/material.dart';
//import 'package:openbooks/color/color.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _currentIndex = 0;
  final List _body = [
    const HomePage(),
    const SearchPage(),
    const WishlistPage(),
    const SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _body[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey[900],
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined,),
          label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_sharp),
          label: "Search"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
          label: "wishlist"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
          label: "Setting"
          ),
        ],
      ),
    );
  }
}