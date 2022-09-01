import 'package:flutter/material.dart';
import 'package:rnr/UI/res/styles.dart';

class CommonButton extends StatelessWidget {
  final String label;
  final void Function() onClicked;
  const CommonButton({Key? key, required this.label, required this.onClicked})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onClicked();
      },
      child: Container(
        margin: const EdgeInsets.only(top: 8.0, left: 8, right: 8.0),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 25, 24, 24),
          borderRadius: BorderRadius.all(
            Radius.circular(6.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "$label",
                style: kTextNormal,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: RotatedBox(
                quarterTurns: 2,
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white54,
                  size: 16.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String label;
  final Color background;
  final Color labelColor;

  final void Function() onClicked;
  const Button({
    Key? key,
    required this.onClicked,
    required this.label,
    required this.background,
    required this.labelColor,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onClicked();
      },
      child: Container(
        width: 200,
        margin: const EdgeInsets.only(top: 8.0, left: 8, right: 8.0),
        decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.all(
            Radius.circular(6.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "$label",
                style: kTextNormal.copyWith(color: labelColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
