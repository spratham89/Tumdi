import 'package:flutter/material.dart';
import 'package:tumdi_1/pages/Homepage.dart';
import 'package:tumdi_1/pages/mainPage.dart';
import 'package:tumdi_1/pages/login.dart';
import 'package:tumdi_1/widget/slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
