import 'package:crypto/pages/first_screen.dart';
import 'package:crypto/pages/second_screen.dart';
import 'package:crypto/pages/third_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _screenList = [
    FirstScreen(),
    SecondScreen(),
    ThirdScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screenList[_selectedIndex],
      backgroundColor: const Color.fromRGBO(11, 12, 54, 1),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.stairs),
            label: 'Crypto',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flutter_dash),
            label: 'Flutter Dash',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }
}
