import 'package:flutter/material.dart';

class App {
  static final materialKey = GlobalKey<NavigatorState>();

  static late double screenWidth;
  static late double screenHeight;

  static void init(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
  }
}
