import 'package:cinedot/core/styles/styles.dart';
import 'package:cinedot/screen/favourite/view/favourite.dart';
import 'package:cinedot/screen/home/view/home.dart';
import 'package:cinedot/screen/profile/view/profile.dart';
import 'package:cinedot/screen/search/view/search.dart';
import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: _getPage(_currentIndex),
      bottomNavigationBar:BottomNavigationBar(
       
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],unselectedItemColor:AppStyle().grayCol ,
        selectedItemColor: AppStyle().tilleColor,
      ),
    );
  }

  Widget _getPage(int index) {
    switch (index) {
      case 0:
        // Home page
        return Home();
      case 1:
        // Search page
        return Search();
      case 2:
        // Favorites page
        return Favourite();
      case 3:
        // Profile page
        return Profile();
      default:
        return Container();
    }
  }
}
