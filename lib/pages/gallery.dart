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
       drawer: Mydrawer(),
      body: ListView.builder(
          shrinkWrap: true,
      //  crossAxisAlignment: CrossAxisAlignment.start,
       itemCount: 1,
        itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Expanded(child: SizedBox(width:150.0,height: 150.0,child: Container(width:1.0, decoration: BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.circular(20)),))),
      );
        },
      ),
    );
  }
}