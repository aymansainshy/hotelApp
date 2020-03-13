import 'package:flutter/material.dart';

import './screens/tap_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'فندق السلام',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Color.fromRGBO(44, 42, 147, 1),
        fontFamily: 'Cairo',
      ),
      home: TapScreen(),
    );
  }
}
