import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../res/constant.dart';
import '../notification/components/defaultAppBar.dart';
import '../notification/components/defaultBackButton.dart';

class BazingaPage extends StatefulWidget {
  BazingaPage({Key? key}) : super(key: key);

  @override
  _BazingaPageState createState() => _BazingaPageState();
}

class _BazingaPageState extends State<BazingaPage> {
  String pageName = "App Name";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final data = Get.arguments;

    if (data != null) {
      pageName = "${data["Name"]} ID id ${data["Id"]}";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE3E0E0),
      appBar: DefaultAppBar(
        title: '${pageName}',
        child: DefaultBackButton(),
      ),
      body: ListView(
        children: [
          Container(
            height: 344,
            color: Color(0xff065BAA),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 16),
            child: Text(
              "Eligibility and Procedure",
              style: TextStyle(color: Color(0xff262626)),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            decoration: BoxDecoration(
                color: Color(0xffF6F6F7),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.send,
                      size: 16,
                      color: Color(0xff636466),
                    ),
                    Text(
                      "All the employees are eligible for Bazinga.",
                      style: TextStyle(color: Color(0xff636466)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.send,
                      size: 16,
                      color: Color(0xff636466),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(
                        "Whenever any Cheif Manager or above feels that someone from thier team or other department has done an exemplary job,he can give a Bazinga.",
                        style: TextStyle(
                          color: Color(0xff636466),
                        ),
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 100,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.send,
                      size: 16,
                      color: Color(0xff636466),
                    ),
                    Text(
                      "All the employees are eligible for Bazinga.",
                      style: TextStyle(color: Color(0xff636466)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.send,
                      size: 16,
                      color: Color(0xff636466),
                    ),
                    Text(
                      "All the employees are eligible for Bazinga.",
                      style: TextStyle(color: Color(0xff636466)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 16),
            child: Text(
              "What’s in the Box ?",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            height: 281,
            color: Color(0xffEE3124),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Icon(
                            Icons.dining,
                            size: 60,
                            color: Colors.white54,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, top: 6),
                            child: Text(
                              "Dinner with higher faculty",
                              style: TextStyle(color: Colors.white),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.dining,
                            size: 60,
                            color: Colors.white54,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, top: 6),
                            child: Text(
                              "Dinner with higher faculty",
                              style: TextStyle(color: Colors.white),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Icon(
                            Icons.dining,
                            size: 60,
                            color: Colors.white54,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, top: 6),
                            child: Text(
                              "Dinner with higher faculty",
                              style: TextStyle(color: Colors.white),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.card_giftcard,
                            size: 60,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, top: 6),
                            child: Text(
                              "Dinner with higher faculty",
                              style: TextStyle(color: Colors.white),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  String title;
  String? message;
  String date;
  NotificationItem({
    Key? key,
    required this.title,
    this.message,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.all(kFixPadding),
      padding: EdgeInsets.all(kFixPadding),
      decoration: BoxDecoration(
          color: kWhiteColor,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [BoxShadow(color: kLightColor, blurRadius: 2.0)]),
      child: Column(
        children: [
          Text(title, style: kDarkTextStyle),
          SizedBox(height: 7.0),
          // Image(image: AssetImage(manShoes)),
          SizedBox(height: 16.0),
          Text(message ?? "", style: TextStyle(color: kLightColor)),
          SizedBox(height: 16.0),
          Align(
            alignment: Alignment.centerRight,
            child: Text(date, style: TextStyle(color: kLightColor)),
          )
        ],
      ),
    );
  }
}
