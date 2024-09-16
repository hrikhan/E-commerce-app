import 'package:flutter/material.dart';
import 'package:yoori/account.dart';
import 'package:yoori/catagory.dart';
import 'package:yoori/chart.dart';
import 'package:yoori/home.dart';
import 'package:yoori/massage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  // List of pages to switch between
  static const List<Widget> _pages = <Widget>[
    Home(),
    Catagory(),
    Massage(),
    Chart(),
    Accounts(),
  ];

  // This function handles tap events on bottom navigation items
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Display the current selected page
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex, // Highlight the selected tab
        selectedItemColor: Colors.blue, // Color for the selected item
        unselectedItemColor:
            const Color.fromARGB(255, 254, 8, 8), // Color for unselected items
        onTap: _onItemTapped, // Handle tap on items
      ),
    );
  }
}
