import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:rnr/UI/screens/HomeContent.dart';
import 'package:rnr/UI/screens/SettingsPage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSelectedMenu = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RNR"),
        leading: Icon(
          Icons.menu,
        ),
      ),
      body: HomeContent(),
      // bottomSheet: ,
      // else
      bottomNavigationBar: const BottomNavMenu(),
    );
  }

  BottomNavigationBarItem BottomMenuItem(
      Icon ico, String label, Color background) {
    return BottomNavigationBarItem(
        icon: ico, label: label, backgroundColor: background);
  }
}

class BottomNavMenu extends StatefulWidget {
  const BottomNavMenu({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavMenu> createState() => _BottomNavMenuState();
}

class _BottomNavMenuState extends State<BottomNavMenu> {
  var selectedIndex_ = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
        // selectedItemColor: ThemeData.dark().primaryColorDark,
        // unselectedItemColor: ThemeData.dark().primaryColorLight,
        // currentIndex: 0,
        // showUnselectedLabels: true,
        selectedIndex: selectedIndex_,
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        onDestinationSelected: (value) {
          selectedIndex_ = value;
          setState(() {});
        },
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home),
            selectedIcon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(icon: Icon(Icons.star), label: 'Reward'),
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.group_off_outlined), label: 'Guideline'),
          NavigationDestination(
              icon: Icon(Icons.rowing), label: 'Notification'),
        ]);
  }
}
