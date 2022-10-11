import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/route_manager.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:rnr/UI/screens/auth/WelcomeScreen.dart';
import 'package:rnr/UI/screens/bazinga/bazinga_page.dart';
import 'package:rnr/UI/screens/notification/notification_page.dart';
import 'package:rnr/UI/screens/profile/ProfileScreen.dart';

import 'UI/screens/Home.dart';

void main() async {
  // init the hive
  await Hive.initFlutter();

  // open a box
  var box = await Hive.openBox('mybox');

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, primarySwatch: Colors.green),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => WelcomeScreen()),
        GetPage(name: "/Notification", page: () => NotificationPage()),
        GetPage(name: "/Profile", page: () => ProfileScreen()),
        GetPage(name: "/Bazinga", page: () => BazingaPage()),
        GetPage(name: "/PieChnart", page: () => HomeScreen()),
      ],
    );
  }
}
