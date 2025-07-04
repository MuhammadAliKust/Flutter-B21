import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_b21/grid_view.dart';
import 'package:flutter_b21/login.dart';
import 'package:flutter_b21/page_view.dart';

class BottomNavBarDemo extends StatefulWidget {
  const BottomNavBarDemo({super.key});

  @override
  State<BottomNavBarDemo> createState() => _BottomNavBarDemoState();
}

class _BottomNavBarDemoState extends State<BottomNavBarDemo> {
  int selectedIndex = 0;
  List<Widget> screenList = [LoginView(), GridViewDemo(), PageViewDemo()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (tapIndex) {
          log("Tap Index: $tapIndex");
          selectedIndex = tapIndex;
          setState(() {});
        },
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
