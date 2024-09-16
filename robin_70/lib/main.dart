import 'package:flutter/material.dart';
import 'package:robin_70/app.dart';
import 'package:robin_70/page/splash_page.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    App.init(context);
    return MaterialApp(
        title: 'Flutter Demo',
        navigatorKey: App.materialKey,
        debugShowCheckedModeBanner: false,
        home: const SplashPage());
  }
}
