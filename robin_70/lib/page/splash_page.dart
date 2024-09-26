import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:robin_70/page/main_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late BuildContext? _context;

  @override
  Widget build(BuildContext context) {
    _context = context;
    startTimer(4);
    return const Scaffold(
      body: Center(
          child: Image(
              image: AssetImage("assets/poster.gif"), fit: BoxFit.scaleDown)),
    );
  }

  void startTimer(int seconds) {
    Duration duration = Duration(seconds: seconds);

    Timer(duration, onEnd);
  }

  void onEnd() {
    log('Timer has ended!');
    Navigator.push(
      _context!,
      MaterialPageRoute(builder: (context) => const MainPage()),
    );
  }
}
