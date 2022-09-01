import 'package:flutter/material.dart';
import 'package:rnr/UI/screens/auth/WelcomeScreen.dart';

import 'UI/screens/Home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home: const WelcomeScreen());
  }
}
