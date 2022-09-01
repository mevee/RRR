import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rnr/UI/res/styles.dart';
import 'package:rnr/UI/screens/HomeContent.dart';
import 'package:rnr/UI/screens/SettingsPage.dart';
import 'package:rnr/UI/widgets/CommonButton.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<WelcomeScreen> {
  int currentSelectedMenu = 0;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  // stops: [0.1, 0.5, 0.8, 0.9],
                  colors: [Colors.purple, Colors.blue],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                  width: 160,
                  height: 50,
                  child: Image.asset(
                    'assets/addverb.png',
                    fit: BoxFit.cover,
                  )),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "Wellcome to RNR".toUpperCase(),
                    style: kTextHeavy.copyWith(
                      color: Colors.white,
                      fontSize: 34,
                    ),
                  ),
                ),
                Button(
                  label: "Settings",
                  onClicked: () => print("Settings"),
                  background: Colors.white,
                  labelColor: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
