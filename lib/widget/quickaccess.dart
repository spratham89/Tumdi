import 'package:flutter/material.dart';
import 'package:tumdi_1/models/category/category.dart';
import 'package:tumdi_1/pages/business.dart';
import 'package:tumdi_1/pages/directory.dart';
import 'package:tumdi_1/pages/homepage.dart';
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
        name: "Directory",
        imageurl: "directory.jpeg",
        navigateurl: const Directory()),
   
    Bannerimg(
        name: "Business",
        imageurl: "business.jpeg",
        navigateurl:  Business()),
    Bannerimg(
        name: "Matrimonial", imageurl: "matrimonial.jpeg", navigateurl: const Directory()),
    ];

  @override
  Widget build(BuildContext context) {
    return 
    SizedBox(
      height: 200.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
           shrinkWrap: true,
          itemCount: bannerimg.length,
          itemBuilder: (context, index) {
            return Containersqaure(
              name: bannerimg[index].name,
              imgurl: bannerimg[index].imageurl,
              networkurl: bannerimg[index].navigateurl,
            );
          }),
    ); 
  }
}
