import 'package:flutter/material.dart';

class Rectanglelist extends StatelessWidget {
  double width;
  double height;
  Rectanglelist({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        //  crossAxisAlignment: CrossAxisAlignment.start,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
                width: 100.0,
                height: 100.0,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20)),
                )),
          );
        },
      ),
    );
  }
}
