import 'package:flutter/material.dart';

class Containersqaure extends StatelessWidget {
  String name;
  String imgurl;
  Containersqaure({super.key, required this.name, required this.imgurl});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.all(8),
            height: 150.0,
            width: 150.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                width: 1,
                color: Colors.black,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/$imgurl',
                  width: 100.0,
                  height: 100.0,
                ),
                Text(
                  imgurl,
                  style: TextStyle(fontSize: 14.0, color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
