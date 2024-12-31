import 'package:flutter/material.dart';
import 'package:tumdi_1/pages/mydrawer.dart';
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(253, 231, 234, 1),
        title: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(253, 231, 234, 1)),
          child: Text('Home',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                //  backgroundColor: Color.fromRGBO(253, 231, 234, 1)
              )),
        ),
        //   centerTitle: true,
      ),
      drawer: Mydrawer(),
      body: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(253, 231, 234, 1)),
        height: double.infinity,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: itemsDishes.length,
          itemBuilder: (context, index) {
            return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [itemsDishes[index]]);
          },
        ),
      ),
    );
  }
}
