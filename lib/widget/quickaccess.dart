import 'package:flutter/material.dart';
import 'package:tumdi_1/models/banner/banner.dart';
import 'package:tumdi_1/pages/directory.dart';
import 'package:tumdi_1/pages/homepage.dart';
import 'package:tumdi_1/pages/jobs.dart';
import 'package:tumdi_1/pages/mainPage.dart';
import 'package:tumdi_1/widget/containersqaure.dart';

class QuickAccess extends StatelessWidget {
  QuickAccess({super.key});
  List<String> name = [
    "Business",
    "Family Tree",
    "Directory",
    "Jobs",
    "Mataji"
  ];
  List<Bannerimg> bannerimg = [
    Bannerimg(
        name: "Business",
        imageurl: "business.jpeg",
        navigateurl: const Directory()),
    Bannerimg(
        name: "Family Tree",
        imageurl: "familytree.jpeg",
        navigateurl: const Directory()),
    Bannerimg(
        name: "Directory",
        imageurl: "directory.jpeg",
        navigateurl: const Directory()),
    Bannerimg(name: "Jobs", imageurl: "jobs.jpeg", navigateurl: Jobs()),
    Bannerimg(
        name: "Mataji", imageurl: "mataji.jpeg", navigateurl: const MainPage()),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.0,
      child: Expanded(
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            //   shrinkWrap: true,
            itemCount: bannerimg.length,
            itemBuilder: (context, index) {
              return Containersqaure(
                name: bannerimg[index].name,
                imgurl: bannerimg[index].imageurl,
                networkurl: bannerimg[index].navigateurl,
              );
            }),
      ),
    );
  }
}
