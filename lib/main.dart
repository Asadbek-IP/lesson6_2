import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson6/pages/alert_page.dart';
import 'package:lesson6/pages/bottom_nav_bar.dart';
import 'package:lesson6/pages/drawer_page.dart';
import 'package:lesson6/pages/scroll_page.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavBar(),
    );
  }
}
