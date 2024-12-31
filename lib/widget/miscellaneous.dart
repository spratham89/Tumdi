import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tumdi_1/pages/blogs.dart';
import 'package:tumdi_1/pages/gallery.dart';
import 'package:tumdi_1/pages/latest.dart';
import 'package:tumdi_1/pages/mataji.dart';
import 'package:tumdi_1/widget/slider.dart';

class Miscellaneous extends StatelessWidget {
  const Miscellaneous({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Latest()),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                height: 150,
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
                        'assets/images/newslogo.jpeg',
                        width: 150,
                        height: 80.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    //   Sliderwheel(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: const Text(
                          "News / Events",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14.0, color: Colors.black),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              height: 150,
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
                      'assets/images/businesslogo.jpeg',
                      width: 150,
                      height: 80.0,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Business",
                    style: TextStyle(fontSize: 14.0, color: Colors.black),
                  ),
                ],
              ),
            )
          ]),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Mataji()),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                height: 150,
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
                        'assets/images/mataji.png',
                        width: 150,
                        height: 80.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Mataji",
                      style: TextStyle(fontSize: 14.0, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Gallery()),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                height: 150,
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
                        'assets/images/gallerylogo.jpeg',
                        width: 150,
                        height: 80.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Gallery",
                      style: TextStyle(fontSize: 14.0, color: Colors.black),
                    ),
                  ],
                ),
              ),
            )
          ]),
        ),
      ],
    );
  }
}
