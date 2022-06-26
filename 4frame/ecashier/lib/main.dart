// ignore_for_file: prefer_const_constructors

import 'package:ecashier/login.dart';

import 'package:flutter/material.dart';

const darkGreenColor = Color(0xFF064635);
const darkYellowColor = Color(0xFFF0BB62);
const lightYellowColor = Color(0xFFF4EEA9);
const lightGreenColor = Color(0xFF519259);
const lightGreenYellowColor = Color(0xFFB8F1B0);
const darkGreenYellowColor = Color(0xFF5FD068);
const lightRedPinkColor = Color(0xFFF87474);
const darkRedPinkColor = Color(0xFFF32424);
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: pageLogin(),
    );
  }
}
