import 'package:flutter/material.dart';
import 'package:untitled/Pages/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daytrip',
      theme: ThemeData(
        fontFamily: 'DMSans',
      ),
      home: DefaultTextStyle(
        child: HomePage(),
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.black,
            decoration: TextDecoration.none),
      ),
    );
  }
}
