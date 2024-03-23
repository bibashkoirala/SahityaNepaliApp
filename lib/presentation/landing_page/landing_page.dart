import 'package:flutter/material.dart';

import '../pages/addsahitya.dart';
import '../pages/home.dart';
import '../pages/profile.dart';
import '../pages/store.dart';
import '../pages/draft.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _currentIndex = 1;
  final List<Widget> pages = [
    Home(),
    // Profile(),
    //  AddSahitya(),
    Draft(),
    Store()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.grey,
        selectedIconTheme: const IconThemeData(color: Colors.black87),
        iconSize: 30,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.person),
          //   label: 'Profile',
          // ),
          // BottomNavigationBarItem(
          //
          //icon: Icon(Icons.add), label: 'Add Sahitya'),
          BottomNavigationBarItem(
            icon: Icon(Icons.drive_file_rename_outline_sharp),
            label: 'WorkStation',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Store'),
        ],
      ),
      body: pages[_currentIndex],
    );
  }
}
