import 'package:flutter/material.dart';
import 'package:tumdi_1/pages/directory.dart';

class Containersqaure extends StatelessWidget {
  String name;
  String imgurl;
  Widget networkurl;
  Containersqaure(
      {super.key,
      required this.name,
      required this.imgurl,
      required this.networkurl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(context, MaterialPageRoute(builder: (_) => networkurl))
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.all(8),
          height: 80,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.white,
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
              Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Image.asset(
                  'assets/images/$imgurl',
                  width: 100,
                  height: 80.0,
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  name,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14.0, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
