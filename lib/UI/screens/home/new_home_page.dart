import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

import '../../res/constant.dart';
import '../notification/components/defaultAppBar.dart';
import '../notification/components/defaultBackButton.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      // appBar: DefaultAppBar(
      //   title: 'Home Screen',
      //   child: DefaultBackButton(),
      // ),
      body: CustomScrollView(slivers: [
        SliverAppBar(
          pinned: true,
          collapsedHeight: 56,
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.close,
              color: Colors.white,
            ),
          ),
          title: Text(
            'Home Screen',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Color(0xFFEDF2F8),
          flexibleSpace: FlexibleSpaceBar(
            background: Image.network(
                "https://images.unsplash.com/photo-1603785608232-44c43cdc0d70?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDY4fEo5eXJQYUhYUlFZfHxlbnwwfHx8&auto=format&fit=crop&w=500&q=60",
                fit: BoxFit.cover),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return getListView();
          }, childCount: 1),
        ),
      ]),
    );
  }

  Widget getListView() {
    return Column(
      children: [
        Text(
          'First Category',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        for (int i = 0; i < 5; i++)
          NotificationItem(
            title:
                '$i Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
            date: '11/Feb/2021 04:42 PM',
            message:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
          ),
        Text(
          'First Category 2',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        for (int i = 0; i < 10; i++)
          NotificationItem(
            title:
                '$i Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
            date: '11/Feb/2021 04:42 PM',
            message:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
          ),
      ],
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
