import 'package:flutter/material.dart';
import 'package:rnr/UI/widgets/CommonButton.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  void onClicked() {}
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black,
      child: Column(
        children: [
          CommonButton(
            label: "Settings",
            onClicked: onClicked,
          ),
          CommonButton(
            label: "Settings",
            onClicked: () => print("Settings"),
          ),
          CommonButton(
            label: "Settings",
            onClicked: () => print("Settings"),
          ),
          CommonButton(
            label: "Settings",
            onClicked: () => print("Settings"),
          ),
        ],
      ),
    );
  }
}
