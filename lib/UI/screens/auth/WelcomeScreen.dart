import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:rnr/UI/res/styles.dart';
import 'package:rnr/UI/screens/Home.dart';
import 'package:rnr/UI/widgets/CommonButton.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<WelcomeScreen>
    with TickerProviderStateMixin {
  int currentSelectedMenu = 0;
  late AnimationController addToCartPopUpAnimationController;

  @override
  void initState() {
    addToCartPopUpAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 800));
    super.initState();
  }

  @override
  void dispose() {
    addToCartPopUpAnimationController.dispose();
    super.dispose();
  }

  void startAnimating() {
    addToCartPopUpAnimationController.forward();
    Timer(const Duration(seconds: 3), () {
      // if (!addToCartPopUpAnimationController!=null)
      // Future.(Duration(
      //   seconds: 3,
      // ));

      // addToCartPopUpAnimationController.reverse();
    });
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Get.off(() => HomeScreen());
    });

    return Scaffold(
      body: Stack(
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
          SafeArea(
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                  margin: EdgeInsets.only(right: 8),
                  width: 90,
                  height: 60,
                  child: Image.asset(
                    'assets/addverb.png',
                    fit: BoxFit.fill,
                  )),
            ),
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
                label: "Play",
                onClicked: () => startAnimating(),
                background: Colors.white,
                labelColor: Colors.black,
              ),
            ],
          ),
          Align(
            alignment: Alignment(0, 1),
            child: Container(
              color: Colors.white,
              width: double.maxFinite,
              height: 60,
              child: Text("Bottom Form"),
            ),
          ),
          addToCartPopUp(),
        ],
      ),
    );
  }

  addToCartPopUp() {
    return SlideTransition(
        position: Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero)
            .animate(addToCartPopUpAnimationController),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Wrap(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 12,
                margin: const EdgeInsets.all(15),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 4),
                        child: Icon(Icons.add_shopping_cart),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Successfully added to cart",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          InkWell(
                            onTap: () {},
                            child: const Text(
                              "Go to cart",
                              style: TextStyle(
                                color: Color(0xff535960),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      )),
                      const SizedBox(
                        width: 15,
                      ),
                      InkWell(
                          onTap: () {
                            addToCartPopUpAnimationController.reverse();
                          },
                          child: const Icon(Icons.cancel)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
