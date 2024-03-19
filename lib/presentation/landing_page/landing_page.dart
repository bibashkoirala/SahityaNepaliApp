import 'package:flutter/material.dart';

import '../pages/addsahitya.dart';
import '../pages/home.dart';
import '../pages/profile.dart';
import '../pages/store.dart';
import '../pages/swap.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int currentIndex = 1;
  List <Widget> pages = [Home(), Profile(), AddSahitya(),  Swap(), Store()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.grey,
        selectedIconTheme: const IconThemeData(color: Colors.black87),
        iconSize: 30,
        currentIndex : currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex =index;
          });
        },
        items: 
        [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, 
         
          ),
           label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add Sahitya'),
        BottomNavigationBarItem(icon: Icon(Icons.swap_horiz), label: 'Swap'),
        BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Store'),
      ]),
      body: pages
      [currentIndex],
    );
  }
}