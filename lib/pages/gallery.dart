import 'package:flutter/material.dart';
import 'package:tumdi_1/pages/mydrawer.dart';

class Gallery extends StatelessWidget {
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        title: const Text('Gallery'),
        centerTitle: true,
      ),
       extendBody: true,
   
      body: Expanded(
        child: ListView.builder(
            shrinkWrap: true,
        //  crossAxisAlignment: CrossAxisAlignment.start,
         itemCount: 3,
          itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: SizedBox(width:100.0,height: 200.0,child: Container(decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(20)),)),
        );
          },
        ),
      ),
    );
  }
}