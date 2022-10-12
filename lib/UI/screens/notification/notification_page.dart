import 'package:flutter/material.dart';

import '../../res/constant.dart';
import 'components/defaultAppBar.dart';
import 'components/defaultBackButton.dart';
import 'package:rive/rive.dart';

class NotificationPage extends StatefulWidget {
  NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: DefaultAppBar(
        title: 'Notification',
        child: DefaultBackButton(),
      ),
      body: Stack(
        children: [
          // Riv.asset(),
          ListView(
            children: [
              NotificationItem(
                title:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                date: '11/Feb/2021 04:42 PM',
                message:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
              ),
              NotificationItem(
                title:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                date: '11/Feb/2021 04:42 PM',
                message:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
              ),
            ],
          ),
          Center(
            child: RiveAnimation.asset(
              'assets/anim1.riv',
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
