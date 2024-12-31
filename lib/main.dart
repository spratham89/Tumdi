import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tumdi_1/pages/Homepage.dart';
import 'package:tumdi_1/pages/mainPage.dart';
import 'package:tumdi_1/pages/login.dart';
import 'package:tumdi_1/widget/slider.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.green,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: MainPage(),
    );
  }
}
