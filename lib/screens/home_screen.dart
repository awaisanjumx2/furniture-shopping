import 'package:flutter/material.dart';
import 'package:furniture_shopping/pages/favorites_page.dart';
import 'package:furniture_shopping/pages/home_page.dart';
import 'package:furniture_shopping/pages/notifications_page.dart';
import 'package:furniture_shopping/pages/profile_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  final _pages = [
    const HomePage(),
    FavoritesPage(),
    const NotificationsPage(),
    const ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: const Color(0xFF999999),
        selectedItemColor: const Color(0xFF242424),
        iconSize: 30.0,
        currentIndex: _page,
        onTap: (i) {
          setState(() {
            _page = i;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_outline_sharp),
            activeIcon: Icon(Icons.bookmark_sharp),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            activeIcon: Icon(Icons.notifications_sharp),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person_sharp),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
