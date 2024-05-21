import 'package:flutter/material.dart';

import '../screens/bottom_navigation/CategoriesListScreen.dart';
import '../screens/bottom_navigation/home_screen.dart';
import '../screens/bottom_navigation/trending_screen.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int _currentIndex = 0;
  List<String> titles = ['Home', 'Trending', 'Categories'];
  List<Widget> screens = [
    const HomeScreen(),
    const TrendingScreen(),
    const CategoriesListScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(titles[_currentIndex])),
      body: SingleChildScrollView(
        child: screens[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (val) {
          setState(() {
            _currentIndex = val;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Trending'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Categories'),
        ],
      ),
    );
  }
}
