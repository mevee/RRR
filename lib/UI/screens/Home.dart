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
      appBar: AppBar(title: Text("RNR")),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 60.0),
            color: Colors.black,
            child: currentSelectedMenu == 0
                ? const HomeContent()
                : const SettingsPage(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomNavigationBar(
              onTap: (value) {
                setState(() {
                  currentSelectedMenu = value;
                  print("BottomNavigationBar ->onTap->$value");
                });
              },
              items: [
                BottomMenuItem(
                  Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  "Updates",
                  Colors.deepOrange,
                ),
                BottomMenuItem(
                  Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  "Settings",
                  Colors.green,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  BottomNavigationBarItem BottomMenuItem(
      Icon ico, String label, Color background) {
    return BottomNavigationBarItem(
        icon: ico, label: label, backgroundColor: background);
  }
}
