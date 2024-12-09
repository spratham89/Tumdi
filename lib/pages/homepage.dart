import 'package:flutter/material.dart';
import 'package:tumdi_1/widget/miscellaneous.dart';
import 'package:tumdi_1/widget/quickaccess.dart';
import 'package:tumdi_1/widget/slider.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List itemsDishes = [
     Sliderwheel(),
    const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Quick Access',
        textAlign: TextAlign.left,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.black),
      ),
    ),
    QuickAccess(),
    const Miscellaneous(),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: itemsDishes.length,
        itemBuilder: (context, index) {
          return itemsDishes[index];
        },
      ),
    );
  }
}
