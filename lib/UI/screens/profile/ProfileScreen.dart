import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rnr/UI/screens/bazinga/bazinga_page.dart';

import '../home/new_home_page.dart';
import '../notification/notification_page.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text('Profile'),
      ),
      backgroundColor: Colors.grey,
      body: Stack(
        children: [
          Container(
            height: double.maxFinite,
            width: double.maxFinite,
            margin: EdgeInsets.only(top: size.height * .1),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(
                16,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(top: size.height * .1 * .2),
              child: Column(
                children: [
                  Container(
                    width: 100,
                    margin: EdgeInsets.only(top: size.height * .1 * .2),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(
                        60,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/addverb.png',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Ravi kumat Shukla ",
                    style: TextStyle(color: Colors.black87, fontSize: 16),
                  ),
                  Text(
                    "ravikant@gmail.com",
                    style: TextStyle(color: Colors.black87, fontSize: 12),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  profileCard(
                    "Score Card ",
                    "Last score : 200",
                    (() {
                      Get.to(() => NotificationPage());
                    }),
                  ),
                  profileCard("Home page", "home screen", (() {
                    Get.to(
                      () => HomePage(),
                    );
                  })),
                  profileCard(
                    "Bazinga",
                    "Clicl to see",
                    (() {
                      Get.to(
                        () => BazingaPage(),
                        // arguments: ["Name", "LL", "YY", "YY", "MON", "MM"],
                        arguments: {"Name": "Bazinga", "Id": "30000"},
                      );
                    }),
                  ),
                  profileCard("Pie Chart", "Clicl to see", (() {
                    Get.to(
                      () => BazingaPage(),
                    );
                  })),

                  // profileCard("Ravi kumat Shukla ", "ravikant@gmail.com"),
                  // profileCard("Ravi kumat Shukla ", "ravikant@gmail.com"),
                  // profileCard("Ravi kumat Shukla ", "ravikant@gmail.com"),
                ],
              ),
            ),
          ),
          bottomButton(),
        ],
      ),
    );
  }

  Align bottomButton() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 60,
        width: double.maxFinite,
        color: Colors.blueAccent,
        child: Center(
          child: Text(
            "Logout",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class profileCard extends StatelessWidget {
  String title;
  String subTitle;
  Function() onClick;

  profileCard(
    this.title,
    this.subTitle,
    this.onClick, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(
            6,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.lock),
            SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                      fontStyle: FontStyle.italic),
                ),
                Text(
                  subTitle,
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
            SizedBox(
              width: 60,
            ),
            RotatedBox(
                quarterTurns: 2, child: Icon(Icons.arrow_back_ios_rounded)),
          ],
        ),
      ),
    );
  }
}
